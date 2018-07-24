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

* hdlvry
* agecat
* studyid
* country

## Data Summary

hdlvry   agecat        studyid                    country                        tr.x       ever_stunted   n_cell      n
-------  ------------  -------------------------  -----------------------------  --------  -------------  -------  -----
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               0       69    192
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               1       28    192
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       77    192
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1       18    192
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               0       29     97
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control               1       12     97
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       38     97
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1       18     97
0        0-6 months    ki1000304-ZnMort           INDIA                          Other                 0       26     78
0        0-6 months    ki1000304-ZnMort           INDIA                          Other                 1       13     78
0        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  0       22     78
0        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  1       17     78
1        0-6 months    ki1000304-ZnMort           INDIA                          Other                 0       28    103
1        0-6 months    ki1000304-ZnMort           INDIA                          Other                 1       22    103
1        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  0       33    103
1        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                  1       20    103
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0      185    564
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       72    564
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0      213    564
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1       94    564
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               0       48     85
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control               1       19     85
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 0       13     85
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                 1        5     85
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control               0       45    335
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control               1       35    335
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                 0      154    335
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                 1      101    335
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control               0       18     81
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control               1        7     81
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                 0       40     81
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                 1       16     81
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0      108    478
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1       17    478
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      309    478
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       44    478
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               0       34    162
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control               1        7    162
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 0      100    162
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                 1       21    162
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        8     36
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        0     36
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       18     36
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        3     36
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        7     36
1        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        0     36
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      484   2085
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       37   2085
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      969   2085
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1       64   2085
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      485   2085
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       46   2085
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0        3      8
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        0      8
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0        2      8
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        0      8
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0        2      8
1        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        1      8
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       10     52
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1        4     52
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       13     52
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        4     52
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       18     52
0        0-6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1        3     52
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0       86    237
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1       26    237
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0       96    237
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       29    237
0        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               0       16     33
0        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control               1        1     33
0        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 0       13     33
0        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                 1        3     33
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0      577   2911
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1      184   2911
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      701   2911
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      255   2911
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      303   2911
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1      115   2911
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      581   2911
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      195   2911
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               0      207   1023
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control               1       49   1023
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      231   1023
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       66   1023
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      129   1023
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       49   1023
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      220   1023
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       72   1023
1        6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0       55    108
1        6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       53    108
0        6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0       36     61
0        6-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       25     61
0        6-24 months   ki1000304-ZnMort           INDIA                          Other                 0      220    462
0        6-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0      242    462
1        6-24 months   ki1000304-ZnMort           INDIA                          Other                 0      216    424
1        6-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0      208    424
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0      128    439
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       74    439
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0      162    439
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       75    439
0        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       43     72
0        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       14     72
0        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       12     72
0        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1        3     72
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               0       14    178
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               1       23    178
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 0       59    178
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 1       82    178
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               0        5     48
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               1        6     48
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 0       21     48
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 1       16     48
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       80    379
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       15    379
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      211    379
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       73    379
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       21    118
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       10    118
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       66    118
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       21    118
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        5     25
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        1     25
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       12     25
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        1     25
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        6     25
1        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        0     25
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      373   1723
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1       61   1723
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      745   1723
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      109   1723
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      367   1723
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1       68   1723
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      186    760
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       58    760
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      191    760
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       75    760
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      182    760
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       68    760
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       29    109
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       11    109
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       15    109
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1        8    109
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       32    109
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       14    109
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0       84    232
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1       30    232
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0       84    232
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       34    232
0        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0       12     35
0        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1        4     35
0        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0       13     35
0        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1        6     35
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      477   2595
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      231   2595
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      568   2595
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      250   2595
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      258   2595
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1      118   2595
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      487   2595
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      206   2595
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      182    976
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1       68    976
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      213    976
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1       75    976
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      108    976
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       45    976
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      212    976
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1       73    976
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0      124    348
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               1       62    348
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0      130    348
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1       32    348
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               0       65    180
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control               1       26    180
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 0       63    180
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                 1       26    180
0        0-24 months   ki1000304-ZnMort           INDIA                          Other                 0      246    906
0        0-24 months   ki1000304-ZnMort           INDIA                          Other                 1      209    906
0        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0      264    906
0        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  1      187    906
1        0-24 months   ki1000304-ZnMort           INDIA                          Other                 0      244   1130
1        0-24 months   ki1000304-ZnMort           INDIA                          Other                 1      314   1130
1        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  0      241   1130
1        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                  1      331   1130
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0      117    664
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1      186    664
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0      142    664
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1      219    664
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               0       36     99
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control               1       41     99
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 0       11     99
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                 1       11     99
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               0       15    337
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               1       66    337
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 0       64    337
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 1      192    337
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               0        5     81
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control               1       20     81
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 0       22     81
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                 1       34     81
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       81    479
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       44    479
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0      212    479
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1      142    479
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               0       20    162
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control               1       21    162
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 0       66    162
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                 1       55    162
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0        6     37
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1        2     37
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0       14     37
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1        7     37
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0        8     37
1        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1        0     37
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               0      404   2105
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control               1      122   2105
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 0      807   2105
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                 1      237   2105
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  0      398   2105
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                  1      137   2105
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0      179    937
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1      123    937
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0      183    937
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1      146    937
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0      169    937
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1      137    937
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               0       26    135
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control               1       27    135
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   0       14    135
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                   1       14    135
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 0       32    135
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                 1       22    135
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0       77    306
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1       67    306
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0       77    306
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       85    306
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               0       14     42
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control               1        5     42
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 0       13     42
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                 1       10     42
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      433   3329
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      453   3329
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      511   3329
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      541   3329
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      235   3329
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1      266   3329
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      441   3329
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      449   3329
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               0      169   1170
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control               1      127   1170
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   0      191   1170
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                   1      151   1170
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   0      100   1170
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                   1       99   1170
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 0      186   1170
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                 1      147   1170


