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

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* impsan
* agecat
* studyid
* country

## Data Summary

impsan   agecat        studyid                     country        tr          ever_stunted   n_cell       n
-------  ------------  --------------------------  -------------  ---------  -------------  -------  ------
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control                0       11     111
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control                1        6     111
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    0       35     111
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    1        4     111
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                  0       51     111
0        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                  1        4     111
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control                0       23     105
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control                1        0     105
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    0       23     105
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    1        3     105
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                  0       51     105
1        0-6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other                  1        5     105
0        0-6 months    ki1000111-WASH-Kenya        KENYA          Control                0       10      41
0        0-6 months    ki1000111-WASH-Kenya        KENYA          Control                1        2      41
0        0-6 months    ki1000111-WASH-Kenya        KENYA          LNS                    0        9      41
0        0-6 months    ki1000111-WASH-Kenya        KENYA          LNS                    1        0      41
0        0-6 months    ki1000111-WASH-Kenya        KENYA          Other                  0       18      41
0        0-6 months    ki1000111-WASH-Kenya        KENYA          Other                  1        2      41
1        0-6 months    ki1000111-WASH-Kenya        KENYA          Control                0        2      27
1        0-6 months    ki1000111-WASH-Kenya        KENYA          Control                1        0      27
1        0-6 months    ki1000111-WASH-Kenya        KENYA          LNS                    0       10      27
1        0-6 months    ki1000111-WASH-Kenya        KENYA          LNS                    1        0      27
1        0-6 months    ki1000111-WASH-Kenya        KENYA          Other                  0       12      27
1        0-6 months    ki1000111-WASH-Kenya        KENYA          Other                  1        3      27
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control                0       26      77
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control                1       12      77
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0       31      77
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1        8      77
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control                0        9      20
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control                1        0      20
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0       10      20
1        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1        1      20
1        0-6 months    ki1000304-VITAMIN-A         INDIA          Control                0       89     261
1        0-6 months    ki1000304-VITAMIN-A         INDIA          Control                1       38     261
1        0-6 months    ki1000304-VITAMIN-A         INDIA          VitA                   0       91     261
1        0-6 months    ki1000304-VITAMIN-A         INDIA          VitA                   1       43     261
0        0-6 months    ki1000304-VITAMIN-A         INDIA          Control                0       29      73
0        0-6 months    ki1000304-VITAMIN-A         INDIA          Control                1       15      73
0        0-6 months    ki1000304-VITAMIN-A         INDIA          VitA                   0       18      73
0        0-6 months    ki1000304-VITAMIN-A         INDIA          VitA                   1       11      73
1        0-6 months    ki1000304-ZnMort            INDIA          Control                0       42     131
1        0-6 months    ki1000304-ZnMort            INDIA          Control                1       24     131
1        0-6 months    ki1000304-ZnMort            INDIA          Zinc                   0       40     131
1        0-6 months    ki1000304-ZnMort            INDIA          Zinc                   1       25     131
0        0-6 months    ki1000304-ZnMort            INDIA          Control                0       12      50
0        0-6 months    ki1000304-ZnMort            INDIA          Control                1       11      50
0        0-6 months    ki1000304-ZnMort            INDIA          Zinc                   0       15      50
0        0-6 months    ki1000304-ZnMort            INDIA          Zinc                   1       12      50
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Control                0      138     609
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Control                1       23     609
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Other                  0      388     609
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Other                  1       60     609
0        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Control                0        4      29
0        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Control                1        1      29
0        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Other                  0       19      29
0        0-6 months    ki1017093b-PROVIDE          BANGLADESH     Other                  1        5      29
0        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0       28      33
0        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1        5      33
1        0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0        3       3
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Control                0       37     115
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Control                1       20     115
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                  0       39     115
0        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                  1       19     115
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Control                0        4      13
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Control                1        0      13
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                  0        4      13
1        0-6 months    ki1135781-COHORTS           GUATEMALA      Other                  1        5      13
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                0       94     835
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                1       42     835
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    0      496     835
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    1      203     835
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                0        4      19
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                1        0      19
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    0       11      19
1        0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    1        4      19
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control                0       13      58
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control                1        4      58
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0       32      58
0        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1        9      58
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control                0        5      12
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control                1        1      12
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0        4      12
1        0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1        2      12
0        0-6 months    ki1148112-LCNI-5            MALAWI         Control                0       43     269
0        0-6 months    ki1148112-LCNI-5            MALAWI         Control                1       24     269
0        0-6 months    ki1148112-LCNI-5            MALAWI         LNS                    0       93     269
0        0-6 months    ki1148112-LCNI-5            MALAWI         LNS                    1       44     269
0        0-6 months    ki1148112-LCNI-5            MALAWI         Other                  0       38     269
0        0-6 months    ki1148112-LCNI-5            MALAWI         Other                  1       27     269
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                0     1867    5744
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                1      918    5744
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     2161    5744
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               1      798    5744
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                0     5069   13600
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                1     1740   13600
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     5295   13600
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               1     1496   13600
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control                0      701    3517
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control                1      201    3517
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      741    3517
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                    1      217    3517
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                  0     1229    3517
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                  1      428    3517
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control                0      204    1040
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control                1       73    1040
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      193    1040
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                    1       97    1040
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                  0      342    1040
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                  1      131    1040
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                0      305    1577
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                1       82    1577
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    0      339    1577
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    1       67    1577
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  0      615    1577
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  1      169    1577
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                0      397    1947
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                1       81    1947
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    0      441    1947
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    1       61    1947
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  0      798    1947
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  1      169    1947
1        6-24 months   ki1000111-WASH-Kenya        KENYA          Control                0      141    1381
1        6-24 months   ki1000111-WASH-Kenya        KENYA          Control                1        8    1381
1        6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    0      399    1381
1        6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    1       19    1381
1        6-24 months   ki1000111-WASH-Kenya        KENYA          Other                  0      757    1381
1        6-24 months   ki1000111-WASH-Kenya        KENYA          Other                  1       57    1381
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Control                0      604    1722
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Control                1       48    1722
0        6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    0      328    1722
0        6-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    1       19    1722
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Other                  0      663    1722
0        6-24 months   ki1000111-WASH-Kenya        KENYA          Other                  1       60    1722
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                0       64     103
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                1       33     103
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0        6     103
1        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1        0     103
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                0      146     271
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                1      102     271
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0       23     271
0        6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1        0     271
1        6-24 months   ki1000304-VITAMIN-A         INDIA          Control                0      755    1632
1        6-24 months   ki1000304-VITAMIN-A         INDIA          Control                1       56    1632
1        6-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0      765    1632
1        6-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   1       56    1632
0        6-24 months   ki1000304-VITAMIN-A         INDIA          Control                0      240     535
0        6-24 months   ki1000304-VITAMIN-A         INDIA          Control                1       28     535
0        6-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0      240     535
0        6-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   1       27     535
1        6-24 months   ki1000304-ZnMort            INDIA          Control                0      337     695
1        6-24 months   ki1000304-ZnMort            INDIA          Zinc                   0      358     695
0        6-24 months   ki1000304-ZnMort            INDIA          Control                0       99     191
0        6-24 months   ki1000304-ZnMort            INDIA          Zinc                   0       92     191
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                0       98     474
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                1       24     474
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  0      264     474
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  1       88     474
0        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                0        3      21
0        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                1        1      21
0        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  0       12      21
0        6-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  1        5      21
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0     3370    3759
0        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1      389    3759
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0      167     189
1        6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1       22     189
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Control                0       55     389
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Control                1      124     389
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                  0       83     389
0        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                  1      127     389
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Control                0        6      45
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Control                1        8      45
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                  0       14      45
1        6-24 months   ki1135781-COHORTS           GUATEMALA      Other                  1       17      45
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0      110     861
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1       33     861
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0      548     861
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1      170     861
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0        6      26
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1        1      26
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0       16      26
1        6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1        3      26
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0      210     835
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                1       69     835
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0      397     835
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1      159     835
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0       26      90
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                1        5      90
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0       46      90
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1       13      90
0        6-24 months   ki1148112-LCNI-5            MALAWI         Control                0       97     573
0        6-24 months   ki1148112-LCNI-5            MALAWI         Control                1       43     573
0        6-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0      202     573
0        6-24 months   ki1148112-LCNI-5            MALAWI         LNS                    1       90     573
0        6-24 months   ki1148112-LCNI-5            MALAWI         Other                  0       95     573
0        6-24 months   ki1148112-LCNI-5            MALAWI         Other                  1       46     573
1        6-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0        2       2
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0     3954    9764
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1      847    9764
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     4030    9764
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1      933    9764
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0     1301    3531
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1      387    3531
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     1390    3531
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1      453    3531
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                0      621    3381
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                1      276    3381
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      692    3381
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    1      240    3381
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  0     1114    3381
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  1      438    3381
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                0      167     925
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                1       91     925
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      171     925
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    1       91     925
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  0      269     925
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  1      136     925
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                0      297    2074
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                1      210    2074
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    0      333    2074
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    1      181    2074
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  0      603    2074
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  1      450    2074
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                0      387    2430
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control                1      211    2430
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    0      431    2430
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS                    1      180    2430
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  0      787    2430
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other                  1      434    2430
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Control                0      610    2234
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Control                1      246    2234
0        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    0      332    2234
0        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    1      109    2234
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                  0      675    2234
0        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                  1      262    2234
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Control                0      143    1730
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Control                1       35    1730
1        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    0      405    1730
1        0-24 months   ki1000111-WASH-Kenya        KENYA          LNS                    1      101    1730
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                  0      761    1730
1        0-24 months   ki1000111-WASH-Kenya        KENYA          Other                  1      285    1730
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                0       68     147
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                1       60     147
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0       16     147
1        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1        3     147
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                0      162     519
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                1      286     519
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0       54     519
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1       17     519
1        0-24 months   ki1000304-VITAMIN-A         INDIA          Control                0      742    2608
1        0-24 months   ki1000304-VITAMIN-A         INDIA          Control                1      565    2608
1        0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0      754    2608
1        0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   1      547    2608
0        0-24 months   ki1000304-VITAMIN-A         INDIA          Control                0      236     935
0        0-24 months   ki1000304-VITAMIN-A         INDIA          Control                1      246     935
0        0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0      238     935
0        0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   1      215     935
1        0-24 months   ki1000304-ZnMort            INDIA          Control                0      379    1489
1        0-24 months   ki1000304-ZnMort            INDIA          Control                1      354    1489
1        0-24 months   ki1000304-ZnMort            INDIA          Zinc                   0      398    1489
1        0-24 months   ki1000304-ZnMort            INDIA          Zinc                   1      358    1489
0        0-24 months   ki1000304-ZnMort            INDIA          Control                0      111     547
0        0-24 months   ki1000304-ZnMort            INDIA          Control                1      169     547
0        0-24 months   ki1000304-ZnMort            INDIA          Zinc                   0      107     547
0        0-24 months   ki1000304-ZnMort            INDIA          Zinc                   1      160     547
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                0       98     610
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                1       63     610
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  0      266     610
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  1      183     610
0        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                0        3      29
0        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                1        2      29
0        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  0       11      29
0        0-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  1       13      29
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0     3306    5144
0        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1     1838    5144
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0      164     266
1        0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1      102     266
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Control                0       49     778
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Control                1      340     778
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                  0       79     778
0        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                  1      310     778
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Control                0        6      80
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Control                1       20      80
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                  0       13      80
1        0-24 months   ki1135781-COHORTS           GUATEMALA      Other                  1       41      80
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0       97    1279
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1      119    1279
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0      500    1279
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1      563    1279
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0        6      34
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1        1      34
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0       16      34
1        0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1       11      34
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0      202    1042
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                1      147    1042
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0      376    1042
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1      317    1042
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0       24     105
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                1       14     105
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0       44     105
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1       23     105
0        0-24 months   ki1148112-LCNI-5            MALAWI         Control                0       91     810
0        0-24 months   ki1148112-LCNI-5            MALAWI         Control                1      107     810
0        0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0      173     810
0        0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    1      235     810
0        0-24 months   ki1148112-LCNI-5            MALAWI         Other                  0       81     810
0        0-24 months   ki1148112-LCNI-5            MALAWI         Other                  1      123     810
1        0-24 months   ki1148112-LCNI-5            MALAWI         Control                0        0       3
1        0-24 months   ki1148112-LCNI-5            MALAWI         Control                1        1       3
1        0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0        2       3
1        0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    1        0       3
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0     4896   16112
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1     3112   16112
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     5159   16112
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1     2945   16112
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0     1750    6803
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1     1581    6803
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     1941    6803
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1     1531    6803
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                0      571    4187
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                1      522    4187
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      625    4187
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    1      511    4187
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  0     1010    4187
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  1      948    4187
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                0      152    1238
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                1      185    1238
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      149    1238
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    1      206    1238
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  0      242    1238
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  1      304    1238
0        0-6 months    iLiNS_DYADM_LNS             MALAWI         Control                0       13      35
0        0-6 months    iLiNS_DYADM_LNS             MALAWI         Control                1        4      35
0        0-6 months    iLiNS_DYADM_LNS             MALAWI         LNS                    0       13      35
0        0-6 months    iLiNS_DYADM_LNS             MALAWI         LNS                    1        5      35
1        0-6 months    iLiNS_DYADM_LNS             MALAWI         Control                0        5       8
1        0-6 months    iLiNS_DYADM_LNS             MALAWI         Control                1        1       8
1        0-6 months    iLiNS_DYADM_LNS             MALAWI         LNS                    0        2       8
1        0-6 months    iLiNS_DYADM_LNS             MALAWI         LNS                    1        0       8
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0      210     552
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control                1       69     552
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    0      192     552
0        6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    1       81     552
1        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0       26      58
1        6-24 months   iLiNS_DYADM_LNS             MALAWI         Control                1        5      58
1        6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    0       22      58
1        6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    1        5      58
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0      202     694
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                1      147     694
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    0      184     694
0        0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    1      161     694
1        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0       24      69
1        0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                1       14      69
1        0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    0       21      69
1        0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    1       10      69


