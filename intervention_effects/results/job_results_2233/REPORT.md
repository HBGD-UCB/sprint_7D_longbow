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

* impsan
* agecat
* studyid
* country

## Data Summary

impsan   agecat      studyid                     country        tr          stunted   n_cell       n
-------  ----------  --------------------------  -------------  ---------  --------  -------  ------
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control           0       64     488
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control           1       55     488
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS               0       73     488
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS               1       51     488
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other             0      137     488
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other             1      108     488
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control           0       87     651
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Control           1       55     651
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS               0      111     651
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     LNS               1       57     651
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other             0      211     651
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH     Other             1      130     651
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control           0       78     320
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control           1       14     320
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS               0       76     320
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS               1       12     320
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other             0      122     320
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other             1       18     320
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control           0       44     318
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Control           1       13     318
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS               0       74     318
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     LNS               1       16     318
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other             0      151     318
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH     Other             1       20     318
0        24 months   ki1000111-WASH-Kenya        KENYA          Control           0      204     810
0        24 months   ki1000111-WASH-Kenya        KENYA          Control           1      106     810
0        24 months   ki1000111-WASH-Kenya        KENYA          LNS               0      105     810
0        24 months   ki1000111-WASH-Kenya        KENYA          LNS               1       53     810
0        24 months   ki1000111-WASH-Kenya        KENYA          Other             0      230     810
0        24 months   ki1000111-WASH-Kenya        KENYA          Other             1      112     810
1        24 months   ki1000111-WASH-Kenya        KENYA          Control           0       55     613
1        24 months   ki1000111-WASH-Kenya        KENYA          Control           1       13     613
1        24 months   ki1000111-WASH-Kenya        KENYA          LNS               0      138     613
1        24 months   ki1000111-WASH-Kenya        KENYA          LNS               1       48     613
1        24 months   ki1000111-WASH-Kenya        KENYA          Other             0      247     613
1        24 months   ki1000111-WASH-Kenya        KENYA          Other             1      112     613
1        6 months    ki1000111-WASH-Kenya        KENYA          Control           0        1      20
1        6 months    ki1000111-WASH-Kenya        KENYA          Control           1        0      20
1        6 months    ki1000111-WASH-Kenya        KENYA          LNS               0        5      20
1        6 months    ki1000111-WASH-Kenya        KENYA          LNS               1        1      20
1        6 months    ki1000111-WASH-Kenya        KENYA          Other             0       11      20
1        6 months    ki1000111-WASH-Kenya        KENYA          Other             1        2      20
0        6 months    ki1000111-WASH-Kenya        KENYA          Control           0       11      31
0        6 months    ki1000111-WASH-Kenya        KENYA          Control           1        1      31
0        6 months    ki1000111-WASH-Kenya        KENYA          LNS               0        6      31
0        6 months    ki1000111-WASH-Kenya        KENYA          LNS               1        0      31
0        6 months    ki1000111-WASH-Kenya        KENYA          Other             0       12      31
0        6 months    ki1000111-WASH-Kenya        KENYA          Other             1        1      31
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control           0       92     211
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control           1       49     211
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal          0       53     211
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal          1       17     211
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control           0       32      56
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control           1        6      56
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal          0       15      56
1        6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal          1        3      56
1        24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control           1        1       1
0        Birth       ki1000125-AgaKhanUniv       PAKISTAN       Control           0        1       3
0        Birth       ki1000125-AgaKhanUniv       PAKISTAN       Maternal          0        2       3
1        Birth       ki1000125-AgaKhanUniv       PAKISTAN       Control           0        1       1
1        6 months    ki1000304-VITAMIN-A         INDIA          Control           0      609    1877
1        6 months    ki1000304-VITAMIN-A         INDIA          Control           1      326    1877
1        6 months    ki1000304-VITAMIN-A         INDIA          VitA              0      638    1877
1        6 months    ki1000304-VITAMIN-A         INDIA          VitA              1      304    1877
0        6 months    ki1000304-VITAMIN-A         INDIA          Control           0      204     631
0        6 months    ki1000304-VITAMIN-A         INDIA          Control           1      126     631
0        6 months    ki1000304-VITAMIN-A         INDIA          VitA              0      193     631
0        6 months    ki1000304-VITAMIN-A         INDIA          VitA              1      108     631
1        6 months    ki1000304-ZnMort            INDIA          Control           0       44     109
1        6 months    ki1000304-ZnMort            INDIA          Control           1       19     109
1        6 months    ki1000304-ZnMort            INDIA          Zinc              0       32     109
1        6 months    ki1000304-ZnMort            INDIA          Zinc              1       14     109
1        24 months   ki1000304-ZnMort            INDIA          Control           0       18     100
1        24 months   ki1000304-ZnMort            INDIA          Control           1       30     100
1        24 months   ki1000304-ZnMort            INDIA          Zinc              0       28     100
1        24 months   ki1000304-ZnMort            INDIA          Zinc              1       24     100
0        24 months   ki1000304-ZnMort            INDIA          Control           0        9      40
0        24 months   ki1000304-ZnMort            INDIA          Control           1       18      40
0        24 months   ki1000304-ZnMort            INDIA          Zinc              0        2      40
0        24 months   ki1000304-ZnMort            INDIA          Zinc              1       11      40
0        6 months    ki1000304-ZnMort            INDIA          Control           0       11      36
0        6 months    ki1000304-ZnMort            INDIA          Control           1       12      36
0        6 months    ki1000304-ZnMort            INDIA          Zinc              0        6      36
0        6 months    ki1000304-ZnMort            INDIA          Zinc              1        7      36
1        6 months    ki1017093b-PROVIDE          BANGLADESH     Control           0        8      43
1        6 months    ki1017093b-PROVIDE          BANGLADESH     Control           1        2      43
1        6 months    ki1017093b-PROVIDE          BANGLADESH     Other             0       26      43
1        6 months    ki1017093b-PROVIDE          BANGLADESH     Other             1        7      43
0        6 months    ki1017093b-PROVIDE          BANGLADESH     Other             0        1       2
0        6 months    ki1017093b-PROVIDE          BANGLADESH     Other             1        1       2
1        24 months   ki1017093b-PROVIDE          BANGLADESH     Other             0        2       2
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0      409     464
0        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1       55     464
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0       32      46
1        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1       14      46
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0      603     936
0        24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1      333     936
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              0       17      20
1        6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc              1        3      20
0        6 months    ki1135781-COHORTS           GUATEMALA      Control           0      150     581
0        6 months    ki1135781-COHORTS           GUATEMALA      Control           1      140     581
0        6 months    ki1135781-COHORTS           GUATEMALA      Other             0      170     581
0        6 months    ki1135781-COHORTS           GUATEMALA      Other             1      121     581
0        Birth       ki1135781-COHORTS           GUATEMALA      Control           0      199     446
0        Birth       ki1135781-COHORTS           GUATEMALA      Control           1       10     446
0        Birth       ki1135781-COHORTS           GUATEMALA      Other             0      217     446
0        Birth       ki1135781-COHORTS           GUATEMALA      Other             1       20     446
0        24 months   ki1135781-COHORTS           GUATEMALA      Control           0       26     263
0        24 months   ki1135781-COHORTS           GUATEMALA      Control           1      111     263
0        24 months   ki1135781-COHORTS           GUATEMALA      Other             0       34     263
0        24 months   ki1135781-COHORTS           GUATEMALA      Other             1       92     263
1        Birth       ki1135781-COHORTS           GUATEMALA      Control           0       13      45
1        Birth       ki1135781-COHORTS           GUATEMALA      Control           1        1      45
1        Birth       ki1135781-COHORTS           GUATEMALA      Other             0       29      45
1        Birth       ki1135781-COHORTS           GUATEMALA      Other             1        2      45
1        6 months    ki1135781-COHORTS           GUATEMALA      Control           0       12      65
1        6 months    ki1135781-COHORTS           GUATEMALA      Control           1        7      65
1        6 months    ki1135781-COHORTS           GUATEMALA      Other             0       28      65
1        6 months    ki1135781-COHORTS           GUATEMALA      Other             1       18      65
1        24 months   ki1135781-COHORTS           GUATEMALA      Control           0        2      16
1        24 months   ki1135781-COHORTS           GUATEMALA      Control           1        5      16
1        24 months   ki1135781-COHORTS           GUATEMALA      Other             0        1      16
1        24 months   ki1135781-COHORTS           GUATEMALA      Other             1        8      16
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           0      142    1278
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           1       74    1278
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               0      744    1278
0        6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               1      318    1278
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           0       53     687
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           1       58     687
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               0      285     687
0        24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               1      291     687
1        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           0        7      34
1        6 months    ki1148112-iLiNS-DOSE        MALAWI         Control           1        0      34
1        6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               0       22      34
1        6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS               1        5      34
1        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           0        3      19
1        24 months   ki1148112-iLiNS-DOSE        MALAWI         Control           1        1      19
1        24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               0       11      19
1        24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS               1        4      19
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           0      243     931
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           1       73     931
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          0      477     931
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1      138     931
0        Birth       ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1        1       1
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           0       24      90
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control           1        9      90
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          0       47      90
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1       10      90
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control           0        0       6
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control           1        1       6
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          0        4       6
1        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1        1       6
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control           0        5      59
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control           1        6      59
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          0       29      59
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal          1       19      59
0        6 months    ki1148112-LCNI-5            MALAWI         Control           0      132     809
0        6 months    ki1148112-LCNI-5            MALAWI         Control           1       66     809
0        6 months    ki1148112-LCNI-5            MALAWI         LNS               0      261     809
0        6 months    ki1148112-LCNI-5            MALAWI         LNS               1      147     809
0        6 months    ki1148112-LCNI-5            MALAWI         Other             0      122     809
0        6 months    ki1148112-LCNI-5            MALAWI         Other             1       81     809
0        24 months   ki1148112-LCNI-5            MALAWI         Control           0       68     378
0        24 months   ki1148112-LCNI-5            MALAWI         Control           1       39     378
0        24 months   ki1148112-LCNI-5            MALAWI         LNS               0      108     378
0        24 months   ki1148112-LCNI-5            MALAWI         LNS               1       70     378
0        24 months   ki1148112-LCNI-5            MALAWI         Other             0       61     378
0        24 months   ki1148112-LCNI-5            MALAWI         Other             1       32     378
1        6 months    ki1148112-LCNI-5            MALAWI         Control           0        0       3
1        6 months    ki1148112-LCNI-5            MALAWI         Control           1        1       3
1        6 months    ki1148112-LCNI-5            MALAWI         LNS               0        2       3
1        6 months    ki1148112-LCNI-5            MALAWI         LNS               1        0       3
1        24 months   ki1148112-LCNI-5            MALAWI         Control           0        0       2
1        24 months   ki1148112-LCNI-5            MALAWI         Control           1        1       2
1        24 months   ki1148112-LCNI-5            MALAWI         LNS               0        1       2
1        24 months   ki1148112-LCNI-5            MALAWI         LNS               1        0       2
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           0     4453   13187
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           1     2137   13187
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          0     4676   13187
1        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          1     1921   13187
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           0     4528   12006
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           1     1443   12006
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          0     4688   12006
1        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          1     1347   12006
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           0     1957    6405
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Control           1     1186    6405
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          0     2171    6405
0        Birth       kiGH5241-JiVitA-3           BANGLADESH     Maternal          1     1091    6405
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           0     1591    4747
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Control           1      730    4747
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          0     1734    4747
0        6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal          1      692    4747
1        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control           0       19      76
1        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control           1       14      76
1        24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal          0       21      76
1        24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal          1       22      76
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control           0        5      22
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Control           1        7      22
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal          0        2      22
0        24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal          1        8      22
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control           0      738    3710
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control           1      218    3710
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS               0      788    3710
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS               1      219    3710
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other             0     1296    3710
1        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other             1      451    3710
1        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control           0      112     606
1        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control           1       51     606
1        Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS               0      120     606
1        Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS               1       55     606
1        Birth       kiGH5241-JiVitA-4           BANGLADESH     Other             0      198     606
1        Birth       kiGH5241-JiVitA-4           BANGLADESH     Other             1       70     606
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control           0      212    1082
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Control           1       80    1082
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS               0      215    1082
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS               1      102    1082
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other             0      330    1082
0        6 months    kiGH5241-JiVitA-4           BANGLADESH     Other             1      143    1082
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control           0      129     828
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control           1       88     828
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS               0      139     828
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS               1       81     828
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other             0      241     828
1        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other             1      150     828
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control           0       43     216
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Control           1       18     216
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS               0       33     216
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     LNS               1       19     216
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Other             0       69     216
0        Birth       kiGH5241-JiVitA-4           BANGLADESH     Other             1       34     216
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control           0       35     266
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Control           1       33     266
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS               0       45     266
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS               1       38     266
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other             0       60     266
0        24 months   kiGH5241-JiVitA-4           BANGLADESH     Other             1       55     266
0        6 months    iLiNS_DYADM_LNS             MALAWI         Control           0      243     619
0        6 months    iLiNS_DYADM_LNS             MALAWI         Control           1       73     619
0        6 months    iLiNS_DYADM_LNS             MALAWI         LNS               0      236     619
0        6 months    iLiNS_DYADM_LNS             MALAWI         LNS               1       67     619
0        Birth       iLiNS_DYADM_LNS             MALAWI         LNS               1        1       1
1        6 months    iLiNS_DYADM_LNS             MALAWI         Control           0       24      57
1        6 months    iLiNS_DYADM_LNS             MALAWI         Control           1        9      57
1        6 months    iLiNS_DYADM_LNS             MALAWI         LNS               0       20      57
1        6 months    iLiNS_DYADM_LNS             MALAWI         LNS               1        4      57
1        24 months   iLiNS_DYADM_LNS             MALAWI         Control           0        0       3
1        24 months   iLiNS_DYADM_LNS             MALAWI         Control           1        1       3
1        24 months   iLiNS_DYADM_LNS             MALAWI         LNS               0        2       3
1        24 months   iLiNS_DYADM_LNS             MALAWI         LNS               1        0       3
0        24 months   iLiNS_DYADM_LNS             MALAWI         Control           0        5      32
0        24 months   iLiNS_DYADM_LNS             MALAWI         Control           1        6      32
0        24 months   iLiNS_DYADM_LNS             MALAWI         LNS               0       13      32
0        24 months   iLiNS_DYADM_LNS             MALAWI         LNS               1        8      32


