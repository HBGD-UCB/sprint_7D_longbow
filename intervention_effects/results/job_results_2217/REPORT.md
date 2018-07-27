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

* nrooms
* agecat
* studyid
* country

## Data Summary

nrooms   agecat      studyid                  country      tr          stunted   n_cell       n
-------  ----------  -----------------------  -----------  ---------  --------  -------  ------
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           0       44      96
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           1       19      96
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0       27      96
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          1        6      96
4+       6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           0       13      29
4+       6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           1        5      29
4+       6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0       10      29
4+       6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          1        1      29
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           0       51     108
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           1       28     108
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0       19     108
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          1       10     108
3        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           0       16      34
3        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control           1        3      34
3        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0       12      34
3        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal          1        3      34
1        24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control           1        1       1
1        Birth       ki1000125-AgaKhanUniv    PAKISTAN     Control           0        2       3
1        Birth       ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0        1       3
4+       Birth       ki1000125-AgaKhanUniv    PAKISTAN     Maternal          0        1       1
4+       6 months    ki1000304-VITAMIN-A      INDIA        Control           0       57     165
4+       6 months    ki1000304-VITAMIN-A      INDIA        Control           1       21     165
4+       6 months    ki1000304-VITAMIN-A      INDIA        VitA              0       71     165
4+       6 months    ki1000304-VITAMIN-A      INDIA        VitA              1       16     165
1        6 months    ki1000304-VITAMIN-A      INDIA        Control           0      487    1523
1        6 months    ki1000304-VITAMIN-A      INDIA        Control           1      283    1523
1        6 months    ki1000304-VITAMIN-A      INDIA        VitA              0      494    1523
1        6 months    ki1000304-VITAMIN-A      INDIA        VitA              1      259    1523
2        6 months    ki1000304-VITAMIN-A      INDIA        Control           0      196     614
2        6 months    ki1000304-VITAMIN-A      INDIA        Control           1      111     614
2        6 months    ki1000304-VITAMIN-A      INDIA        VitA              0      202     614
2        6 months    ki1000304-VITAMIN-A      INDIA        VitA              1      105     614
3        6 months    ki1000304-VITAMIN-A      INDIA        Control           0       73     206
3        6 months    ki1000304-VITAMIN-A      INDIA        Control           1       37     206
3        6 months    ki1000304-VITAMIN-A      INDIA        VitA              0       64     206
3        6 months    ki1000304-VITAMIN-A      INDIA        VitA              1       32     206
3        6 months    ki1000304-ZnMort         INDIA        Control           0        3      15
3        6 months    ki1000304-ZnMort         INDIA        Control           1        2      15
3        6 months    ki1000304-ZnMort         INDIA        Zinc              0        8      15
3        6 months    ki1000304-ZnMort         INDIA        Zinc              1        2      15
2        24 months   ki1000304-ZnMort         INDIA        Control           0       11      50
2        24 months   ki1000304-ZnMort         INDIA        Control           1       12      50
2        24 months   ki1000304-ZnMort         INDIA        Zinc              0       13      50
2        24 months   ki1000304-ZnMort         INDIA        Zinc              1       14      50
1        24 months   ki1000304-ZnMort         INDIA        Control           0       10      64
1        24 months   ki1000304-ZnMort         INDIA        Control           1       27      64
1        24 months   ki1000304-ZnMort         INDIA        Zinc              0       10      64
1        24 months   ki1000304-ZnMort         INDIA        Zinc              1       17      64
2        6 months    ki1000304-ZnMort         INDIA        Control           0       19      47
2        6 months    ki1000304-ZnMort         INDIA        Control           1        9      47
2        6 months    ki1000304-ZnMort         INDIA        Zinc              0       14      47
2        6 months    ki1000304-ZnMort         INDIA        Zinc              1        5      47
4+       24 months   ki1000304-ZnMort         INDIA        Control           0        3      13
4+       24 months   ki1000304-ZnMort         INDIA        Control           1        4      13
4+       24 months   ki1000304-ZnMort         INDIA        Zinc              0        4      13
4+       24 months   ki1000304-ZnMort         INDIA        Zinc              1        2      13
3        24 months   ki1000304-ZnMort         INDIA        Control           0        3      10
3        24 months   ki1000304-ZnMort         INDIA        Control           1        4      10
3        24 months   ki1000304-ZnMort         INDIA        Zinc              0        1      10
3        24 months   ki1000304-ZnMort         INDIA        Zinc              1        2      10
1        6 months    ki1000304-ZnMort         INDIA        Control           0       25      65
1        6 months    ki1000304-ZnMort         INDIA        Control           1       18      65
1        6 months    ki1000304-ZnMort         INDIA        Zinc              0        9      65
1        6 months    ki1000304-ZnMort         INDIA        Zinc              1       13      65
4+       6 months    ki1000304-ZnMort         INDIA        Control           0        7      17
4+       6 months    ki1000304-ZnMort         INDIA        Control           1        2      17
4+       6 months    ki1000304-ZnMort         INDIA        Zinc              0        7      17
4+       6 months    ki1000304-ZnMort         INDIA        Zinc              1        1      17
2        6 months    ki1017093b-PROVIDE       BANGLADESH   Control           0        2       9
2        6 months    ki1017093b-PROVIDE       BANGLADESH   Control           1        0       9
2        6 months    ki1017093b-PROVIDE       BANGLADESH   Other             0        6       9
2        6 months    ki1017093b-PROVIDE       BANGLADESH   Other             1        1       9
1        6 months    ki1017093b-PROVIDE       BANGLADESH   Control           0        6      31
1        6 months    ki1017093b-PROVIDE       BANGLADESH   Control           1        1      31
1        6 months    ki1017093b-PROVIDE       BANGLADESH   Other             0       18      31
1        6 months    ki1017093b-PROVIDE       BANGLADESH   Other             1        6      31
3        6 months    ki1017093b-PROVIDE       BANGLADESH   Control           0        0       5
3        6 months    ki1017093b-PROVIDE       BANGLADESH   Control           1        1       5
3        6 months    ki1017093b-PROVIDE       BANGLADESH   Other             0        4       5
3        6 months    ki1017093b-PROVIDE       BANGLADESH   Other             1        0       5
1        24 months   ki1017093b-PROVIDE       BANGLADESH   Other             0        2       2
4+       6 months    ki1017093b-PROVIDE       BANGLADESH   Other             1        1       1
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           0       76     701
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           1       45     701
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               0      402     701
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               1      178     701
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           0       36     340
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           1       18     340
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               0      195     340
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               1       91     340
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           0       18     294
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           1       28     294
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               0      109     294
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               1      139     294
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           0       13     142
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           1       11     142
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               0       55     142
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               1       63     142
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           0       52     445
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           1       26     445
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               0      258     445
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               1      109     445
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           0       36     265
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       Control           1        6     265
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               0      165     265
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS               1       58     265
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           0       16     115
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           1        7     115
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               0       57     115
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               1       35     115
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           0       15     180
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control           1       18     180
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               0       74     180
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS               1       73     180
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           0       25     124
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           1        9     124
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0       66     124
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1       24     124
3        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           0        9      54
3        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           1        3      54
3        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0       35      54
3        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1        7      54
2        24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control           0        0       4
2        24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control           1        1       4
2        24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0        1       4
2        24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1        2       4
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           0       36     108
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           1        9     108
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0       49     108
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1       14     108
4+       6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           0        8      32
4+       6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control           1        1      32
4+       6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0       21      32
4+       6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1        2      32
4+       24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control           1        1       2
4+       24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          1        1       2
1        24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0        1       1
3        24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Maternal          0        1       1
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           0     3960   12327
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           1     2093   12327
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          0     4363   12327
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          1     1911   12327
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           0     3400    9595
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           1     1265    9595
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          0     3703    9595
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          1     1227    9595
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           0     1681    5117
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           1      917    5117
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          0     1696    5117
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          1      823    5117
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           0     1762    4730
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           1      674    4730
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          0     1705    4730
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          1      589    4730
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           0      219     584
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           1       65     584
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          0      231     584
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          1       69     584
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           0      650    1687
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           1      189    1687
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          0      686    1687
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          1      162    1687
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           0      548    1561
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control           1      248    1561
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          0      556    1561
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal          1      209    1561
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           0      306     741
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Control           1       45     741
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          0      329     741
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal          1       61     741
3        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           0        3      13
3        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           1        1      13
3        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          0        5      13
3        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          1        4      13
2        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           0        7      35
2        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           1       13      35
2        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          0        3      35
2        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          1       12      35
4+       24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           0        4       9
4+       24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           1        1       9
4+       24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          0        4       9
4+       24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          1        0       9
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           0       10      41
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control           1        6      41
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          0       11      41
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal          1       14      41
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           0       47     260
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           1        6     260
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               0       64     260
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               1        9     260
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             0      101     260
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             1       33     260
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           0      232    1216
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           1       79    1216
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               0      273    1216
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               1       70    1216
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             0      415    1216
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             1      147    1216
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           0      104     506
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           1       47     506
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               0       84     506
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               1       43     506
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             0      166     506
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             1       62     506
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           0      565    2831
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           1      186    2831
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               0      579    2831
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               1      209    2831
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             0      930    2831
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             1      362    2831
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           0      106     485
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control           1       27     485
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               0       87     485
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS               1       33     485
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             0      180     485
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other             1       52     485
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           0       91     650
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           1       78     650
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               0      101     650
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               1       79     650
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             0      165     650
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             1      136     650
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           0       30     207
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           1       16     207
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               0       47     207
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               1       17     207
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             0       70     207
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             1       27     207
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           0       43     283
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           1       31     283
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               0       55     283
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               1       23     283
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             0       82     283
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             1       49     283
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           0       21     104
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           1       10     104
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               0       17     104
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               1       10     104
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             0       33     104
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             1       13     104
3        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           0       18      83
3        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           1        4      83
3        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               0       18      83
3        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               1        9      83
3        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             0       26      83
3        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             1        8      83
4+       Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           0        3      26
4+       Birth       kiGH5241-JiVitA-4        BANGLADESH   Control           1        2      26
4+       Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               0        4      26
4+       Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS               1        5      26
4+       Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             0        5      26
4+       Birth       kiGH5241-JiVitA-4        BANGLADESH   Other             1        7      26
4+       24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           0        9      57
4+       24 months   kiGH5241-JiVitA-4        BANGLADESH   Control           1        2      57
4+       24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               0       11      57
4+       24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS               1        7      57
4+       24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             0       21      57
4+       24 months   kiGH5241-JiVitA-4        BANGLADESH   Other             1        7      57
2        6 months    iLiNS_DYADM_LNS          MALAWI       Control           0       25      81
2        6 months    iLiNS_DYADM_LNS          MALAWI       Control           1        9      81
2        6 months    iLiNS_DYADM_LNS          MALAWI       LNS               0       38      81
2        6 months    iLiNS_DYADM_LNS          MALAWI       LNS               1        9      81
3        6 months    iLiNS_DYADM_LNS          MALAWI       Control           0        9      35
3        6 months    iLiNS_DYADM_LNS          MALAWI       Control           1        3      35
3        6 months    iLiNS_DYADM_LNS          MALAWI       LNS               0       19      35
3        6 months    iLiNS_DYADM_LNS          MALAWI       LNS               1        4      35
2        24 months   iLiNS_DYADM_LNS          MALAWI       Control           1        1       2
2        24 months   iLiNS_DYADM_LNS          MALAWI       LNS               1        1       2
1        6 months    iLiNS_DYADM_LNS          MALAWI       Control           0       36      78
1        6 months    iLiNS_DYADM_LNS          MALAWI       Control           1        9      78
1        6 months    iLiNS_DYADM_LNS          MALAWI       LNS               0       28      78
1        6 months    iLiNS_DYADM_LNS          MALAWI       LNS               1        5      78
4+       6 months    iLiNS_DYADM_LNS          MALAWI       Control           0        8      14
4+       6 months    iLiNS_DYADM_LNS          MALAWI       Control           1        1      14
4+       6 months    iLiNS_DYADM_LNS          MALAWI       LNS               0        5      14
4+       6 months    iLiNS_DYADM_LNS          MALAWI       LNS               1        0      14
4+       24 months   iLiNS_DYADM_LNS          MALAWI       Control           1        1       2
4+       24 months   iLiNS_DYADM_LNS          MALAWI       LNS               1        1       2
1        24 months   iLiNS_DYADM_LNS          MALAWI       LNS               0        1       1
3        24 months   iLiNS_DYADM_LNS          MALAWI       LNS               0        1       1


