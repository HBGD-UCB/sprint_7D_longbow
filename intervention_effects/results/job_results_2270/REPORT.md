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

* safeh20
* agecat
* studyid
* country

## Data Summary

safeh20   agecat        studyid                     country        tr          ever_stunted   n_cell       n
--------  ------------  --------------------------  -------------  ---------  -------------  -------  ------
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control                0       98     290
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Control                1       40     290
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0      115     290
1         0-6 months    ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1       37     290
1         0-6 months    ki1000304-VITAMIN-A         INDIA          Control                0      118     334
1         0-6 months    ki1000304-VITAMIN-A         INDIA          Control                1       53     334
1         0-6 months    ki1000304-VITAMIN-A         INDIA          VitA                   0      109     334
1         0-6 months    ki1000304-VITAMIN-A         INDIA          VitA                   1       54     334
1         0-6 months    ki1000304-ZnMort            INDIA          Control                0       45     152
1         0-6 months    ki1000304-ZnMort            INDIA          Control                1       28     152
1         0-6 months    ki1000304-ZnMort            INDIA          Zinc                   0       48     152
1         0-6 months    ki1000304-ZnMort            INDIA          Zinc                   1       31     152
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control                0       63     416
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Control                1       42     416
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                  0      194     416
1         0-6 months    ki1000304b-SAS-FoodSuppl    INDIA          Other                  1      117     416
1         0-6 months    ki1017093b-PROVIDE          BANGLADESH     Control                0      142     638
1         0-6 months    ki1017093b-PROVIDE          BANGLADESH     Control                1       24     638
1         0-6 months    ki1017093b-PROVIDE          BANGLADESH     Other                  0      407     638
1         0-6 months    ki1017093b-PROVIDE          BANGLADESH     Other                  1       65     638
0         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0       20      24
0         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1        4      24
1         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0       13      14
1         0-6 months    ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1        1      14
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                0       95     802
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                1       40     802
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    0      470     802
1         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    1      197     802
0         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                0        3      57
0         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         Control                1        2      57
0         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    0       39      57
0         0-6 months    ki1148112-iLiNS-DOSE        MALAWI         LNS                    1       13      57
1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0        3       5
1         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1        2       5
0         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Control                0        1       3
0         0-6 months    ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0        2       3
1         0-6 months    ki1148112-LCNI-5            MALAWI         Control                0       38     213
1         0-6 months    ki1148112-LCNI-5            MALAWI         Control                1       20     213
1         0-6 months    ki1148112-LCNI-5            MALAWI         LNS                    0       76     213
1         0-6 months    ki1148112-LCNI-5            MALAWI         LNS                    1       34     213
1         0-6 months    ki1148112-LCNI-5            MALAWI         Other                  0       26     213
1         0-6 months    ki1148112-LCNI-5            MALAWI         Other                  1       19     213
0         0-6 months    ki1148112-LCNI-5            MALAWI         Control                0        5      56
0         0-6 months    ki1148112-LCNI-5            MALAWI         Control                1        4      56
0         0-6 months    ki1148112-LCNI-5            MALAWI         LNS                    0       17      56
0         0-6 months    ki1148112-LCNI-5            MALAWI         LNS                    1       10      56
0         0-6 months    ki1148112-LCNI-5            MALAWI         Other                  0       12      56
0         0-6 months    ki1148112-LCNI-5            MALAWI         Other                  1        8      56
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                0     6930   19316
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                1     2653   19316
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     7449   19316
1         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               1     2284   19316
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                0        6      29
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Control                1        5      29
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               0        9      29
0         0-6 months    kiGH5241-JiVitA-3           BANGLADESH     Maternal               1        9      29
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control                0      905    4556
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Control                1      274    4556
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      933    4556
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                    1      314    4556
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                  0     1571    4556
1         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     Other                  1      559    4556
0         0-6 months    kiGH5241-JiVitA-4           BANGLADESH     LNS                    0        1       1
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                0      299     949
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                1      149     949
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0      372     949
1         6-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1      129     949
1         6-24 months   ki1000304-VITAMIN-A         INDIA          Control                0      993    2164
1         6-24 months   ki1000304-VITAMIN-A         INDIA          Control                1       84    2164
1         6-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0     1004    2164
1         6-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   1       83    2164
0         6-24 months   ki1000304-VITAMIN-A         INDIA          Control                0        2       3
0         6-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0        1       3
1         6-24 months   ki1000304-ZnMort            INDIA          Control                0      386     794
1         6-24 months   ki1000304-ZnMort            INDIA          Zinc                   0      408     794
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control                0       19     226
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control                1       29     226
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                  0       80     226
1         6-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                  1       98     226
1         6-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                0      101     495
1         6-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                1       25     495
1         6-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  0      276     495
1         6-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  1       93     495
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0     2330    2580
0         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1      250    2580
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0     1485    1667
1         6-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1      182    1667
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0      109     837
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1       34     837
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0      535     837
1         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1      159     837
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0        7      54
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1        0      54
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0       33      54
0         6-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1       14      54
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0       11      40
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                1        1      40
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0       22      40
1         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1        6      40
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0        2       3
0         6-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0        1       3
1         6-24 months   ki1148112-LCNI-5            MALAWI         Control                0       85     477
1         6-24 months   ki1148112-LCNI-5            MALAWI         Control                1       37     477
1         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0      169     477
1         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                    1       76     477
1         6-24 months   ki1148112-LCNI-5            MALAWI         Other                  0       72     477
1         6-24 months   ki1148112-LCNI-5            MALAWI         Other                  1       38     477
0         6-24 months   ki1148112-LCNI-5            MALAWI         Control                0       13     102
0         6-24 months   ki1148112-LCNI-5            MALAWI         Control                1        6     102
0         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0       35     102
0         6-24 months   ki1148112-LCNI-5            MALAWI         LNS                    1       15     102
0         6-24 months   ki1148112-LCNI-5            MALAWI         Other                  0       25     102
0         6-24 months   ki1148112-LCNI-5            MALAWI         Other                  1        8     102
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0     5252   13285
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1     1233   13285
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     5417   13285
1         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1     1383   13285
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0        4      13
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1        1      13
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0        5      13
0         6-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1        3      13
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                0      788    4305
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                1      367    4305
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      862    4305
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    1      331    4305
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  0     1383    4305
1         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  1      574    4305
0         6-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0        1       1
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                0      379    1716
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Control                1      450    1716
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               0      462    1716
1         0-24 months   ki1000125-AgaKhanUniv       PAKISTAN       Maternal               1      425    1716
1         0-24 months   ki1000304-VITAMIN-A         INDIA          Control                0      976    3538
1         0-24 months   ki1000304-VITAMIN-A         INDIA          Control                1      810    3538
1         0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0      991    3538
1         0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   1      761    3538
0         0-24 months   ki1000304-VITAMIN-A         INDIA          Control                0        2       5
0         0-24 months   ki1000304-VITAMIN-A         INDIA          Control                1        1       5
0         0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   0        1       5
0         0-24 months   ki1000304-VITAMIN-A         INDIA          VitA                   1        1       5
1         0-24 months   ki1000304-ZnMort            INDIA          Control                0      431    1738
1         0-24 months   ki1000304-ZnMort            INDIA          Control                1      420    1738
1         0-24 months   ki1000304-ZnMort            INDIA          Zinc                   0      456    1738
1         0-24 months   ki1000304-ZnMort            INDIA          Zinc                   1      431    1738
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control                0       20     418
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Control                1       86     418
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                  0       86     418
1         0-24 months   ki1000304b-SAS-FoodSuppl    INDIA          Other                  1      226     418
1         0-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                0      101     639
1         0-24 months   ki1017093b-PROVIDE          BANGLADESH     Control                1       65     639
1         0-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  0      277     639
1         0-24 months   ki1017093b-PROVIDE          BANGLADESH     Other                  1      196     639
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0     2292    3608
0         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1     1316    3608
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   0     1454    2182
1         0-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO   Zinc                   1      728    2182
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0       96    1232
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1      115    1232
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0      488    1232
1         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1      533    1232
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                0        7      88
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         Control                1        5      88
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    0       31      88
0         0-24 months   ki1148112-iLiNS-DOSE        MALAWI         LNS                    1       45      88
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0       10      56
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                1        9      56
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0       21      56
1         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1       16      56
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                0        2       5
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Control                1        0       5
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               0        1       5
0         0-24 months   ki1148112-iLiNS-DYAD-M      MALAWI         Maternal               1        2       5
1         0-24 months   ki1148112-LCNI-5            MALAWI         Control                0       82     673
1         0-24 months   ki1148112-LCNI-5            MALAWI         Control                1       94     673
1         0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0      145     673
1         0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    1      193     673
1         0-24 months   ki1148112-LCNI-5            MALAWI         Other                  0       58     673
1         0-24 months   ki1148112-LCNI-5            MALAWI         Other                  1      101     673
0         0-24 months   ki1148112-LCNI-5            MALAWI         Control                0       10     144
0         0-24 months   ki1148112-LCNI-5            MALAWI         Control                1       14     144
0         0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    0       30     144
0         0-24 months   ki1148112-LCNI-5            MALAWI         LNS                    1       43     144
0         0-24 months   ki1148112-LCNI-5            MALAWI         Other                  0       24     144
0         0-24 months   ki1148112-LCNI-5            MALAWI         Other                  1       23     144
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0     6643   22885
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1     4686   22885
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0     7093   22885
1         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1     4463   22885
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                0        4      32
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Control                1        7      32
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               0        9      32
0         0-24 months   kiGH5241-JiVitA-3           BANGLADESH     Maternal               1       12      32
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                0      723    5424
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Control                1      707    5424
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0      773    5424
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    1      717    5424
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  0     1252    5424
1         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     Other                  1     1252    5424
0         0-24 months   kiGH5241-JiVitA-4           BANGLADESH     LNS                    0        1       1
1         0-6 months    iLiNS_DYADM_LNS             MALAWI         LNS                    0        1       3
1         0-6 months    iLiNS_DYADM_LNS             MALAWI         LNS                    1        2       3
0         0-6 months    iLiNS_DYADM_LNS             MALAWI         Control                0        1       2
0         0-6 months    iLiNS_DYADM_LNS             MALAWI         LNS                    0        1       2
1         6-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0       11      27
1         6-24 months   iLiNS_DYADM_LNS             MALAWI         Control                1        1      27
1         6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    0       12      27
1         6-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    1        3      27
0         6-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0        2       2
1         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0       10      40
1         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                1        9      40
1         0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    0       11      40
1         0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    1       10      40
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                0        2       3
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         Control                1        0       3
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    0        0       3
0         0-24 months   iLiNS_DYADM_LNS             MALAWI         LNS                    1        1       3