The following strata were considered:

* impsan: 0, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 0, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 0, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 0, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 0, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 0, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 0, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 0, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 0, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 0, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 0, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 0, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 0, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 0, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 0, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 0, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 0, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 0, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 0, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 0, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 0, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 1, agecat: 24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 1, agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 6 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* impsan: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: 6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* impsan: 1, agecat: 6 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 1, agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 1, agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* impsan: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 1, agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* impsan: 1, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 0, agecat: 6 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* impsan: 1, agecat: 6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: 24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 1, agecat: Birth, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* impsan: 0, agecat: 24 months, studyid: ki1000304-ZnMort, country: INDIA
* impsan: 1, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 0, agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* impsan: 1, agecat: 6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* impsan: 1, agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* impsan: 1, agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* impsan: 0, agecat: Birth, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* impsan: 1, agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* impsan: 0, agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* impsan: 0, agecat: Birth, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* impsan: 1, agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

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
##   Zinc     603 333
##           stunted
## tr           0   1
##   Control    0   0
##   LNS        0   0
##   Maternal   0   0
##   Other      0   0
##   VitA       0   0
##   Zinc     409  55
##           stunted
## tr          0  1
##   Control   0  0
##   LNS       0  0
##   Maternal  0  0
##   Other     0  0
##   VitA      0  0
##   Zinc     32 14
```




# Results Detail

## Results Plots
![](/tmp/7a2c9ed9-db7c-41d4-9a24-c3432b313948/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7a2c9ed9-db7c-41d4-9a24-c3432b313948/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7a2c9ed9-db7c-41d4-9a24-c3432b313948/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7a2c9ed9-db7c-41d4-9a24-c3432b313948/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


impsan   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1135781-COHORTS           GUATEMALA    Control              NA                0.0478469   0.0342714   0.0614223
0        Birth       ki1135781-COHORTS           GUATEMALA    Other                NA                0.0843882   0.0655616   0.1032148
0        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3773465   0.3668655   0.3878275
0        Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.3344574   0.3247005   0.3442142
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2950820   0.1777592   0.4124048
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3653846   0.2143412   0.5164280
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3300971   0.2367255   0.4234687
0        6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                0.2310127   0.2072700   0.2547553
0        6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.2211221   0.1982303   0.2440139
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.2280702   0.1189719   0.3371684
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1777778   0.0986655   0.2568901
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1169591   0.0687153   0.1652028
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                0.3475177   0.2948700   0.4001655
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             NA                0.2428571   0.2094522   0.2762621
0        6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                0.3818182   0.3543831   0.4092533
0        6 months    ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.3588040   0.3329355   0.3846724
0        6 months    ki1000304-ZnMort            INDIA        Control              NA                0.5217391   0.3146961   0.7287821
0        6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.5384615   0.2636247   0.8132984
0        6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                0.4827586   0.4540272   0.5114900
0        6 months    ki1135781-COHORTS           GUATEMALA    Other                NA                0.4158076   0.3874207   0.4441944
0        6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.3425926   0.3318917   0.3532935
0        6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.2994350   0.2765356   0.3223345
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2310127   0.2152310   0.2467943
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.2243902   0.2025985   0.2461820
0        6 months    ki1148112-LCNI-5            MALAWI       Control              NA                0.3333333   0.2676314   0.3990352
0        6 months    ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3602941   0.3136813   0.4069069
0        6 months    ki1148112-LCNI-5            MALAWI       Other                NA                0.3990148   0.3316093   0.4664202
0        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3145196   0.3022141   0.3268251
0        6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2852432   0.2739903   0.2964961
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2739726   0.2138826   0.3340626
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3217666   0.2610453   0.3824878
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3023256   0.2506087   0.3540424
0        24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                0.5454545   0.4426869   0.6482222
0        24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  NA                0.3809524   0.2424685   0.5194363
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.4621849   0.3725154   0.5518543
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.4112903   0.3245926   0.4979880
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.4408163   0.3785839   0.5030487
0        24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.3419355   0.2890980   0.3947729
0        24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.3354430   0.2617777   0.4091084
0        24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.3274854   0.2777174   0.3772534
0        24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                0.8102190   0.7759495   0.8444885
0        24 months   ki1135781-COHORTS           GUATEMALA    Other                NA                0.7301587   0.6929566   0.7673608
0        24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                0.5225225   0.5074981   0.5375470
0        24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  NA                0.5052083   0.4709501   0.5394666
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.5454545   0.4901231   0.6007860
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.3958333   0.2823157   0.5093510
0        24 months   ki1148112-LCNI-5            MALAWI       Control              NA                0.3644860   0.2731726   0.4557994
0        24 months   ki1148112-LCNI-5            MALAWI       LNS                  NA                0.3932584   0.3214039   0.4651130
0        24 months   ki1148112-LCNI-5            MALAWI       Other                NA                0.3440860   0.2474055   0.4407665
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4852941   0.3562157   0.6143725
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.4578313   0.3484810   0.5671817
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.4782609   0.3794062   0.5771156
1        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.3242792   0.3179462   0.3306122
1        Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2911930   0.2848804   0.2975055
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.3128834   0.2312138   0.3945531
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3142857   0.2388453   0.3897261
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2611940   0.2024746   0.3199135
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.1521739   0.0786621   0.2256858
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.1363636   0.0645510   0.2081763
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.1285714   0.0730383   0.1841045
1        6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                0.3486631   0.3334432   0.3638830
1        6 months    ki1000304-VITAMIN-A         INDIA        VitA                 NA                0.3227176   0.3077304   0.3377048
1        6 months    ki1000304-ZnMort            INDIA        Control              NA                0.3015873   0.1877350   0.4154396
1        6 months    ki1000304-ZnMort            INDIA        Zinc                 NA                0.3043478   0.1707647   0.4379310
1        6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                0.3684211   0.3045264   0.4323157
1        6 months    ki1135781-COHORTS           GUATEMALA    Other                NA                0.3913043   0.2907183   0.4918904
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                0.2727273   0.2166997   0.3287548
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             NA                0.1754386   0.1125541   0.2383231
1        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.2416681   0.2351827   0.2481535
1        6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.2231980   0.2168615   0.2295345
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.2280335   0.1963894   0.2596776
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.2174777   0.1879352   0.2470201
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.2581568   0.2332076   0.2831061
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                0.3873239   0.3071395   0.4675084
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  NA                0.3392857   0.2676356   0.4109358
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                NA                0.3812317   0.3296419   0.4328214
1        24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                0.1911765   0.0976376   0.2847154
1        24 months   ki1000111-WASH-Kenya        KENYA        LNS                  NA                0.2580645   0.1951294   0.3209997
1        24 months   ki1000111-WASH-Kenya        KENYA        Other                NA                0.3119777   0.2640134   0.3599421
1        24 months   ki1000304-ZnMort            INDIA        Control              NA                0.6250000   0.4873534   0.7626466
1        24 months   ki1000304-ZnMort            INDIA        Zinc                 NA                0.4615385   0.3253595   0.5977175
1        24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                0.4242424   0.3467275   0.5017574
1        24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             NA                0.5116279   0.4293518   0.5939040
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                0.4055300   0.3305731   0.4804868
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  NA                0.3681818   0.2935410   0.4428227
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                NA                0.3836317   0.3292029   0.4380605


### Parameter: E(Y)


impsan   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1135781-COHORTS           GUATEMALA    NA                   NA                0.0672646   0.0439922   0.0905369
0        Birth       kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.3555035   0.3410663   0.3699408
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3287037   0.2622544   0.3951530
0        6 months    iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.2261712   0.1931879   0.2591546
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1540881   0.1143446   0.1938315
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN     NA                   NA                0.3127962   0.2500898   0.3755026
0        6 months    ki1000304-VITAMIN-A         INDIA        NA                   NA                0.3708399   0.3331217   0.4085582
0        6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.5277778   0.3623864   0.6931691
0        6 months    ki1135781-COHORTS           GUATEMALA    NA                   NA                0.4492255   0.4087443   0.4897067
0        6 months    ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.3067293   0.2814374   0.3320212
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2266380   0.1997311   0.2535450
0        6 months    ki1148112-LCNI-5            MALAWI       NA                   NA                0.3634116   0.3302473   0.3965759
0        6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2995576   0.2828218   0.3162934
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3003697   0.2673379   0.3334014
0        24 months   iLiNS_DYADM_LNS             MALAWI       NA                   NA                0.4375000   0.2628705   0.6121295
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.4385246   0.3944543   0.4825949
0        24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.3345679   0.3020541   0.3670817
0        24 months   ki1135781-COHORTS           GUATEMALA    NA                   NA                0.7718631   0.7210512   0.8226750
0        24 months   ki1148112-iLiNS-DOSE        MALAWI       NA                   NA                0.5080058   0.4705947   0.5454169
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.4237288   0.2965568   0.5509008
0        24 months   ki1148112-LCNI-5            MALAWI       NA                   NA                0.3730159   0.3241991   0.4218327
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.4736842   0.4097336   0.5376348
1        Birth       kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.3077273   0.2986545   0.3168001
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2904290   0.2498983   0.3309598
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.1375000   0.0997094   0.1752906
1        6 months    ki1000304-VITAMIN-A         INDIA        NA                   NA                0.3356420   0.3142736   0.3570103
1        6 months    ki1000304-ZnMort            INDIA        NA                   NA                0.3027523   0.2161013   0.3894033
1        6 months    ki1135781-COHORTS           GUATEMALA    NA                   NA                0.3846154   0.2654240   0.5038067
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       NA                   NA                0.2111111   0.1263266   0.2958956
1        6 months    kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.2323838   0.2232845   0.2414831
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.2393531   0.2228727   0.2558335
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   NA                   NA                0.3717358   0.3345840   0.4088876
1        24 months   ki1000111-WASH-Kenya        KENYA        NA                   NA                0.2822186   0.2465602   0.3178770
1        24 months   ki1000304-ZnMort            INDIA        NA                   NA                0.5400000   0.4418238   0.6381762
1        24 months   kiGH5241-JiVitA-3           BANGLADESH   NA                   NA                0.4736842   0.3600414   0.5873270
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   NA                   NA                0.3852657   0.3473354   0.4231960


### Parameter: RR


impsan   agecat      studyid                     country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------  ----------  --------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0        Birth       ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       ki1135781-COHORTS           GUATEMALA    Other                Control           1.7637131   1.2293540   2.5303401
0        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8863403   0.8513317   0.9227885
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.2382479   0.6977590   2.1974029
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1186624   0.6867825   1.8221277
0        6 months    iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.9571861   0.8272601   1.1075178
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.7794872   0.4055710   1.4981353
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.5128205   0.2726772   0.9644550
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN     Maternal             Control           0.6988338   0.5695170   0.8575138
0        6 months    ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304-VITAMIN-A         INDIA        VitA                 Control           0.9397247   0.8487789   1.0404153
0        6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           1.0320513   0.5406531   1.9700800
0        6 months    ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1135781-COHORTS           GUATEMALA    Other                Control           0.8613157   0.7867356   0.9429657
0        6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.8740266   0.8047265   0.9492945
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.9713331   0.8625842   1.0937923
0        6 months    ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0808824   0.8538548   1.3682732
0        6 months    ki1148112-LCNI-5            MALAWI       Other                Control           1.1970443   0.9233598   1.5518492
0        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9069171   0.8578968   0.9587384
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.1744479   0.8793615   1.5685562
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1034884   0.8356041   1.4572531
0        24 months   iLiNS_DYADM_LNS             MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   iLiNS_DYADM_LNS             MALAWI       LNS                  Control           0.6984127   0.4637596   1.0517956
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8898827   0.6682099   1.1850934
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9537662   0.7503042   1.2124016
0        24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           0.9810127   0.7499917   1.2831953
0        24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           0.9577403   0.7711205   1.1895242
0        24 months   ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1135781-COHORTS           GUATEMALA    Other                Control           0.9011869   0.8434440   0.9628829
0        24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1148112-iLiNS-DOSE        MALAWI       LNS                  Control           0.9668642   0.8982097   1.0407664
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.7256944   0.5353578   0.9837018
0        24 months   ki1148112-LCNI-5            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   ki1148112-LCNI-5            MALAWI       LNS                  Control           1.0789398   0.7912831   1.4711688
0        24 months   ki1148112-LCNI-5            MALAWI       Other                Control           0.9440309   0.6478845   1.3755451
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9434100   0.6599028   1.3487175
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9855072   0.7036351   1.3802958
1        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.8979699   0.8721478   0.9245565
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           1.0044818   0.7045871   1.4320212
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.8347966   0.5915407   1.1780852
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8961039   0.4385281   1.8311304
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.8448980   0.4419521   1.6152260
1        6 months    ki1000304-VITAMIN-A         INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304-VITAMIN-A         INDIA        VitA                 Control           0.9255858   0.8684336   0.9864993
1        6 months    ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1000304-ZnMort            INDIA        Zinc                 Control           1.0091533   0.5656275   1.8004612
1        6 months    ki1135781-COHORTS           GUATEMALA    Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1135781-COHORTS           GUATEMALA    Other                Control           1.0621118   0.7789352   1.4482354
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Maternal             Control           0.6432749   0.4255717   0.9723451
1        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           0.9235726   0.8881883   0.9603667
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9537094   0.7853520   1.1581578
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   Other                Control           1.1321006   0.9559624   1.3406927
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   LNS                  Control           0.8759740   0.6517161   1.1774000
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Other                Control           0.9842709   0.7686028   1.2604549
1        24 months   ki1000111-WASH-Kenya        KENYA        Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1000111-WASH-Kenya        KENYA        LNS                  Control           1.3498759   0.7813930   2.3319445
1        24 months   ki1000111-WASH-Kenya        KENYA        Other                Control           1.6318834   0.9771337   2.7253625
1        24 months   ki1000304-ZnMort            INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   ki1000304-ZnMort            INDIA        Zinc                 Control           0.7384615   0.5110072   1.0671580
1        24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   kiGH5241-JiVitA-3           BANGLADESH   Maternal             Control           1.2059801   0.9454409   1.5383172
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   LNS                  Control           0.9079029   0.6898216   1.1949287
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   Other                Control           0.9460009   0.7493855   1.1942021


### Parameter: PAR


impsan   agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0        Birth       ki1135781-COHORTS           GUATEMALA    Control              NA                 0.0194177    0.0005150    0.0383203
0        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0218430   -0.0318221   -0.0118638
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0336217   -0.0684647    0.1357082
0        6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0048414   -0.0277366    0.0180537
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0739821   -0.1699772    0.0220130
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.0347215   -0.0687849   -0.0006582
0        6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0109782   -0.0368623    0.0149058
0        6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0060386   -0.1182467    0.1303240
0        6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0335331   -0.0620504   -0.0050159
0        6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0358633   -0.0587800   -0.0129467
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0043746   -0.0261674    0.0174181
0        6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0300783   -0.0273986    0.0875552
0        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0149620   -0.0263156   -0.0036083
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0263971   -0.0261528    0.0789470
0        24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.1079545   -0.2491433    0.0332342
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0236603   -0.1015150    0.0541944
0        24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0073676   -0.0487441    0.0340089
0        24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0383559   -0.0758719   -0.0008398
0        24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0145167   -0.0487783    0.0197449
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.1217257   -0.2362296   -0.0072218
0        24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0085299   -0.0689342    0.0859940
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0116099   -0.1221789    0.0989590
1        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0165519   -0.0230486   -0.0100552
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0224544   -0.0911390    0.0462303
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0146739   -0.0757053    0.0463574
1        6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0130211   -0.0280198    0.0019776
1        6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0011650   -0.0729076    0.0752375
1        6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                 0.0161943   -0.0844240    0.1168127
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0616162   -0.1252505    0.0020182
1        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0092843   -0.0156638   -0.0029048
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0113196   -0.0161762    0.0388155
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0155882   -0.0863335    0.0551572
1        24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.0910421    0.0011540    0.1809303
1        24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.0850000   -0.1869629    0.0169629
1        24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.0494418   -0.0336229    0.1325064
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0202643   -0.0845702    0.0440417


### Parameter: PAF


impsan   agecat      studyid                     country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------  ----------  --------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0        Birth       ki1135781-COHORTS           GUATEMALA    Control              NA                 0.2886762    0.0467856    0.4691839
0        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0614424   -0.0917074   -0.0320163
0        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.1022858   -0.2674415    0.3641595
0        6 months    iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.0214060   -0.1302437    0.0769511
0        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.4801289   -1.2460689    0.0246152
0        6 months    ki1000125-AgaKhanUniv       PAKISTAN     Control              NA                -0.1110037   -0.2404250    0.0049144
0        6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0296037   -0.1040716    0.0398414
0        6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0114416   -0.2545030    0.2210081
0        6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0746466   -0.1452558   -0.0083907
0        6 months    ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.1169218   -0.2036740   -0.0364220
0        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.0193023   -0.1221920    0.0741538
0        6 months    ki1148112-LCNI-5            MALAWI       Control              NA                 0.0827664   -0.0898575    0.2280482
0        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0499469   -0.0905582   -0.0108480
0        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0878820   -0.1044809    0.2467418
0        24 months   iLiNS_DYADM_LNS             MALAWI       Control              NA                -0.2467532   -0.7273550    0.1001307
0        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0539543   -0.2473847    0.1094811
0        24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                -0.0220212   -0.1534869    0.0944610
0        24 months   ki1135781-COHORTS           GUATEMALA    Control              NA                -0.0496926   -0.1020226    0.0001526
0        24 months   ki1148112-iLiNS-DOSE        MALAWI       Control              NA                -0.0285759   -0.1003447    0.0385119
0        24 months   ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.2872727   -0.6893128    0.0190857
0        24 months   ki1148112-LCNI-5            MALAWI       Control              NA                 0.0228674   -0.2085247    0.2099556
0        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0245098   -0.2865924    0.1841858
1        Birth       kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0537876   -0.0762996   -0.0317464
1        Birth       kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0773146   -0.3413334    0.1347366
1        6 months    ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.1067194   -0.6518505    0.2585117
1        6 months    ki1000304-VITAMIN-A         INDIA        Control              NA                -0.0387947   -0.0863026    0.0066355
1        6 months    ki1000304-ZnMort            INDIA        Control              NA                 0.0038480   -0.2734799    0.2207817
1        6 months    ki1135781-COHORTS           GUATEMALA    Control              NA                 0.0421053   -0.2444483    0.2626754
1        6 months    ki1148112-iLiNS-DYAD-M      MALAWI       Control              NA                -0.2918660   -0.7566685    0.0499529
1        6 months    kiGH5241-JiVitA-3           BANGLADESH   Control              NA                -0.0399522   -0.0689199   -0.0117696
1        6 months    kiGH5241-JiVitA-4           BANGLADESH   Control              NA                 0.0472926   -0.0747413    0.1554698
1        24 months   ki1000110-WASH-Bangladesh   BANGLADESH   Control              NA                -0.0419334   -0.2507457    0.1320176
1        24 months   ki1000111-WASH-Kenya        KENYA        Control              NA                 0.3225944   -0.0820923    0.5759341
1        24 months   ki1000304-ZnMort            INDIA        Control              NA                -0.1574074   -0.3668516    0.0199434
1        24 months   kiGH5241-JiVitA-3           BANGLADESH   Control              NA                 0.1043771   -0.0683842    0.2492023
1        24 months   kiGH5241-JiVitA-4           BANGLADESH   Control              NA                -0.0525981   -0.2335121    0.1017820