The following strata were considered:

* nrooms: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 2, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 2, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 2, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 2, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 2, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 2, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 2, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 2, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 2, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 3, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 3, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 3, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 4+, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 4+, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 4+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 4+, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 4+, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 4+, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 4+, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 4+, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 4+, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 4+, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* nrooms: 4+, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 3, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 3, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 4+, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 3, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 4+, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 2, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 2, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 2, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 4+, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 3, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 3, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 2, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 4+, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 4+, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* nrooms: 3, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3a3a3529-6832-4e1f-97de-b3e009ca12e8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3a3a3529-6832-4e1f-97de-b3e009ca12e8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3a3a3529-6832-4e1f-97de-b3e009ca12e8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3a3a3529-6832-4e1f-97de-b3e009ca12e8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


nrooms   agecat      studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.3457790   0.3391706   0.3523873
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.3045904   0.2981201   0.3110607
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.3112583   0.2384417   0.3840748
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.3385827   0.2404378   0.4367275
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2719298   0.2096568   0.3342028
1        6 months    iLiNS_DYADM_LNS          MALAWI       Control              NA                0.2000000   0.1321388   0.2678612
1        6 months    iLiNS_DYADM_LNS          MALAWI       LNS                  NA                0.1515152   0.0994242   0.2036061
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                0.3544304   0.2769137   0.4319470
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal             NA                0.3448276   0.2981593   0.3914959
1        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                0.3675325   0.3503097   0.3847552
1        6 months    ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.3439575   0.3271769   0.3607381
1        6 months    ki1000304-ZnMort         INDIA        Control              NA                0.4186047   0.2700048   0.5672045
1        6 months    ki1000304-ZnMort         INDIA        Zinc                 NA                0.5909091   0.3838598   0.7979584
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3333333   0.3133347   0.3533319
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.3181818   0.2727078   0.3636559
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.2000000   0.1510773   0.2489227
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             NA                0.2222222   0.1620583   0.2823861
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2711683   0.2636125   0.2787240
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.2488844   0.2418059   0.2559629
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.2476698   0.2121693   0.2831703
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2652284   0.2317751   0.2986817
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2801858   0.2507148   0.3096568
1        24 months   ki1000304-ZnMort         INDIA        Control              NA                0.7297297   0.5855026   0.8739569
1        24 months   ki1000304-ZnMort         INDIA        Zinc                 NA                0.6296296   0.4460406   0.8132186
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.4583333   0.4245224   0.4921442
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.5338983   0.4588389   0.6089577
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.3750000   0.2812779   0.4687221
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.5600000   0.4398797   0.6801203
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.4615385   0.3749815   0.5480954
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.4388889   0.3580747   0.5197030
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.4518272   0.3858899   0.5177646
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.3529638   0.3418932   0.3640344
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.3267170   0.3159606   0.3374733
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.3478261   0.1957504   0.4999018
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2656250   0.1638461   0.3674039
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2783505   0.1853816   0.3713194
2        6 months    iLiNS_DYADM_LNS          MALAWI       Control              NA                0.2647059   0.2020716   0.3273402
2        6 months    iLiNS_DYADM_LNS          MALAWI       LNS                  NA                0.1914894   0.1258106   0.2571681
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                0.3015873   0.2268248   0.3763498
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal             NA                0.1818182   0.1363454   0.2272909
2        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                0.3615635   0.3346696   0.3884574
2        6 months    ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.3420195   0.3154652   0.3685738
2        6 months    ki1000304-ZnMort         INDIA        Control              NA                0.3214286   0.1465731   0.4962840
2        6 months    ki1000304-ZnMort         INDIA        Zinc                 NA                0.2631579   0.0630166   0.4632992
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3719008   0.3570257   0.3867759
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.3068966   0.2758188   0.3379743
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.2647059   0.2238799   0.3055319
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             NA                0.2666667   0.2000871   0.3332462
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2766831   0.2666150   0.2867512
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.2567568   0.2466473   0.2668662
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.2540193   0.1942705   0.3137681
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2040816   0.1544754   0.2536878
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2615658   0.2172673   0.3058644
2        24 months   ki1000304-ZnMort         INDIA        Control              NA                0.5217391   0.3155194   0.7279589
2        24 months   ki1000304-ZnMort         INDIA        Zinc                 NA                0.5185185   0.3281369   0.7089002
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.6086957   0.5865913   0.6308000
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.5604839   0.5082881   0.6126797
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.4189189   0.2936722   0.5441657
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2948718   0.1951407   0.3946028
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.3740458   0.2847478   0.4633438
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.3115578   0.2921529   0.3309627
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.2732026   0.2539357   0.2924695
3        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                0.3363636   0.2891026   0.3836247
3        6 months    ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.3333333   0.2892812   0.3773855
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3333333   0.3149757   0.3516910
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2970027   0.2584046   0.3356009
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2252682   0.2076214   0.2429149
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.1910377   0.1755655   0.2065100
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.2030075   0.1253034   0.2807116
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2750000   0.1846610   0.3653390
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2241379   0.1687845   0.2794914
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.5454545   0.5142218   0.5766873
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.4965986   0.4304069   0.5627904
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.3225806   0.1646671   0.4804942
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.3703704   0.1879646   0.5527762
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2826087   0.1471929   0.4180245
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2288732   0.2013453   0.2564012
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.2300000   0.2025143   0.2574857
4+       6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                0.2692308   0.2225558   0.3159057
4+       6 months    ki1000304-VITAMIN-A      INDIA        VitA                 NA                0.1839080   0.1408540   0.2269621
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.1428571   0.1260526   0.1596616
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2600897   0.2115467   0.3086327
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.1282051   0.1071671   0.1492432
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             NA                0.1564103   0.1359979   0.1768226
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.1132075   0.0173183   0.2090968
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.1232877   0.0457925   0.2007828
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2462687   0.1681591   0.3243782
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3043478   0.2665739   0.3421217
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.3804348   0.3007227   0.4601469