The following strata were considered:

* hdlvry: 0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 0, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 0, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 0, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 0, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 0, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 0, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 0, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 0, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* hdlvry: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* hdlvry: 1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* hdlvry: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* hdlvry: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* hdlvry: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* hdlvry: 1, agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* hdlvry: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 0, agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* hdlvry: 1, agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* hdlvry: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* hdlvry: 1, agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x       0
##   Control 36
##   LNS      0
##   MMN      0
##   Other   25
##   Zinc     0
##          ever_stunted
## tr.x        0
##   Control   0
##   LNS       0
##   MMN       0
##   Other   220
##   Zinc    242
##          ever_stunted
## tr.x       0
##   Control 55
##   LNS      0
##   MMN      0
##   Other   53
##   Zinc     0
##          ever_stunted
## tr.x        0
##   Control   0
##   LNS       0
##   MMN       0
##   Other   216
##   Zinc    208
```




# Results Detail

## Results Plots
![](/tmp/b2988d6d-3a2a-4eff-aa75-a818b80e530f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 42 rows containing missing values (geom_errorbar).
```

![](/tmp/b2988d6d-3a2a-4eff-aa75-a818b80e530f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/b2988d6d-3a2a-4eff-aa75-a818b80e530f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b2988d6d-3a2a-4eff-aa75-a818b80e530f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


hdlvry   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                0.2857143   0.2386590   0.3327695
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                NA                0.2921348   0.2452916   0.3389781
0        0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                0.4593407   0.4135253   0.5051561
0        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.4146341   0.3691410   0.4601273
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.5324675   0.4932721   0.5716630
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.5000000   0.3125448   0.6874552
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.8000000   0.7513043   0.8486957
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.6071429   0.5181577   0.6961280
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.3520000   0.3301284   0.3738716
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4011299   0.3633573   0.4389025
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.2319392   0.1958611   0.2680172
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.2270115   0.2015952   0.2524277
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.2560748   0.2190815   0.2930680
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.4072848   0.3517823   0.4627873
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.4437690   0.3900628   0.4974752
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4477124   0.3919084   0.5035164
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2631579   0.1694087   0.3569071
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.4347826   0.3067971   0.5627681
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.4290541   0.3616819   0.4964262
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.4415205   0.3749824   0.5080586
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.4974874   0.4213450   0.5736299
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.4414414   0.3794000   0.5034829
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                0.2926829   0.2335098   0.3518560
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                NA                0.3214286   0.2504445   0.3924126
0        0-6 months    ki1000304-ZnMort           INDIA                          Other                NA                0.3333333   0.1844276   0.4822391
0        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                 NA                0.4358974   0.2792624   0.5925325
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2835821   0.2692116   0.2979526
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.2777778   0.1454939   0.4100616
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.2800000   0.2253392   0.3346608
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.2857143   0.2034035   0.3680250
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1360000   0.1202690   0.1517310
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1246459   0.0991721   0.1501197
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.0710173   0.0489566   0.0930780
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0619555   0.0472509   0.0766601
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0866290   0.0626980   0.1105600
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.1914063   0.1337015   0.2491110
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2222222   0.1642898   0.2801547
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2752809   0.2046611   0.3459007
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2465753   0.1937067   0.2994440
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.5454545   0.4773082   0.6136009
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.4324324   0.3080820   0.5567829
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1578947   0.1394908   0.1762987
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2570423   0.2189070   0.2951775
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1405530   0.1078446   0.1732614
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1276347   0.1052485   0.1500208
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1563218   0.1221846   0.1904590
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2377049   0.1841879   0.2912219
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.2819549   0.2278159   0.3360938
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.2720000   0.2167304   0.3272696
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2720000   0.2096624   0.3343376
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2604167   0.1965985   0.3242348
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2941176   0.2100717   0.3781636
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2561404   0.1980129   0.3142678
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                0.3333333   0.2970720   0.3695947
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                NA                0.1975309   0.1689495   0.2261122
1        0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                0.5627240   0.5215476   0.6039005
1        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 NA                0.5786713   0.5381887   0.6191540
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.6138614   0.5789403   0.6487825
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.6066482   0.5927294   0.6205670
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.8148148   0.7944520   0.8351777
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.7500000   0.7096462   0.7903538
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.5121951   0.4733523   0.5510379
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.4545455   0.3880735   0.5210174
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.5094340   0.3743458   0.6445221
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.5000000   0.3141111   0.6858889
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.4074074   0.2758673   0.5389475
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.4652778   0.4121349   0.5184207
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.5246914   0.4779638   0.5714189
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.5112867   0.4649751   0.5575983
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.5142586   0.4780373   0.5504798
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.5309381   0.4683669   0.5935093
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.5044944   0.4646648   0.5443240
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                0.2886598   0.2429827   0.3343369
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                NA                0.1894737   0.1503805   0.2285668
1        0-6 months    ki1000304-ZnMort           INDIA                          Other                NA                0.4400000   0.3017383   0.5782617
1        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                 NA                0.3773585   0.2462216   0.5084954
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.2801556   0.2520523   0.3082590
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3061889   0.2801439   0.3322340
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.4375000   0.4115015   0.4634985
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.3960784   0.3503166   0.4418403
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.1707317   0.1414919   0.1999715
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.1735537   0.1229952   0.2241123
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2321429   0.1780457   0.2862400
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2320000   0.1892703   0.2747297
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.2417871   0.2005713   0.2830029
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.2667364   0.2342715   0.2992013
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.2751196   0.2138338   0.3364055
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2512887   0.2142221   0.2883552
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                0.3663366   0.3281384   0.4045349
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                NA                0.3164557   0.3087974   0.3241140
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                0.6216216   0.5890471   0.6541962
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                NA                0.5815603   0.5168796   0.6462410
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                0.3225806   0.2791653   0.3659960
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                NA                0.2413793   0.1748005   0.3079581
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                0.2750000   0.1359872   0.4140128
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  NA                0.3478261   0.1522804   0.5433718
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                NA                0.3043478   0.1707647   0.4379310
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                0.2631579   0.2139760   0.3123398
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                NA                0.2881356   0.2428277   0.3334435
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                0.3262712   0.2773968   0.3751456
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  NA                0.3056235   0.2666576   0.3445893
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  NA                0.3138298   0.2519216   0.3757380
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                NA                0.2972583   0.2587975   0.3357191


### Parameter: E(Y)


hdlvry   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       NA                   NA                0.2888889   0.2224908   0.3552870
0        0-24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.4370861   0.4047693   0.4694029
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5252525   0.3271740   0.7233310
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.6666667   0.5633675   0.7699658
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3883090   0.3446183   0.4319997
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2356295   0.2174955   0.2537634
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4332978   0.4015314   0.4650641
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.3571429   0.1950951   0.5191906
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.4478632   0.4139564   0.4817701
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       NA                   NA                0.3092784   0.2168216   0.4017351
0        0-6 months    ki1000304-ZnMort           INDIA                          NA                   NA                0.3846154   0.2759505   0.4932803
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2823529   0.1482885   0.4164173
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.2839506   0.1851417   0.3827595
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1276151   0.0976722   0.1575580
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0705036   0.0595128   0.0814944
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2306940   0.2011200   0.2602681
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4583333   0.3158855   0.6007812
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2321900   0.1896252   0.2747548
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1381312   0.1218345   0.1544278
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.2644737   0.2330623   0.2958851
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2674180   0.2346912   0.3001449
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       NA                   NA                0.2701149   0.2233969   0.3168330
1        0-24 months   ki1000304-ZnMort           INDIA                          NA                   NA                0.5707965   0.5419247   0.5996682
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6099398   0.5725014   0.6473781
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7655786   0.7202814   0.8108759
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4691358   0.3920497   0.5462219
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.4666667   0.3821975   0.5511359
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4967320   0.4258046   0.5676595
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.5133674   0.4913579   0.5353769
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       NA                   NA                0.2395833   0.1790513   0.3001154
1        0-6 months    ki1000304-ZnMort           INDIA                          NA                   NA                0.4077670   0.3123995   0.5031345
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2943262   0.2527095   0.3359430
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4059701   0.3533047   0.4586356
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1728395   0.1144343   0.2312447
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2320675   0.1628310   0.3013040
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2572999   0.2371382   0.2774616
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3394077   0.2992701   0.3795454
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5898876   0.5174278   0.6623475
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2627119   0.1829650   0.3424587
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                0.3027523   0.2161013   0.3894033
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2758621   0.2087515   0.3429726
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3102119   0.2874603   0.3329636


### Parameter: RR


hdlvry   agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                Control           1.0224719   0.8125024   1.2867024
0        0-24 months   ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 Other             0.9026724   0.7782758   1.0469522
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9390244   0.6445111   1.3681173
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           0.7589286   0.6475568   0.8894549
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.1395737   1.0179962   1.2756710
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9787545   0.8080533   1.1855162
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1040601   0.8928906   1.3651713
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.0895792   0.9080422   1.3074093
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.0992614   0.9138938   1.3222276
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.6521739   1.0408164   2.6226323
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0290556   0.8277744   1.2792801
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.1594983   0.9312024   1.4437637
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.0288714   0.8333672   1.2702399
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                Control           1.0982143   0.8140597   1.4815555
0        0-6 months    ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                 Other             1.3076923   0.7370916   2.3200089
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9795322   0.6081937   1.5775949
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           1.0204082   0.7205089   1.4451353
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.9165139   0.7246909   1.1591117
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8724000   0.5901145   1.2897187
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.2198300   0.8049373   1.8485727
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.1609977   0.7793555   1.7295261
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.4382022   0.9680355   2.1367250
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.2882304   0.8897679   1.8651351
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           0.7927928   0.5794237   1.0847337
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.6279343   1.3480244   1.9659659
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Other                Control           0.9080892   0.6785356   1.2153025
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           1.1121914   0.8083201   1.5302971
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.1861550   0.8823349   1.5945916
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.1442759   0.8449265   1.5496818
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9574142   0.6844792   1.3391816
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0813149   0.7496622   1.5596916
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9416925   0.6820437   1.3001875
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Other                Control           0.5925926   0.4944678   0.7101898
1        0-24 months   ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304-ZnMort           INDIA                          Zinc                 Other             1.0283395   0.9293319   1.1378950
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.9882495   0.9294005   1.0508247
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           0.9204545   0.8674363   0.9767133
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.8874459   0.7526613   1.0463674
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           0.9814815   0.6216680   1.5495504
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           0.7997257   0.5266108   1.2144853
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.1276949   0.9757506   1.3032999
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.0058125   0.8968093   1.1280647
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.0384353   0.8950571   1.2047811
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9867153   0.8750231   1.1126644
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Other                Control           0.6563910   0.5061022   0.8513086
1        0-6 months    ki1000304-ZnMort           INDIA                          Other                Other             1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304-ZnMort           INDIA                          Zinc                 Other             0.8576329   0.5368191   1.3701715
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Other                Control           1.0929244   0.9593869   1.2450490
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           0.9053221   0.7950198   1.0309280
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Other                Control           1.0165289   0.7250372   1.4252112
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           0.9993846   0.7435155   1.3433070
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           1.1031870   0.8946875   1.3602755
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           1.1378589   0.8595104   1.5063492
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           1.0392971   0.8295523   1.3020741
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Other                Control           0.8638385   0.7764320   0.9610848
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Other                Control           0.9355535   0.8273205   1.0579459
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Other                Control           0.7482759   0.5505188   1.0170711
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         LNS                  Control           1.2648221   0.5938631   2.6938449
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Other                Control           1.1067194   0.5666228   2.1616280
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Other                Control           1.0949153   0.8576086   1.3978863
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     LNS                  Control           0.9367161   0.7695390   1.1402112
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     MMN                  Control           0.9618679   0.7508568   1.2321789
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Other                Control           0.9110774   0.7474506   1.1105242


### Parameter: PAR


hdlvry   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                 0.0031746   -0.0436710    0.0500202
0        0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                -0.0222546   -0.0544277    0.0099185
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0072150   -0.1968762    0.1824462
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.1333333   -0.2244346   -0.0422320
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0363090   -0.0015131    0.0741311
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0036903   -0.0276141    0.0349946
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0260130   -0.0198552    0.0718812
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0939850   -0.0388698    0.2268397
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0188092   -0.0394481    0.0770665
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                 0.0165954   -0.0544454    0.0876363
0        0-6 months    ki1000304-ZnMort           INDIA                          Other                NA                 0.0512821   -0.0573829    0.1599470
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0012291   -0.1337239    0.1312656
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                 0.0039506   -0.0783622    0.0862634
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0083849   -0.0338626    0.0170928
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0005137   -0.0195990    0.0185717
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0392878   -0.0110461    0.0896217
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0871212   -0.2122110    0.0379686
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0742952    0.0359148    0.1126757
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0024218   -0.0306435    0.0257998
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0267688   -0.0180833    0.0716209
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0045820   -0.0590512    0.0498873
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                -0.0632184   -0.0926750   -0.0337618
1        0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.0080724   -0.0211608    0.0373057
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0039216   -0.0181643    0.0103210
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0492362   -0.0896985   -0.0087739
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0430593   -0.1096439    0.0235253
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0427673   -0.1479108    0.0623762
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0314542   -0.0156897    0.0785982
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0020807   -0.0364700    0.0406314
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                -0.0490765   -0.0887972   -0.0093558
1        0-6 months    ki1000304-ZnMort           INDIA                          Other                NA                -0.0322330   -0.1304763    0.0660103
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0141706   -0.0146685    0.0430097
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0315299   -0.0773309    0.0142712
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0021078   -0.0484511    0.0526667
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0000753   -0.0428086    0.0426580
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0155128   -0.0193975    0.0504230
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0269289   -0.0462462   -0.0076116
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0317340   -0.0964590    0.0329911
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0598688   -0.1267618    0.0070242
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0277523   -0.0847190    0.1402236
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0127042   -0.0327841    0.0581925
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0160592   -0.0560001    0.0238816


### Parameter: PAF


hdlvry   agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                 0.0109890   -0.1631342    0.1590457
0        0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                -0.0509158   -0.1272282    0.0202304
0        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0137363   -0.4547694    0.2935917
0        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.2000000   -0.3764596   -0.0461622
0        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0935054    0.0005948    0.1777784
0        0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0156614   -0.1265731    0.1399382
0        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0600349   -0.0520620    0.1601879
0        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.2631579   -0.0820946    0.4982543
0        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0419976   -0.0973658    0.1636621
0        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                 0.0536585   -0.1910115    0.2480659
0        0-6 months    ki1000304-ZnMort           INDIA                          Other                NA                 0.1333333   -0.2009769    0.3745832
0        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0043532   -0.6057779    0.3718151
0        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                 0.0139130   -0.3176978    0.2620710
0        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0657049   -0.3013810    0.1272910
0        0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0072858   -0.3178479    0.2300896
0        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.1703026   -0.0799327    0.3625549
0        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.1900826   -0.5651431    0.0951008
0        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.3199761    0.1944052    0.4259738
0        6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0175328   -0.2437913    0.1675669
0        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.1012152   -0.0852527    0.2556443
0        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0171341   -0.2427690    0.1675349
1        0-24 months   ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                -0.2340426   -0.3802715   -0.1033054
1        0-24 months   ki1000304-ZnMort           INDIA                          Other                NA                 0.0141424   -0.0384347    0.0640575
1        0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0064295   -0.0302022    0.0167946
1        0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0643124   -0.1221037   -0.0094974
1        0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.0917843   -0.2584921    0.0528403
1        0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                -0.0916442   -0.3425711    0.1123844
1        0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0633224   -0.0302384    0.1483865
1        0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0040530   -0.0739636    0.0764023
1        0-6 months    ki1000125-AgaKhanUniv      PAKISTAN                       Control              NA                -0.2048409   -0.4265760   -0.0175704
1        0-6 months    ki1000304-ZnMort           INDIA                          Other                NA                -0.0790476   -0.3494245    0.1371553
1        0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Control              NA                 0.0481459   -0.0496216    0.1368068
1        0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0776654   -0.2064837    0.0373987
1        0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Control              NA                 0.0121951   -0.3234695    0.2627269
1        0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                -0.0003247   -0.2025773    0.1679125
1        0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                 0.0602906   -0.0860523    0.1869142
1        6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Control              NA                -0.0793408   -0.1418191   -0.0202812
1        6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Control              NA                -0.0537967   -0.1760485    0.0557469
1        6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Control              NA                -0.2278876   -0.5868657    0.0498831
1        6-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         Control              NA                 0.0916667   -0.3670118    0.3964431
1        6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Control              NA                 0.0460526   -0.1251793    0.1912262
1        6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Control              NA                -0.0517686   -0.1881455    0.0689548
