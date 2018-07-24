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

* nrooms
* agecat
* studyid
* country

## Data Summary

nrooms   agecat        studyid                  country      tr.x       ever_stunted   n_cell       n
-------  ------------  -----------------------  -----------  --------  -------------  -------  ------
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               0       10      32
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               1        5      32
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 0       12      32
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        5      32
2        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               0       13      34
2        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               1        5      34
2        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 0       13      34
2        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        3      34
4+       0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               0        7      16
4+       0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               1        1      16
4+       0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 0        8      16
4+       0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        0      16
3        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               0        5      15
3        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control               1        1      15
3        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 0        8      15
3        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        1      15
4+       0-6 months    ki1000304-VITAMIN-A      INDIA        Control               0        7      20
4+       0-6 months    ki1000304-VITAMIN-A      INDIA        Control               1        3      20
4+       0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 0        8      20
4+       0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 1        2      20
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Control               0       36      87
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Control               1       12      87
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 0       24      87
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 1       15      87
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Control               0       66     205
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Control               1       35     205
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 0       70     205
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 1       34     205
3        0-6 months    ki1000304-VITAMIN-A      INDIA        Control               0        9      22
3        0-6 months    ki1000304-VITAMIN-A      INDIA        Control               1        3      22
3        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 0        7      22
3        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                 1        3      22
2        0-6 months    ki1000304-ZnMort         INDIA        Other                 0       16      57
2        0-6 months    ki1000304-ZnMort         INDIA        Other                 1        9      57
2        0-6 months    ki1000304-ZnMort         INDIA        Zinc                  0       21      57
2        0-6 months    ki1000304-ZnMort         INDIA        Zinc                  1       11      57
1        0-6 months    ki1000304-ZnMort         INDIA        Other                 0       24      82
1        0-6 months    ki1000304-ZnMort         INDIA        Other                 1       22      82
1        0-6 months    ki1000304-ZnMort         INDIA        Zinc                  0       18      82
1        0-6 months    ki1000304-ZnMort         INDIA        Zinc                  1       18      82
4+       0-6 months    ki1000304-ZnMort         INDIA        Other                 0        6      21
4+       0-6 months    ki1000304-ZnMort         INDIA        Other                 1        2      21
4+       0-6 months    ki1000304-ZnMort         INDIA        Zinc                  0        9      21
4+       0-6 months    ki1000304-ZnMort         INDIA        Zinc                  1        4      21
3        0-6 months    ki1000304-ZnMort         INDIA        Other                 0        8      21
3        0-6 months    ki1000304-ZnMort         INDIA        Other                 1        2      21
3        0-6 months    ki1000304-ZnMort         INDIA        Zinc                  0        7      21
3        0-6 months    ki1000304-ZnMort         INDIA        Zinc                  1        4      21
2        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               0       25     101
2        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               1        1     101
2        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 0       68     101
2        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 1        7     101
4+       0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               0        5      22
4+       0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               1        2      22
4+       0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 0       14      22
4+       0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 1        1      22
3        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               0       14      59
3        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               1        3      59
3        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 0       35      59
3        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 1        7      59
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               0       98     458
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control               1       18     458
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 0      292     458
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                 1       50     458
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               0       20     213
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               1       11     213
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      128     213
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       54     213
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               0       44     435
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               1       28     435
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      252     435
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   1      111     435
4+       0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               0       21     173
4+       0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               1        2     173
4+       0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      111     173
4+       0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       39     173
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               0       35     269
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control               1       13     269
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      161     269
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       60     269
3        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control               0        1       5
3        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        0       5
3        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0        1       5
3        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1        2       5
3        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0        1       5
3        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        0       5
2        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control               0        1      12
2        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        2      12
2        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0        5      12
2        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1        0      12
2        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0        2      12
2        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        2      12
1        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control               0        4       9
1        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        0       9
1        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0        1       9
1        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1        0       9
1        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0        3       9
1        0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        1       9
4+       0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Control               0        1       2
4+       0-6 months    ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0        1       2
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               0     3914   11333
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               1     1578   11333
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 0     4455   11333
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 1     1386   11333
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               0     1928    5255
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               1      787    5255
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 0     1895    5255
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 1      645    5255
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               0      352     832
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               1       59     832
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 0      362     832
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 1       59     832
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               0      740    1923
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control               1      234    1923
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 0      745    1923
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                 1      204    1923
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               0      220    1153
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               1       67    1153
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      264    1153
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       95    1153
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   0      139    1153
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   1       42    1153
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 0      261    1153
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 1       65    1153
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               0       40     232
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               1        7     232
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   0       62     232
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       25     232
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   0       25     232
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   1        9     232
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 0       57     232
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 1        7     232
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               0      532    2695
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               1      175    2695
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      623    2695
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   1      219    2695
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   0      284    2695
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   1      120    2695
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 0      530    2695
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 1      212    2695
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               0      113     477
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control               1       25     477
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      121     477
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       27     477
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   0       53     477
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                   1       22     477
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 0       86     477
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                 1       30     477
3        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       34      57
3        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1       19      57
3        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0        4      57
3        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        0      57
2        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       71     139
2        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1       53     139
2        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0       15     139
2        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        0     139
4+       6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       22      34
4+       6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1       10      34
4+       6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0        2      34
4+       6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        0      34
1        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       79     139
1        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1       52     139
1        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0        8     139
1        6-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        0     139
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Control               0       71     169
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Control               1        7     169
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0       84     169
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1        7     169
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Control               0      590    1290
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Control               1       51    1290
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0      594    1290
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1       55    1290
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Control               0      246     530
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Control               1       18     530
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0      250     530
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1       16     530
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Control               0       88     178
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Control               1        8     178
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0       77     178
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1        5     178
4+       6-24 months   ki1000304-ZnMort         INDIA        Other                 0       53     105
4+       6-24 months   ki1000304-ZnMort         INDIA        Zinc                  0       52     105
1        6-24 months   ki1000304-ZnMort         INDIA        Other                 0      178     362
1        6-24 months   ki1000304-ZnMort         INDIA        Zinc                  0      184     362
2        6-24 months   ki1000304-ZnMort         INDIA        Other                 0      135     285
2        6-24 months   ki1000304-ZnMort         INDIA        Zinc                  0      150     285
3        6-24 months   ki1000304-ZnMort         INDIA        Other                 0       64     118
3        6-24 months   ki1000304-ZnMort         INDIA        Zinc                  0       54     118
2        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0       20      80
2        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1        3      80
2        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0       45      80
2        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1       12      80
4+       6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0        5      19
4+       6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1        0      19
4+       6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0       10      19
4+       6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1        4      19
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0       62     349
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1       21     349
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0      194     349
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1       72     349
3        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0       14      49
3        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1        1      49
3        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0       28      49
3        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1        6      49
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       62     434
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1       14     434
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      278     434
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       80     434
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       29     217
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1        6     217
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      138     217
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       44     217
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       37     285
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1        9     285
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      188     285
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       51     285
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       31     188
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1        6     188
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      121     188
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       30     188
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0       20     103
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        8     103
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0       25     103
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1       16     103
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       23     103
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1       11     103
3        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0       10      50
3        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        4      50
3        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0       12      50
3        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1        7      50
3        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       13      50
3        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        4      50
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0       29     100
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1       11     100
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0       23     100
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1       11     100
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       21     100
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        5     100
4+       6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0        7      30
4+       6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        1      30
4+       6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0        2      30
4+       6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1        3      30
4+       6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       13      30
4+       6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        4      30
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0     2831    7535
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1      766    7535
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0     3034    7535
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1      904    7535
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0     1543    3669
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1      326    3669
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0     1457    3669
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1      343    3669
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0      586    1425
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1      115    1425
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0      626    1425
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1       98    1425
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0      294     666
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1       27     666
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0      305     666
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1       40     666
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0      200    1121
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1       87    1121
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      238    1121
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       94    1121
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0      130    1121
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1       51    1121
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0      242    1121
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1       79    1121
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0       42     245
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1       10     245
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0       67     245
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       16     245
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0       27     245
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1       10     245
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0       56     245
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1       17     245
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0      454    2474
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1      228    2474
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      514    2474
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1      234    2474
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0      243    2474
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1      116    2474
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0      475    2474
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1      210    2474
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0       92     466
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1       42     466
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      115     466
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       35     466
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0       49     466
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1       18     466
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0       90     466
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1       25     466
3        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       38      87
3        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1       34      87
3        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0       12      87
3        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        3      87
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       79     233
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1      120     233
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0       28     233
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        6     233
4+       0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       28      68
4+       0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1       29      68
4+       0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0       10      68
4+       0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1        1      68
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               0       81     271
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control               1      160     271
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 0       20     271
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                 1       10     271
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Control               0      588    2193
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Control               1      524    2193
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0      588    2193
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1      493    2193
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Control               0       67     233
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Control               1       49     233
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0       83     233
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1       34     233
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Control               0      241     843
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Control               1      177     843
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0      244     843
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1      181     843
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Control               0       82     274
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Control               1       61     274
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 0       77     274
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                 1       54     274
2        0-24 months   ki1000304-ZnMort         INDIA        Other                 0      151     626
2        0-24 months   ki1000304-ZnMort         INDIA        Other                 1      149     626
2        0-24 months   ki1000304-ZnMort         INDIA        Zinc                  0      171     626
2        0-24 months   ki1000304-ZnMort         INDIA        Zinc                  1      155     626
4+       0-24 months   ki1000304-ZnMort         INDIA        Other                 0       59     195
4+       0-24 months   ki1000304-ZnMort         INDIA        Other                 1       32     195
4+       0-24 months   ki1000304-ZnMort         INDIA        Zinc                  0       61     195
4+       0-24 months   ki1000304-ZnMort         INDIA        Zinc                  1       43     195
1        0-24 months   ki1000304-ZnMort         INDIA        Other                 0      202     948
1        0-24 months   ki1000304-ZnMort         INDIA        Other                 1      289     948
1        0-24 months   ki1000304-ZnMort         INDIA        Zinc                  0      202     948
1        0-24 months   ki1000304-ZnMort         INDIA        Zinc                  1      255     948
3        0-24 months   ki1000304-ZnMort         INDIA        Other                 0       72     228
3        0-24 months   ki1000304-ZnMort         INDIA        Other                 1       45     228
3        0-24 months   ki1000304-ZnMort         INDIA        Zinc                  0       61     228
3        0-24 months   ki1000304-ZnMort         INDIA        Zinc                  1       50     228
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0       20     101
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1        6     101
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0       46     101
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1       29     101
4+       0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0        5      22
4+       0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1        2      22
4+       0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0       10      22
4+       0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1        5      22
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0       12      59
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1        5      59
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0       27      59
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1       15      59
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               0       64     459
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control               1       52     459
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 0      195     459
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                 1      148     459
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       58     701
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1       63     701
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      273     701
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1      307     701
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       29     340
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1       25     340
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      142     340
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1      144     340
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       34     446
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1       44     446
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      182     446
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1      186     446
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               0       28     265
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control               1       14     265
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   0      129     265
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                   1       94     265
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0       19     132
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1       19     132
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0       24     132
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1       24     132
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       20     132
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1       26     132
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0       10      65
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        9      65
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0       12      65
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1       13      65
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       13      65
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        8      65
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0       29     127
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1       21     127
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0       23     127
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1       19     127
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       19     127
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1       16     127
4+       0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               0        7      36
4+       0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control               1        3      36
4+       0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   0        2      36
4+       0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                   1        4      36
4+       0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 0       13      36
4+       0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                 1        7      36
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0     3698   13397
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1     2815   13397
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0     4119   13397
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1     2765   13397
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0     1849    6253
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1     1355    6253
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0     1826    6253
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1     1223    6253
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0      370     991
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1      112     991
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0      387     991
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1      122     991
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               0      727    2273
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control               1      411    2273
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 0      770    2273
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                 1      365    2273
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0      180    1387
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1      178    1387
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      215    1387
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1      197    1387
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0      117    1387
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1      111    1387
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0      222    1387
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1      167    1387
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0       39     286
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1       19     286
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0       59     286
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       47     286
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0       26     286
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1       17     286
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0       53     286
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1       26     286
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0      416    3191
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1      440    3191
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      469    3191
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1      495    3191
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0      219    3191
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1      268    3191
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0      421    3191
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1      463    3191
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               0       88     561
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control               1       70     561
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   0      103     561
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                   1       72     561
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   0       44     561
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                   1       45     561
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 0       78     561
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                 1       61     561