### Parameter: E(Y)


nrooms   agecat      studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.3248154   0.3153836   0.3342473
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.3003953   0.2571071   0.3436834
1        6 months    iLiNS_DYADM_LNS          MALAWI       NA                   NA                0.1794872   0.0937711   0.2652032
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     NA                   NA                0.3518519   0.2613675   0.4423362
1        6 months    ki1000304-VITAMIN-A      INDIA        NA                   NA                0.3558766   0.3318232   0.3799299
1        6 months    ki1000304-ZnMort         INDIA        NA                   NA                0.4769231   0.3545559   0.5992903
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.3205882   0.2709074   0.3702690
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.2129630   0.1353908   0.2905351
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2597186   0.2493186   0.2701186
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2673967   0.2484887   0.2863047
1        24 months   ki1000304-ZnMort         INDIA        NA                   NA                0.6875000   0.5730438   0.8019562
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.5211268   0.4386711   0.6035824
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.4878049   0.3329022   0.6427075
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.4507692   0.4067281   0.4948103
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.3400430   0.3245649   0.3555210
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2898551   0.2261376   0.3535726
2        6 months    iLiNS_DYADM_LNS          MALAWI       NA                   NA                0.2222222   0.1311209   0.3133235
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     NA                   NA                0.2604167   0.1721668   0.3486666
2        6 months    ki1000304-VITAMIN-A      INDIA        NA                   NA                0.3517915   0.3139893   0.3895938
2        6 months    ki1000304-ZnMort         INDIA        NA                   NA                0.2978723   0.1657147   0.4300300
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.3181170   0.2836147   0.3526192
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.2661290   0.1880289   0.3442291
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2670190   0.2527371   0.2813010
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2434211   0.2141565   0.2726856
2        24 months   ki1000304-ZnMort         INDIA        NA                   NA                0.5200000   0.3801146   0.6598854
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.5680272   0.5113084   0.6247460
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.3639576   0.3042895   0.4236256
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2927611   0.2654038   0.3201183
3        6 months    ki1000304-VITAMIN-A      INDIA        NA                   NA                0.3349515   0.2703431   0.3995598
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.3033708   0.2606101   0.3461314
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2080616   0.1845405   0.2315828
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2309278   0.1902106   0.2716451
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.5055556   0.4323128   0.5787983
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.3173077   0.2274099   0.4072055
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2294521   0.1905536   0.2683505
4+       6 months    ki1000304-VITAMIN-A      INDIA        NA                   NA                0.2242424   0.1604090   0.2880758
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.2415094   0.1898811   0.2931378
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.1430499   0.1137367   0.1723632
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.1846154   0.1343302   0.2349006
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.3652174   0.2768313   0.4536035


