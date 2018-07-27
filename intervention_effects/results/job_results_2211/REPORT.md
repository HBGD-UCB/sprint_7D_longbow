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

* mhtcm
* agecat
* studyid
* country

## Data Summary

mhtcm       agecat      studyid                     country                        tr          stunted   n_cell       n
----------  ----------  --------------------------  -----------------------------  ---------  --------  -------  ------
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       60     399
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       33     399
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       69     399
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       41     399
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      124     399
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       72     399
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       44     379
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       40     379
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       60     379
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       35     379
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      103     379
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       97     379
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       31     215
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       15     215
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       43     215
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       12     215
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       87     215
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       27     215
>=160       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        8      35
>=160       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        1      35
>=160       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        6      35
>=160       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        0      35
>=160       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       19      35
>=160       24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        1      35
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       11      92
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        8      92
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       18      92
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       11      92
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       29      92
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       15      92
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       35     211
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       10     211
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       61     211
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       11     211
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       80     211
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       14     211
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       12     158
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1       26     158
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       13     158
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1       28     158
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       24     158
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1       55     158
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       58     246
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        9     246
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       47     246
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        6     246
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0      117     246
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        9     246
>=160       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0        4      13
>=160       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0        1      13
>=160       6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0        8      13
[155-160)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           0       24     120
[155-160)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control           1        2     120
[155-160)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               0       32     120
[155-160)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS               1        1     120
[155-160)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             0       57     120
[155-160)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other             1        4     120
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      323    1170
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       83    1170
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0      199    1170
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       51    1170
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      394    1170
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      120    1170
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           0      129     639
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       75     639
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       92     639
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       52     639
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             0      188     639
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             1      103     639
[155-160)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        4      22
[155-160)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      22
[155-160)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        3      22
[155-160)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        2      22
[155-160)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       10      22
[155-160)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        3      22
[145-150)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           0        7      59
[145-150)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           1        9      59
[145-150)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0        5      59
[145-150)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        4      59
[145-150)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       14      59
[145-150)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       20      59
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           0       45     290
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Control           1       45     290
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0       40     290
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1       31     290
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             0       68     290
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Other             1       61     290
<145        24 months   ki1000111-WASH-Kenya        KENYA                          Control           0        2      11
<145        24 months   ki1000111-WASH-Kenya        KENYA                          Control           1        3      11
<145        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               0        1      11
<145        24 months   ki1000111-WASH-Kenya        KENYA                          LNS               1        2      11
<145        24 months   ki1000111-WASH-Kenya        KENYA                          Other             0        1      11
<145        24 months   ki1000111-WASH-Kenya        KENYA                          Other             1        2      11
>=160       6 months    ki1000111-WASH-Kenya        KENYA                          Control           0       12      37
>=160       6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        2      37
>=160       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        8      37
>=160       6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        0      37
>=160       6 months    ki1000111-WASH-Kenya        KENYA                          Other             0       13      37
>=160       6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        2      37
[150-155)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        5      13
[150-155)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           1        0      13
[150-155)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               0        1      13
[150-155)   6 months    ki1000111-WASH-Kenya        KENYA                          LNS               1        1      13
[150-155)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             0        5      13
[150-155)   6 months    ki1000111-WASH-Kenya        KENYA                          Other             1        1      13
[145-150)   6 months    ki1000111-WASH-Kenya        KENYA                          Control           0        1       1
<145        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        5      13
<145        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        2      13
<145        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        3      13
<145        6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        3      13
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       10      30
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        5      30
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        9      30
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        6      30
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       14      52
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        7      52
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       22      52
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        9      52
[155-160)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       27      57
[155-160)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        8      57
[155-160)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       21      57
[155-160)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1      57
>=160       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           0       17      32
>=160       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control           1        1      32
>=160       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0       13      32
>=160       6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          1        1      32
[155-160)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Control           0        2       3
[155-160)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       3
[145-150)   Birth       ki1000125-AgaKhanUniv       PAKISTAN                       Maternal          0        1       1
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       26     101
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       24     101
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       26     101
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       25     101
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       56     172
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       24     172
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       63     172
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       29     172
>=160       Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        2       6
>=160       Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        4       6
>=160       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       40      83
>=160       6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        3      83
>=160       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       33      83
>=160       6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1        7      83
[155-160)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       11      37
[155-160)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        4      37
[155-160)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0       16      37
[155-160)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        6      37
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0       58     160
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1       16     160
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       72     160
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       14     160
[150-155)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0       13      31
[150-155)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        4      31
[150-155)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        8      31
[150-155)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        6      31
[145-150)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           0        3      14
[145-150)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        4      14
[145-150)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             0        4      14
[145-150)   Birth       ki1000304b-SAS-CompFeed     INDIA                          Other             1        3      14
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           0        7      41
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control           1        7      41
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             0       15      41
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other             1       12      41
<145        Birth       ki1000304b-SAS-CompFeed     INDIA                          Control           1        1       1
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       12     115
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       22     115
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       46     115
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       35     115
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       18     122
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1       11     122
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       63     122
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       30     122
<145        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        3      51
<145        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        8      51
<145        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       12      51
<145        6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       28      51
[155-160)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0       10      51
[155-160)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        4      51
[155-160)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       27      51
[155-160)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1       10      51
>=160       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           0        0      15
>=160       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control           1        1      15
>=160       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             0       13      15
>=160       6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other             1        1      15
>=160       6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        6       6
<145        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        1       7
<145        6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1       7
<145        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        2       7
<145        6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3       7
[150-155)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2      13
[150-155)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        1      13
[150-155)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        7      13
[150-155)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        3      13
[155-160)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        2       7
[155-160)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           1        0       7
[155-160)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        4       7
[155-160)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             1        1       7
[145-150)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Control           0        3      12
[145-150)   6 months    ki1017093b-PROVIDE          BANGLADESH                     Other             0        9      12
[150-155)   24 months   ki1017093b-PROVIDE          BANGLADESH                     Other             0        2       2
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       99     475
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       14     475
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      105     475
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       18     475
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      210     475
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       29     475
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      122     568
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       15     568
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      120     568
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1       12     568
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      271     568
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       28     568
[145-150)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0       32     129
[145-150)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        4     129
[145-150)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0       21     129
[145-150)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        8     129
[145-150)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       51     129
[145-150)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       13     129
>=160       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0      116     475
>=160       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1       11     475
>=160       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0      117     475
>=160       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        3     475
>=160       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0      210     475
>=160       6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1       18     475
<145        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        6      30
<145        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        3      30
<145        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        6      30
<145        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             1        2      30
<145        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0       11      30
<145        6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        2      30
[155-160)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1       1
[150-155)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           0        1       2
[150-155)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control           1        0       2
[150-155)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              0        0       2
[150-155)   24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc              1        1       2
>=160       24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other             0        1       1
>=160       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      249     272
>=160       6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       23     272
>=160       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      390     528
>=160       24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      138     528
[145-150)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       14      18
[145-150)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        4      18
[150-155)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       61     125
[150-155)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       64     125
[155-160)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      145     167
[155-160)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       22     167
[155-160)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0      199     328
[155-160)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1      129     328
[145-150)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        9      30
[145-150)   24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       21      30
[150-155)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0       63      76
[150-155)   6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1       13      76
<145        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              0        1       1
<145        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   Zinc              1        4       4
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       11      40
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1       11      40
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       10      40
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        8      40
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       19      58
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        8      58
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       22      58
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        9      58
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       13      52
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        7      52
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0       26      52
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        6      52
[155-160)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0       11      20
[155-160)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        1      20
[155-160)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        5      20
[155-160)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        3      20
>=160       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           0        5      10
>=160       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control           1        0      10
>=160       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             0        4      10
>=160       6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other             1        1      10
>=160       Birth       ki1119695-PROBIT            BELARUS                        Control           0     5452   11155
>=160       Birth       ki1119695-PROBIT            BELARUS                        Control           1       14   11155
>=160       Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     5682   11155
>=160       Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        7   11155
>=160       6 months    ki1119695-PROBIT            BELARUS                        Control           0     4590    9741
>=160       6 months    ki1119695-PROBIT            BELARUS                        Control           1      283    9741
>=160       6 months    ki1119695-PROBIT            BELARUS                        Maternal          0     4629    9741
>=160       6 months    ki1119695-PROBIT            BELARUS                        Maternal          1      239    9741
[155-160)   Birth       ki1119695-PROBIT            BELARUS                        Control           0      970    2051
[155-160)   Birth       ki1119695-PROBIT            BELARUS                        Control           1        7    2051
[155-160)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0     1070    2051
[155-160)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        4    2051
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Control           0      787    1804
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Control           1       90    1804
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      857    1804
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       70    1804
<145        Birth       ki1119695-PROBIT            BELARUS                        Control           0        1       4
<145        Birth       ki1119695-PROBIT            BELARUS                        Maternal          0        3       4
<145        6 months    ki1119695-PROBIT            BELARUS                        Control           0        1       3
<145        6 months    ki1119695-PROBIT            BELARUS                        Maternal          0        2       3
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Control           0       43     122
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Control           1        6     122
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       63     122
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       10     122
[150-155)   Birth       ki1119695-PROBIT            BELARUS                        Control           0      240     494
[150-155)   Birth       ki1119695-PROBIT            BELARUS                        Control           1        0     494
[150-155)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0      253     494
[150-155)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          1        1     494
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Control           0      183     432
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Control           1       23     432
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0      200     432
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1       26     432
>=160       24 months   ki1119695-PROBIT            BELARUS                        Control           0      268     674
>=160       24 months   ki1119695-PROBIT            BELARUS                        Control           1       38     674
>=160       24 months   ki1119695-PROBIT            BELARUS                        Maternal          0      334     674
>=160       24 months   ki1119695-PROBIT            BELARUS                        Maternal          1       34     674
[145-150)   Birth       ki1119695-PROBIT            BELARUS                        Control           0       10      25
[145-150)   Birth       ki1119695-PROBIT            BELARUS                        Maternal          0       15      25
[145-150)   6 months    ki1119695-PROBIT            BELARUS                        Control           0        7      22
[145-150)   6 months    ki1119695-PROBIT            BELARUS                        Control           1        2      22
[145-150)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          0       11      22
[145-150)   6 months    ki1119695-PROBIT            BELARUS                        Maternal          1        2      22
[145-150)   24 months   ki1119695-PROBIT            BELARUS                        Control           0        1       3
[145-150)   24 months   ki1119695-PROBIT            BELARUS                        Control           1        0       3
[145-150)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0        1       3
[145-150)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        1       3
[150-155)   24 months   ki1119695-PROBIT            BELARUS                        Control           0       12      34
[150-155)   24 months   ki1119695-PROBIT            BELARUS                        Control           1        2      34
[150-155)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          0       12      34
[150-155)   24 months   ki1119695-PROBIT            BELARUS                        Maternal          1        8      34
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      620    2854
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       77    2854
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1927    2854
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      230    2854
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      401    2010
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       99    2010
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1240    2010
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      270    2010
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      336    1592
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       46    1592
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     1075    1592
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      135    1592
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0     1124    4850
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      101    4850
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     3306    4850
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      319    4850
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      737    3290
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1      103    3290
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0     2150    3290
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      300    3290
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0      198    1084
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       41    1084
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      657    1084
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1      188    1084
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       69     307
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        9     307
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      201     307
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       28     307
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0       34     233
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1       23     233
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0      107     233
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       69     233
<145        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        9      64
<145        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      64
<145        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       42      64
<145        Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1       11      64
<145        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        8      41
<145        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2      41
<145        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0       24      41
<145        6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        7      41
[150-155)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        0       9
[150-155)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2       9
[150-155)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        1       9
[150-155)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        6       9
[155-160)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        1       7
[155-160)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        2       7
[155-160)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        2       7
[155-160)   24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2       7
>=160       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           0        3       5
>=160       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       Control           1        0       5
>=160       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              0        0       5
>=160       24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        2       5
<145        24 months   ki1126311-ZVITAMBO          ZIMBABWE                       VitA              1        1       1
[150-155)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      118     258
[150-155)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        4     258
[150-155)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      128     258
[150-155)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        8     258
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       78     274
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       48     274
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             0      103     274
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       45     274
[145-150)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           0      139     294
[145-150)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        2     294
[145-150)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             0      142     294
[145-150)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       11     294
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       87     328
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       75     328
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       99     328
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       67     328
[155-160)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       30      79
[155-160)   Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        4      79
[155-160)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       44      79
[155-160)   Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        1      79
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       25      85
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       15      85
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       39      85
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Other             1        6      85
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        7      99
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       41      99
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       14      99
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       37      99
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       78     178
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        8     178
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       82     178
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Other             1       10     178
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       35     202
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Control           1       65     202
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       44     202
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Other             1       58     202
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        6      78
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       29      78
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             0       13      78
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       30      78
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        7      27
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Control           1        6      27
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        5      27
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Other             1        9      27
>=160       6 months    ki1135781-COHORTS           GUATEMALA                      Control           0       12      25
>=160       6 months    ki1135781-COHORTS           GUATEMALA                      Control           1        1      25
>=160       6 months    ki1135781-COHORTS           GUATEMALA                      Other             0       11      25
>=160       6 months    ki1135781-COHORTS           GUATEMALA                      Other             1        1      25
>=160       Birth       ki1135781-COHORTS           GUATEMALA                      Control           0       13      31
>=160       Birth       ki1135781-COHORTS           GUATEMALA                      Control           1        1      31
>=160       Birth       ki1135781-COHORTS           GUATEMALA                      Other             0       17      31
>=160       Birth       ki1135781-COHORTS           GUATEMALA                      Other             1        0      31
<145        24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        2      57
<145        24 months   ki1135781-COHORTS           GUATEMALA                      Control           1       30      57
<145        24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        2      57
<145        24 months   ki1135781-COHORTS           GUATEMALA                      Other             1       23      57
>=160       24 months   ki1135781-COHORTS           GUATEMALA                      Control           0        0       4
>=160       24 months   ki1135781-COHORTS           GUATEMALA                      Control           1        2       4
>=160       24 months   ki1135781-COHORTS           GUATEMALA                      Other             0        1       4
>=160       24 months   ki1135781-COHORTS           GUATEMALA                      Other             1        1       4
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       28     257
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       21     257
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      116     257
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       92     257
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       57     431
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       11     431
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      296     431
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       67     431
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       69     629
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       25     629
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      385     629
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      150     629
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       22     242
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       21     242
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      111     242
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       88     242
[145-150)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        2      97
[145-150)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       15      97
[145-150)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       30      97
[145-150)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       50      97
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0       58     568
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1       45     568
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0      309     568
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      156     568
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       16     244
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1       21     244
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       84     244
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1      123     244
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0       23     172
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        7     172
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       94     172
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       48     172
<145        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           0        3      42
<145        6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control           1        2      42
<145        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               0       25      42
<145        6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       12      42
<145        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           0        0      20
<145        24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control           1        2      20
<145        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               0        3      20
<145        24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS               1       15      20
[150-155)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           0        1       3
[150-155)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Control           1        0       3
[150-155)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          0        1       3
[150-155)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       3
[145-150)   Birth       ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       1
[145-150)   6 months    ki1148112-iLiNS-DYAD-M      MALAWI                         Maternal          1        1       1
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       50     287
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       20     287
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       98     287
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       52     287
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       47     287
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       20     287
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       25     136
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1       14     136
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       41     136
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       24     136
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0       26     136
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1        6     136
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       10      93
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       11      93
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       22      93
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       26      93
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       11      93
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       13      93
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Control           0       49     226
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Control           1       15     226
>=160       6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       83     226
>=160       6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       27     226
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Other             0       31     226
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Other             1       21     226
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Control           0       27     107
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Control           1        9     107
>=160       24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       35     107
>=160       24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       12     107
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Other             0       14     107
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Other             1       10     107
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Control           0       26     218
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Control           1       23     218
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               0       62     218
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         LNS               1       44     218
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Other             0       36     218
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Other             1       27     218
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0       12      86
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1        8      86
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       17      86
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       19      86
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0       18      86
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1       12      86
<145        6 months    ki1148112-LCNI-5            MALAWI                         Control           0        2      12
<145        6 months    ki1148112-LCNI-5            MALAWI                         Control           1        2      12
<145        6 months    ki1148112-LCNI-5            MALAWI                         LNS               0        2      12
<145        6 months    ki1148112-LCNI-5            MALAWI                         LNS               1        5      12
<145        6 months    ki1148112-LCNI-5            MALAWI                         Other             0        0      12
<145        6 months    ki1148112-LCNI-5            MALAWI                         Other             1        1      12
<145        24 months   ki1148112-LCNI-5            MALAWI                         Control           0        0       5
<145        24 months   ki1148112-LCNI-5            MALAWI                         Control           1        2       5
<145        24 months   ki1148112-LCNI-5            MALAWI                         LNS               0        1       5
<145        24 months   ki1148112-LCNI-5            MALAWI                         LNS               1        2       5
[145-150)   24 months   ki1148112-LCNI-5            MALAWI                         Control           0        5      50
[145-150)   24 months   ki1148112-LCNI-5            MALAWI                         Control           1        9      50
[145-150)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               0       15      50
[145-150)   24 months   ki1148112-LCNI-5            MALAWI                         LNS               1       13      50
[145-150)   24 months   ki1148112-LCNI-5            MALAWI                         Other             0        5      50
[145-150)   24 months   ki1148112-LCNI-5            MALAWI                         Other             1        3      50
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2114    6704
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1     1246    6704
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2227    6704
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1     1117    6704
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     1938    5601
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      844    5601
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2018    5601
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      801    5601
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      920    3504
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      849    3504
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      940    3504
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      795    3504
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2211    6428
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      917    6428
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2467    6428
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      833    6428
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0     2164    5609
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      559    5609
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0     2375    5609
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      511    5609
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      953    2415
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1      249    2415
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      983    2415
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      230    2415
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      961    2202
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      131    2202
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      985    2202
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      125    2202
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           0      194     485
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control           1       45     485
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      215     485
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       31     485
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      221     450
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1        7     450
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      214     450
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        8     450
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           0      819    2852
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control           1      629    2852
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0      815    2852
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1      589    2852
<145        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        1      17
<145        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        7      17
<145        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        0      17
<145        24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        9      17
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        6      33
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        8      33
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        7      33
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1       12      33
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0       10      33
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        6      33
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0       11      33
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        6      33
[155-160)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        5      11
[155-160)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           1        0      11
[155-160)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        3      11
[155-160)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          1        3      11
>=160       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control           0        2       4
>=160       24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal          0        2       4
[150-155)   6 months    iLiNS_DYADM_LNS             MALAWI                         Control           0        1       2
[150-155)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               0        1       2
[145-150)   Birth       iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       1
[145-150)   6 months    iLiNS_DYADM_LNS             MALAWI                         LNS               1        1       1