The following strata were considered:

* nrooms: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 2, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 2, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 2, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 2, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 2, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 2, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 2, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 2, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 2, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 2, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 2, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 2, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 2, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 3, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 3, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 3, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 3, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 3, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 3, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 3, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 3, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 3, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 4+, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 4+, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 4+, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 4+, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 4+, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 4+, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 4+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 4+, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* nrooms: 4+, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 4+, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 4+, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 4+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* nrooms: 4+, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* nrooms: 2, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 3, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 3, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* nrooms: 4+, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 3, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* nrooms: 2, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* nrooms: 3, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 2, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 2, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 2, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 3, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 4+, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* nrooms: 3, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* nrooms: 4+, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* nrooms: 4+, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          ever_stunted
## tr.x        0
##   Control   0
##   LNS       0
##   MMN       0
##   Other   178
##   Zinc    184
##          ever_stunted
## tr.x        0
##   Control   0
##   LNS       0
##   MMN       0
##   Other   135
##   Zinc    150
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   64
##   Zinc    54
##          ever_stunted
## tr.x       0
##   Control  0
##   LNS      0
##   MMN      0
##   Other   53
##   Zinc    52
```




# Results Detail

## Results Plots
![](/tmp/e1f19915-b375-48df-8533-0e78d1960a90/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->


```
## Warning: Removed 64 rows containing missing values (geom_errorbar).
```

![](/tmp/e1f19915-b375-48df-8533-0e78d1960a90/REPORT_files/figure-html/plot_rr-1.png)<!-- -->

![](/tmp/e1f19915-b375-48df-8533-0e78d1960a90/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e1f19915-b375-48df-8533-0e78d1960a90/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


nrooms   agecat        studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                0.6639004   0.6107660   0.7170348
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                NA                0.3333333   0.3146250   0.3520417
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.4712230   0.4563428   0.4861033
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.4560592   0.4414203   0.4706981
1        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                0.5885947   0.5450456   0.6321439
1        0-24 months   ki1000304-ZnMort         INDIA        Zinc                 NA                0.5579869   0.5124305   0.6035432
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.4482759   0.4253792   0.4711725
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.4314869   0.3922757   0.4706981
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.4629630   0.4418095   0.4841164
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.5034965   0.4546817   0.5523113
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.4200000   0.2826533   0.5573467
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  NA                0.4523810   0.3012576   0.6035043
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                NA                0.4571429   0.2914517   0.6228340
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.4322125   0.4248093   0.4396157
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.4016560   0.3948171   0.4084949
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.5140187   0.4706550   0.5573824
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.5134855   0.4717559   0.5552151
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.5503080   0.4910928   0.6095232
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.5237557   0.4843463   0.5631651
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                0.3333333   0.2197194   0.4469473
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                NA                0.2941176   0.1772099   0.4110254
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                0.3465347   0.3006992   0.3923701
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                NA                0.3269231   0.2810743   0.3727719
1        0-6 months    ki1000304-ZnMort         INDIA        Other                NA                0.4782609   0.3330187   0.6235030
1        0-6 months    ki1000304-ZnMort         INDIA        Zinc                 NA                0.5000000   0.3356645   0.6643355
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.1551724   0.1384662   0.1718786
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.1461988   0.1182077   0.1741900
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3548387   0.3302678   0.3794096
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2967033   0.2398630   0.3535436
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2873270   0.2803708   0.2942832
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.2372881   0.2315114   0.2430648
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.2475248   0.2068163   0.2882332
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2600950   0.2245948   0.2955952
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.2970297   0.2398040   0.3542554
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2857143   0.2478823   0.3235463
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.0795632   0.0691494   0.0899770
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.0847458   0.0739618   0.0955297
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.2530120   0.2307373   0.2752868
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.2706767   0.2299225   0.3114309
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.1714286   0.1512434   0.1916137
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2417582   0.1894679   0.2940486
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.2750000   0.1359292   0.4140708
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  NA                0.3235294   0.1654875   0.4815714
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                NA                0.1923077   0.0400550   0.3445604
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2129552   0.2053133   0.2205972
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.2295582   0.2215844   0.2375319
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.3343109   0.2920545   0.3765672
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.3128342   0.2715892   0.3540793
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.3231198   0.2517973   0.3944422
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.3065693   0.2671380   0.3460007
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                0.6030151   0.5448310   0.6611991
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                NA                0.1764706   0.1577318   0.1952094
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.4234450   0.3999440   0.4469459
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.4258824   0.4021676   0.4495971
2        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                0.4966667   0.4400434   0.5532899
2        0-24 months   ki1000304-ZnMort         INDIA        Zinc                 NA                0.4754601   0.4212060   0.5297142
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.2307692   0.1888714   0.2726670
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.3866667   0.3044169   0.4689164
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.5206612   0.5052856   0.5360367
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.5293103   0.4956765   0.5629442
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.5000000   0.3404203   0.6595797
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  NA                0.5000000   0.3580129   0.6419871
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                NA                0.5652174   0.4214156   0.7090192
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.4229089   0.4128658   0.4329519
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.4011151   0.3904037   0.4118265
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.4972067   0.4354181   0.5589953
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.4781553   0.4175348   0.5387758
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.4868421   0.4144457   0.5592385
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.4293059   0.3696609   0.4889509
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                0.2500000   0.1820232   0.3179768
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                NA                0.3846154   0.3157726   0.4534581
2        0-6 months    ki1000304-ZnMort         INDIA        Other                NA                0.3600000   0.1701709   0.5498291
2        0-6 months    ki1000304-ZnMort         INDIA        Zinc                 NA                0.3437500   0.1777254   0.5097746
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3888889   0.3702295   0.4075483
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.3057851   0.2661877   0.3453826
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2898711   0.2804143   0.2993278
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.2539370   0.2445100   0.2633640
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.2334495   0.1778261   0.2890729
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2646240   0.2073897   0.3218582
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.2320442   0.1559572   0.3081312
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.1993865   0.1489842   0.2497888
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.0681818   0.0530223   0.0833413
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.0601504   0.0457964   0.0745043
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.1842105   0.1689309   0.1994901
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2234637   0.1878280   0.2590994
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.2857143   0.1175671   0.4538615
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  NA                0.3902439   0.2401991   0.5402887
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                NA                0.3235294   0.1655107   0.4815481
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.1744248   0.1643831   0.1844665
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.1905556   0.1792761   0.2018350
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.3031359   0.2401324   0.3661394
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2831325   0.2262125   0.3400526
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.2817680   0.2095552   0.3539807
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2461059   0.1891489   0.3030629
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.4265734   0.3841901   0.4689568
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.4122137   0.3718401   0.4525874
3        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                0.3846154   0.2962675   0.4729633
3        0-24 months   ki1000304-ZnMort         INDIA        Zinc                 NA                0.4504505   0.3576889   0.5432120
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                0.2941176   0.2311729   0.3570624
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                NA                0.3571429   0.2531003   0.4611854
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.5641026   0.5448353   0.5833698
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.5054348   0.4632390   0.5476306
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                0.4736842   0.2474253   0.6999431
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  NA                0.5200000   0.3226364   0.7173636
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                NA                0.3809524   0.1716363   0.5902684
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.3611599   0.3431858   0.3791341
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.3215859   0.3051863   0.3379855
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.4430380   0.3554652   0.5306107
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.4114286   0.3332225   0.4896346
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.5056180   0.3873691   0.6238668
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.4388489   0.3448620   0.5328359
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.2708333   0.2483589   0.2933078
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2714932   0.2232321   0.3197543
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2402464   0.2234486   0.2570442
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.2149631   0.1990712   0.2308551
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.1811594   0.1084224   0.2538964
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.1824324   0.1233933   0.2414716
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.2933333   0.1869716   0.3996951
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2586207   0.1661572   0.3510842
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.0833333   0.0534312   0.1132355
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.0609756   0.0370493   0.0849019
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.1956522   0.1771164   0.2141879
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.2133891   0.1697545   0.2570238
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.1640514   0.1456116   0.1824911
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.1353591   0.1214870   0.1492312
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.3134328   0.2306629   0.3962027
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2333333   0.1603472   0.3063195
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.2686567   0.1321792   0.4051343
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2173913   0.1311067   0.3036759
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.4224138   0.3775669   0.4672607
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.2905983   0.2491972   0.3319994
4+       0-24 months   ki1000304-ZnMort         INDIA        Other                NA                0.3516484   0.2532918   0.4500049
4+       0-24 months   ki1000304-ZnMort         INDIA        Zinc                 NA                0.4134615   0.3185730   0.5083501
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.3333333   0.3106951   0.3559715
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.4215247   0.3668823   0.4761670
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.2323651   0.2100676   0.2546627
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.2396857   0.2186751   0.2606962
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.3275862   0.1976013   0.4575712
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.4433962   0.3383970   0.5483954
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.3953488   0.2448749   0.5458228
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.3291139   0.2170601   0.4411678
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.1435523   0.1233820   0.1637226
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.1401425   0.1211802   0.1591049
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.1489362   0.0570687   0.2408037
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.2873563   0.1792571   0.3954556
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.2647059   0.1074130   0.4219988
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.1093750   0.0355732   0.1831768
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                0.0897436   0.0603819   0.1191053
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Other                NA                0.0769231   0.0473553   0.1064908
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                0.1621622   0.1387251   0.1855993
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  NA                0.1986755   0.1474232   0.2499278
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                0.0841121   0.0682328   0.0999915
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                NA                0.1159420   0.0992978   0.1325862
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                0.1923077   0.0737287   0.3108867
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  NA                0.1927711   0.0961389   0.2894033
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  NA                0.2702703   0.1389201   0.4016204
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                NA                0.2328767   0.1315018   0.3342516


### Parameter: E(Y)


nrooms   agecat        studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     NA                   NA                0.6273063   0.5696320   0.6849805
1        0-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.4637483   0.4428720   0.4846246
1        0-24 months   ki1000304-ZnMort         INDIA        NA                   NA                0.5738397   0.5423437   0.6053356
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.4357298   0.3903182   0.4811415
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.4970588   0.4438344   0.5502832
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.4409449   0.3542522   0.5276375
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.4165112   0.4063052   0.4267171
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.5220934   0.4998196   0.5443671
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     NA                   NA                0.3125000   0.1493344   0.4756656
1        0-6 months    ki1000304-VITAMIN-A      INDIA        NA                   NA                0.3365854   0.2717409   0.4014299
1        0-6 months    ki1000304-ZnMort         INDIA        NA                   NA                0.4878049   0.3789504   0.5966594
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.1484716   0.1158721   0.1810711
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.3051643   0.2431791   0.3671495
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2615371   0.2522555   0.2708187
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2693878   0.2488398   0.2899357
1        6-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0821705   0.0671785   0.0971626
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.2664756   0.2200247   0.3129266
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.2304147   0.1742576   0.2865719
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.2700000   0.1825472   0.3574528
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2216324   0.2106001   0.2326646
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.3185125   0.2957414   0.3412836
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     NA                   NA                0.5407725   0.4766478   0.6048972
2        0-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.4246738   0.3912868   0.4580607
2        0-24 months   ki1000304-ZnMort         INDIA        NA                   NA                0.4856230   0.4464399   0.5248061
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.3465347   0.2532666   0.4398027
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.5278174   0.4908349   0.5647999
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.5227273   0.4371943   0.6082602
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.4122821   0.3975992   0.4269650
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.4708003   0.4391080   0.5024926
2        0-6 months    ki1000304-VITAMIN-A      INDIA        NA                   NA                0.3103448   0.2125677   0.4081219
2        0-6 months    ki1000304-ZnMort         INDIA        NA                   NA                0.3508772   0.2258815   0.4758729
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.3195402   0.2756703   0.3634102
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2725024   0.2591088   0.2858960
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2333044   0.2039642   0.2626446
2        6-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0641509   0.0432712   0.0850307
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.2165899   0.1777911   0.2553886
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.3398058   0.2478881   0.4317235
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.1823385   0.1672176   0.1974594
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2774309   0.2466536   0.3082081
3        0-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.4197080   0.3611666   0.4782495
3        0-24 months   ki1000304-ZnMort         INDIA        NA                   NA                0.4166667   0.3525327   0.4808006
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   NA                   NA                0.3389831   0.2171600   0.4608061
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.5156951   0.4692624   0.5621278
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       NA                   NA                0.4615385   0.3394037   0.5836733
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.3413990   0.3169245   0.3658736
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.4420677   0.3962008   0.4879347
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.2713755   0.2181379   0.3246130
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2277691   0.2046231   0.2509151
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2180294   0.1782963   0.2577624
3        6-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0730337   0.0347023   0.1113651
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.2105263   0.1631118   0.2579408
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.1494737   0.1262882   0.1726592
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2575107   0.2131009   0.3019206
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.3562232   0.2946016   0.4178448
4+       0-24 months   ki1000304-ZnMort         INDIA        NA                   NA                0.3846154   0.3161559   0.4530749
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.4075472   0.3482735   0.4668209
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.2361251   0.2054921   0.2667581
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.3811189   0.3202702   0.4419675
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.1418269   0.1141334   0.1695204
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2068966   0.1511342   0.2626589
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        NA                   NA                0.0828402   0.0411594   0.1245211
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       NA                   NA                0.1914894   0.1350941   0.2478846
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   NA                   NA                0.1006006   0.0775803   0.1236209
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   NA                   NA                0.2163265   0.1614525   0.2712006


### Parameter: RR


nrooms   agecat        studyid                  country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  -----------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                Control           0.5020833   0.4553263   0.5536418
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           0.9678203   0.9252082   1.0123950
1        0-24 months   ki1000304-ZnMort         INDIA        Other                Other             1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304-ZnMort         INDIA        Zinc                 Other             0.9479985   0.8490950   1.0584223
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           0.9625477   0.8672596   1.0683052
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.0875524   0.9770190   1.2105909
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  Control           1.0770975   0.6748874   1.7190112
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                Control           1.0884354   0.6680262   1.7734208
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.9293022   0.9071118   0.9520354
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.9989627   0.8884217   1.1232576
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           1.0705992   0.9337779   1.2274682
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.0189428   0.9099562   1.1409830
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Other                Control           0.8823529   0.5226860   1.4895112
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                Control           0.9434066   0.7779951   1.1439866
1        0-6 months    ki1000304-ZnMort         INDIA        Other                Other             1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304-ZnMort         INDIA        Zinc                 Other             1.0454545   0.6682837   1.6354958
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Other                Control           0.9421702   0.7563710   1.1736102
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.8361638   0.6820624   1.0250821
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.8258469   0.7979668   0.8547011
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.0507838   0.8486036   1.3011336
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           1.2000000   0.9314585   1.5459626
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.1542857   0.9345880   1.4256288
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           1.0651379   0.8874129   1.2784566
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.0698174   0.8985922   1.2736693
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.4102564   1.1024186   1.8040544
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  Control           1.1764706   0.5824012   2.3765113
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                Control           0.6993007   0.2733181   1.7892026
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           1.0779643   1.0254247   1.1331959
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.9357585   0.7795053   1.1233330
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           0.9665249   0.7494598   1.2464585
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.9170188   0.7657039   1.0982360
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Other                Control           0.2926471   0.2535321   0.3377967
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           1.0057561   0.9297134   1.0880184
2        0-24 months   ki1000304-ZnMort         INDIA        Other                Other             1.0000000   1.0000000   1.0000000
2        0-24 months   ki1000304-ZnMort         INDIA        Zinc                 Other             0.9573023   0.8146979   1.1248681
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.6755556   1.2667862   2.2162276
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.0166119   0.9478167   1.0904006
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  Control           1.0000000   0.6523299   1.5329667
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                Control           1.1304348   0.7515978   1.7002215
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.9484670   0.9151749   0.9829703
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.9616832   0.8052576   1.1484954
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           0.9791543   0.8066394   1.1885648
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.8634355   0.7165917   1.0403705
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Other                Control           1.5384615   1.1109890   2.1304116
2        0-6 months    ki1000304-ZnMort         INDIA        Other                Other             1.0000000   1.0000000   1.0000000
2        0-6 months    ki1000304-ZnMort         INDIA        Zinc                 Other             0.9548611   0.4670799   1.9520425
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.7863046   0.6848820   0.9027467
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.8760343   0.8337897   0.9204192
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.1335384   0.8216600   1.5637969
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           0.9939804   0.6627805   1.4906851
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.8540885   0.6034491   1.2088296
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           0.8822055   0.6366780   1.2224179
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.2130886   1.0135083   1.4519703
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  Control           1.3658537   0.6762439   2.7587031
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                Control           1.1323529   0.5270323   2.4329120
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           1.0924796   1.0058943   1.1865179
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.9340119   0.6994843   1.2471734
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           0.9295104   0.6682462   1.2929211
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.8118667   0.5947982   1.1081532
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           0.9663371   0.8404993   1.1110151
3        0-24 months   ki1000304-ZnMort         INDIA        Other                Other             1.0000000   1.0000000   1.0000000
3        0-24 months   ki1000304-ZnMort         INDIA        Zinc                 Other             1.1711712   0.8602823   1.5944092
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Other                Control           1.2142857   0.8459253   1.7430497
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           0.8959980   0.8187161   0.9805749
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       LNS                  Control           1.0977778   0.5964240   2.0205694
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Other                Control           0.8042328   0.3883234   1.6655972
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.8904252   0.8292080   0.9561618
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.9286531   0.7059325   1.2216416
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           1.1412520   0.8402221   1.5501331
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.9905447   0.7401176   1.3257067
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.0024365   0.8238694   1.2197065
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.8947610   0.8081784   0.9906195
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.0070270   0.6013364   1.6864162
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           1.6192000   0.9427480   2.7810281
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.4275862   0.8339572   2.4437733
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           0.7317073   0.4299464   1.2452614
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.0906555   0.8705890   1.3663502
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.8251021   0.7087304   0.9605817
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           0.7444444   0.4943690   1.1210200
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           0.8571429   0.4835147   1.5194863
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.6935818   0.4305827   1.1172201
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           0.6879470   0.5759583   0.8217106
4+       0-24 months   ki1000304-ZnMort         INDIA        Other                Other             1.0000000   1.0000000   1.0000000
4+       0-24 months   ki1000304-ZnMort         INDIA        Zinc                 Other             1.1757812   0.8188362   1.6883250
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.2645740   1.0924161   1.4638629
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           1.0315044   0.9057991   1.1746547
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.3535253   0.8527268   2.1484381
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           1.2068543   0.6964863   2.0912075
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.0046636   0.5955848   1.6947189
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Other                Control           0.9762470   0.8032622   1.1864846
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.9293924   0.9368908   3.9733074
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           1.7773109   0.7546915   4.1855967
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Other                Control           0.7343750   0.2942318   1.8329310
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Control              Control           1.0000000   1.0000000   1.0000000
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Other                Control           0.8571429   0.5174106   1.4199437
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       LNS                  Control           1.2251656   0.9115385   1.6467003
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Other                Control           1.3784219   1.0872292   1.7476048
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   LNS                  Control           1.0024096   0.4528245   2.2190168
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   MMN                  Control           1.4054054   0.6411195   3.0808052
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Other                Control           1.2109589   0.5692766   2.5759385


### Parameter: PAR


nrooms   agecat        studyid                  country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  -----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0365941   -0.0590231   -0.0141652
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0074747   -0.0221170    0.0071676
1        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                -0.0147550   -0.0451520    0.0156419
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                -0.0125460   -0.0517629    0.0266709
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0340959   -0.0147444    0.0829361
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0209449   -0.0864148    0.1283046
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0157013   -0.0227565   -0.0086462
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0080747   -0.0289255    0.0450749
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0208333   -0.1379439    0.0962772
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0099493   -0.0558178    0.0359192
1        0-6 months    ki1000304-ZnMort         INDIA        Other                NA                 0.0095440   -0.0867716    0.1058597
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                -0.0067008   -0.0346942    0.0212926
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0496744   -0.1065817    0.0072329
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0257899   -0.0319721   -0.0196077
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0218630   -0.0129316    0.0566576
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0026074   -0.0081775    0.0133923
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0134636   -0.0272982    0.0542254
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0589862    0.0065822    0.1113902
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                -0.0050000   -0.1123132    0.1023132
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0086771    0.0007219    0.0166324
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0157983   -0.0521491    0.0205524
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0622425   -0.0891980   -0.0352871
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0012288   -0.0224861    0.0249437
2        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                -0.0110437   -0.0518907    0.0298033
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.1157654    0.0324378    0.1990931
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0071562   -0.0264785    0.0407910
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0227273   -0.1118814    0.1573360
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0106268   -0.0213692    0.0001157
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0264064   -0.0797898    0.0269770
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0603448   -0.0099369    0.1306265
2        0-6 months    ki1000304-ZnMort         INDIA        Other                NA                -0.0091228   -0.1507183    0.1324727
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0693487   -0.1090526   -0.0296448
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0173687   -0.0269101   -0.0078273
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0001451   -0.0492759    0.0489858
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0040309   -0.0183889    0.0103272
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0323793   -0.0032840    0.0680427
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0540915   -0.0920261    0.2002091
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0079137   -0.0033830    0.0192104
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0257050   -0.0793908    0.0279807
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0068654   -0.0472480    0.0335172
3        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                 0.0320513   -0.0304608    0.0945633
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0448654   -0.0594361    0.1491670
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0484075   -0.0906540   -0.0061610
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                -0.0121457   -0.2023607    0.1780692
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0197609   -0.0362644   -0.0032574
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0009702   -0.0748121    0.0728716
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0005421   -0.0477190    0.0488032
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0124773   -0.0283850    0.0034304
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0368699   -0.0248934    0.0986333
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0102996   -0.0342822    0.0136829
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0148741   -0.0287671    0.0585154
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0145777   -0.0285271   -0.0006282
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0559221   -0.1258263    0.0139821
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0661906   -0.1084514   -0.0239298
4+       0-24 months   ki1000304-ZnMort         INDIA        Other                NA                 0.0329670   -0.0400511    0.1059851
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0742138    0.0194335    0.1289942
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0037600   -0.0172424    0.0247623
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0535327   -0.0637730    0.1708383
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0017254   -0.0206927    0.0172419
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0579604   -0.0319136    0.1478344
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0069034   -0.0364869    0.0226802
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0293272   -0.0219673    0.0806217
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0164885   -0.0001581    0.0331350
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0240188   -0.0813879    0.1294255


### Parameter: PAF


nrooms   agecat        studyid                  country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  -----------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
1        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0583354   -0.0971932   -0.0208538
1        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0161181   -0.0487170    0.0154675
1        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                -0.0257128   -0.0801106    0.0259453
1        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                -0.0287931   -0.1256956    0.0597678
1        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0685952   -0.0276217    0.1558033
1        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0475000   -0.2300411    0.2624179
1        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0376973   -0.0554344   -0.0202582
1        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0154660   -0.0580257    0.0838529
1        0-6 months    ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.0666667   -0.5526771    0.2672155
1        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0295595   -0.1799395    0.1016550
1        0-6 months    ki1000304-ZnMort         INDIA        Other                NA                 0.0195652   -0.1992194    0.1984349
1        0-6 months    ki1017093b-PROVIDE       BANGLADESH   Control              NA                -0.0451318   -0.2620655    0.1345135
1        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.1627792   -0.4016275    0.0353676
1        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0986090   -0.1250082   -0.0728293
1        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.0811581   -0.0578140    0.2018725
1        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0317311   -0.1041442    0.1508856
1        6-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.0505247   -0.1064817    0.1852523
1        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.2560000    0.0641424    0.4085254
1        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                -0.0185185   -0.5046618    0.3105560
1        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0391511    0.0040088    0.0730534
1        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0496003   -0.1703537    0.0586941
2        0-24 months   ki1000125-AgaKhanUniv    PAKISTAN     Control              NA                -0.1150993   -0.1735248   -0.0595826
2        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                 0.0028935   -0.0543717    0.0570486
2        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                -0.0227412   -0.1104296    0.0580226
2        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.3340659    0.1466398    0.4803271
2        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0135582   -0.0513494    0.0744585
2        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.0434783   -0.2521701    0.2693215
2        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0257755   -0.0528599    0.0006123
2        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0560884   -0.1759029    0.0515181
2        0-6 months    ki1000304-VITAMIN-A      INDIA        Control              NA                 0.1944444   -0.0164641    0.3615911
2        0-6 months    ki1000304-ZnMort         INDIA        Other                NA                -0.0260000   -0.5204402    0.3076505
2        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.2170264   -0.3786425   -0.0743563
2        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0637378   -0.1016974   -0.0270861
2        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0006217   -0.2350141    0.1892855
2        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0628342   -0.3300162    0.1506745
2        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.1494961   -0.0032037    0.2789531
2        6-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                 0.1591837   -0.4016985    0.4956318
2        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0434011   -0.0177880    0.1009115
2        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0926538   -0.3041635    0.0845532
3        0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0163576   -0.1190218    0.0768878
3        0-24 months   ki1000304-ZnMort         INDIA        Other                NA                 0.0769231   -0.0861615    0.2155209
3        0-24 months   ki1017093b-PROVIDE       BANGLADESH   Control              NA                 0.1323529   -0.1817783    0.3629842
3        0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                -0.0938684   -0.1873272   -0.0077662
3        0-24 months   ki1148112-iLiNS-DYAD-M   MALAWI       Control              NA                -0.0263158   -0.5335478    0.3131456
3        0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0578821   -0.1103916   -0.0078557
3        0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.0021948   -0.1839548    0.1516616
3        0-6 months    ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0019977   -0.1922463    0.1645949
3        0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0547805   -0.1312041    0.0164801
3        0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.1691054   -0.1699020    0.4098771
3        6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.1410256   -0.5907090    0.1815351
3        6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.0706522   -0.1435435    0.2447271
3        6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0975267   -0.2057325    0.0009685
3        6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                -0.2171642   -0.5245560    0.0282491
4+       0-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.1858122   -0.3373535   -0.0514427
4+       0-24 months   ki1000304-ZnMort         INDIA        Other                NA                 0.0857143   -0.1253890    0.2572183
4+       0-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.1820988    0.0638984    0.2853741
4+       0-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.0159237   -0.0756305    0.0996851
4+       0-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.1404619   -0.2295458    0.3991230
4+       0-6 months    kiGH5241-JiVitA-3        BANGLADESH   Control              NA                -0.0121655   -0.1570104    0.1145465
4+       0-6 months    kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.2801418   -0.2901734    0.5983519
4+       6-24 months   ki1000304-VITAMIN-A      INDIA        Control              NA                -0.0833333   -0.5499108    0.2427880
4+       6-24 months   ki1148112-iLiNS-DOSE     MALAWI       Control              NA                 0.1531532   -0.1079914    0.3527481
4+       6-24 months   kiGH5241-JiVitA-3        BANGLADESH   Control              NA                 0.1639001    0.0106494    0.2934123
4+       6-24 months   kiGH5241-JiVitA-4        BANGLADESH   Control              NA                 0.1110305   -0.5390592    0.4865260