### Parameter: RR


nrooms   agecat      studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           0.8808818   0.8560639   0.9064191
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.0877869   0.7494396   1.5788869
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.8736469   0.6296236   1.2122464
1        6 months    iLiNS_DYADM_LNS          MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    iLiNS_DYADM_LNS          MALAWI       LNS                  Control           0.7575758   0.4673525   1.2280260
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal             Control           0.9729064   0.7522679   1.2582576
1        6 months    ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304-VITAMIN-A      INDIA        VitA                 Control           0.9358561   0.8746424   1.0013539
1        6 months    ki1000304-ZnMort         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304-ZnMort         INDIA        Zinc                 Control           1.4116162   0.8572257   2.3245455
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.9545455   0.8174867   1.1145833
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             Control           1.1111111   0.7714251   1.6003730
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           0.9178226   0.8819869   0.9551144
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.0708954   0.8847239   1.2962428
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.1312877   0.9469520   1.3515065
1        24 months   ki1000304-ZnMort         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1000304-ZnMort         INDIA        Zinc                 Control           0.8628258   0.6066534   1.2271725
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.1648690   0.9938613   1.3653010
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           1.4933333   1.0742879   2.0758351
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.9509259   0.7311260   1.2368047
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.9789590   0.7719604   1.2414636
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           0.9256386   0.8844914   0.9687001
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.7636719   0.4269895   1.3658292
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.8002577   0.4616131   1.3873360
2        6 months    iLiNS_DYADM_LNS          MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    iLiNS_DYADM_LNS          MALAWI       LNS                  Control           0.7234043   0.4768868   1.0973541
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Maternal             Control           0.6028708   0.4239276   0.8573474
2        6 months    ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1000304-VITAMIN-A      INDIA        VitA                 Control           0.9459459   0.8495145   1.0533237
2        6 months    ki1000304-ZnMort         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1000304-ZnMort         INDIA        Zinc                 Control           0.8187135   0.3213944   2.0855736
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.8252107   0.7400823   0.9201312
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Maternal             Control           1.0074074   0.7511957   1.3510057
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           0.9279814   0.8795402   0.9790905
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.8034100   0.5728796   1.1267072
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.0297085   0.7705849   1.3759674
2        24 months   ki1000304-ZnMort         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
2        24 months   ki1000304-ZnMort         INDIA        Zinc                 Control           0.9938272   0.5794537   1.7045234
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.9207949   0.8332063   1.0175911
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.7038875   0.4481538   1.1055527
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.8928835   0.6091656   1.3087426
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           0.8768923   0.7981592   0.9633918
3        6 months    ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
3        6 months    ki1000304-VITAMIN-A      INDIA        VitA                 Control           0.9909910   0.8171427   1.2018258
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.8910082   0.7737176   1.0260792
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           0.8480458   0.7576762   0.9491941
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.3546296   0.8180914   2.2430520
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.1040868   0.7001676   1.7410227
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.9104308   0.7874887   1.0525667
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.1481481   0.5733385   2.2992424
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.8760870   0.4416431   1.7378927
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           1.0049231   0.8481933   1.1906135
4+       6 months    ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4+       6 months    ki1000304-VITAMIN-A      INDIA        VitA                 Control           0.6830870   0.5104606   0.9140919
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.8206278   1.4601881   2.2700401
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Maternal             Control           1.2200000   0.9892856   1.5045201
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.0890411   0.3792802   3.1270032
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           2.1753731   0.8805508   5.3741910
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.2500000   0.9798202   1.5946803