The following strata were considered:

* impsan: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 0, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 0, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 0, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 0, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 0, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 0, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 0, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 0, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 0, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 0, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 0, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 0, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 0, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 0, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 0, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 0, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 0, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 0, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 0, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 0-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 1, agecat: 0-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 1, agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 6-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 1, agecat: 6-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 1, agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* impsan: 0, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 1, agecat: 0-6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 0, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 0-6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 1, agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     3306 1838
##           ever_stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     28  5
##           ever_stunted
## tr          0
##   Control  99
##   LNS       0
##   Maternal  0
##   Other     0
##   VitA      0
##   Zinc     92
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     3370  389
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     164 102
##           ever_stunted
## tr           0
##   Control  337
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     358
##           ever_stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     167  22
```




# Results Detail

## Results Plots
![](/tmp/0baca3d3-98d1-4815-8384-88a6f1918bfa/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0baca3d3-98d1-4815-8384-88a6f1918bfa/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0baca3d3-98d1-4815-8384-88a6f1918bfa/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0baca3d3-98d1-4815-8384-88a6f1918bfa/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


impsan   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.4212034   0.3951345   0.4472724
0        0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.4666667   0.4404780   0.4928554
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4142012   0.3713139   0.4570885
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3521401   0.3108382   0.3934419
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4273504   0.3974639   0.4572369
0        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.2873832   0.2570605   0.3177058
0        0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2471655   0.2068966   0.2874344
0        0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.2796158   0.2508724   0.3083592
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.6383929   0.5999513   0.6768344
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.2394366   0.2258444   0.2530289
0        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                0.5103734   0.4873554   0.5333915
0        0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.4746137   0.4523228   0.4969046
0        0-24 months   ki1000304-ZnMort            INDIA        Control              NA                0.6035714   0.5462241   0.6609188
0        0-24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.5992509   0.5404167   0.6580852
0        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                0.8740360   0.8575388   0.8905332
0        0-24 months   ki1135781-COHORTS           GUATEMALA    Other                NA                0.7969152   0.7769134   0.8169169
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.5509259   0.5397192   0.5621327
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.5296331   0.5046860   0.5545802
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.4212034   0.4038450   0.4385619
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.4574315   0.4327514   0.4821115
0        0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.5404040   0.4709446   0.6098635
0        0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.5759804   0.5279979   0.6239629
0        0-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.6029412   0.5357571   0.6701252
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.4746322   0.4641468   0.4851177
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.4409562   0.4306964   0.4512161
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.5489614   0.4883645   0.6095584
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.5802817   0.5225547   0.6380087
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.5567766   0.5023671   0.6111860
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.3157895   0.2423750   0.3892039
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.2051282   0.1405197   0.2697367
0        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                0.3409091   0.2559052   0.4259130
0        0-6 months    ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.3793103   0.3086698   0.4499509
0        0-6 months    ki1000304-ZnMort            INDIA        Control              NA                0.4782609   0.2720411   0.6844806
0        0-6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.4444444   0.2551117   0.6337772
0        0-6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                0.3508772   0.2891999   0.4125545
0        0-6 months    ki1135781-COHORTS           GUATEMALA    Other                NA                0.3275862   0.2664016   0.3887708
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.3088235   0.2961691   0.3214779
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2904149   0.2622264   0.3186034
0        0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3582090   0.2431860   0.4732319
0        0-6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3211679   0.2428351   0.3995007
0        0-6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.4153846   0.2953627   0.5354065
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3296230   0.3192867   0.3399592
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2696857   0.2606187   0.2787527
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2635379   0.2022990   0.3247768
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3344828   0.2722081   0.3967574
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2769556   0.2289200   0.3249912
0        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2473118   0.2217003   0.2729233
0        6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.2967033   0.2698799   0.3235267
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.2118863   0.1711599   0.2526127
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1650246   0.1289058   0.2011435
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.2155612   0.1867678   0.2443546
0        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.0736196   0.0535684   0.0936709
0        6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.0547550   0.0308112   0.0786989
0        6-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.0829876   0.0628735   0.1031016
0        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                0.1044776   0.0861157   0.1228395
0        6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.1011236   0.0830588   0.1191884
0        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                0.6927374   0.6615971   0.7238778
0        6-24 months   ki1135781-COHORTS           GUATEMALA    Other                NA                0.6047619   0.5690191   0.6405047
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.2307692   0.2192934   0.2422450
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2367688   0.2108240   0.2627136
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2473118   0.2303858   0.2642378
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2859712   0.2609460   0.3109965
0        6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.3071429   0.2306615   0.3836242
0        6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3082192   0.2552101   0.3612282
0        6-24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3262411   0.2487879   0.4036943
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2292654   0.2167920   0.2417388
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2457949   0.2338831   0.2577067
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3527132   0.2896615   0.4157649
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3473282   0.2853640   0.4092925
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3358025   0.2789796   0.3926253
1        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.3684211   0.2833372   0.4535049
1        0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.3225806   0.2481078   0.3970535
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.3528428   0.3145354   0.3911502
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.2945990   0.2584455   0.3307525
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.3554464   0.3285931   0.3822996
1        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.1966292   0.1382248   0.2550336
1        0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.1996047   0.1647681   0.2344414
1        0-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.2724665   0.2454773   0.2994558
1        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                0.4322877   0.4188256   0.4457498
1        0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.4204458   0.4070625   0.4338291
1        0-24 months   ki1000304-ZnMort            INDIA        Control              NA                0.4829468   0.4467592   0.5191343
1        0-24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.4735450   0.4379413   0.5091486
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.3913043   0.3713910   0.4112177
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.4075724   0.3740899   0.4410549
1        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                0.7692308   0.7162652   0.8221963
1        0-24 months   ki1135781-COHORTS           GUATEMALA    Other                NA                0.7592593   0.6818030   0.8367155
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.3684211   0.3126493   0.4241928
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.3432836   0.2703899   0.4161772
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3886114   0.3821017   0.3951211
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.3634008   0.3570948   0.3697068
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4775846   0.4405295   0.5146397
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4498239   0.4148007   0.4848472
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.4841675   0.4580629   0.5102721
1        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                0.2992126   0.2603863   0.3380389
1        0-6 months    ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.3208955   0.2802377   0.3615533
1        0-6 months    ki1000304-ZnMort            INDIA        Control              NA                0.3636364   0.2471362   0.4801365
1        0-6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.3846154   0.2658904   0.5033403
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.1428571   0.1285558   0.1571585
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.1339286   0.1107098   0.1571474
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2555441   0.2495820   0.2615063
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2202916   0.2147122   0.2258710
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2228381   0.1920708   0.2536055
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2265136   0.1995960   0.2534311
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2582981   0.2342667   0.2823295
1        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.1612903   0.0914852   0.2310955
1        6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.1851852   0.1163816   0.2539888
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1694561   0.1358161   0.2030960
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1215139   0.0929256   0.1501022
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1747673   0.1508251   0.1987096
1        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.0536913   0.0174853   0.0898973
1        6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.0454545   0.0254787   0.0654303
1        6-24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.0700246   0.0524876   0.0875615
1        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                0.0690506   0.0603766   0.0777245
1        6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.0682095   0.0595316   0.0768874
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                0.1967213   0.1785466   0.2148960
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                NA                0.2500000   0.2163721   0.2836279
1        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                0.5714286   0.4898695   0.6529876
1        6-24 months   ki1135781-COHORTS           GUATEMALA    Other                NA                0.5483871   0.4263412   0.6704330
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.1612903   0.1164444   0.2061362
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2203390   0.1506191   0.2900588
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.1764216   0.1704082   0.1824350
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.1879911   0.1816640   0.1943182
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3076923   0.2692116   0.3461730
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2575107   0.2231820   0.2918395
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2822165   0.2545862   0.3098468


### Parameter: E(Y)


impsan   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.4438040   0.4068135   0.4807946
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4054966   0.3843608   0.4266325
0        0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2761862   0.2576416   0.2947308
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.5838150   0.5413664   0.6262637
0        0-24 months   ki1000304-VITAMIN-A         INDIA        NA                   NA                0.4930481   0.4609852   0.5251110
0        0-24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.6014625   0.5603957   0.6425293
0        0-24 months   ki1135781-COHORTS           GUATEMALA    NA                   NA                0.8354756   0.8094069   0.8615443
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.5332291   0.5058769   0.5605812
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4452975   0.4151065   0.4754885
0        0-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.5740741   0.5399999   0.6081482
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.4574452   0.4426916   0.4721989
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.5613893   0.5279136   0.5948651
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.2597403   0.1611570   0.3583235
0        0-6 months    ki1000304-VITAMIN-A         INDIA        NA                   NA                0.3561644   0.2455543   0.4667744
0        0-6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.4600000   0.3204513   0.5995487
0        0-6 months    ki1135781-COHORTS           GUATEMALA    NA                   NA                0.3391304   0.2522270   0.4260339
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2934132   0.2625111   0.3243152
0        0-6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.3531599   0.2959376   0.4103821
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2987465   0.2848193   0.3126737
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2894231   0.2570192   0.3218269
0        6-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.2717391   0.2345949   0.3088834
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.2016487   0.1818396   0.2214578
0        6-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.0737515   0.0614032   0.0860997
0        6-24 months   ki1000304-VITAMIN-A         INDIA        NA                   NA                0.1028037   0.0770449   0.1285625
0        6-24 months   ki1135781-COHORTS           GUATEMALA    NA                   NA                0.6452442   0.5976385   0.6928499
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.2357724   0.2074025   0.2641422
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2730539   0.2428168   0.3032910
0        6-24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3123909   0.2744096   0.3503722
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2378929   0.2206701   0.2551158
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3437838   0.3086238   0.3789438
1        0-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.3478261   0.2346235   0.4610287
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3395062   0.3206743   0.3583380
1        0-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2433526   0.2231264   0.2635789
1        0-24 months   ki1000304-VITAMIN-A         INDIA        NA                   NA                0.4263804   0.4073963   0.4453644
1        0-24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.4781733   0.4527926   0.5035539
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.4032787   0.3643179   0.4422395
1        0-24 months   ki1135781-COHORTS           GUATEMALA    NA                   NA                0.7625000   0.6686604   0.8563396
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.3523810   0.2605694   0.4441925
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.3759310   0.3667934   0.3850685
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.4731311   0.4548449   0.4914173
1        0-6 months    ki1000304-VITAMIN-A         INDIA        NA                   NA                0.3103448   0.2541107   0.3665789
1        0-6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.3740458   0.2908675   0.4572241
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.1362890   0.1090174   0.1635606
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2379412   0.2296293   0.2462531
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2405459   0.2247989   0.2562930
1        6-24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.1724138   0.0743512   0.2704764
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1597329   0.1434556   0.1760102
1        6-24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.0608255   0.0482152   0.0734358
1        6-24 months   ki1000304-VITAMIN-A         INDIA        NA                   NA                0.0686275   0.0563578   0.0808971
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH   NA                   NA                0.2362869   0.1980042   0.2745696
1        6-24 months   ki1135781-COHORTS           GUATEMALA    NA                   NA                0.5555556   0.4087325   0.7023786
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2000000   0.1168977   0.2831023
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.1823023   0.1735651   0.1910395
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2821650   0.2632833   0.3010468


### Parameter: RR


impsan   agecat        studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ------------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.1079365   1.0191344   1.2044763
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8501668   0.7270387   0.9941473
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0317460   0.9105607   1.1690597
0        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8600557   0.7083172   1.0443002
0        0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           0.9729720   0.8397011   1.1273947
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.3750616   0.3452726   0.4074206
0        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 Control           0.9299341   0.8713113   0.9925012
0        0-24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           0.9928418   0.8660519   1.1381937
0        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1135781-COHORTS           GUATEMALA    Other                Control           0.9117647   0.8835766   0.9408521
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.9613509   0.9132705   1.0119624
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.0860107   1.0147261   1.1623031
0        0-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0658329   0.9144692   1.2422503
0        0-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           1.1157229   0.9411949   1.3226141
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9290482   0.8996631   0.9593930
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0570537   0.9111664   1.2262990
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0142362   0.8752451   1.1752995
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.6495726   0.4391508   0.9608195
0        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304-VITAMIN-A         INDIA        VitA                 Control           1.1126437   0.8150727   1.5188534
0        0-6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           0.9292929   0.5068886   1.7036984
0        0-6 months    ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1135781-COHORTS           GUATEMALA    Other                Control           0.9336207   0.7224064   1.2065889
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.9403910   0.8463543   1.0448760
0        0-6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           0.8965937   0.5990654   1.3418906
0        0-6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.1596154   0.7528575   1.7861387
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8181641   0.7813686   0.8566924
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.2692017   0.9423738   1.7093780
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0509137   0.7864051   1.4043902
0        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.1997133   1.0456242   1.3765099
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7788358   0.5820249   1.0421979
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0173438   0.8050350   1.2856440
0        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.7437560   0.4443173   1.2449953
0        6-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.1272476   0.7828513   1.6231525
0        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 Control           0.9678973   0.7533470   1.2435507
0        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1135781-COHORTS           GUATEMALA    Other                Control           0.8730031   0.8105265   0.9402954
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           1.0259981   0.9096745   1.1571966
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.1563184   1.0347366   1.2921862
0        6-24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0035043   0.7414624   1.3581550
0        6-24 months   ki1148112-LCNI-5            MALAWI       Other                Control           1.0621804   0.7529739   1.4983618
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0720977   0.9966707   1.1532328
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9847328   0.7649530   1.2676580
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9520554   0.7443212   1.2177665
1        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.8755760   0.6316496   1.2137005
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8349299   0.7087451   0.9835807
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0073788   0.8825720   1.1498348
1        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           1.0151327   0.7192914   1.4326521
1        0-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.3856870   1.0131723   1.8951647
1        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 Control           0.9726065   0.9302454   1.0168966
1        0-24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           0.9805324   0.8817843   1.0903390
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           1.0415739   0.9456306   1.1472515
1        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1135781-COHORTS           GUATEMALA    Other                Control           0.9870370   0.8727329   1.1163119
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.9317697   0.7178835   1.2093811
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9351265   0.9128408   0.9579562
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9418727   0.8438216   1.0513173
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.0137837   0.9223817   1.1142431
1        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304-VITAMIN-A         INDIA        VitA                 Control           1.0724666   0.8945825   1.2857222
1        0-6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           1.0576923   0.6778698   1.6503362
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH   Other                Control           0.9375000   0.7674102   1.1452887
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8620490   0.8328673   0.8922532
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0164937   0.8470725   1.2198006
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1591289   0.9813844   1.3690659
1        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           1.1481481   0.6490506   2.0310346
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7170823   0.5270838   0.9755698
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           1.0313430   0.8103113   1.3126662
1        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.8465909   0.3785390   1.8933750
1        6-24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.3042076   0.6352450   2.6776400
1        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1000304-VITAMIN-A         INDIA        VitA                 Control           0.9878197   0.8260956   1.1812045
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH   Other                Control           1.2708333   1.0794903   1.4960925
1        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1135781-COHORTS           GUATEMALA    Other                Control           0.9596774   0.7367199   1.2501098
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           1.3661017   0.8964935   2.0817038
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.0655790   1.0157392   1.1178644
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.8369099   0.6970881   1.0047771
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9172036   0.7825019   1.0750932


### Parameter: PAR


impsan   agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0226006   -0.0036427    0.0488439
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0087046   -0.0459441    0.0285350
0        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0111970   -0.0348348    0.0124409
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0545778   -0.0725816   -0.0365741
0        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0173253   -0.0396457    0.0049950
0        0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0021089   -0.0422128    0.0379950
0        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0385604   -0.0587451   -0.0183758
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0176968   -0.0426478    0.0072541
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0240941   -0.0006078    0.0487959
0        0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0336700   -0.0265542    0.0938943
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0171870   -0.0276551   -0.0067189
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0124279   -0.0404253    0.0652811
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0560492   -0.1218441    0.0097457
0        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0152553   -0.0555185    0.0860291
0        0-6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.0182609   -0.1695089    0.1329872
0        0-6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0117468   -0.0729687    0.0494751
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0154104   -0.0436026    0.0127819
0        0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                -0.0050491   -0.1046188    0.0945205
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0308765   -0.0403501   -0.0214028
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0258852   -0.0270767    0.0788471
0        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0244273   -0.0024753    0.0513299
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0102376   -0.0454082    0.0249330
0        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0001318   -0.0156819    0.0159456
0        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0016739   -0.0197392    0.0163915
0        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0474932   -0.0835013   -0.0114851
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0050031   -0.0209421    0.0309483
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0257421    0.0006862    0.0507979
0        6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0052481   -0.0613375    0.0718336
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0086275   -0.0032553    0.0205104
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0089294   -0.0636485    0.0457897
1        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0205950   -0.0952647    0.0540748
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0133366   -0.0465005    0.0198272
1        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0467234   -0.0091179    0.1025646
1        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0059073   -0.0192926    0.0074780
1        0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0047735   -0.0305496    0.0210025
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0119743   -0.0215130    0.0454617
1        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0067308   -0.0841938    0.0707323
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0160401   -0.0889707    0.0568905
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0126804   -0.0190973   -0.0062635
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0044535   -0.0359365    0.0270295
1        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0111322   -0.0295469    0.0518113
1        0-6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0104094   -0.0721437    0.0929626
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0065681   -0.0297891    0.0166528
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0176030   -0.0234007   -0.0118052
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0177078   -0.0088565    0.0442720
1        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0111235   -0.0577497    0.0799966
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0097231   -0.0387222    0.0192759
1        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0071342   -0.0273190    0.0415874
1        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0004231   -0.0091010    0.0082548
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0395656    0.0058722    0.0732590
1        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0158730   -0.1379596    0.1062136
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0387097   -0.0312535    0.1086728
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0058808   -0.0004578    0.0122193
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0255273   -0.0579342    0.0068796


### Parameter: PAF


impsan   agecat        studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ------------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0509247   -0.0069737    0.1054941
0        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0214664   -0.1175611    0.0663654
0        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0405414   -0.1297366    0.0416117
0        0-24 months   ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0934848   -0.1283060   -0.0597383
0        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0351392   -0.0831070    0.0107042
0        0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0035063   -0.0724495    0.0610049
0        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0461538   -0.0717530   -0.0211662
0        0-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0331881   -0.0826873    0.0140482
0        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0541078    0.0001091    0.1051903
0        0-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0586510   -0.0524238    0.1580028
0        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0375717   -0.0615976   -0.0140896
0        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0221378   -0.0766013    0.1118211
0        0-6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.2157895   -0.5740059    0.0609031
0        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0428322   -0.1679163    0.2155514
0        0-6 months    ki1000304-ZnMort            INDIA        Control              NA                -0.0396975   -0.4266647    0.2423090
0        0-6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0346379   -0.2394655    0.1363410
0        0-6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0525210   -0.1586972    0.0439258
0        0-6 months    ki1148112-LCNI-5            MALAWI       Control              NA                -0.0142969   -0.3393199    0.2318503
0        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.1033534   -0.1390418   -0.0687831
0        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0894371   -0.1131990    0.2551873
0        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0898925   -0.0052595    0.1760379
0        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0507695   -0.2404560    0.1099107
0        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0017874   -0.2374026    0.1947419
0        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0162822   -0.2115503    0.1475141
0        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0736050   -0.1353325   -0.0152336
0        6-24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                 0.0212202   -0.0926434    0.1232181
0        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.0942747    0.0070065    0.1738734
0        6-24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0167997   -0.2212154    0.2084256
0        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0362665   -0.0131354    0.0832595
0        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0259739   -0.1983827    0.1216309
1        0-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0592105   -0.3134201    0.1457973
1        0-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0392825   -0.1417047    0.0539515
1        0-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.1919987   -0.0730134    0.3915583
1        0-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0138546   -0.0461902    0.0174817
1        0-24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0099828   -0.0653549    0.0425112
1        0-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.0296925   -0.0543339    0.1070223
1        0-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0088272   -0.1167037    0.0886281
1        0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0455192   -0.2860731    0.1500403
1        0-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0337307   -0.0515367   -0.0162262
1        0-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0094128   -0.0781820    0.0549701
1        0-6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                 0.0358705   -0.0992522    0.1543836
1        0-6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0278293   -0.2199523    0.2252846
1        0-6 months    ki1017093b-PROVIDE          BANGLADESH   Control              NA                -0.0481928   -0.2429852    0.1160730
1        0-6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0739803   -0.1005358   -0.0480655
1        0-6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0736150   -0.0437430    0.1777773
1        6-24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                 0.0645161   -0.3961905    0.3732015
1        6-24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0608713   -0.2588029    0.1059380
1        6-24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.1172899   -0.6759987    0.5350968
1        6-24 months   ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0061652   -0.1417912    0.1133506
1        6-24 months   ki1017093b-PROVIDE          BANGLADESH   Control              NA                 0.1674473    0.0390441    0.2786932
1        6-24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0285714   -0.2814145    0.1743818
1        6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                 0.1935484   -0.1489167    0.4339327
1        6-24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0322583   -0.0019988    0.0653441
1        6-24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0904693   -0.2113565    0.0183540