The following strata were considered:

* safeh20: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 0, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 0, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 1, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 1, agecat: 0-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 1, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 1, agecat: 0-24 months, studyid: ki1000304-ZnMort, country: INDIA
* safeh20: 1, agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* safeh20: 1, agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* safeh20: 1, agecat: 0-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 1, agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 1, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 1, agecat: 0-6 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 1, agecat: 0-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 1, agecat: 0-6 months, studyid: ki1000304-ZnMort, country: INDIA
* safeh20: 1, agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* safeh20: 1, agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* safeh20: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 1, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 1, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 1, agecat: 6-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* safeh20: 1, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 1, agecat: 6-24 months, studyid: ki1000304-ZnMort, country: INDIA
* safeh20: 1, agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* safeh20: 1, agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* safeh20: 1, agecat: 6-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 1, agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 1, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* safeh20: 0, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 1, agecat: 0-6 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* safeh20: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 0, agecat: 6-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* safeh20: 1, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 6-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 0, agecat: 0-24 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* safeh20: 0, agecat: 0-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* safeh20: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* safeh20: 0, agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* safeh20: 1, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 0-6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 1, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 6-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI
* safeh20: 0, agecat: 0-24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI

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
##   Zinc     2292 1316
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     2330  250
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     1454  728
##           ever_stunted
## tr           0
##   Control  386
##   LNS        0
##   Maternal   0
##   Other      0
##   VitA       0
##   Zinc     408
##           ever_stunted
## tr            0    1
##   Control     0    0
##   LNS         0    0
##   Maternal    0    0
##   Other       0    0
##   VitA        0    0
##   Zinc     1485  182
```




# Results Detail

## Results Plots
![](/tmp/8e5e0be4-8f09-4edb-93ca-d8624c358455/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8e5e0be4-8f09-4edb-93ca-d8624c358455/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8e5e0be4-8f09-4edb-93ca-d8624c358455/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8e5e0be4-8f09-4edb-93ca-d8624c358455/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


safeh20   agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.4166667   0.3784115   0.4549219
0         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.5921053   0.4961370   0.6880735
0         0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                0.5833333   0.3854048   0.7812619
0         0-24 months   ki1148112-LCNI-5           MALAWI       LNS                  NA                0.5890411   0.4757823   0.7022999
0         0-24 months   ki1148112-LCNI-5           MALAWI       Other                NA                0.4893617   0.3459502   0.6327732
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.4545455   0.3220797   0.5870112
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.5000000   0.3415951   0.6584049
0         6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                0.3157895   0.1057483   0.5258306
0         6-24 months   ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3000000   0.1723526   0.4276474
0         6-24 months   ki1148112-LCNI-5           MALAWI       Other                NA                0.2424242   0.0954871   0.3893614
1         0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              NA                0.4736842   0.3656826   0.5816858
1         0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                  NA                0.4761905   0.3626182   0.5897628
1         0-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                0.5428227   0.5264354   0.5592099
1         0-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Maternal             NA                0.4791432   0.4621447   0.4961417
1         0-24 months   ki1000304-VITAMIN-A        INDIA        Control              NA                0.4535274   0.4418707   0.4651842
1         0-24 months   ki1000304-VITAMIN-A        INDIA        VitA                 NA                0.4343607   0.4228656   0.4458559
1         0-24 months   ki1000304-ZnMort           INDIA        Control              NA                0.4935370   0.4599368   0.5271372
1         0-24 months   ki1000304-ZnMort           INDIA        Zinc                 NA                0.4859076   0.4530066   0.5188085
1         0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.8113208   0.7924102   0.8302313
1         0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.7243590   0.6873064   0.7614115
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.3915663   0.3722621   0.4108704
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.4143763   0.3814893   0.4472634
1         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.5450237   0.5335115   0.5565359
1         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.5220372   0.4966348   0.5474396
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                0.4736842   0.3968212   0.5505472
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             NA                0.4324324   0.3260080   0.5388569
1         0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                0.5340909   0.4603391   0.6078427
1         0-24 months   ki1148112-LCNI-5           MALAWI       LNS                  NA                0.5710059   0.5182029   0.6238089
1         0-24 months   ki1148112-LCNI-5           MALAWI       Other                NA                0.6352201   0.5603429   0.7100974
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.4136287   0.4077637   0.4194938
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.3862063   0.3805744   0.3918382
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.4944056   0.4613621   0.5274491
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.4812081   0.4495682   0.5128479
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.5000000   0.4767125   0.5232875
1         0-6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                0.2898551   0.2537720   0.3259382
1         0-6 months    ki1000125-AgaKhanUniv      PAKISTAN     Maternal             NA                0.2434211   0.2076008   0.2792413
1         0-6 months    ki1000304-VITAMIN-A        INDIA        Control              NA                0.3099415   0.2744002   0.3454828
1         0-6 months    ki1000304-VITAMIN-A        INDIA        VitA                 NA                0.3312883   0.2959725   0.3666041
1         0-6 months    ki1000304-ZnMort           INDIA        Control              NA                0.3835616   0.2716482   0.4954751
1         0-6 months    ki1000304-ZnMort           INDIA        Zinc                 NA                0.3924051   0.2843756   0.5004345
1         0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.4000000   0.3763202   0.4236798
1         0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.3762058   0.3359071   0.4165045
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.1445783   0.1306479   0.1585087
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.1377119   0.1146947   0.1607290
1         0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.2962963   0.2833224   0.3092702
1         0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.2953523   0.2665410   0.3241637
1         0-6 months    ki1148112-LCNI-5           MALAWI       Control              NA                0.3448276   0.2222151   0.4674401
1         0-6 months    ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3090909   0.2225289   0.3956529
1         0-6 months    ki1148112-LCNI-5           MALAWI       Other                NA                0.4222222   0.2775735   0.5668710
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.2768444   0.2715779   0.2821110
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2346656   0.2299864   0.2393447
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.2324003   0.2045483   0.2602524
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2518043   0.2261921   0.2774165
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2624413   0.2416071   0.2832756
1         6-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                0.3325893   0.3119830   0.3531956
1         6-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Maternal             NA                0.2574850   0.2372614   0.2777086
1         6-24 months   ki1000304-VITAMIN-A        INDIA        Control              NA                0.0779944   0.0700219   0.0859670
1         6-24 months   ki1000304-VITAMIN-A        INDIA        VitA                 NA                0.0763569   0.0684250   0.0842889
1         6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                0.6041667   0.5747185   0.6336148
1         6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                NA                0.5505618   0.4928784   0.6082452
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                0.1984127   0.1806697   0.2161557
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                NA                0.2520325   0.2189754   0.2850896
1         6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                0.2377622   0.2258343   0.2496902
1         6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  NA                0.2291066   0.2031662   0.2550471
1         6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                0.3032787   0.2216253   0.3849321
1         6-24 months   ki1148112-LCNI-5           MALAWI       LNS                  NA                0.3102041   0.2522205   0.3681876
1         6-24 months   ki1148112-LCNI-5           MALAWI       Other                NA                0.3454545   0.2564990   0.4344100
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                0.1901311   0.1847144   0.1955478
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             NA                0.2033824   0.1973963   0.2093684
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                0.3177489   0.2847469   0.3507509
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  NA                0.2774518   0.2475129   0.3073907
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                NA                0.2933061   0.2692823   0.3173299


### Parameter: E(Y)


safeh20   agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.5681818   0.4640981   0.6722655
0         0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.5555556   0.4741128   0.6369983
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.4827586   0.2694802   0.6960370
0         6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.2843137   0.1963411   0.3722864
1         0-24 months   iLiNS_DYADM_LNS            MALAWI       NA                   NA                0.4750000   0.3182736   0.6317264
1         0-24 months   ki1000125-AgaKhanUniv      PAKISTAN     NA                   NA                0.5099068   0.4862475   0.5335660
1         0-24 months   ki1000304-VITAMIN-A        INDIA        NA                   NA                0.4440362   0.4276619   0.4604105
1         0-24 months   ki1000304-ZnMort           INDIA        NA                   NA                0.4896433   0.4661348   0.5131518
1         0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.7464115   0.7046540   0.7881689
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.4084507   0.3703087   0.4465927
1         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.5259740   0.4980806   0.5538675
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       NA                   NA                0.4464286   0.3150485   0.5778087
1         0-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.5765230   0.5391648   0.6138813
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.3997815   0.3915546   0.4080085
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.4933628   0.4770166   0.5097090
1         0-6 months    ki1000125-AgaKhanUniv      PAKISTAN     NA                   NA                0.2655172   0.2146033   0.3164311
1         0-6 months    ki1000304-VITAMIN-A        INDIA        NA                   NA                0.3203593   0.2702424   0.3704762
1         0-6 months    ki1000304-ZnMort           INDIA        NA                   NA                0.3881579   0.3104288   0.4658870
1         0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.3822115   0.3354600   0.4289631
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.1394984   0.1125931   0.1664038
1         0-6 months    ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.2955112   0.2639135   0.3271090
1         0-6 months    ki1148112-LCNI-5           MALAWI       NA                   NA                0.3427230   0.2788340   0.4066120
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.2555912   0.2483463   0.2628362
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2517559   0.2377073   0.2658045
1         6-24 months   ki1000125-AgaKhanUniv      PAKISTAN     NA                   NA                0.2929399   0.2639691   0.3219108
1         6-24 months   ki1000304-VITAMIN-A        INDIA        NA                   NA                0.0771719   0.0659256   0.0884182
1         6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        NA                   NA                0.5619469   0.4971181   0.6267757
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH   NA                   NA                0.2383838   0.2008095   0.2759582
1         6-24 months   ki1148112-iLiNS-DOSE       MALAWI       NA                   NA                0.2305854   0.2020331   0.2591377
1         6-24 months   ki1148112-LCNI-5           MALAWI       NA                   NA                0.3165618   0.2747765   0.3583471
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH   NA                   NA                0.1969138   0.1888431   0.2049845
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   NA                   NA                0.2954704   0.2791021   0.3118386


### Parameter: RR


safeh20   agecat        studyid                    country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
--------  ------------  -------------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
0         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           1.4210526   1.1795350   1.7120226
0         0-24 months   ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         0-24 months   ki1148112-LCNI-5           MALAWI       LNS                  Control           1.0097847   0.6836827   1.4914306
0         0-24 months   ki1148112-LCNI-5           MALAWI       Other                Control           0.8389058   0.5357968   1.3134885
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           1.1000000   0.7210378   1.6781367
0         6-24 months   ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
0         6-24 months   ki1148112-LCNI-5           MALAWI       LNS                  Control           0.9500000   0.4313324   2.0923539
0         6-24 months   ki1148112-LCNI-5           MALAWI       Other                Control           0.7676768   0.3121532   1.8879437
1         0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   iLiNS_DYADM_LNS            MALAWI       LNS                  Control           1.0052910   0.7227618   1.3982614
1         0-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Maternal             Control           0.8826882   0.8425129   0.9247793
1         0-24 months   ki1000304-VITAMIN-A        INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304-VITAMIN-A        INDIA        VitA                 Control           0.9577386   0.9230500   0.9937309
1         0-24 months   ki1000304-ZnMort           INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304-ZnMort           INDIA        Zinc                 Control           0.9845413   0.8944034   1.0837632
1         0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.8928145   0.8440119   0.9444391
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                Control           1.0582534   0.9638584   1.1618929
1         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.9578248   0.9083394   1.0100061
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Maternal             Control           0.9129129   0.6798380   1.2258951
1         0-24 months   ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   ki1148112-LCNI-5           MALAWI       LNS                  Control           1.0691175   0.9054180   1.2624138
1         0-24 months   ki1148112-LCNI-5           MALAWI       Other                Control           1.1893483   0.9918809   1.4261283
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.9337028   0.9148868   0.9529057
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.9733062   0.8861662   1.0690151
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.0113154   0.9321721   1.0971782
1         0-6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000125-AgaKhanUniv      PAKISTAN     Maternal             Control           0.8398026   0.6925780   1.0183235
1         0-6 months    ki1000304-VITAMIN-A        INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000304-VITAMIN-A        INDIA        VitA                 Control           1.0688737   0.9139661   1.2500365
1         0-6 months    ki1000304-ZnMort           INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000304-ZnMort           INDIA        Zinc                 Control           1.0230561   0.6849854   1.5279795
1         0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.9405145   0.8321713   1.0629632
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH   Other                Control           0.9525071   0.7853852   1.1551907
1         0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.9968141   0.8957296   1.1093062
1         0-6 months    ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    ki1148112-LCNI-5           MALAWI       LNS                  Control           0.8963636   0.5700515   1.4094653
1         0-6 months    ki1148112-LCNI-5           MALAWI       Other                Control           1.2244444   0.7473096   2.0062155
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           0.8476442   0.8245922   0.8713407
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           1.0834938   0.9258356   1.2679992
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Other                Control           1.1292639   0.9780620   1.3038406
1         6-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Maternal             Control           0.7741832   0.7004830   0.8556376
1         6-24 months   ki1000304-VITAMIN-A        INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000304-VITAMIN-A        INDIA        VitA                 Control           0.9790051   0.8462353   1.1326059
1         6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Other                Control           0.9112747   0.8118289   1.0229022
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH   Other                Control           1.2702439   1.0837887   1.4887769
1         6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1148112-iLiNS-DOSE       MALAWI       LNS                  Control           0.9635955   0.8513563   1.0906319
1         6-24 months   ki1148112-LCNI-5           MALAWI       Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   ki1148112-LCNI-5           MALAWI       LNS                  Control           1.0228351   0.7369888   1.4195488
1         6-24 months   ki1148112-LCNI-5           MALAWI       Other                Control           1.1390663   0.7847864   1.6532807
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Maternal             Control           1.0696955   1.0267565   1.1144303
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              Control           1.0000000   1.0000000   1.0000000
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   LNS                  Control           0.8731794   0.7517202   1.0142633
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Other                Control           0.9230750   0.8087142   1.0536077


### Parameter: PAR


safeh20   agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.1515152    0.0547167    0.2483137
0         0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.0277778   -0.2087476    0.1531920
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0282132   -0.1321028    0.1885291
0         6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.0314757   -0.2196794    0.1567279
1         0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              NA                 0.0013158   -0.1122572    0.1148888
1         0-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.0329159   -0.0499810   -0.0158508
1         0-24 months   ki1000304-VITAMIN-A        INDIA        Control              NA                -0.0094913   -0.0209907    0.0020082
1         0-24 months   ki1000304-ZnMort           INDIA        Control              NA                -0.0038937   -0.0278945    0.0201070
1         0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0649093   -0.1021393   -0.0276792
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.0168844   -0.0160117    0.0497806
1         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0190497   -0.0444567    0.0063573
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                -0.0272556   -0.1338052    0.0792939
1         0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                 0.0424321   -0.0207346    0.1055988
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0138472   -0.0196566   -0.0080379
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0010428   -0.0290507    0.0269652
1         0-6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.0243378   -0.0602577    0.0115820
1         0-6 months    ki1000304-VITAMIN-A        INDIA        Control              NA                 0.0104178   -0.0249166    0.0457522
1         0-6 months    ki1000304-ZnMort           INDIA        Control              NA                 0.0045963   -0.0762505    0.0854430
1         0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0177885   -0.0580994    0.0225225
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              NA                -0.0050799   -0.0280982    0.0179384
1         0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0007851   -0.0295964    0.0280263
1         0-6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.0021046   -0.1066426    0.1024334
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0212532   -0.0262839   -0.0162225
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0193556   -0.0045292    0.0432403
1         6-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.0396493   -0.0600133   -0.0192854
1         6-24 months   ki1000304-VITAMIN-A        INDIA        Control              NA                -0.0008225   -0.0087546    0.0071095
1         6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0422198   -0.0999742    0.0155347
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.0399711    0.0068499    0.0730924
1         6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0071768   -0.0331182    0.0187646
1         6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                 0.0132832   -0.0574471    0.0840135
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0067827    0.0008010    0.0127645
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0222785   -0.0500603    0.0055032


### Parameter: PAF


safeh20   agecat        studyid                    country      intervention_level   baseline_level      estimate     ci_lower     ci_upper
--------  ------------  -------------------------  -----------  -------------------  ---------------  -----------  -----------  -----------
0         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                 0.2666667    0.1289355    0.3826200
0         0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.0500000   -0.4321141    0.2301591
0         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0584416   -0.3118032    0.3241880
0         6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                -0.1107078   -1.0155296    0.3879168
1         0-24 months   iLiNS_DYADM_LNS            MALAWI       Control              NA                 0.0027701   -0.2665896    0.2148463
1         0-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.0645528   -0.1008456   -0.0294565
1         0-24 months   ki1000304-VITAMIN-A        INDIA        Control              NA                -0.0213750   -0.0481777    0.0047424
1         0-24 months   ki1000304-ZnMort           INDIA        Control              NA                -0.0079522   -0.0581818    0.0398931
1         0-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0869618   -0.1426000   -0.0340328
1         0-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.0413378   -0.0390930    0.1155428
1         0-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0362179   -0.0875072    0.0126525
1         0-24 months   ki1148112-iLiNS-DYAD-M     MALAWI       Control              NA                -0.0610526   -0.3473478    0.1644082
1         0-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                 0.0736000   -0.0428849    0.1770742
1         0-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0346370   -0.0497866   -0.0197060
1         0-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0021136   -0.0605186    0.0530750
1         0-6 months    ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.0916620   -0.2504009    0.0469250
1         0-6 months    ki1000304-VITAMIN-A        INDIA        Control              NA                 0.0325190   -0.0803658    0.1336087
1         0-6 months    ki1000304-ZnMort           INDIA        Control              NA                 0.0118412   -0.2200242    0.1996406
1         0-6 months    ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0465409   -0.1629897    0.0582480
1         0-6 months    ki1017093b-PROVIDE         BANGLADESH   Control              NA                -0.0364153   -0.2223960    0.1212695
1         0-6 months    ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0026567   -0.1053366    0.0904849
1         0-6 months    ki1148112-LCNI-5           MALAWI       Control              NA                -0.0061408   -0.3624469    0.2569845
1         0-6 months    kiGH5241-JiVitA-3          BANGLADESH   Control              NA                -0.0831531   -0.1047355   -0.0619923
1         0-6 months    kiGH5241-JiVitA-4          BANGLADESH   Control              NA                 0.0768823   -0.0232003    0.1671756
1         6-24 months   ki1000125-AgaKhanUniv      PAKISTAN     Control              NA                -0.1353498   -0.2176959   -0.0585722
1         6-24 months   ki1000304-VITAMIN-A        INDIA        Control              NA                -0.0106583   -0.1200711    0.0880665
1         6-24 months   ki1000304b-SAS-FoodSuppl   INDIA        Control              NA                -0.0751312   -0.1915841    0.0299408
1         6-24 months   ki1017093b-PROVIDE         BANGLADESH   Control              NA                 0.1676755    0.0428408    0.2762291
1         6-24 months   ki1148112-iLiNS-DOSE       MALAWI       Control              NA                -0.0311243   -0.1539179    0.0786023
1         6-24 months   ki1148112-LCNI-5           MALAWI       Control              NA                 0.0419607   -0.2096660    0.2412457
1         6-24 months   kiGH5241-JiVitA-3          BANGLADESH   Control              NA                 0.0344452    0.0046486    0.0633498
1         6-24 months   kiGH5241-JiVitA-4          BANGLADESH   Control              NA                -0.0754002   -0.1735123    0.0145091