### Parameter: PAR


nrooms   agecat      studyid                  country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  -----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0209635   -0.0277063   -0.0142207
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0108630   -0.0743074    0.0525813
1        6 months    iLiNS_DYADM_LNS          MALAWI       Control              NA                -0.0205128   -0.0728778    0.0318522
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0025785   -0.0492538    0.0440968
1        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0116559   -0.0284469    0.0051351
1        6 months    ki1000304-ZnMort         INDIA        Control              NA                 0.0583184   -0.0302230    0.1468598
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0127451   -0.0582230    0.0327328
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0129630   -0.0472368    0.0731627
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0114497   -0.0186158   -0.0042835
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0197269   -0.0110357    0.0504895
1        24 months   ki1000304-ZnMort         INDIA        Control              NA                -0.0422297   -0.1414768    0.0570173
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0627934   -0.0124114    0.1379982
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.1128049   -0.0105281    0.2361378
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0107692   -0.0852039    0.0636655
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0129208   -0.0237369   -0.0021048
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0579710   -0.1880353    0.0720933
2        6 months    iLiNS_DYADM_LNS          MALAWI       Control              NA                -0.0424837   -0.1086379    0.0236706
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0411706   -0.0880601    0.0057188
2        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0097720   -0.0363375    0.0167936
2        6 months    ki1000304-ZnMort         INDIA        Control              NA                -0.0235562   -0.1313104    0.0841980
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0537839   -0.0849148   -0.0226529
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0014231   -0.0651566    0.0680029
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0096641   -0.0198018    0.0004737
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0105982   -0.0615717    0.0403753
2        24 months   ki1000304-ZnMort         INDIA        Control              NA                -0.0017391   -0.1532979    0.1498196
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0406684   -0.0929027    0.0115659
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0549613   -0.1604053    0.0504826
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0187967   -0.0380948    0.0005014
3        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0014122   -0.0454648    0.0426404
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0299625   -0.0685821    0.0086570
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0172065   -0.0327619   -0.0016511
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0279203   -0.0383619    0.0942025
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0398990   -0.1061487    0.0263507
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0052730   -0.1400169    0.1294710
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0005788   -0.0269073    0.0280649
4+       6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0449883   -0.0885332   -0.0014435
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0986523    0.0498353    0.1474693
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0148448   -0.0055888    0.0352784
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0714078   -0.0179370    0.1607527
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0608696   -0.0190381    0.1407772