The following strata were considered:

* mhtcm: [145-150), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [145-150), agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [145-150), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [145-150), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [145-150), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [145-150), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mhtcm: [145-150), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [145-150), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [145-150), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [145-150), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [145-150), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [145-150), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [145-150), agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [145-150), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [145-150), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [145-150), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [145-150), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [145-150), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [145-150), agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mhtcm: [145-150), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [145-150), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [145-150), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [145-150), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [150-155), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [150-155), agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [150-155), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [150-155), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [150-155), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [150-155), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [150-155), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [150-155), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [150-155), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mhtcm: [150-155), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [150-155), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [150-155), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [150-155), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [150-155), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [150-155), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [150-155), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [150-155), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [150-155), agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [150-155), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [150-155), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [150-155), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [150-155), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [150-155), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [150-155), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [150-155), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [155-160), agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [155-160), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [155-160), agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [155-160), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [155-160), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [155-160), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [155-160), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [155-160), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [155-160), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [155-160), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [155-160), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [155-160), agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [155-160), agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [155-160), agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [155-160), agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [155-160), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [155-160), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [155-160), agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [155-160), agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: <145, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: <145, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: <145, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: <145, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: <145, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: <145, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: <145, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: <145, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: <145, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: <145, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: <145, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: <145, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: <145, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: <145, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: >=160, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: >=160, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: >=160, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: >=160, agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: >=160, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: >=160, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: >=160, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: >=160, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: >=160, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: >=160, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: >=160, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: >=160, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: >=160, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: >=160, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: >=160, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: >=160, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: >=160, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: >=160, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: >=160, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* mhtcm: >=160, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: >=160, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: >=160, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [150-155), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: [145-150), agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* mhtcm: <145, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [155-160), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: [145-150), agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* mhtcm: >=160, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: >=160, agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [155-160), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [150-155), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: [145-150), agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: <145, agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* mhtcm: <145, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: [155-160), agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: >=160, agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* mhtcm: <145, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [150-155), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [155-160), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [145-150), agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [150-155), agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* mhtcm: [145-150), agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: <145, agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [155-160), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [150-155), agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: >=160, agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* mhtcm: [145-150), agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: <145, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* mhtcm: [155-160), agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: >=160, agecat: 6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* mhtcm: [155-160), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [145-150), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: [150-155), agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* mhtcm: <145, agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [155-160), agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: >=160, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: <145, agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* mhtcm: [150-155), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [155-160), agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: <145, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: >=160, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* mhtcm: [145-150), agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: <145, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* mhtcm: [150-155), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [145-150), agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: [145-150), agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* mhtcm: <145, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: <145, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: [145-150), agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* mhtcm: <145, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [155-160), agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: >=160, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* mhtcm: [150-155), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mhtcm: [145-150), agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* mhtcm: [145-150), agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     390 138
##           stunted
## tr         0
##   Control  0
##   LNS      0
##   Maternal 0
##   Other    6
##   VitA     0
##   Zinc     0
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     249  23
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc      9 21
##           stunted
## tr          0
##   Control  10
##   LNS       0
##   Maternal 15
##   Other     0
##   VitA      0
##   Zinc      0
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     61 64
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     63 13
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     199 129
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     145  22
```




# Results Detail

## Results Plots
![](/tmp/d0215319-2ff3-4b81-8f3e-89a2352c7aaf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d0215319-2ff3-4b81-8f3e-89a2352c7aaf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d0215319-2ff3-4b81-8f3e-89a2352c7aaf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d0215319-2ff3-4b81-8f3e-89a2352c7aaf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


mhtcm       agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=160       Birth       ki1119695-PROBIT            BELARUS                        Control              NA                0.0025613   0.0012042   0.0039184
>=160       Birth       ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0012304   0.0005855   0.0018753
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.0824490   0.0785583   0.0863397
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.0880000   0.0811064   0.0948936
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1882845   0.1617689   0.2148002
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1260163   0.1026139   0.1494186
>=160       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.0580751   0.0487562   0.0673940
>=160       6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0490961   0.0418329   0.0563594
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1226190   0.1169549   0.1282831
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1224490   0.1127815   0.1321165
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.1617647   0.1479400   0.1755894
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.1845730   0.1509214   0.2182246
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2343750   0.1303627   0.3383873
>=160       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2454545   0.1648531   0.3260560
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4038462   0.2701877   0.5375046
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.0307018   0.0202393   0.0411642
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.0360360   0.0205969   0.0514752
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.2044335   0.1651884   0.2436786
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.2040000   0.1540270   0.2539730
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.2334630   0.1968759   0.2700501
>=160       24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1241830   0.0880046   0.1603614
>=160       24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0923913   0.0492470   0.1355356
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2333333   0.2068582   0.2598085
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3380282   0.2736074   0.4024490
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.2500000   0.1078861   0.3921139
>=160       24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.2553191   0.1300728   0.3805654
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.4166667   0.2184984   0.6148350
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                0.0930233   0.0632796   0.1227669
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Other                NA                0.1086957   0.0757298   0.1416615
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4799322   0.4660634   0.4938009
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4582133   0.4433021   0.4731244
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4210526   0.1978331   0.6442722
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3793103   0.2017455   0.5568752
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3409091   0.2000818   0.4817364
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.5000000   0.4166849   0.5833151
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4444444   0.2625815   0.6263074
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.5000000   0.3836230   0.6163770
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.4444444   0.3398293   0.5490596
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.6500000   0.6036057   0.6963943
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.5686275   0.5199739   0.6172810
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.4343923   0.4187960   0.4499885
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.4195157   0.4026258   0.4364055
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.6842105   0.5359489   0.8324721
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.6829268   0.5400369   0.8258168
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.6962025   0.5944669   0.7979382
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1153846   0.0973413   0.1334279
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1222707   0.0905694   0.1539721
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3708333   0.3610920   0.3805746
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3340311   0.3243736   0.3436886
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.2222222   0.1004649   0.3439795
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1527778   0.0694783   0.2360772
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.1489362   0.0767927   0.2210796
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2120146   0.4546521
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.4000000   0.2739219   0.5260781
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.4800000   0.3698043   0.5901957
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.4901961   0.4157254   0.5646667
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.6470588   0.5993598   0.6947578
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.4320988   0.3557825   0.5084150
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.2962963   0.2154171   0.3771754
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.2903226   0.2041739   0.3764712
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.4035088   0.3722845   0.4347330
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.3920455   0.3374463   0.4466446
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4629630   0.4249816   0.5009443
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.4036145   0.3657843   0.4414446
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4285714   0.4021015   0.4550413
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4423077   0.3875742   0.4970411
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.5238095   0.3090447   0.7385743
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5416667   0.3999464   0.6833869
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.5416667   0.3412440   0.7420893
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3033789   0.2926445   0.3141132
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2841433   0.2747832   0.2935035
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.4761905   0.3692458   0.5831352
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3684211   0.2712927   0.4655494
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.4850000   0.4156444   0.5543556
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8541667   0.8055105   0.9028228
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.7254902   0.6620744   0.7889060
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.5714286   0.4597493   0.6831079
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.6315789   0.5047615   0.7583964
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1204188   0.1125853   0.1282524
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1115702   0.0980831   0.1250574
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2931586   0.2843851   0.3019320
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.2524242   0.2436002   0.2612483
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.1343284   0.0525091   0.2161476
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.1132075   0.0277317   0.1986834
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.0714286   0.0263686   0.1164885
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                0.3333333   0.2511157   0.4155509
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             NA                0.2903226   0.1941363   0.3865088
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.3000000   0.2438493   0.3561507
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.3152174   0.2499271   0.3805077
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                0.3793103   0.3371592   0.4214615
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                NA                0.3225806   0.2498588   0.3953025
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1238938   0.0630846   0.1847031
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.1463415   0.0838128   0.2088701
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.1213389   0.0798991   0.1627787
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                0.3500000   0.2688166   0.4311834
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                NA                0.1875000   0.1034672   0.2715328
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1116505   0.0827355   0.1405655
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1150442   0.0958881   0.1342004
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1715481   0.1610056   0.1820906
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.2224852   0.2006150   0.2443554
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3809524   0.3418886   0.4200161
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.3040541   0.2639503   0.3441579
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4368932   0.4195078   0.4542786
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.3354839   0.3003199   0.3706478
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.4693878   0.3293314   0.6094441
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.4150943   0.3210766   0.5091121
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.4285714   0.3060904   0.5510524
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2052883   0.1971401   0.2134364
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1770617   0.1695670   0.1845564
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3548387   0.2574741   0.4522033
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.3727273   0.2822540   0.4632006
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.3673469   0.2997719   0.4349219
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.5000000   0.3965223   0.6034777
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.4366197   0.3210560   0.5521834
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.4728682   0.3865638   0.5591726
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.8285714   0.7721822   0.8849606
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6976744   0.6215098   0.7738391
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.5675676   0.5433116   0.5918235
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.5942029   0.5373363   0.6510695
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.4000000   0.1840374   0.6159626
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.5277778   0.3637432   0.6918123
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.4000000   0.2236673   0.5763327
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.3750000   0.2582030   0.4917970
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.3529412   0.2341009   0.4717814
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1104735   0.1047889   0.1161580
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1066296   0.0967838   0.1164754
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.2071547   0.1935994   0.2207101
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1896125   0.1760995   0.2031255
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                0.2162162   0.1646805   0.2677520
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                NA                0.1627907   0.1208549   0.2047265
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                0.1094891   0.0571561   0.1618220
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                NA                0.0909091   0.0418238   0.1399943
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 NA                0.0936455   0.0605943   0.1266967
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                0.1026226   0.0877635   0.1174817
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             NA                0.0755124   0.0617064   0.0893185
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                0.1980000   0.1893091   0.2066909
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 NA                0.1788079   0.1642847   0.1933312
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                0.3750000   0.3039794   0.4460206
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                NA                0.1333333   0.0804400   0.1862266
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.2659574   0.2525985   0.2793164
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.2803738   0.2479741   0.3127736
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                0.2857143   0.1797013   0.3917272
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3466667   0.2703738   0.4229595
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Other                NA                0.2985075   0.1887440   0.4082709
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                0.1199634   0.1083825   0.1315442
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             NA                0.1126126   0.1005479   0.1246773
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                0.3260870   0.1903025   0.4618714
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  NA                0.2181818   0.1087758   0.3275878
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                NA                0.2368421   0.1586173   0.3150669
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                0.3676471   0.3014302   0.4338639
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  NA                0.3611111   0.2825984   0.4396238
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                NA                0.3539519   0.2989666   0.4089371
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                0.1224490   0.0786646   0.1662333
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             NA                0.1369863   0.0540059   0.2199667
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                0.4615385   0.3285749   0.5945020
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                NA                0.6428571   0.5102332   0.7754810
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                0.4883721   0.4617698   0.5149744
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  NA                0.4422111   0.3853509   0.4990712
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                0.3589744   0.2078662   0.5100825
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  NA                0.3692308   0.2514761   0.4869854
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Other                NA                0.1875000   0.0517662   0.3232338


### Parameter: E(Y)


mhtcm       agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=160       Birth       ki1119695-PROBIT            BELARUS                        NA                   NA                0.0018826   0.0003709   0.0033943
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.0865979   0.0786819   0.0945140
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1567010   0.1212258   0.1921762
>=160       6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0535879   0.0412679   0.0659080
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1224924   0.1112878   0.1336970
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.1809745   0.1445854   0.2173636
>=160       6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2787611   0.2201725   0.3373496
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.0333333   0.0146669   0.0519998
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.2170940   0.1934610   0.2407271
>=160       24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1068249   0.0511556   0.1624942
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3197674   0.2498644   0.3896704
>=160       24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.2897196   0.2033623   0.3760769
<145        Birth       ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.1011236   0.0567078   0.1455394
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4691781   0.4487834   0.4895728
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3695652   0.2703923   0.4687381
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4634146   0.2662175   0.6606117
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.4750000   0.3182736   0.6317264
<145        6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.6089109   0.5414480   0.6763738
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.4270687   0.4040775   0.4500599
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.6898734   0.6175211   0.7622257
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1205212   0.0840431   0.1569992
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3524761   0.3386677   0.3662846
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.1658768   0.1155677   0.2161859
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3666667   0.1912782   0.5420551
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.4851485   0.3508365   0.6194605
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.4956522   0.4038719   0.5874324
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2931034   0.1749357   0.4112712
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.3948498   0.3319496   0.4577499
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.4329268   0.3792235   0.4866301
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4396887   0.3788871   0.5004904
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.5376344   0.4357541   0.6395148
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2936976   0.2794292   0.3079659
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.4538259   0.4036364   0.5040153
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7878788   0.7069400   0.8688176
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.6060606   0.4367649   0.7753563
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1136935   0.0980953   0.1292916
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.2722464   0.2596446   0.2848482
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.0975610   0.0604064   0.1347155
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       NA                   NA                0.3076923   0.1810231   0.4343615
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.3081395   0.2216307   0.3946484
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          NA                   NA                0.3360656   0.2519009   0.4202303
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1284211   0.0983028   0.1585393
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      NA                   NA                0.2500000   0.1311597   0.3688403
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.1134259   0.0787607   0.1480911
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.2112546   0.1869435   0.2355658
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.3394161   0.2832470   0.3955851
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.3538732   0.3145147   0.3932318
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4311927   0.3653001   0.4970852
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1907648   0.1796593   0.2018704
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.3659148   0.3185920   0.4132376
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.4724138   0.4148556   0.5299720
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.7564103   0.6605340   0.8522865
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.5901639   0.5283286   0.6519992
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.4534884   0.3476553   0.5593214
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.3636364   0.1969656   0.5303071
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1075683   0.0961992   0.1189374
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1983437   0.1792020   0.2174854
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          NA                   NA                0.1875000   0.1192281   0.2557719
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0968310   0.0724894   0.1211725
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        NA                   NA                0.0886918   0.0671652   0.1102184
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       NA                   NA                0.1835821   0.1666532   0.2005110
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.2470588   0.1548252   0.3392924
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.2782194   0.2431713   0.3132675
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3205575   0.2664703   0.3746447
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     NA                   NA                0.1162579   0.0995360   0.1329799
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     NA                   NA                0.2511628   0.1930579   0.3092677
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          NA                   NA                0.3599374   0.3226929   0.3971819
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        NA                   NA                0.1311475   0.0371723   0.2251228
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      NA                   NA                0.5555556   0.3645553   0.7465558
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         NA                   NA                0.4504132   0.3875982   0.5132282
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         NA                   NA                0.3235294   0.2446139   0.4024450


### Parameter: RR


mhtcm       agecat      studyid                     country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
>=160       Birth       ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=160       Birth       ki1119695-PROBIT            BELARUS                        Maternal             Control           0.4804008   0.2279862   1.0122756
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0673267   0.9740486   1.1695375
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.6692864   0.5301470   0.8449434
>=160       6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=160       6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.8453904   0.6809608   1.0495243
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9986130   0.9113213   1.0942660
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.1409967   0.9329023   1.3955091
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0472727   0.6029767   1.8189428
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.7230769   0.9905475   2.9973263
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1737452   0.6790245   2.0289072
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9978795   0.7309962   1.3622008
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           1.1419999   0.8913365   1.4631553
>=160       24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
>=160       24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7439931   0.4268751   1.2966925
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.4486922   1.1605143   1.8084301
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
>=160       24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0212766   0.4820060   2.1638857
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.6666667   0.7942559   3.4973335
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Other                Control           1.1684783   0.7520139   1.8155800
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9547459   0.9140675   0.9972346
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9008621   0.4441251   1.8273059
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.8096591   0.4134456   1.5855723
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.8888889   0.5685440   1.3897315
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.8888889   0.6383862   1.2376888
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8748115   0.7825699   0.9779256
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9657531   0.9150367   1.0192805
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.9981238   0.7385280   1.3489687
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0175268   0.7835004   1.3214553
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.0596798   0.7828516   1.4343986
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9007580   0.8662487   0.9366422
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6875000   0.3173777   1.4892550
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.6702128   0.3225535   1.3925914
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           1.2000000   0.7414503   1.9421397
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0212418   0.7765946   1.3429592
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.6677890   0.5514703   0.8086422
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.9798387   0.6547136   1.4664181
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9715909   0.8284970   1.1393993
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8718072   0.7697047   0.9874538
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0320513   0.8987467   1.1851279
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0340909   0.6358134   1.6818520
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.0340909   0.5952601   1.7964315
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9365956   0.8923932   0.9829875
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.7736842   0.5472135   1.0938825
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0185000   0.7804258   1.3292003
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8493544   0.7652044   0.9427584
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           1.1052632   0.8351690   1.4627060
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9265181   0.8076726   1.0628514
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8610502   0.8223260   0.9015980
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.8427673   0.3194488   2.2233817
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.5317460   0.2212431   1.2780233
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Maternal             Control           0.8709677   0.5762630   1.3163865
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           1.0507246   0.7948388   1.3889889
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Other                Control           0.8504399   0.6614373   1.0934491
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           1.1811847   0.6161732   2.2642940
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.9793784   0.5385998   1.7808806
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Other                Control           0.5357143   0.3234226   0.8873522
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           1.0303963   0.7576686   1.4012942
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           1.2969260   1.1549624   1.4563391
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.7981419   0.6753414   0.9432718
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.7678853   0.6864444   0.8589885
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           0.8843314   0.6080289   1.2861922
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           0.9130435   0.6040258   1.3801536
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.8625026   0.8138838   0.9140258
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           1.0504132   0.7282119   1.5151742
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           1.0352505   0.7440073   1.4405013
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.8732394   0.6240472   1.2219382
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9457364   0.7176820   1.2462586
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           0.8420209   0.7403771   0.9576189
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0469289   0.9427539   1.1626154
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.3194444   0.7076798   2.4600584
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           1.0000000   0.4980692   2.0077530
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9411765   0.5949370   1.4889193
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9652054   0.8683850   1.0728208
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9153183   0.8309129   1.0082977
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Other                Control           0.7529070   0.5300222   1.0695193
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Other                Control           0.8303030   0.4037055   1.7076882
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Zinc                 Control           0.8552954   0.4721453   1.5493752
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Maternal             Control           0.7358264   0.5832740   0.9282783
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       VitA                 Control           0.9030704   0.8234282   0.9904157
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Other                Control           0.3555556   0.2290848   0.5518469
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           1.0542056   0.9293998   1.1957712
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.2133333   0.7881784   1.8678231
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Other                Control           1.0447761   0.6196627   1.7615342
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Maternal             Control           0.9387250   0.8126669   1.0843367
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     LNS                  Control           0.6690909   0.3486687   1.2839770
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Other                Control           0.7263158   0.4268771   1.2357999
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          LNS                  Control           0.9822222   0.7406190   1.3026407
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Other                Control           0.9627491   0.7589561   1.2212642
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Maternal             Control           1.1187215   0.5529889   2.2632237
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Other                Control           1.3928571   0.9772807   1.9851522
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         LNS                  Control           0.9054798   0.7874669   1.0411785
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Control              Control           1.0000000   1.0000000   1.0000000
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         LNS                  Control           1.0285714   0.6065659   1.7441785
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Other                Control           0.5223214   0.2260779   1.2067508


### Parameter: PAR


mhtcm       agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=160       Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.0006787   -0.0013441   -0.0000133
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0041490   -0.0027449    0.0110429
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0315835   -0.0552170   -0.0079500
>=160       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0044872   -0.0121235    0.0031492
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0001266   -0.0097942    0.0095409
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0192098   -0.0144510    0.0528705
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0443861   -0.0457463    0.1345185
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0026316   -0.0128170    0.0180802
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0126605   -0.0194298    0.0447508
>=160       24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.0173581   -0.0598496    0.0251334
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0864341    0.0217387    0.1511295
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0397196   -0.0788715    0.1583108
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0081003   -0.0248857    0.0410864
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0107541   -0.0257354    0.0042272
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0514874   -0.2491779    0.1462031
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0365854   -0.2160893    0.1429186
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0250000   -0.1299741    0.0799741
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0410891   -0.0900667    0.0078885
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0073235   -0.0242240    0.0095769
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0056629   -0.1233448    0.1346706
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0051366   -0.0265666    0.0368397
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0183572   -0.0281211   -0.0085933
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0563454   -0.1613809    0.0486900
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0333333   -0.0933271    0.1599938
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0051485   -0.0700636    0.0803606
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1514066   -0.2298185   -0.0729948
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0031928   -0.0893450    0.0829593
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0086590   -0.0632619    0.0459439
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0300361   -0.0680028    0.0079305
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0111173   -0.0436202    0.0658547
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0138249   -0.1750491    0.2026988
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0096813   -0.0190853   -0.0002773
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0223646   -0.1166322    0.0719029
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0662879   -0.1309692   -0.0016066
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0346320   -0.0926030    0.1618671
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0067254   -0.0202138    0.0067630
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0209121   -0.0299541   -0.0118702
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0367674   -0.1033130    0.0297782
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0256410   -0.1220015    0.0707195
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0081395   -0.0574781    0.0737572
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.0432448   -0.1160938    0.0296043
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0045272   -0.0488162    0.0578707
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.1000000   -0.1867887   -0.0132113
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0017754   -0.0172693    0.0208202
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0397065    0.0178002    0.0616128
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0415363   -0.0818970   -0.0011757
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0830200   -0.1183307   -0.0477093
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0381951   -0.1612378    0.0848476
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0145234   -0.0220792   -0.0069677
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0110761   -0.0743647    0.0965169
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0275862   -0.1134609    0.0582885
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0721612   -0.1497015    0.0053792
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0225964   -0.0342829    0.0794756
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0534884   -0.1366367    0.2436134
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0113636   -0.1302653    0.1075380
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0029051   -0.0127511    0.0069408
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0088111   -0.0223278    0.0047057
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0287162   -0.0734222    0.0159898
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.0126581   -0.0574922    0.0321761
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0139308   -0.0288842    0.0010227
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0144179   -0.0289457    0.0001099
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1279412   -0.1867893   -0.0690930
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0122619   -0.0201403    0.0446642
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0348432   -0.0583333    0.1280197
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0037054   -0.0157689    0.0083581
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0749242   -0.1929246    0.0430763
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0077097   -0.0622278    0.0468084
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0086986   -0.0746711    0.0920683
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0940171   -0.0431025    0.2311367
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0379589   -0.0948627    0.0189449
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0354449   -0.1617998    0.0909099


### Parameter: PAF


mhtcm       agecat      studyid                     country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  ----------  --------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
>=160       Birth       ki1119695-PROBIT            BELARUS                        Control              NA                -0.3605318   -1.0334183    0.0896872
>=160       Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0479106   -0.0310151    0.1207944
>=160       Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.2015525   -0.4007553   -0.0306786
>=160       6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.0837349   -0.2512818    0.0613774
>=160       6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0010339   -0.0832403    0.0749339
>=160       6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.1061463   -0.0768122    0.2580188
>=160       6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1592262   -0.2341846    0.4272327
>=160       6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0789474   -0.4651736    0.4209984
>=160       24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                 0.0583181   -0.1016564    0.1950624
>=160       24 months   ki1119695-PROBIT            BELARUS                        Control              NA                -0.1624909   -0.7348229    0.2210241
>=160       24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.2703030    0.1046085    0.4053353
>=160       24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1370968   -0.3857085    0.4626561
<145        Birth       ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.0801034   -0.2759684    0.3368097
<145        Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0229211   -0.0561168    0.0092312
<145        6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.1393189   -0.8227209    0.2878517
<145        6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.0789474   -0.5895301    0.2676279
<145        6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0526316   -0.3134152    0.1563724
<145        6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0674797   -0.1570564    0.0151622
<145        6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0171484   -0.0582120    0.0223218
<145        24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0082086   -0.1975934    0.1786443
[145-150)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.0426195   -0.2455537    0.2641205
[145-150)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0520807   -0.0816718   -0.0232991
[145-150)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3396825   -1.1429012    0.1624675
[145-150)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                 0.0909091   -0.2862209    0.3574617
[145-150)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0106122   -0.1552814    0.1526842
[145-150)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.3054696   -0.5316671   -0.1126770
[145-150)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.0108932   -0.3563267    0.2465642
[145-150)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0219298   -0.1735003    0.1100636
[145-150)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0693792   -0.1676117    0.0205888
[145-150)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0252844   -0.1039466    0.1393873
[145-150)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.0257143   -0.3973404    0.3206862
[145-150)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0329635   -0.0665956   -0.0003920
[145-150)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.0492802   -0.2790491    0.1392130
[145-150)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0841346   -0.1770571    0.0014521
[145-150)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                 0.0571429   -0.1634551    0.2359142
[150-155)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0591536   -0.1926420    0.0593938
[150-155)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0768133   -0.1132671   -0.0415531
[150-155)   6 months    ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.3768657   -1.2421647    0.1544961
[150-155)   6 months    ki1000125-AgaKhanUniv       PAKISTAN                       Control              NA                -0.0833333   -0.4827347    0.2084820
[150-155)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                 0.0264151   -0.2046850    0.2131822
[150-155)   6 months    ki1000304b-SAS-FoodSuppl    INDIA                          Control              NA                -0.1286796   -0.4025470    0.0917113
[150-155)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                 0.0352532   -0.4838008    0.3727349
[150-155)   6 months    ki1112895-Guatemala BSC     GUATEMALA                      Control              NA                -0.4000000   -1.0053356    0.0226075
[150-155)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                 0.0156529   -0.1643542    0.1678312
[150-155)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                 0.1879556    0.0986509    0.2684121
[150-155)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.1223758   -0.2649341    0.0041161
[150-155)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.2346037   -0.3647473   -0.1168707
[150-155)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                -0.0885801   -0.4151004    0.1625989
[150-155)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0761327   -0.1197358   -0.0342276
[150-155)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                 0.0302696   -0.2337454    0.2377867
[150-155)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0583942   -0.2568643    0.1087358
[150-155)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.0953995   -0.2138966    0.0115302
[150-155)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0382883   -0.0590286    0.1266625
[150-155)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1179487   -0.4194684    0.4518973
[150-155)   24 months   kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0312500   -0.4303169    0.2564748
[155-160)   Birth       ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0270073   -0.1254599    0.0628329
[155-160)   Birth       kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0444232   -0.1181488    0.0244413
[155-160)   6 months    ki1000304b-SAS-CompFeed     INDIA                          Control              NA                -0.1531532   -0.4677947    0.0940407
[155-160)   6 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   Control              NA                -0.1307233   -0.7015855    0.2486213
[155-160)   6 months    ki1119695-PROBIT            BELARUS                        Control              NA                -0.1570696   -0.3729730    0.0248825
[155-160)   6 months    ki1126311-ZVITAMBO          ZIMBABWE                       Control              NA                -0.0785366   -0.1674423    0.0035986
[155-160)   6 months    ki1135781-COHORTS           GUATEMALA                      Control              NA                -0.5178571   -0.9638280   -0.1731630
[155-160)   6 months    ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                 0.0440729   -0.0740219    0.1491826
[155-160)   6 months    ki1148112-LCNI-5            MALAWI                         Control              NA                 0.1086957   -0.2348446    0.3566612
[155-160)   6 months    kiGH5241-JiVitA-3           BANGLADESH                     Control              NA                -0.0318724   -0.1447492    0.0698742
[155-160)   24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     Control              NA                -0.2983092   -0.8634441    0.0954348
[155-160)   24 months   ki1000111-WASH-Kenya        KENYA                          Control              NA                -0.0214194   -0.1846944    0.1193529
[155-160)   24 months   ki1119695-PROBIT            BELARUS                        Control              NA                 0.0663265   -0.7640729    0.5058333
[155-160)   24 months   ki1135781-COHORTS           GUATEMALA                      Control              NA                 0.1692308   -0.0684202    0.3540205
[155-160)   24 months   ki1148112-iLiNS-DOSE        MALAWI                         Control              NA                -0.0842757   -0.2303915    0.0444881
[155-160)   24 months   ki1148112-LCNI-5            MALAWI                         Control              NA                -0.1095571   -0.5777503    0.2197010