### Parameter: PAF


nrooms   agecat      studyid                  country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  -----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
1        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0645397   -0.0869064   -0.0426334
1        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0361624   -0.2712026    0.1554197
1        6 months    iLiNS_DYADM_LNS          MALAWI       Control              NA                -0.1142857   -0.4955998    0.1698096
1        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0073284   -0.1502364    0.1178243
1        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0327527   -0.0826750    0.0148677
1        6 months    ki1000304-ZnMort         INDIA        Control              NA                 0.1222806   -0.0864260    0.2908938
1        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0397554   -0.1982512    0.0977758
1        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0608696   -0.2464106    0.2923953
1        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0440849   -0.0733204   -0.0156457
1        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0737739   -0.0486335    0.1818927
1        24 months   ki1000304-ZnMort         INDIA        Control              NA                -0.0614251   -0.2175789    0.0747021
1        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.1204955   -0.0163205    0.2388935
1        24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.2312500    0.0036287    0.4068711
1        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0238908   -0.2030945    0.1286202
2        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0379976   -0.0715689   -0.0054781
2        Birth       kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.2000000   -0.7389581    0.1719179
2        6 months    iLiNS_DYADM_LNS          MALAWI       Control              NA                -0.1911765   -0.6097084    0.1185351
2        6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.1580952   -0.3924266    0.0368005
2        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0277778   -0.1084275    0.0470038
2        6 months    ki1000304-ZnMort         INDIA        Control              NA                -0.0790816   -0.5086459    0.2281707
2        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.1690694   -0.2895606   -0.0598365
2        6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0053476   -0.2773887    0.2255032
2        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0361924   -0.0763126    0.0024323
2        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0435387   -0.2752654    0.1460813
2        24 months   ki1000304-ZnMort         INDIA        Control              NA                -0.0033445   -0.3415533    0.2496011
2        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0715959   -0.1748532    0.0225861
2        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.1510102   -0.4792564    0.1043983
3        Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0642051   -0.1368530    0.0038005
3        6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0042161   -0.1453703    0.1195424
3        6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0987654   -0.2480781    0.0326843
3        6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0826992   -0.1670734   -0.0044249
3        6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.1209049   -0.2195462    0.3663150
3        24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0789211   -0.2300843    0.0536660
3        24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0166178   -0.5441316    0.3306841
4+       Birth       kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0025226   -0.1244171    0.1151316
4+       6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.2006237   -0.4624569    0.0143318
4+       6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.4084821    0.2718862    0.5194523
4+       6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.1037736   -0.0349039    0.2238682
4+       6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.3867925   -0.3413350    0.7196647
4+       24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.1666667   -0.0381589    0.3310808
