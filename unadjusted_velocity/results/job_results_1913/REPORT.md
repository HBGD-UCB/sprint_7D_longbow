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

**Outcome Variable:** y_rate_haz

## Predictor Variables

**Intervention Variable:** brthmon

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        brthmon    n_cell       n
-------------  --------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     1              20     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     2              21     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     3              23     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     4              21     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     5              21     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     6              10     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     7              18     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     8              25     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     9              21     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     10             22     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     11             14     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     12             28     244
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     1              18     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     2              19     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     3              20     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     4              21     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     5              20     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     6               9     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     7              17     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     8              23     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     9              21     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     10             22     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     11             15     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     12             26     231
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     1              17     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     2              18     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     3              18     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     4              21     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     5              19     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     6               8     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     7              17     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     8              22     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     9              20     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     10             22     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     11             12     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     12             26     220
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     1              13     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     2              16     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     3              19     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     4              20     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     5              17     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     6               7     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     7              18     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     8              22     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     9              18     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     10             20     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     11             10     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     12             26     206
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     7               8      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     8              21      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     9               8      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     12              1      38
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     1              59     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     2              51     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     3              53     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     4              46     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     5              46     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     6              44     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     7              38     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     8              37     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     9              42     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     10             46     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     11             52     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     12             52     566
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     1              49     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     2              47     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     3              48     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     4              41     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     5              42     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     6              41     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     7              38     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     8              34     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     9              42     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     10             40     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     11             50     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     12             51     523
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     1              43     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     2              43     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     3              44     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     4              37     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     5              38     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     6              37     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     7              38     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     8              30     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     9              34     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     10             39     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     11             49     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     12             50     482
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     1              41     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     2              36     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     3              39     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     4              33     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     5              35     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     6              30     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     7              34     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     8              27     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     9              24     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     10             33     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     11             43     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     12             46     421
3-6 months     ki1114097-CMIN              BANGLADESH                     1              17     185
3-6 months     ki1114097-CMIN              BANGLADESH                     2              18     185
3-6 months     ki1114097-CMIN              BANGLADESH                     3              14     185
3-6 months     ki1114097-CMIN              BANGLADESH                     4              16     185
3-6 months     ki1114097-CMIN              BANGLADESH                     5              14     185
3-6 months     ki1114097-CMIN              BANGLADESH                     6               8     185
3-6 months     ki1114097-CMIN              BANGLADESH                     7              13     185
3-6 months     ki1114097-CMIN              BANGLADESH                     8              11     185
3-6 months     ki1114097-CMIN              BANGLADESH                     9              13     185
3-6 months     ki1114097-CMIN              BANGLADESH                     10             21     185
3-6 months     ki1114097-CMIN              BANGLADESH                     11             22     185
3-6 months     ki1114097-CMIN              BANGLADESH                     12             18     185
6-12 months    ki1114097-CMIN              BANGLADESH                     1              16     164
6-12 months    ki1114097-CMIN              BANGLADESH                     2              15     164
6-12 months    ki1114097-CMIN              BANGLADESH                     3               8     164
6-12 months    ki1114097-CMIN              BANGLADESH                     4              19     164
6-12 months    ki1114097-CMIN              BANGLADESH                     5              13     164
6-12 months    ki1114097-CMIN              BANGLADESH                     6               6     164
6-12 months    ki1114097-CMIN              BANGLADESH                     7               9     164
6-12 months    ki1114097-CMIN              BANGLADESH                     8               9     164
6-12 months    ki1114097-CMIN              BANGLADESH                     9              15     164
6-12 months    ki1114097-CMIN              BANGLADESH                     10             19     164
6-12 months    ki1114097-CMIN              BANGLADESH                     11             18     164
6-12 months    ki1114097-CMIN              BANGLADESH                     12             17     164
12-24 months   ki1114097-CMIN              BANGLADESH                     1              14     138
12-24 months   ki1114097-CMIN              BANGLADESH                     2              15     138
12-24 months   ki1114097-CMIN              BANGLADESH                     3               9     138
12-24 months   ki1114097-CMIN              BANGLADESH                     4              13     138
12-24 months   ki1114097-CMIN              BANGLADESH                     5              10     138
12-24 months   ki1114097-CMIN              BANGLADESH                     6               6     138
12-24 months   ki1114097-CMIN              BANGLADESH                     7               7     138
12-24 months   ki1114097-CMIN              BANGLADESH                     8               9     138
12-24 months   ki1114097-CMIN              BANGLADESH                     9              12     138
12-24 months   ki1114097-CMIN              BANGLADESH                     10             14     138
12-24 months   ki1114097-CMIN              BANGLADESH                     11             16     138
12-24 months   ki1114097-CMIN              BANGLADESH                     12             13     138
0-3 months     ki1114097-CMIN              BANGLADESH                     1               5      43
0-3 months     ki1114097-CMIN              BANGLADESH                     2               4      43
0-3 months     ki1114097-CMIN              BANGLADESH                     3               3      43
0-3 months     ki1114097-CMIN              BANGLADESH                     4               4      43
0-3 months     ki1114097-CMIN              BANGLADESH                     5               6      43
0-3 months     ki1114097-CMIN              BANGLADESH                     6               2      43
0-3 months     ki1114097-CMIN              BANGLADESH                     7               7      43
0-3 months     ki1114097-CMIN              BANGLADESH                     8               4      43
0-3 months     ki1114097-CMIN              BANGLADESH                     9               3      43
0-3 months     ki1114097-CMIN              BANGLADESH                     11              2      43
0-3 months     ki1114097-CMIN              BANGLADESH                     12              3      43
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     1            1932   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     2            1594   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     3            1827   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     4            1314   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     5             943   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     6             943   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     7            1165   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     8            1513   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     9            1985   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     10           2153   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     11           2279   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     12           2397   20045
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     1            1044   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     2             945   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     3             958   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     4             866   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     5             751   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     6             845   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     7             979   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     8            1088   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     9            1217   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     10           1277   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     11           1402   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     12           1208   12580
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     1             860    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     2             794    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     3             823    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     4             781    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     5             694    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     6             692    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     7             718    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     8             707    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     9             830    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     10            989    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     11           1063    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     12            888    9839
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1             416    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2             345    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3             425    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     4             325    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     5             230    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     6             282    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     7             325    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     8             320    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     9             386    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     10            476    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     11            566    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     12            557    4653
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     2             331    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     3             369    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     4             369    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     5             156    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     6              60    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     7             159    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     8             178    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     9             130    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     10             55    1807
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     2              74    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     3             547    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     4             579    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     5             474    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     6             325    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     7             423    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     8             357    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     9             290    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     10             91    3160
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     2             545    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     3             583    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     4             526    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     5             476    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     6             355    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     7             403    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     8             373    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     9             288    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     10             88    3637
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     2              38    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     3             439    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     4             418    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     5             180    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     6              62    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     7             178    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     8             235    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     9             199    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     10             91    1840
0-3 months     ki1119695-PROBIT            BELARUS                        1             747   12745
0-3 months     ki1119695-PROBIT            BELARUS                        2             753   12745
0-3 months     ki1119695-PROBIT            BELARUS                        3             883   12745
0-3 months     ki1119695-PROBIT            BELARUS                        4             911   12745
0-3 months     ki1119695-PROBIT            BELARUS                        5             882   12745
0-3 months     ki1119695-PROBIT            BELARUS                        6             939   12745
0-3 months     ki1119695-PROBIT            BELARUS                        7            1212   12745
0-3 months     ki1119695-PROBIT            BELARUS                        8            1219   12745
0-3 months     ki1119695-PROBIT            BELARUS                        9            1172   12745
0-3 months     ki1119695-PROBIT            BELARUS                        10           1354   12745
0-3 months     ki1119695-PROBIT            BELARUS                        11           1256   12745
0-3 months     ki1119695-PROBIT            BELARUS                        12           1417   12745
3-6 months     ki1119695-PROBIT            BELARUS                        1             836   13309
3-6 months     ki1119695-PROBIT            BELARUS                        2             827   13309
3-6 months     ki1119695-PROBIT            BELARUS                        3             917   13309
3-6 months     ki1119695-PROBIT            BELARUS                        4             952   13309
3-6 months     ki1119695-PROBIT            BELARUS                        5             949   13309
3-6 months     ki1119695-PROBIT            BELARUS                        6             919   13309
3-6 months     ki1119695-PROBIT            BELARUS                        7            1253   13309
3-6 months     ki1119695-PROBIT            BELARUS                        8            1211   13309
3-6 months     ki1119695-PROBIT            BELARUS                        9            1252   13309
3-6 months     ki1119695-PROBIT            BELARUS                        10           1389   13309
3-6 months     ki1119695-PROBIT            BELARUS                        11           1344   13309
3-6 months     ki1119695-PROBIT            BELARUS                        12           1460   13309
6-12 months    ki1119695-PROBIT            BELARUS                        1             817   12896
6-12 months    ki1119695-PROBIT            BELARUS                        2             792   12896
6-12 months    ki1119695-PROBIT            BELARUS                        3             851   12896
6-12 months    ki1119695-PROBIT            BELARUS                        4             910   12896
6-12 months    ki1119695-PROBIT            BELARUS                        5             936   12896
6-12 months    ki1119695-PROBIT            BELARUS                        6             884   12896
6-12 months    ki1119695-PROBIT            BELARUS                        7            1203   12896
6-12 months    ki1119695-PROBIT            BELARUS                        8            1174   12896
6-12 months    ki1119695-PROBIT            BELARUS                        9            1238   12896
6-12 months    ki1119695-PROBIT            BELARUS                        10           1364   12896
6-12 months    ki1119695-PROBIT            BELARUS                        11           1326   12896
6-12 months    ki1119695-PROBIT            BELARUS                        12           1401   12896
12-24 months   ki1119695-PROBIT            BELARUS                        1             172    2533
12-24 months   ki1119695-PROBIT            BELARUS                        2             121    2533
12-24 months   ki1119695-PROBIT            BELARUS                        3             191    2533
12-24 months   ki1119695-PROBIT            BELARUS                        4             208    2533
12-24 months   ki1119695-PROBIT            BELARUS                        5             211    2533
12-24 months   ki1119695-PROBIT            BELARUS                        6             173    2533
12-24 months   ki1119695-PROBIT            BELARUS                        7             224    2533
12-24 months   ki1119695-PROBIT            BELARUS                        8             203    2533
12-24 months   ki1119695-PROBIT            BELARUS                        9             244    2533
12-24 months   ki1119695-PROBIT            BELARUS                        10            239    2533
12-24 months   ki1119695-PROBIT            BELARUS                        11            236    2533
12-24 months   ki1119695-PROBIT            BELARUS                        12            311    2533
0-3 months     ki0047075b-MAL-ED           BRAZIL                         1              11     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         2              19     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         3              15     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         4               8     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         5              17     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         6               7     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         7              14     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         8              17     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         9              28     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         10             17     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         11             18     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         12              9     180
3-6 months     ki0047075b-MAL-ED           BRAZIL                         1              15     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         2              23     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         3              16     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         4              11     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         5              21     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         6               8     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         7              16     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         8              16     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         9              30     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         10             19     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         11             21     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         12             12     208
6-12 months    ki0047075b-MAL-ED           BRAZIL                         1              15     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         2              21     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         3              16     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         4              10     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         5              20     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         6               7     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         7              16     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         8              13     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         9              28     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         10             16     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         11             21     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         12             11     194
12-24 months   ki0047075b-MAL-ED           BRAZIL                         1              13     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         2              16     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         3              14     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         4              10     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         5              15     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         6               6     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         7              10     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         8              13     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         9              26     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         10             13     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         11             18     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         12             11     165
12-24 months   ki1000107-Serrinha-VitA     BRAZIL                         12             13      13
0-3 months     ki1114097-CMIN              BRAZIL                         1               6      81
0-3 months     ki1114097-CMIN              BRAZIL                         2               6      81
0-3 months     ki1114097-CMIN              BRAZIL                         3              10      81
0-3 months     ki1114097-CMIN              BRAZIL                         4               6      81
0-3 months     ki1114097-CMIN              BRAZIL                         5               4      81
0-3 months     ki1114097-CMIN              BRAZIL                         6               5      81
0-3 months     ki1114097-CMIN              BRAZIL                         7               3      81
0-3 months     ki1114097-CMIN              BRAZIL                         8               7      81
0-3 months     ki1114097-CMIN              BRAZIL                         9               4      81
0-3 months     ki1114097-CMIN              BRAZIL                         10             15      81
0-3 months     ki1114097-CMIN              BRAZIL                         11             10      81
0-3 months     ki1114097-CMIN              BRAZIL                         12              5      81
3-6 months     ki1114097-CMIN              BRAZIL                         1               6      81
3-6 months     ki1114097-CMIN              BRAZIL                         2               6      81
3-6 months     ki1114097-CMIN              BRAZIL                         3               9      81
3-6 months     ki1114097-CMIN              BRAZIL                         4               6      81
3-6 months     ki1114097-CMIN              BRAZIL                         5               3      81
3-6 months     ki1114097-CMIN              BRAZIL                         6               6      81
3-6 months     ki1114097-CMIN              BRAZIL                         7               3      81
3-6 months     ki1114097-CMIN              BRAZIL                         8               8      81
3-6 months     ki1114097-CMIN              BRAZIL                         9               4      81
3-6 months     ki1114097-CMIN              BRAZIL                         10             14      81
3-6 months     ki1114097-CMIN              BRAZIL                         11             10      81
3-6 months     ki1114097-CMIN              BRAZIL                         12              6      81
6-12 months    ki1114097-CMIN              BRAZIL                         1               9      93
6-12 months    ki1114097-CMIN              BRAZIL                         2               5      93
6-12 months    ki1114097-CMIN              BRAZIL                         3              10      93
6-12 months    ki1114097-CMIN              BRAZIL                         4               9      93
6-12 months    ki1114097-CMIN              BRAZIL                         5               4      93
6-12 months    ki1114097-CMIN              BRAZIL                         6               6      93
6-12 months    ki1114097-CMIN              BRAZIL                         7               4      93
6-12 months    ki1114097-CMIN              BRAZIL                         8              10      93
6-12 months    ki1114097-CMIN              BRAZIL                         9               7      93
6-12 months    ki1114097-CMIN              BRAZIL                         10             12      93
6-12 months    ki1114097-CMIN              BRAZIL                         11              9      93
6-12 months    ki1114097-CMIN              BRAZIL                         12              8      93
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1              14      20
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2               4      20
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   11              1      20
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   12              1      20
12-24 months   ki1101329-Keneba            GAMBIA                         1             115    1175
12-24 months   ki1101329-Keneba            GAMBIA                         2             115    1175
12-24 months   ki1101329-Keneba            GAMBIA                         3             108    1175
12-24 months   ki1101329-Keneba            GAMBIA                         4              70    1175
12-24 months   ki1101329-Keneba            GAMBIA                         5              85    1175
12-24 months   ki1101329-Keneba            GAMBIA                         6              71    1175
12-24 months   ki1101329-Keneba            GAMBIA                         7              58    1175
12-24 months   ki1101329-Keneba            GAMBIA                         8             115    1175
12-24 months   ki1101329-Keneba            GAMBIA                         9             114    1175
12-24 months   ki1101329-Keneba            GAMBIA                         10            123    1175
12-24 months   ki1101329-Keneba            GAMBIA                         11             95    1175
12-24 months   ki1101329-Keneba            GAMBIA                         12            106    1175
6-12 months    ki1101329-Keneba            GAMBIA                         1             128    1306
6-12 months    ki1101329-Keneba            GAMBIA                         2             123    1306
6-12 months    ki1101329-Keneba            GAMBIA                         3             123    1306
6-12 months    ki1101329-Keneba            GAMBIA                         4              91    1306
6-12 months    ki1101329-Keneba            GAMBIA                         5              88    1306
6-12 months    ki1101329-Keneba            GAMBIA                         6              82    1306
6-12 months    ki1101329-Keneba            GAMBIA                         7              61    1306
6-12 months    ki1101329-Keneba            GAMBIA                         8             113    1306
6-12 months    ki1101329-Keneba            GAMBIA                         9             118    1306
6-12 months    ki1101329-Keneba            GAMBIA                         10            136    1306
6-12 months    ki1101329-Keneba            GAMBIA                         11            124    1306
6-12 months    ki1101329-Keneba            GAMBIA                         12            119    1306
0-3 months     ki1101329-Keneba            GAMBIA                         1             135    1276
0-3 months     ki1101329-Keneba            GAMBIA                         2             123    1276
0-3 months     ki1101329-Keneba            GAMBIA                         3             138    1276
0-3 months     ki1101329-Keneba            GAMBIA                         4              88    1276
0-3 months     ki1101329-Keneba            GAMBIA                         5              89    1276
0-3 months     ki1101329-Keneba            GAMBIA                         6              71    1276
0-3 months     ki1101329-Keneba            GAMBIA                         7              65    1276
0-3 months     ki1101329-Keneba            GAMBIA                         8             108    1276
0-3 months     ki1101329-Keneba            GAMBIA                         9             104    1276
0-3 months     ki1101329-Keneba            GAMBIA                         10            146    1276
0-3 months     ki1101329-Keneba            GAMBIA                         11             98    1276
0-3 months     ki1101329-Keneba            GAMBIA                         12            111    1276
3-6 months     ki1101329-Keneba            GAMBIA                         1             140    1397
3-6 months     ki1101329-Keneba            GAMBIA                         2             140    1397
3-6 months     ki1101329-Keneba            GAMBIA                         3             141    1397
3-6 months     ki1101329-Keneba            GAMBIA                         4             102    1397
3-6 months     ki1101329-Keneba            GAMBIA                         5              93    1397
3-6 months     ki1101329-Keneba            GAMBIA                         6              76    1397
3-6 months     ki1101329-Keneba            GAMBIA                         7              66    1397
3-6 months     ki1101329-Keneba            GAMBIA                         8             122    1397
3-6 months     ki1101329-Keneba            GAMBIA                         9             125    1397
3-6 months     ki1101329-Keneba            GAMBIA                         10            151    1397
3-6 months     ki1101329-Keneba            GAMBIA                         11            121    1397
3-6 months     ki1101329-Keneba            GAMBIA                         12            120    1397
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          1              71     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          2              70     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          3              80     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          4             100     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          5             119     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          6              84     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          7              76     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          8              74     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          9              48     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          10             88     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          11             79     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          12             83     972
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          1              72     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          2              66     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          3              77     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          4             102     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          5             118     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          6              85     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          7              77     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          8              74     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          9              42     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          10             80     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          11             75     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          12             77     945
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          1              72     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          2              73     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          3              80     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          4              93     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          5             108     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          6              81     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          7              68     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          8              69     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          9              46     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          10             87     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          11             83     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          12             77     937
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      1              20     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      2              15     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      3              20     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      4              20     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      5              16     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      6              12     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      7              11     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      8               6     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      9              11     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      10             20     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      11             14     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      12             16     181
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  1              14     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  2               9     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  3              15     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  4               3     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  5               4     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  6              13     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  7              11     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  8               4     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  9              26     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  10              8     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  11             14     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  12             12     133
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  1               5     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  2              10     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  3              27     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  4               8     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  5               7     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  6               9     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  7              11     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  8              10     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  9              31     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  10             21     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  11             11     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  12             26     176
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  2               2      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  3               2      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  5               1      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  6               4      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  7               2      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  8               1      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  9               8      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  11              1      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  12              1      22
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  2               1      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  3               6      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  4               4      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  5               4      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  6               6      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  7               7      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  8               2      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  9               9      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  10              7      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  11              1      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  12              3      50
0-3 months     ki0047075b-MAL-ED           INDIA                          1              16     201
0-3 months     ki0047075b-MAL-ED           INDIA                          2              16     201
0-3 months     ki0047075b-MAL-ED           INDIA                          3              20     201
0-3 months     ki0047075b-MAL-ED           INDIA                          4              12     201
0-3 months     ki0047075b-MAL-ED           INDIA                          5               7     201
0-3 months     ki0047075b-MAL-ED           INDIA                          6              16     201
0-3 months     ki0047075b-MAL-ED           INDIA                          7              22     201
0-3 months     ki0047075b-MAL-ED           INDIA                          8              17     201
0-3 months     ki0047075b-MAL-ED           INDIA                          9              17     201
0-3 months     ki0047075b-MAL-ED           INDIA                          10             23     201
0-3 months     ki0047075b-MAL-ED           INDIA                          11             20     201
0-3 months     ki0047075b-MAL-ED           INDIA                          12             15     201
3-6 months     ki0047075b-MAL-ED           INDIA                          1              19     229
3-6 months     ki0047075b-MAL-ED           INDIA                          2              17     229
3-6 months     ki0047075b-MAL-ED           INDIA                          3              22     229
3-6 months     ki0047075b-MAL-ED           INDIA                          4              13     229
3-6 months     ki0047075b-MAL-ED           INDIA                          5               8     229
3-6 months     ki0047075b-MAL-ED           INDIA                          6              18     229
3-6 months     ki0047075b-MAL-ED           INDIA                          7              21     229
3-6 months     ki0047075b-MAL-ED           INDIA                          8              21     229
3-6 months     ki0047075b-MAL-ED           INDIA                          9              20     229
3-6 months     ki0047075b-MAL-ED           INDIA                          10             26     229
3-6 months     ki0047075b-MAL-ED           INDIA                          11             25     229
3-6 months     ki0047075b-MAL-ED           INDIA                          12             19     229
6-12 months    ki0047075b-MAL-ED           INDIA                          1              19     224
6-12 months    ki0047075b-MAL-ED           INDIA                          2              17     224
6-12 months    ki0047075b-MAL-ED           INDIA                          3              19     224
6-12 months    ki0047075b-MAL-ED           INDIA                          4              13     224
6-12 months    ki0047075b-MAL-ED           INDIA                          5               8     224
6-12 months    ki0047075b-MAL-ED           INDIA                          6              19     224
6-12 months    ki0047075b-MAL-ED           INDIA                          7              21     224
6-12 months    ki0047075b-MAL-ED           INDIA                          8              21     224
6-12 months    ki0047075b-MAL-ED           INDIA                          9              18     224
6-12 months    ki0047075b-MAL-ED           INDIA                          10             26     224
6-12 months    ki0047075b-MAL-ED           INDIA                          11             24     224
6-12 months    ki0047075b-MAL-ED           INDIA                          12             19     224
12-24 months   ki0047075b-MAL-ED           INDIA                          1              19     225
12-24 months   ki0047075b-MAL-ED           INDIA                          2              18     225
12-24 months   ki0047075b-MAL-ED           INDIA                          3              19     225
12-24 months   ki0047075b-MAL-ED           INDIA                          4              14     225
12-24 months   ki0047075b-MAL-ED           INDIA                          5               8     225
12-24 months   ki0047075b-MAL-ED           INDIA                          6              18     225
12-24 months   ki0047075b-MAL-ED           INDIA                          7              22     225
12-24 months   ki0047075b-MAL-ED           INDIA                          8              20     225
12-24 months   ki0047075b-MAL-ED           INDIA                          9              18     225
12-24 months   ki0047075b-MAL-ED           INDIA                          10             26     225
12-24 months   ki0047075b-MAL-ED           INDIA                          11             24     225
12-24 months   ki0047075b-MAL-ED           INDIA                          12             19     225
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          1              26     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          2              12     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          3              29     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          4              37     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          5              30     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          6              31     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          7              34     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          8              12     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          9              16     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          10             25     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          11             35     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          12             20     307
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          1              29     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          2              14     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          3              27     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          4              35     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          5              31     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          6              33     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          7              34     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          8              16     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          9              17     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          10             26     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          11             39     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          12             22     323
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          1              29     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          2              15     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          3              24     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          4              39     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          5              32     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          6              33     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          7              35     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          8              15     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          9              17     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          10             26     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          11             38     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          12             21     324
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          1               6      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          2               1      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          3               9      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          4              10      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          5              10      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          6               9      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          7               7      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          8               4      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          9               8      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          10             10      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          11              9      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          12              4      87
3-6 months     ki1000108-IRC               INDIA                          1              36     397
3-6 months     ki1000108-IRC               INDIA                          2              28     397
3-6 months     ki1000108-IRC               INDIA                          3              26     397
3-6 months     ki1000108-IRC               INDIA                          4              21     397
3-6 months     ki1000108-IRC               INDIA                          5              21     397
3-6 months     ki1000108-IRC               INDIA                          6              37     397
3-6 months     ki1000108-IRC               INDIA                          7              36     397
3-6 months     ki1000108-IRC               INDIA                          8              43     397
3-6 months     ki1000108-IRC               INDIA                          9              26     397
3-6 months     ki1000108-IRC               INDIA                          10             36     397
3-6 months     ki1000108-IRC               INDIA                          11             38     397
3-6 months     ki1000108-IRC               INDIA                          12             49     397
6-12 months    ki1000108-IRC               INDIA                          1              37     400
6-12 months    ki1000108-IRC               INDIA                          2              28     400
6-12 months    ki1000108-IRC               INDIA                          3              27     400
6-12 months    ki1000108-IRC               INDIA                          4              16     400
6-12 months    ki1000108-IRC               INDIA                          5              21     400
6-12 months    ki1000108-IRC               INDIA                          6              37     400
6-12 months    ki1000108-IRC               INDIA                          7              35     400
6-12 months    ki1000108-IRC               INDIA                          8              44     400
6-12 months    ki1000108-IRC               INDIA                          9              27     400
6-12 months    ki1000108-IRC               INDIA                          10             37     400
6-12 months    ki1000108-IRC               INDIA                          11             40     400
6-12 months    ki1000108-IRC               INDIA                          12             51     400
12-24 months   ki1000108-IRC               INDIA                          1              37     396
12-24 months   ki1000108-IRC               INDIA                          2              28     396
12-24 months   ki1000108-IRC               INDIA                          3              27     396
12-24 months   ki1000108-IRC               INDIA                          4              15     396
12-24 months   ki1000108-IRC               INDIA                          5              20     396
12-24 months   ki1000108-IRC               INDIA                          6              37     396
12-24 months   ki1000108-IRC               INDIA                          7              35     396
12-24 months   ki1000108-IRC               INDIA                          8              44     396
12-24 months   ki1000108-IRC               INDIA                          9              27     396
12-24 months   ki1000108-IRC               INDIA                          10             36     396
12-24 months   ki1000108-IRC               INDIA                          11             40     396
12-24 months   ki1000108-IRC               INDIA                          12             50     396
0-3 months     ki1000108-IRC               INDIA                          1              33     377
0-3 months     ki1000108-IRC               INDIA                          2              26     377
0-3 months     ki1000108-IRC               INDIA                          3              25     377
0-3 months     ki1000108-IRC               INDIA                          4              21     377
0-3 months     ki1000108-IRC               INDIA                          5              21     377
0-3 months     ki1000108-IRC               INDIA                          6              34     377
0-3 months     ki1000108-IRC               INDIA                          7              35     377
0-3 months     ki1000108-IRC               INDIA                          8              37     377
0-3 months     ki1000108-IRC               INDIA                          9              24     377
0-3 months     ki1000108-IRC               INDIA                          10             37     377
0-3 months     ki1000108-IRC               INDIA                          11             37     377
0-3 months     ki1000108-IRC               INDIA                          12             47     377
6-12 months    ki1000304-VITAMIN-A         INDIA                          1             188    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          2             139    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          3             188    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          4             185    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          5             187    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          6             172    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          7             241    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          8             188    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          9             152    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          10            119    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          11             83    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          12            178    2020
3-6 months     ki1000304-VITAMIN-A         INDIA                          2               2      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          3               2      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          5               1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          7               2      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          8               2      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          9               1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          11              1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          12              1      12
6-12 months    ki1000304-Vitamin-B12       INDIA                          1               6      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          2               2      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          3               2      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          4               1      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          5               3      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          6               7      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          7              14      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          8               9      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          11              1      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          12              4      49
12-24 months   ki1000304-ZnMort            INDIA                          4               1       1
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          1              83    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          2              66    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          3              63    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          4              59    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          5              76    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          6              86    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          7             102    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          8             138    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          9             144    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          10            126    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          11            114    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          12            111    1168
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          1              75    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          2              63    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          3              66    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          4              59    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          5              76    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          6              78    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          7              96    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          8             139    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          9             144    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          10            125    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          11            101    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          12            102    1124
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          1              71    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          2              64    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          3              65    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          4              59    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          5              79    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          6              79    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          7             103    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          8             134    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          9             145    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          10            131    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          11            100    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          12            107    1137
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          1              21     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          2              29     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          3              18     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          4               2     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          5              10     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          6              20     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          7              29     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          8              55     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          9              52     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          10             42     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          11             22     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          12             32     332
12-24 months   ki1000111-WASH-Kenya        KENYA                          1              29     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          2              49     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          3              57     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          4              75     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          5              56     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          6              14     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          9               2     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          10              2     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          11             28     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          12             19     331
6-12 months    ki1148112-LCNI-5            MALAWI                         1              33     434
6-12 months    ki1148112-LCNI-5            MALAWI                         2              34     434
6-12 months    ki1148112-LCNI-5            MALAWI                         3              17     434
6-12 months    ki1148112-LCNI-5            MALAWI                         4              22     434
6-12 months    ki1148112-LCNI-5            MALAWI                         5              28     434
6-12 months    ki1148112-LCNI-5            MALAWI                         6              18     434
6-12 months    ki1148112-LCNI-5            MALAWI                         7              36     434
6-12 months    ki1148112-LCNI-5            MALAWI                         8              53     434
6-12 months    ki1148112-LCNI-5            MALAWI                         9              38     434
6-12 months    ki1148112-LCNI-5            MALAWI                         10             48     434
6-12 months    ki1148112-LCNI-5            MALAWI                         11             54     434
6-12 months    ki1148112-LCNI-5            MALAWI                         12             53     434
12-24 months   ki1148112-LCNI-5            MALAWI                         1              21     310
12-24 months   ki1148112-LCNI-5            MALAWI                         2              21     310
12-24 months   ki1148112-LCNI-5            MALAWI                         3              12     310
12-24 months   ki1148112-LCNI-5            MALAWI                         4              12     310
12-24 months   ki1148112-LCNI-5            MALAWI                         5              22     310
12-24 months   ki1148112-LCNI-5            MALAWI                         6              12     310
12-24 months   ki1148112-LCNI-5            MALAWI                         7              30     310
12-24 months   ki1148112-LCNI-5            MALAWI                         8              43     310
12-24 months   ki1148112-LCNI-5            MALAWI                         9              23     310
12-24 months   ki1148112-LCNI-5            MALAWI                         10             39     310
12-24 months   ki1148112-LCNI-5            MALAWI                         11             38     310
12-24 months   ki1148112-LCNI-5            MALAWI                         12             37     310
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         1              76    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         2              72    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         3              74    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         4              56    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         5              64    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         6              63    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         7              69    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         8             104    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         9             107    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         10            122    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         11            146    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         12             76    1029
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1              32     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         2              29     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         3              41     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         4              24     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         5              22     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         6              29     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         7              32     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         8              53     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         9              49     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         10             59     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         11             84     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         12             31     485
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1              40     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2              42     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3              57     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         4              40     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         5              50     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         6              40     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         7              46     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         8              62     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         9              53     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         10             28     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         11             35     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         12             45     538
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1              42     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2              47     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3              53     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         4              41     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         5              48     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         6              33     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         7              39     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         8              49     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         9              43     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         10             29     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         11             38     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         12             46     508
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         3               2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         4               2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         7               1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         9               1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         10              1       7
3-6 months     ki0047075b-MAL-ED           NEPAL                          1              20     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          2              19     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          3              16     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          4              22     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          5              20     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          6              18     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          7              17     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          8              24     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          9              16     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          10             21     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          11             24     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          12             16     233
6-12 months    ki0047075b-MAL-ED           NEPAL                          1              20     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          2              17     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          3              16     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          4              22     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          5              19     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          6              18     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          7              18     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          8              24     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          9              15     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          10             20     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          11             24     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          12             17     230
12-24 months   ki0047075b-MAL-ED           NEPAL                          1              19     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          2              17     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          3              16     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          4              22     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          5              19     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          6              18     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          7              17     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          8              24     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          9              15     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          10             19     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          11             24     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          12             16     226
0-3 months     ki0047075b-MAL-ED           NEPAL                          1              17     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          2              14     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          3              13     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          4              18     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          5              19     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          6              10     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          7              15     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          8              15     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          9              12     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          10             14     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          11             18     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          12             10     175
3-6 months     ki1113344-GMS-Nepal         NEPAL                          4               1     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          6             103     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          7             186     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          8             181     471
6-12 months    ki1113344-GMS-Nepal         NEPAL                          4               1     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          6             105     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          7             185     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          8             184     475
12-24 months   ki1113344-GMS-Nepal         NEPAL                          6              30     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          7             172     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          8             165     367
0-3 months     ki1000109-EE                PAKISTAN                       1              73     297
0-3 months     ki1000109-EE                PAKISTAN                       2              57     297
0-3 months     ki1000109-EE                PAKISTAN                       3              28     297
0-3 months     ki1000109-EE                PAKISTAN                       4              13     297
0-3 months     ki1000109-EE                PAKISTAN                       10              4     297
0-3 months     ki1000109-EE                PAKISTAN                       11             52     297
0-3 months     ki1000109-EE                PAKISTAN                       12             70     297
3-6 months     ki1000109-EE                PAKISTAN                       1              80     331
3-6 months     ki1000109-EE                PAKISTAN                       2              59     331
3-6 months     ki1000109-EE                PAKISTAN                       3              31     331
3-6 months     ki1000109-EE                PAKISTAN                       4              15     331
3-6 months     ki1000109-EE                PAKISTAN                       10              4     331
3-6 months     ki1000109-EE                PAKISTAN                       11             67     331
3-6 months     ki1000109-EE                PAKISTAN                       12             75     331
6-12 months    ki1000109-EE                PAKISTAN                       2               1       4
6-12 months    ki1000109-EE                PAKISTAN                       11              3       4
0-3 months     ki1000109-ResPak            PAKISTAN                       1               4      78
0-3 months     ki1000109-ResPak            PAKISTAN                       3               3      78
0-3 months     ki1000109-ResPak            PAKISTAN                       4              11      78
0-3 months     ki1000109-ResPak            PAKISTAN                       5              12      78
0-3 months     ki1000109-ResPak            PAKISTAN                       6              21      78
0-3 months     ki1000109-ResPak            PAKISTAN                       7               6      78
0-3 months     ki1000109-ResPak            PAKISTAN                       8               9      78
0-3 months     ki1000109-ResPak            PAKISTAN                       9               7      78
0-3 months     ki1000109-ResPak            PAKISTAN                       10              2      78
0-3 months     ki1000109-ResPak            PAKISTAN                       11              2      78
0-3 months     ki1000109-ResPak            PAKISTAN                       12              1      78
3-6 months     ki1000109-ResPak            PAKISTAN                       1               6     156
3-6 months     ki1000109-ResPak            PAKISTAN                       2               7     156
3-6 months     ki1000109-ResPak            PAKISTAN                       3              18     156
3-6 months     ki1000109-ResPak            PAKISTAN                       4              13     156
3-6 months     ki1000109-ResPak            PAKISTAN                       5              27     156
3-6 months     ki1000109-ResPak            PAKISTAN                       6              32     156
3-6 months     ki1000109-ResPak            PAKISTAN                       7              12     156
3-6 months     ki1000109-ResPak            PAKISTAN                       8              18     156
3-6 months     ki1000109-ResPak            PAKISTAN                       9              16     156
3-6 months     ki1000109-ResPak            PAKISTAN                       10              2     156
3-6 months     ki1000109-ResPak            PAKISTAN                       12              5     156
6-12 months    ki1000109-ResPak            PAKISTAN                       1               3     138
6-12 months    ki1000109-ResPak            PAKISTAN                       2               6     138
6-12 months    ki1000109-ResPak            PAKISTAN                       3              12     138
6-12 months    ki1000109-ResPak            PAKISTAN                       4              10     138
6-12 months    ki1000109-ResPak            PAKISTAN                       5              30     138
6-12 months    ki1000109-ResPak            PAKISTAN                       6              29     138
6-12 months    ki1000109-ResPak            PAKISTAN                       7              13     138
6-12 months    ki1000109-ResPak            PAKISTAN                       8              15     138
6-12 months    ki1000109-ResPak            PAKISTAN                       9              16     138
6-12 months    ki1000109-ResPak            PAKISTAN                       10              1     138
6-12 months    ki1000109-ResPak            PAKISTAN                       12              3     138
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       1               9      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       2               3      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       3               5      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       4               5      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       5              12      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       6               6      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       7              10      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       12              2      52
12-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       9               1       1
0-3 months     ki0047075b-MAL-ED           PERU                           1              40     271
0-3 months     ki0047075b-MAL-ED           PERU                           2              21     271
0-3 months     ki0047075b-MAL-ED           PERU                           3              22     271
0-3 months     ki0047075b-MAL-ED           PERU                           4              20     271
0-3 months     ki0047075b-MAL-ED           PERU                           5              26     271
0-3 months     ki0047075b-MAL-ED           PERU                           6              14     271
0-3 months     ki0047075b-MAL-ED           PERU                           7              22     271
0-3 months     ki0047075b-MAL-ED           PERU                           8              16     271
0-3 months     ki0047075b-MAL-ED           PERU                           9              22     271
0-3 months     ki0047075b-MAL-ED           PERU                           10             21     271
0-3 months     ki0047075b-MAL-ED           PERU                           11             29     271
0-3 months     ki0047075b-MAL-ED           PERU                           12             18     271
3-6 months     ki0047075b-MAL-ED           PERU                           1              38     267
3-6 months     ki0047075b-MAL-ED           PERU                           2              19     267
3-6 months     ki0047075b-MAL-ED           PERU                           3              22     267
3-6 months     ki0047075b-MAL-ED           PERU                           4              19     267
3-6 months     ki0047075b-MAL-ED           PERU                           5              26     267
3-6 months     ki0047075b-MAL-ED           PERU                           6              15     267
3-6 months     ki0047075b-MAL-ED           PERU                           7              22     267
3-6 months     ki0047075b-MAL-ED           PERU                           8              15     267
3-6 months     ki0047075b-MAL-ED           PERU                           9              23     267
3-6 months     ki0047075b-MAL-ED           PERU                           10             19     267
3-6 months     ki0047075b-MAL-ED           PERU                           11             31     267
3-6 months     ki0047075b-MAL-ED           PERU                           12             18     267
6-12 months    ki0047075b-MAL-ED           PERU                           1              33     237
6-12 months    ki0047075b-MAL-ED           PERU                           2              17     237
6-12 months    ki0047075b-MAL-ED           PERU                           3              19     237
6-12 months    ki0047075b-MAL-ED           PERU                           4              15     237
6-12 months    ki0047075b-MAL-ED           PERU                           5              21     237
6-12 months    ki0047075b-MAL-ED           PERU                           6              15     237
6-12 months    ki0047075b-MAL-ED           PERU                           7              20     237
6-12 months    ki0047075b-MAL-ED           PERU                           8              14     237
6-12 months    ki0047075b-MAL-ED           PERU                           9              22     237
6-12 months    ki0047075b-MAL-ED           PERU                           10             17     237
6-12 months    ki0047075b-MAL-ED           PERU                           11             26     237
6-12 months    ki0047075b-MAL-ED           PERU                           12             18     237
12-24 months   ki0047075b-MAL-ED           PERU                           1              26     191
12-24 months   ki0047075b-MAL-ED           PERU                           2              17     191
12-24 months   ki0047075b-MAL-ED           PERU                           3              14     191
12-24 months   ki0047075b-MAL-ED           PERU                           4              11     191
12-24 months   ki0047075b-MAL-ED           PERU                           5              18     191
12-24 months   ki0047075b-MAL-ED           PERU                           6              11     191
12-24 months   ki0047075b-MAL-ED           PERU                           7              14     191
12-24 months   ki0047075b-MAL-ED           PERU                           8              12     191
12-24 months   ki0047075b-MAL-ED           PERU                           9              20     191
12-24 months   ki0047075b-MAL-ED           PERU                           10             14     191
12-24 months   ki0047075b-MAL-ED           PERU                           11             20     191
12-24 months   ki0047075b-MAL-ED           PERU                           12             14     191
3-6 months     ki1114097-CMIN              PERU                           1              28     407
3-6 months     ki1114097-CMIN              PERU                           2              42     407
3-6 months     ki1114097-CMIN              PERU                           3              44     407
3-6 months     ki1114097-CMIN              PERU                           4              37     407
3-6 months     ki1114097-CMIN              PERU                           5              31     407
3-6 months     ki1114097-CMIN              PERU                           6              40     407
3-6 months     ki1114097-CMIN              PERU                           7              26     407
3-6 months     ki1114097-CMIN              PERU                           8              49     407
3-6 months     ki1114097-CMIN              PERU                           9              23     407
3-6 months     ki1114097-CMIN              PERU                           10             34     407
3-6 months     ki1114097-CMIN              PERU                           11             21     407
3-6 months     ki1114097-CMIN              PERU                           12             32     407
6-12 months    ki1114097-CMIN              PERU                           1              16     360
6-12 months    ki1114097-CMIN              PERU                           2              35     360
6-12 months    ki1114097-CMIN              PERU                           3              39     360
6-12 months    ki1114097-CMIN              PERU                           4              36     360
6-12 months    ki1114097-CMIN              PERU                           5              27     360
6-12 months    ki1114097-CMIN              PERU                           6              34     360
6-12 months    ki1114097-CMIN              PERU                           7              29     360
6-12 months    ki1114097-CMIN              PERU                           8              44     360
6-12 months    ki1114097-CMIN              PERU                           9              33     360
6-12 months    ki1114097-CMIN              PERU                           10             33     360
6-12 months    ki1114097-CMIN              PERU                           11             10     360
6-12 months    ki1114097-CMIN              PERU                           12             24     360
12-24 months   ki1114097-CMIN              PERU                           1               2     199
12-24 months   ki1114097-CMIN              PERU                           2              22     199
12-24 months   ki1114097-CMIN              PERU                           3              25     199
12-24 months   ki1114097-CMIN              PERU                           4              19     199
12-24 months   ki1114097-CMIN              PERU                           5               8     199
12-24 months   ki1114097-CMIN              PERU                           6              19     199
12-24 months   ki1114097-CMIN              PERU                           7              27     199
12-24 months   ki1114097-CMIN              PERU                           8              19     199
12-24 months   ki1114097-CMIN              PERU                           9              21     199
12-24 months   ki1114097-CMIN              PERU                           10             17     199
12-24 months   ki1114097-CMIN              PERU                           11              7     199
12-24 months   ki1114097-CMIN              PERU                           12             13     199
0-3 months     ki1114097-CMIN              PERU                           1               4      93
0-3 months     ki1114097-CMIN              PERU                           2               6      93
0-3 months     ki1114097-CMIN              PERU                           3               9      93
0-3 months     ki1114097-CMIN              PERU                           4              10      93
0-3 months     ki1114097-CMIN              PERU                           5              14      93
0-3 months     ki1114097-CMIN              PERU                           6              12      93
0-3 months     ki1114097-CMIN              PERU                           7               6      93
0-3 months     ki1114097-CMIN              PERU                           8               8      93
0-3 months     ki1114097-CMIN              PERU                           9               8      93
0-3 months     ki1114097-CMIN              PERU                           10              4      93
0-3 months     ki1114097-CMIN              PERU                           11              7      93
0-3 months     ki1114097-CMIN              PERU                           12              5      93
3-6 months     ki1114097-CONTENT           PERU                           1               9     214
3-6 months     ki1114097-CONTENT           PERU                           2              18     214
3-6 months     ki1114097-CONTENT           PERU                           3              30     214
3-6 months     ki1114097-CONTENT           PERU                           4              19     214
3-6 months     ki1114097-CONTENT           PERU                           5              14     214
3-6 months     ki1114097-CONTENT           PERU                           6              13     214
3-6 months     ki1114097-CONTENT           PERU                           7              28     214
3-6 months     ki1114097-CONTENT           PERU                           8              23     214
3-6 months     ki1114097-CONTENT           PERU                           9              26     214
3-6 months     ki1114097-CONTENT           PERU                           10             14     214
3-6 months     ki1114097-CONTENT           PERU                           11              9     214
3-6 months     ki1114097-CONTENT           PERU                           12             11     214
6-12 months    ki1114097-CONTENT           PERU                           1               9     213
6-12 months    ki1114097-CONTENT           PERU                           2              18     213
6-12 months    ki1114097-CONTENT           PERU                           3              30     213
6-12 months    ki1114097-CONTENT           PERU                           4              19     213
6-12 months    ki1114097-CONTENT           PERU                           5              14     213
6-12 months    ki1114097-CONTENT           PERU                           6              13     213
6-12 months    ki1114097-CONTENT           PERU                           7              27     213
6-12 months    ki1114097-CONTENT           PERU                           8              23     213
6-12 months    ki1114097-CONTENT           PERU                           9              26     213
6-12 months    ki1114097-CONTENT           PERU                           10             14     213
6-12 months    ki1114097-CONTENT           PERU                           11              9     213
6-12 months    ki1114097-CONTENT           PERU                           12             11     213
12-24 months   ki1114097-CONTENT           PERU                           1               1      38
12-24 months   ki1114097-CONTENT           PERU                           2               3      38
12-24 months   ki1114097-CONTENT           PERU                           3               2      38
12-24 months   ki1114097-CONTENT           PERU                           4               2      38
12-24 months   ki1114097-CONTENT           PERU                           5               1      38
12-24 months   ki1114097-CONTENT           PERU                           6               1      38
12-24 months   ki1114097-CONTENT           PERU                           7              11      38
12-24 months   ki1114097-CONTENT           PERU                           8               5      38
12-24 months   ki1114097-CONTENT           PERU                           9               4      38
12-24 months   ki1114097-CONTENT           PERU                           10              2      38
12-24 months   ki1114097-CONTENT           PERU                           11              2      38
12-24 months   ki1114097-CONTENT           PERU                           12              4      38
0-3 months     ki1114097-CONTENT           PERU                           2               2      29
0-3 months     ki1114097-CONTENT           PERU                           3               6      29
0-3 months     ki1114097-CONTENT           PERU                           4               3      29
0-3 months     ki1114097-CONTENT           PERU                           5               3      29
0-3 months     ki1114097-CONTENT           PERU                           6               4      29
0-3 months     ki1114097-CONTENT           PERU                           7               3      29
0-3 months     ki1114097-CONTENT           PERU                           8               5      29
0-3 months     ki1114097-CONTENT           PERU                           9               1      29
0-3 months     ki1114097-CONTENT           PERU                           12              2      29
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   1              26     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   2              19     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   3              13     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   4              12     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   5              14     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   6              15     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   7              22     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   8               7     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   9              20     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   10             24     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   11             24     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   12             33     229
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   1              37     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   2              21     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   3              13     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   4              12     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   5              12     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   6              15     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   7              22     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   8               8     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   9              18     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   10             26     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   11             23     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   12             34     241
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   1              37     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   2              19     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   3              13     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   4              12     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   5              12     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   6              14     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   7              21     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   8               8     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   9              18     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   10             24     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   11             21     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   12             33     232
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   1              33     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   2              20     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   3              13     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   4              12     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   5              12     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   6              16     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   7              21     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   8               8     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   9              19     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   10             25     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   11             21     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   12             30     230
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              15     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              27     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              16     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               9     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              16     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              19     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              22     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              10     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              20     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             18     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             25     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             26     223
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              15     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              22     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              18     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               6     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              18     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              18     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              20     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              10     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              17     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             15     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             23     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             25     207
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              18     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              28     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              17     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               9     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              17     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              16     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              22     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              11     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              20     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             20     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             24     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             27     229
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1              20     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2              29     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3              16     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4               9     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5              16     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6              19     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7              23     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8              12     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9              19     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10             21     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11             26     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12             29     239
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1             116    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2             123    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3             115    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   4             122    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   5             122    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   6             117    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   7             159    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   8             157    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   9             148    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   10            171    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   11            162    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   12            148    1660
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1              74    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2              84    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3              71    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   4              88    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   5              78    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   6              83    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   7             103    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   8             109    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   9             102    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   10            109    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   11            102    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   12             80    1083
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   4               1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   5               1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       1             770    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       2             564    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       3             709    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       4             595    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       5             584    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       6             640    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       7             682    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       8             754    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       9             704    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       10            536    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       11            622    7864
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       12            704    7864
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       1             574    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       2             405    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       3             530    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       4             458    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       5             434    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       6             471    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       7             472    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       8             565    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       9             550    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       10            399    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       11            490    5889
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       12            541    5889
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       1             413    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       2             300    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       3             422    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       4             356    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       5             355    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       6             377    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       7             357    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       8             432    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       9             403    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       10            323    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       11            419    4571
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       12            414    4571
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1              32     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2              39     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3              47     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       4              33     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       5              37     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       6              30     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       7              19     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       8              24     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       9               2     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       10              1     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       11             12     303
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       12             27     303


The following strata were considered:

* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* diffcat: 12-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 12-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1148112-LCNI-5, country: MALAWI
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 12-24 months, studyid: ki1000110-WASH-Bangladesh, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 12-24 months, studyid: ki1112895-Burkina Faso Zn, country: BURKINA FASO
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: GUINEA-BISSAU
* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000304-VITAMIN-A, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304-Vitamin-B12, country: INDIA
* diffcat: 12-24 months, studyid: ki1000304-ZnMort, country: INDIA
* diffcat: 6-12 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* diffcat: 12-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 3-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 12-24 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##        y_rate_haz
## brthmon -0.174855360962567 -0.108689008 -0.101662285714286
##      1                   0            0                  0
##      2                   0            0                  0
##      3                   0            0                  0
##      4                   0            0                  0
##      5                   0            0                  0
##      6                   0            0                  0
##      7                   0            0                  0
##      8                   0            0                  0
##      9                   0            0                  0
##      10                  0            0                  0
##      11                  0            0                  0
##      12                  1            1                  1
##        y_rate_haz
## brthmon -0.100044318302387 -0.0862077593582888 -0.0839081379310345
##      1                   0                   0                   0
##      2                   0                   0                   0
##      3                   0                   0                   0
##      4                   0                   0                   0
##      5                   0                   0                   0
##      6                   0                   0                   0
##      7                   0                   0                   0
##      8                   0                   0                   0
##      9                   0                   0                   0
##      10                  0                   0                   0
##      11                  0                   0                   0
##      12                  1                   1                   1
##        y_rate_haz
## brthmon -0.0748218288770053 -0.0708898699186992 -0.066511184
##      1                    0                   0            0
##      2                    0                   0            0
##      3                    0                   0            0
##      4                    0                   0            0
##      5                    0                   0            0
##      6                    0                   0            0
##      7                    0                   0            0
##      8                    0                   0            0
##      9                    0                   0            0
##      10                   0                   0            0
##      11                   0                   0            0
##      12                   1                   1            1
##        y_rate_haz
## brthmon -0.0629311034482759 -0.0619750455764075 -0.0393531428571429
##      1                    0                   0                   0
##      2                    0                   0                   0
##      3                    0                   0                   0
##      4                    0                   0                   0
##      5                    0                   0                   0
##      6                    0                   0                   0
##      7                    0                   0                   0
##      8                    0                   0                   0
##      9                    0                   0                   0
##      10                   0                   0                   0
##      11                   0                   0                   0
##      12                   1                   1                   1
##        y_rate_haz
## brthmon -0.0387268328912467
##      1                    0
##      2                    0
##      3                    0
##      4                    0
##      5                    0
##      6                    0
##      7                    0
##      8                    0
##      9                    0
##      10                   0
##      11                   0
##      12                   1
```




# Results Detail

## Results Plots
![](/tmp/08945bf2-e80a-4600-9ccd-3e904b659607/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/08945bf2-e80a-4600-9ccd-3e904b659607/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                 0.0010127   -0.0857508    0.0877762
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0162421   -0.1201975    0.0877133
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0311702   -0.1466304    0.0842901
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0174403   -0.0722930    0.1071736
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                 0.0110550   -0.0999633    0.1220733
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                 0.0108265   -0.0770357    0.0986887
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                 0.0099843   -0.1534831    0.1734518
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0706747   -0.1589367    0.0175873
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.1146190   -0.2167042   -0.0125337
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.0747203   -0.1971470    0.0477064
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.1041493   -0.2082200   -0.0000786
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.0302129   -0.1272463    0.0668205
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0843177   -0.1090667    0.2777020
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.3497506    0.1722631    0.5272380
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.1619927   -0.0246766    0.3486621
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.2550100    0.0878131    0.4222070
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.2876042    0.1530646    0.4221438
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.1487485   -0.0623095    0.3598066
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                 0.2394809    0.0290580    0.4499038
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.0939415   -0.1417444    0.3296273
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.1198514    0.0206811    0.2190218
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.1432065   -0.0257118    0.3121247
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.1444452    0.0315607    0.2573298
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.3779136    0.1633825    0.5924447
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1493587   -0.2831302   -0.0155871
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.1065482   -0.2144346    0.0013382
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0264988   -0.0972124    0.1502099
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0660396   -0.0718213    0.2039006
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0301339   -0.1949063    0.1346384
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    NA                -0.0295170   -0.1335889    0.0745549
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    NA                 0.0121631   -0.1139509    0.1382770
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    NA                -0.0333158   -0.1727972    0.1061656
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    NA                 0.0332180   -0.1236712    0.1901071
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0032400   -0.1516909    0.1452109
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   NA                -0.0556302   -0.1294829    0.0182224
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   NA                 0.0173359   -0.1282114    0.1628832
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0931933   -0.0163074    0.2026939
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0918184   -0.0085171    0.1921539
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0107241   -0.1293272    0.1078790
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.0973523   -0.0375567    0.2322614
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                 0.1044563    0.0540278    0.1548849
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                 0.1768876    0.0725351    0.2812400
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0131322   -0.1554608    0.1291963
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                 0.1362227   -0.0137444    0.2861898
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                 0.1242105    0.0513445    0.1970765
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.0093428   -0.1216248    0.1029393
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                 0.0837904   -0.0206612    0.1882420
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.0108009   -0.1728582    0.1944601
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1530389   -0.2208847   -0.0851931
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.1208600   -0.2565301    0.0148100
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0353665   -0.1361596    0.0654267
0-3 months     ki0047075b-MAL-ED          PERU                           4                    NA                -0.1279481   -0.2211905   -0.0347058
0-3 months     ki0047075b-MAL-ED          PERU                           5                    NA                -0.2830444   -0.3985461   -0.1675426
0-3 months     ki0047075b-MAL-ED          PERU                           6                    NA                -0.1935411   -0.3836463   -0.0034359
0-3 months     ki0047075b-MAL-ED          PERU                           7                    NA                -0.1646228   -0.2687479   -0.0604977
0-3 months     ki0047075b-MAL-ED          PERU                           8                    NA                -0.2021288   -0.3031135   -0.1011441
0-3 months     ki0047075b-MAL-ED          PERU                           9                    NA                -0.1071051   -0.2126536   -0.0015566
0-3 months     ki0047075b-MAL-ED          PERU                           10                   NA                -0.1207289   -0.2241125   -0.0173453
0-3 months     ki0047075b-MAL-ED          PERU                           11                   NA                -0.1683325   -0.2787191   -0.0579460
0-3 months     ki0047075b-MAL-ED          PERU                           12                   NA                -0.2307233   -0.3615552   -0.0998914
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1079227   -0.2643334    0.0484879
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.2288103   -0.3861481   -0.0714724
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0444063   -0.2518032    0.1629906
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0125191   -0.1102575    0.1352957
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.1215947   -0.3117183    0.0685289
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.1435059   -0.2705533   -0.0164584
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0833753   -0.1999007    0.0331502
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.0022434   -0.1289023    0.1333892
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.0479420   -0.2003291    0.1044452
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.0047503   -0.0829915    0.0924921
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0854032   -0.2278981    0.0570917
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.2176291   -0.3445909   -0.0906673
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0465814   -0.0417130    0.1348757
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0462808   -0.1413277    0.0487661
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0015249   -0.1361719    0.1392218
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0310419   -0.2324441    0.1703604
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0654942   -0.1888427    0.0578542
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0364424   -0.2543640    0.1814792
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.1501727   -0.2795828   -0.0207626
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                 0.0695866   -0.1331754    0.2723485
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.0314024   -0.1571760    0.0943712
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0220565   -0.1399547    0.0958417
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0533826   -0.1664085    0.0596434
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1213382   -0.2255365   -0.0171399
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.1270728   -0.2623279    0.0081823
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.3531226   -0.5892486   -0.1169966
0-3 months     ki1000108-IRC              INDIA                          3                    NA                -0.4045238   -0.6656723   -0.1433754
0-3 months     ki1000108-IRC              INDIA                          4                    NA                -0.4612497   -0.6458789   -0.2766206
0-3 months     ki1000108-IRC              INDIA                          5                    NA                -0.7255902   -0.9051877   -0.5459928
0-3 months     ki1000108-IRC              INDIA                          6                    NA                -0.0905000   -0.3051565    0.1241566
0-3 months     ki1000108-IRC              INDIA                          7                    NA                -0.2126864   -0.3818242   -0.0435487
0-3 months     ki1000108-IRC              INDIA                          8                    NA                -0.2136582   -0.3680601   -0.0592564
0-3 months     ki1000108-IRC              INDIA                          9                    NA                -0.0967615   -0.3785288    0.1850057
0-3 months     ki1000108-IRC              INDIA                          10                   NA                -0.1443917   -0.3041298    0.0153464
0-3 months     ki1000108-IRC              INDIA                          11                   NA                -0.2150427   -0.3662850   -0.0638005
0-3 months     ki1000108-IRC              INDIA                          12                   NA                -0.3270442   -0.4726004   -0.1814880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0776661    0.0246166    0.1307156
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0644731    0.0139068    0.1150394
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                 0.1040877    0.0240161    0.1841592
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                 0.0349443   -0.0361969    0.1060855
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.0137742   -0.0702968    0.0427484
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                 0.0604165   -0.0083135    0.1291464
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.0367312   -0.1082122    0.0347497
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.0014499   -0.0447620    0.0418622
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.0359225   -0.0678358   -0.0040092
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                 0.0156164   -0.0747138    0.1059467
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.0262999   -0.0779173    0.0253175
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                 0.0099217   -0.0374332    0.0572765
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0667077   -0.1560267    0.0226113
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.0391554   -0.1364790    0.0581681
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.0907443   -0.1716260   -0.0098626
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.1267051   -0.2174245   -0.0359857
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.1730397   -0.2578756   -0.0882038
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.1152074   -0.2063957   -0.0240190
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.1785752   -0.2824950   -0.0746555
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.2295435   -0.3579531   -0.1011339
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.2032362   -0.3052748   -0.1011975
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.1286307   -0.2287037   -0.0285577
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.1087556   -0.1817490   -0.0357623
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.0467930   -0.1187115    0.0251255
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                 0.0497957   -0.0016615    0.1012529
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    NA                 0.1524397    0.0987125    0.2061669
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    NA                 0.0750625    0.0209748    0.1291502
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    NA                 0.1246449    0.0770306    0.1722593
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    NA                 0.0424977    0.0001328    0.0848626
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    NA                 0.0787976    0.0220628    0.1355323
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    NA                 0.1743465    0.1007338    0.2479592
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    NA                 0.0485999   -0.0196614    0.1168613
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    NA                -0.0189079   -0.1012682    0.0634524
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   NA                 0.0380395   -0.0155533    0.0916322
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   NA                 0.1234873    0.0728334    0.1741413
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   NA                 0.1365847    0.0702758    0.2028937
0-3 months     ki1101329-Keneba           GAMBIA                         1                    NA                -0.2605712   -0.3445229   -0.1766195
0-3 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.2551095   -0.3360756   -0.1741433
0-3 months     ki1101329-Keneba           GAMBIA                         3                    NA                -0.2532365   -0.3189282   -0.1875448
0-3 months     ki1101329-Keneba           GAMBIA                         4                    NA                -0.2595525   -0.3411206   -0.1779844
0-3 months     ki1101329-Keneba           GAMBIA                         5                    NA                -0.3003534   -0.3952661   -0.2054407
0-3 months     ki1101329-Keneba           GAMBIA                         6                    NA                -0.3273065   -0.4432411   -0.2113718
0-3 months     ki1101329-Keneba           GAMBIA                         7                    NA                -0.3423965   -0.4452882   -0.2395048
0-3 months     ki1101329-Keneba           GAMBIA                         8                    NA                -0.2869967   -0.3729373   -0.2010561
0-3 months     ki1101329-Keneba           GAMBIA                         9                    NA                -0.3380721   -0.4121478   -0.2639964
0-3 months     ki1101329-Keneba           GAMBIA                         10                   NA                -0.3235380   -0.3907319   -0.2563441
0-3 months     ki1101329-Keneba           GAMBIA                         11                   NA                -0.2519615   -0.3329239   -0.1709991
0-3 months     ki1101329-Keneba           GAMBIA                         12                   NA                -0.2619456   -0.3472082   -0.1766829
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.4700636   -0.5673048   -0.3728225
0-3 months     ki1119695-PROBIT           BELARUS                        2                    NA                -0.4624911   -0.5386645   -0.3863177
0-3 months     ki1119695-PROBIT           BELARUS                        3                    NA                -0.4247301   -0.5048447   -0.3446156
0-3 months     ki1119695-PROBIT           BELARUS                        4                    NA                -0.4545096   -0.5320970   -0.3769222
0-3 months     ki1119695-PROBIT           BELARUS                        5                    NA                -0.4582594   -0.5165205   -0.3999982
0-3 months     ki1119695-PROBIT           BELARUS                        6                    NA                -0.3941648   -0.4567493   -0.3315802
0-3 months     ki1119695-PROBIT           BELARUS                        7                    NA                -0.4401469   -0.5028923   -0.3774015
0-3 months     ki1119695-PROBIT           BELARUS                        8                    NA                -0.4155724   -0.4873109   -0.3438339
0-3 months     ki1119695-PROBIT           BELARUS                        9                    NA                -0.4396527   -0.5049619   -0.3743436
0-3 months     ki1119695-PROBIT           BELARUS                        10                   NA                -0.4423171   -0.5027788   -0.3818555
0-3 months     ki1119695-PROBIT           BELARUS                        11                   NA                -0.4422574   -0.5026232   -0.3818916
0-3 months     ki1119695-PROBIT           BELARUS                        12                   NA                -0.4266787   -0.4906592   -0.3626981
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0519141   -0.0840449   -0.0197833
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0255287   -0.0660171    0.0149597
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.0676701   -0.1023726   -0.0329676
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.1456937   -0.1830271   -0.1083603
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.1548424   -0.1949565   -0.1147284
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.2458779   -0.2847680   -0.2069877
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.2151677   -0.2512683   -0.1790672
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.1826428   -0.2151943   -0.1500912
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.1836718   -0.2143500   -0.1529936
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.1888753   -0.2239629   -0.1537876
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.1688252   -0.2060408   -0.1316095
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.0941487   -0.1290078   -0.0592895
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1082025    0.0940791    0.1223258
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0852610    0.0715151    0.0990069
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0915074    0.0778824    0.1051325
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                 0.1045773    0.0879600    0.1211946
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                 0.1033333    0.0818370    0.1248297
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                 0.1194402    0.1021210    0.1367593
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                 0.0904793    0.0728084    0.1081503
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                 0.0651722    0.0500775    0.0802669
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                 0.0132744   -0.0014353    0.0279842
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                 0.0185104    0.0058024    0.0312184
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                 0.0372363    0.0255453    0.0489274
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                 0.0830161    0.0707947    0.0952374
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.1135358    0.0821470    0.1449247
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0711537    0.0376601    0.1046473
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                 0.0638180    0.0335783    0.0940578
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                 0.1446022    0.0818973    0.2073070
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                 0.1042272    0.0324107    0.1760438
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                 0.0480562   -0.0111578    0.1072702
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                 0.0013559   -0.0547862    0.0574981
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -0.0153346   -0.0701167    0.0394475
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -0.0081508   -0.0885890    0.0722874
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0394609   -0.0840469    0.0051250
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0498019   -0.1450238    0.0454200
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0617501   -0.1553815    0.0318813
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0931369   -0.1609615   -0.0253123
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                 0.0079575   -0.0643995    0.0803145
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.0291247   -0.0913680    0.0331187
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.0748934   -0.1508844    0.0010975
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0425967   -0.1361065    0.0509131
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                 0.0306785   -0.0314401    0.0927971
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                 0.0077223   -0.0649342    0.0803788
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                 0.0153133   -0.0582370    0.0888635
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                 0.0368113   -0.0326100    0.1062326
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0206864   -0.1184508    0.1598236
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0522017   -0.0659986    0.1704020
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.1035343   -0.0111188    0.2181875
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.1064152   -0.0384092    0.2512396
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0650906   -0.0179949    0.1481761
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.0825812   -0.3040778    0.1389154
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.0396131   -0.2183893    0.1391631
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.0904498   -0.0825244    0.2634241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.1770955    0.1041044    0.2500866
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.0025624   -0.0915625    0.0864377
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0218421   -0.0759648    0.1196489
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.0834543   -0.0491902    0.2160988
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0325012   -0.1511497    0.0861473
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0642460   -0.1402657    0.0117736
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0077179   -0.1216265    0.1061908
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                -0.1207479   -0.2497169    0.0082212
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0387502   -0.1098313    0.0323309
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    NA                -0.0889738   -0.1728016   -0.0051459
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    NA                -0.0952530   -0.2125865    0.0220804
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    NA                -0.0102141   -0.0738070    0.0533789
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    NA                -0.0311374   -0.1286221    0.0663474
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0574523   -0.1439461    0.0290414
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   NA                 0.0063266   -0.0442906    0.0569437
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   NA                 0.0181712   -0.0885206    0.1248631
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0570369   -0.0120018    0.1260756
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0457280   -0.1237386    0.0322827
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0544710   -0.1595358    0.0505937
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.1280138   -0.1921373   -0.0638904
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.0765079   -0.1461896   -0.0068262
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.0866403   -0.1941614    0.0208808
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0636859   -0.1327003    0.0053285
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0636397   -0.1692801    0.0420007
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.0272380   -0.1345400    0.0800639
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                 0.0951305    0.0118391    0.1784219
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                 0.0959246    0.0237996    0.1680495
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.0157932   -0.0758013    0.1073877
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0464237   -0.0461228    0.1389702
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0032398   -0.1031094    0.0966298
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0779360   -0.1811343    0.0252623
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0881790    0.0023032    0.1740548
3-6 months     ki0047075b-MAL-ED          PERU                           5                    NA                 0.1895796    0.0673900    0.3117692
3-6 months     ki0047075b-MAL-ED          PERU                           6                    NA                 0.1158834   -0.0067544    0.2385211
3-6 months     ki0047075b-MAL-ED          PERU                           7                    NA                -0.0012564   -0.0938912    0.0913785
3-6 months     ki0047075b-MAL-ED          PERU                           8                    NA                 0.0071513   -0.0573467    0.0716493
3-6 months     ki0047075b-MAL-ED          PERU                           9                    NA                -0.1221784   -0.2263423   -0.0180144
3-6 months     ki0047075b-MAL-ED          PERU                           10                   NA                -0.0000801   -0.0859484    0.0857882
3-6 months     ki0047075b-MAL-ED          PERU                           11                   NA                -0.0015554   -0.0798143    0.0767034
3-6 months     ki0047075b-MAL-ED          PERU                           12                   NA                 0.0977818   -0.0257998    0.2213634
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0056612   -0.0877076    0.0990300
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.1046325   -0.0300060    0.2392711
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0534771   -0.1615925    0.2685468
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0070744   -0.1697186    0.1555697
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.0034319   -0.1349718    0.1281080
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.1252413   -0.0082607    0.2587433
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0364784   -0.1552623    0.0823055
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.0503574   -0.0967729    0.1974878
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.0208636   -0.1265236    0.0847965
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -0.0581969   -0.1770726    0.0606788
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0001028   -0.1404386    0.1402329
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.0757799   -0.1762304    0.0246706
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1076756   -0.2347782    0.0194270
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0910461   -0.1936350    0.0115427
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1477820   -0.2562062   -0.0393579
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1898787   -0.2886516   -0.0911057
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0260185   -0.1245756    0.0725385
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0797344   -0.1964215    0.0369528
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.0420067   -0.0513533    0.1353667
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0561742   -0.2316739    0.1193254
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0426133   -0.0690251    0.1542517
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.1269579   -0.2124572   -0.0414586
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.1300902   -0.2144452   -0.0457352
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0384465   -0.1304014    0.0535083
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                 0.0493579   -0.1046597    0.2033756
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.2039955   -0.3110701   -0.0969208
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.2943664   -0.4203262   -0.1684066
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1317298   -0.2655768    0.0021172
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.2576383   -0.3791965   -0.1360801
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.2145669   -0.3471191   -0.0820147
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -0.2379146   -0.3861748   -0.0896545
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.0526291   -0.3439382    0.2386799
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.0558653   -0.2767008    0.1649702
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                 0.0553853   -0.1346621    0.2454327
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                 0.1283159    0.0130277    0.2436041
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                 0.1310306   -0.0378460    0.2999073
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0407990   -0.1111242    0.0295261
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.1437580   -0.2544819   -0.0330340
3-6 months     ki1000108-IRC              INDIA                          3                    NA                -0.0010597   -0.1120343    0.1099149
3-6 months     ki1000108-IRC              INDIA                          4                    NA                -0.1286379   -0.2087945   -0.0484813
3-6 months     ki1000108-IRC              INDIA                          5                    NA                -0.2342712   -0.3382759   -0.1302666
3-6 months     ki1000108-IRC              INDIA                          6                    NA                -0.0899886   -0.2113724    0.0313953
3-6 months     ki1000108-IRC              INDIA                          7                    NA                -0.0741255   -0.1882038    0.0399529
3-6 months     ki1000108-IRC              INDIA                          8                    NA                -0.0790160   -0.1903145    0.0322825
3-6 months     ki1000108-IRC              INDIA                          9                    NA                 0.0527327   -0.0689637    0.1744290
3-6 months     ki1000108-IRC              INDIA                          10                   NA                 0.0445527   -0.0365762    0.1256816
3-6 months     ki1000108-IRC              INDIA                          11                   NA                -0.0371228   -0.1243734    0.0501277
3-6 months     ki1000108-IRC              INDIA                          12                   NA                 0.0076140   -0.0672841    0.0825122
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0919108   -0.1490807   -0.0347410
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0143670   -0.0994132    0.0706791
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.0404618   -0.1208827    0.0399590
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.0307565   -0.1096057    0.0480928
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.0432631   -0.1128276    0.0263015
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.0883961   -0.1760377   -0.0007546
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.0371459   -0.1152000    0.0409082
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                 0.0348138   -0.0130803    0.0827079
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                 0.0127110   -0.0457457    0.0711677
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                 0.0036879   -0.0797729    0.0871487
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.0266970   -0.0657203    0.0123262
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                 0.0284392   -0.0199702    0.0768486
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0661082   -0.1363730    0.0041565
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.1051771   -0.1836661   -0.0266882
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.0747533   -0.1386359   -0.0108708
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.0469431   -0.1199369    0.0260506
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.1094951   -0.2020176   -0.0169726
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0772122   -0.1675480    0.0131236
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                 0.0205700   -0.0515935    0.0927336
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                 0.0125828   -0.0930775    0.1182430
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.0646955   -0.1391487    0.0097577
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.0119702   -0.0960244    0.0720839
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.0454759   -0.1002760    0.0093243
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.0176623   -0.0762826    0.0409581
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                -0.0144705   -0.0647621    0.0358210
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    NA                -0.0734587   -0.1209027   -0.0260148
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    NA                -0.0803085   -0.1227886   -0.0378285
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    NA                -0.0618811   -0.1017031   -0.0220591
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    NA                -0.0395900   -0.0882792    0.0090992
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    NA                -0.0107826   -0.0554219    0.0338566
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    NA                -0.0008894   -0.0434360    0.0416573
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    NA                -0.0171037   -0.0875443    0.0533369
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    NA                 0.0205242   -0.0469538    0.0880022
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   NA                -0.0617167   -0.1026229   -0.0208105
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   NA                -0.1081269   -0.1506313   -0.0656224
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   NA                -0.0531172   -0.0954262   -0.0108083
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0402316   -0.0953221    0.0148589
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                 0.0007647   -0.0585571    0.0600865
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0429049   -0.0976949    0.0118851
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1283170   -0.1941399   -0.0624941
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.1156578   -0.1838668   -0.0474488
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.1357582   -0.2041120   -0.0674044
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.1448652   -0.1983762   -0.0913542
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0620948   -0.1193864   -0.0048033
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.0700262   -0.1231349   -0.0169176
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0902458   -0.1414888   -0.0390027
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.1118009   -0.1615331   -0.0620686
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0565461   -0.1108167   -0.0022755
3-6 months     ki1101329-Keneba           GAMBIA                         1                    NA                 0.0757547    0.0281547    0.1233547
3-6 months     ki1101329-Keneba           GAMBIA                         2                    NA                -0.0835605   -0.1467798   -0.0203412
3-6 months     ki1101329-Keneba           GAMBIA                         3                    NA                -0.1141181   -0.1692159   -0.0590203
3-6 months     ki1101329-Keneba           GAMBIA                         4                    NA                -0.0841372   -0.1570710   -0.0112034
3-6 months     ki1101329-Keneba           GAMBIA                         5                    NA                -0.0550357   -0.1310239    0.0209525
3-6 months     ki1101329-Keneba           GAMBIA                         6                    NA                -0.0628423   -0.1454046    0.0197200
3-6 months     ki1101329-Keneba           GAMBIA                         7                    NA                -0.0231450   -0.1117164    0.0654264
3-6 months     ki1101329-Keneba           GAMBIA                         8                    NA                -0.0071200   -0.0667046    0.0524646
3-6 months     ki1101329-Keneba           GAMBIA                         9                    NA                 0.0276101   -0.0336405    0.0888608
3-6 months     ki1101329-Keneba           GAMBIA                         10                   NA                 0.0213146   -0.0288304    0.0714595
3-6 months     ki1101329-Keneba           GAMBIA                         11                   NA                 0.0174283   -0.0401012    0.0749579
3-6 months     ki1101329-Keneba           GAMBIA                         12                   NA                 0.0484046   -0.0186051    0.1154143
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0340629   -0.1153323    0.0472065
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0262282   -0.1051782    0.0527219
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0368761   -0.1847085    0.1109562
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    NA                 0.0751482   -0.0369594    0.1872558
3-6 months     ki1114097-CMIN             BANGLADESH                     5                    NA                 0.1258865   -0.0438557    0.2956286
3-6 months     ki1114097-CMIN             BANGLADESH                     6                    NA                 0.0453642   -0.0990986    0.1898271
3-6 months     ki1114097-CMIN             BANGLADESH                     7                    NA                -0.1248377   -0.2097479   -0.0399275
3-6 months     ki1114097-CMIN             BANGLADESH                     8                    NA                -0.1557550   -0.2787319   -0.0327782
3-6 months     ki1114097-CMIN             BANGLADESH                     9                    NA                -0.0622366   -0.1566390    0.0321658
3-6 months     ki1114097-CMIN             BANGLADESH                     10                   NA                 0.0123585   -0.0850409    0.1097579
3-6 months     ki1114097-CMIN             BANGLADESH                     11                   NA                 0.0182996   -0.0400660    0.0766652
3-6 months     ki1114097-CMIN             BANGLADESH                     12                   NA                 0.0075269   -0.1041547    0.1192085
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.1030411   -0.1859791   -0.0201032
3-6 months     ki1114097-CMIN             PERU                           2                    NA                -0.0380338   -0.1064602    0.0303926
3-6 months     ki1114097-CMIN             PERU                           3                    NA                -0.0097434   -0.0754308    0.0559439
3-6 months     ki1114097-CMIN             PERU                           4                    NA                -0.0033549   -0.0640216    0.0573117
3-6 months     ki1114097-CMIN             PERU                           5                    NA                -0.0447094   -0.1258067    0.0363880
3-6 months     ki1114097-CMIN             PERU                           6                    NA                -0.0528361   -0.1303471    0.0246749
3-6 months     ki1114097-CMIN             PERU                           7                    NA                -0.0651574   -0.1451536    0.0148387
3-6 months     ki1114097-CMIN             PERU                           8                    NA                -0.0370918   -0.1001807    0.0259970
3-6 months     ki1114097-CMIN             PERU                           9                    NA                -0.1947768   -0.2710579   -0.1184958
3-6 months     ki1114097-CMIN             PERU                           10                   NA                -0.0711646   -0.1539941    0.0116650
3-6 months     ki1114097-CMIN             PERU                           11                   NA                -0.0486711   -0.1351781    0.0378358
3-6 months     ki1114097-CMIN             PERU                           12                   NA                -0.1089475   -0.2005573   -0.0173377
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                -0.0344435   -0.0896825    0.0207955
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                -0.0288710   -0.0700048    0.0122627
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                -0.0406858   -0.1102859    0.0289143
3-6 months     ki1114097-CONTENT          PERU                           4                    NA                -0.0698151   -0.1388115   -0.0008187
3-6 months     ki1114097-CONTENT          PERU                           5                    NA                -0.0008127   -0.0786855    0.0770601
3-6 months     ki1114097-CONTENT          PERU                           6                    NA                -0.0866002   -0.1487405   -0.0244600
3-6 months     ki1114097-CONTENT          PERU                           7                    NA                 0.0721607    0.0199852    0.1243363
3-6 months     ki1114097-CONTENT          PERU                           8                    NA                 0.0843647    0.0150941    0.1536353
3-6 months     ki1114097-CONTENT          PERU                           9                    NA                 0.1045514    0.0373464    0.1717564
3-6 months     ki1114097-CONTENT          PERU                           10                   NA                 0.0587379   -0.0220275    0.1395034
3-6 months     ki1114097-CONTENT          PERU                           11                   NA                -0.0187744   -0.1353741    0.0978253
3-6 months     ki1114097-CONTENT          PERU                           12                   NA                -0.0080759   -0.0977804    0.0816286
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0221654   -0.0264373    0.0707681
3-6 months     ki1119695-PROBIT           BELARUS                        2                    NA                 0.0055007   -0.0311197    0.0421211
3-6 months     ki1119695-PROBIT           BELARUS                        3                    NA                 0.0608604    0.0304705    0.0912503
3-6 months     ki1119695-PROBIT           BELARUS                        4                    NA                 0.0715368    0.0408126    0.1022610
3-6 months     ki1119695-PROBIT           BELARUS                        5                    NA                 0.0764279    0.0465950    0.1062609
3-6 months     ki1119695-PROBIT           BELARUS                        6                    NA                 0.0449524    0.0156410    0.0742637
3-6 months     ki1119695-PROBIT           BELARUS                        7                    NA                 0.0547238    0.0209353    0.0885124
3-6 months     ki1119695-PROBIT           BELARUS                        8                    NA                 0.0490510    0.0210092    0.0770928
3-6 months     ki1119695-PROBIT           BELARUS                        9                    NA                 0.0662308    0.0350713    0.0973903
3-6 months     ki1119695-PROBIT           BELARUS                        10                   NA                 0.0439447    0.0178605    0.0700289
3-6 months     ki1119695-PROBIT           BELARUS                        11                   NA                 0.0444256    0.0110098    0.0778414
3-6 months     ki1119695-PROBIT           BELARUS                        12                   NA                 0.0233500   -0.0030984    0.0497985
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0501266   -0.0781136   -0.0221396
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0202614   -0.0563050    0.0157822
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.0715512   -0.1080045   -0.0350979
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                 0.0121926   -0.0221084    0.0464936
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.0050087   -0.0374280    0.0274106
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                 0.1158111    0.0771825    0.1544397
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                 0.0065504   -0.0240620    0.0371628
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.0051302   -0.0324215    0.0221611
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                 0.0062087   -0.0228242    0.0352417
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                 0.0177583   -0.0149233    0.0504400
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.0053783   -0.0361216    0.0253649
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                 0.0058910   -0.0237269    0.0355089
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0142390   -0.0003962    0.0288743
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0117563   -0.0284769    0.0049643
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0509014   -0.0670860   -0.0347169
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.0612775   -0.0769407   -0.0456143
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.0510326   -0.0703105   -0.0317546
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.0728695   -0.0912166   -0.0545224
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.0638763   -0.0809523   -0.0468003
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.0087828   -0.0239043    0.0063387
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                 0.0366766    0.0203761    0.0529771
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                 0.0594263    0.0448462    0.0740064
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                 0.0541039    0.0404705    0.0677373
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                 0.0250450    0.0114830    0.0386070
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0776487   -0.1297580   -0.0255394
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0142138   -0.0131272    0.0415547
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -0.0390873   -0.0722931   -0.0058815
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -0.0257394   -0.0609811    0.0095022
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -0.0909340   -0.1635625   -0.0183056
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -0.0639465   -0.1020787   -0.0258143
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                 0.0043170   -0.0271146    0.0357486
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                 0.0571289    0.0170272    0.0972306
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                 0.0621015    0.0147223    0.1094806
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0883673   -0.1162240   -0.0605106
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0942766   -0.1256163   -0.0629369
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0627302   -0.0948241   -0.0306362
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.1113611   -0.1469518   -0.0757703
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.0843363   -0.1213338   -0.0473388
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.0441070   -0.0709818   -0.0172322
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.0547415   -0.1023783   -0.0071046
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0780121   -0.1091877   -0.0468365
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.0785034   -0.1126446   -0.0443622
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.0750086   -0.1085139   -0.0415032
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.1019929   -0.1548352   -0.0491507
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.0788238   -0.1049230   -0.0527245
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0158285   -0.0834457    0.0517887
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.1107364   -0.1742221   -0.0472507
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0177525   -0.0571569    0.0216518
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0462887   -0.1050946    0.0125171
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0075814   -0.0371125    0.0522753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.1386904    0.0111062    0.2662745
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                 0.0174333   -0.0617104    0.0965771
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.0228961   -0.0160711    0.0618634
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.0774502    0.0256424    0.1292580
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.0303817   -0.0317343    0.0924976
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0069287   -0.0358853    0.0497426
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.0076420   -0.0841259    0.0994100
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1025360   -0.1407370   -0.0643350
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0624267   -0.0978993   -0.0269540
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0460087   -0.0946073    0.0025899
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0823088   -0.1289266   -0.0356911
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0352457   -0.0744756    0.0039842
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -0.0855150   -0.1147268   -0.0563031
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -0.0455053   -0.0946291    0.0036184
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -0.0765155   -0.1157093   -0.0373216
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -0.0908856   -0.1320099   -0.0497613
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0857551   -0.1288575   -0.0426526
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -0.0974096   -0.1305044   -0.0643148
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -0.0932847   -0.1269978   -0.0595715
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0700172   -0.1003361   -0.0396984
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0878759   -0.1221121   -0.0536396
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0833167   -0.1276477   -0.0389857
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0624034   -0.0902771   -0.0345297
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.0532520   -0.0851303   -0.0213738
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.0084506   -0.0496522    0.0327510
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0297565   -0.0640567    0.0045437
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0103634   -0.0422661    0.0215393
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.0258893   -0.0728611    0.0210825
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.0463299   -0.0870727   -0.0055872
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.0597502   -0.0908725   -0.0286278
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.0546787   -0.0851713   -0.0241860
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0470895   -0.0755490   -0.0186300
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0161355   -0.0590953    0.0268244
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0095058   -0.0630483    0.0440368
6-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.0718826   -0.1356105   -0.0081547
6-12 months    ki0047075b-MAL-ED          PERU                           5                    NA                -0.0550817   -0.1055334   -0.0046300
6-12 months    ki0047075b-MAL-ED          PERU                           6                    NA                -0.0410595   -0.0989229    0.0168040
6-12 months    ki0047075b-MAL-ED          PERU                           7                    NA                -0.0631763   -0.1049417   -0.0214110
6-12 months    ki0047075b-MAL-ED          PERU                           8                    NA                -0.0135971   -0.0579708    0.0307767
6-12 months    ki0047075b-MAL-ED          PERU                           9                    NA                 0.0002721   -0.0419994    0.0425436
6-12 months    ki0047075b-MAL-ED          PERU                           10                   NA                -0.0005277   -0.0817742    0.0807187
6-12 months    ki0047075b-MAL-ED          PERU                           11                   NA                -0.0489626   -0.0895512   -0.0083740
6-12 months    ki0047075b-MAL-ED          PERU                           12                   NA                -0.0696383   -0.1002344   -0.0390421
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0579974   -0.1144817   -0.0015131
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0693175   -0.1340302   -0.0046047
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0215646   -0.0749530    0.0318238
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0857824   -0.1584499   -0.0131150
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.0046817   -0.0721405    0.0627772
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.1074743   -0.1778250   -0.0371236
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0515064   -0.0992672   -0.0037457
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -0.0621077   -0.1259901    0.0017747
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.0555991   -0.0966963   -0.0145020
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -0.0597969   -0.1137364   -0.0058573
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0357157   -0.0952324    0.0238011
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.0417355   -0.0840377    0.0005667
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0997877   -0.1544589   -0.0451164
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1102412   -0.1598657   -0.0606166
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0576959   -0.1230437    0.0076520
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1277701   -0.1722971   -0.0832430
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.1152494   -0.1565096   -0.0739893
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.1068872   -0.1467891   -0.0669854
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.1309731   -0.1900772   -0.0718691
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.1601834   -0.2518008   -0.0685660
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.2021579   -0.2421264   -0.1621895
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.1188342   -0.1659730   -0.0716953
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0941859   -0.1376060   -0.0507658
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1620722   -0.2055744   -0.1185699
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0635288   -0.1584189    0.0313612
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                -0.1496827   -0.2355219   -0.0638436
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.1270824   -0.2071901   -0.0469747
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.1467035   -0.1982950   -0.0951120
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.1323995   -0.1858335   -0.0789655
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.0706812   -0.1370374   -0.0043250
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -0.0448897   -0.1016228    0.0118433
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                 0.0135255   -0.0863636    0.1134145
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.0470813   -0.1295472    0.0353847
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.1392083   -0.2093823   -0.0690342
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.1039907   -0.1527193   -0.0552622
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -0.1527620   -0.2133392   -0.0921847
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0458028   -0.0819810   -0.0096246
6-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0311852   -0.0746093    0.0122389
6-12 months    ki1000108-IRC              INDIA                          3                    NA                -0.0623615   -0.0988626   -0.0258604
6-12 months    ki1000108-IRC              INDIA                          4                    NA                -0.0448373   -0.0898063    0.0001317
6-12 months    ki1000108-IRC              INDIA                          5                    NA                -0.0106260   -0.0613054    0.0400534
6-12 months    ki1000108-IRC              INDIA                          6                    NA                -0.0263237   -0.0719539    0.0193065
6-12 months    ki1000108-IRC              INDIA                          7                    NA                 0.0102418   -0.0411015    0.0615852
6-12 months    ki1000108-IRC              INDIA                          8                    NA                -0.0239278   -0.0615805    0.0137250
6-12 months    ki1000108-IRC              INDIA                          9                    NA                -0.0476605   -0.1120559    0.0167348
6-12 months    ki1000108-IRC              INDIA                          10                   NA                -0.0245699   -0.0548176    0.0056777
6-12 months    ki1000108-IRC              INDIA                          11                   NA                -0.0135234   -0.0603497    0.0333028
6-12 months    ki1000108-IRC              INDIA                          12                   NA                -0.0158561   -0.0530867    0.0213746
6-12 months    ki1000304-VITAMIN-A        INDIA                          1                    NA                -0.1178551   -0.1336477   -0.1020625
6-12 months    ki1000304-VITAMIN-A        INDIA                          2                    NA                -0.0856103   -0.1049083   -0.0663124
6-12 months    ki1000304-VITAMIN-A        INDIA                          3                    NA                -0.0665250   -0.0820208   -0.0510293
6-12 months    ki1000304-VITAMIN-A        INDIA                          4                    NA                -0.0599839   -0.0744766   -0.0454911
6-12 months    ki1000304-VITAMIN-A        INDIA                          5                    NA                -0.0540063   -0.0687042   -0.0393083
6-12 months    ki1000304-VITAMIN-A        INDIA                          6                    NA                -0.0525104   -0.0711950   -0.0338259
6-12 months    ki1000304-VITAMIN-A        INDIA                          7                    NA                -0.0680787   -0.0828401   -0.0533173
6-12 months    ki1000304-VITAMIN-A        INDIA                          8                    NA                -0.0536622   -0.0710523   -0.0362721
6-12 months    ki1000304-VITAMIN-A        INDIA                          9                    NA                -0.0698644   -0.0861996   -0.0535293
6-12 months    ki1000304-VITAMIN-A        INDIA                          10                   NA                -0.0847042   -0.1039237   -0.0654847
6-12 months    ki1000304-VITAMIN-A        INDIA                          11                   NA                -0.1092189   -0.1340511   -0.0843868
6-12 months    ki1000304-VITAMIN-A        INDIA                          12                   NA                -0.1082336   -0.1239709   -0.0924964
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0983796   -0.1276639   -0.0690954
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0990600   -0.1274759   -0.0706442
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.0916228   -0.1372386   -0.0460070
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.0886405   -0.0995902   -0.0776907
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.0513565   -0.0999748   -0.0027382
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.0493899   -0.0833088   -0.0154710
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.0629779   -0.1011379   -0.0248180
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.1108554   -0.1357672   -0.0859435
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.1091033   -0.1361648   -0.0820418
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.1009736   -0.1402940   -0.0616532
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.0623830   -0.0879409   -0.0368251
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.0836389   -0.1132263   -0.0540515
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0688944   -0.0960371   -0.0417516
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.0823878   -0.1109727   -0.0538030
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.0549314   -0.0914184   -0.0184444
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.0511609   -0.0808860   -0.0214358
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.0526736   -0.0866957   -0.0186516
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0336346   -0.0676177    0.0003485
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.0568451   -0.0881016   -0.0255885
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.0618644   -0.0889286   -0.0348002
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.0226712   -0.0646510    0.0193086
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.0578352   -0.0940623   -0.0216081
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.0208609   -0.0473222    0.0056004
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.0693452   -0.0961672   -0.0425232
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                -0.0190456   -0.0393741    0.0012828
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          2                    NA                 0.0347821    0.0138069    0.0557572
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          3                    NA                 0.0133210   -0.0048906    0.0315326
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          4                    NA                 0.0086230   -0.0106121    0.0278582
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          5                    NA                 0.0225691    0.0004550    0.0446832
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          6                    NA                 0.0022564   -0.0174376    0.0219504
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          7                    NA                -0.0017118   -0.0206979    0.0172743
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          8                    NA                -0.0236346   -0.0455430   -0.0017262
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          9                    NA                -0.0172200   -0.0437706    0.0093305
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          10                   NA                -0.0131594   -0.0317086    0.0053897
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          11                   NA                -0.0041119   -0.0234619    0.0152381
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          12                   NA                -0.0086356   -0.0266600    0.0093887
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1213624   -0.1569229   -0.0858019
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1216837   -0.1595088   -0.0838587
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1008528   -0.1340008   -0.0677048
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0874427   -0.1293147   -0.0455707
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0509300   -0.0830333   -0.0188266
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0383807   -0.0678232   -0.0089382
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.0280134   -0.0568242    0.0007974
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0318628   -0.0623951   -0.0013305
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.0214944   -0.0499684    0.0069796
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0238066   -0.0497819    0.0021686
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0524244   -0.0730052   -0.0318436
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0889758   -0.1155913   -0.0623604
6-12 months    ki1101329-Keneba           GAMBIA                         1                    NA                -0.0716440   -0.0974238   -0.0458643
6-12 months    ki1101329-Keneba           GAMBIA                         2                    NA                -0.0668659   -0.0916577   -0.0420741
6-12 months    ki1101329-Keneba           GAMBIA                         3                    NA                -0.0237495   -0.0523889    0.0048899
6-12 months    ki1101329-Keneba           GAMBIA                         4                    NA                -0.0418946   -0.0704459   -0.0133433
6-12 months    ki1101329-Keneba           GAMBIA                         5                    NA                -0.0499037   -0.0759652   -0.0238422
6-12 months    ki1101329-Keneba           GAMBIA                         6                    NA                -0.0478566   -0.0747117   -0.0210014
6-12 months    ki1101329-Keneba           GAMBIA                         7                    NA                -0.0613321   -0.1072953   -0.0153688
6-12 months    ki1101329-Keneba           GAMBIA                         8                    NA                -0.0576481   -0.0846055   -0.0306908
6-12 months    ki1101329-Keneba           GAMBIA                         9                    NA                -0.0736327   -0.0983414   -0.0489241
6-12 months    ki1101329-Keneba           GAMBIA                         10                   NA                -0.0737325   -0.0987676   -0.0486974
6-12 months    ki1101329-Keneba           GAMBIA                         11                   NA                -0.0631948   -0.0882222   -0.0381674
6-12 months    ki1101329-Keneba           GAMBIA                         12                   NA                -0.0919777   -0.1149589   -0.0689966
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0748336   -0.1148689   -0.0347983
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0554155   -0.1175083    0.0066773
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0474129   -0.0793184   -0.0155073
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0677072   -0.0999610   -0.0354535
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                -0.0835998   -0.1216721   -0.0455274
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                -0.0463650   -0.1034087    0.0106787
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                -0.1071064   -0.1492606   -0.0649522
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                -0.0979973   -0.1660584   -0.0299362
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                -0.1172667   -0.1666453   -0.0678881
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                -0.0950927   -0.1320987   -0.0580867
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                -0.0700661   -0.1046504   -0.0354819
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                -0.0716153   -0.1183549   -0.0248757
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0797142   -0.1274009   -0.0320274
6-12 months    ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0984827   -0.1329736   -0.0639918
6-12 months    ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0653161   -0.1223265   -0.0083057
6-12 months    ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0950583   -0.1306199   -0.0594968
6-12 months    ki1114097-CMIN             BANGLADESH                     5                    NA                -0.0964080   -0.1289941   -0.0638219
6-12 months    ki1114097-CMIN             BANGLADESH                     6                    NA                -0.1315461   -0.1775003   -0.0855919
6-12 months    ki1114097-CMIN             BANGLADESH                     7                    NA                -0.0627719   -0.1165853   -0.0089586
6-12 months    ki1114097-CMIN             BANGLADESH                     8                    NA                 0.0245548   -0.0478342    0.0969438
6-12 months    ki1114097-CMIN             BANGLADESH                     9                    NA                -0.0122941   -0.0667587    0.0421705
6-12 months    ki1114097-CMIN             BANGLADESH                     10                   NA                -0.1213202   -0.1615518   -0.0810886
6-12 months    ki1114097-CMIN             BANGLADESH                     11                   NA                -0.0897040   -0.1320719   -0.0473361
6-12 months    ki1114097-CMIN             BANGLADESH                     12                   NA                -0.0650142   -0.1166413   -0.0133870
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0338019   -0.1749018    0.1072981
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -0.0242192   -0.0593045    0.0108661
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -0.0789687   -0.1234444   -0.0344930
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -0.1609090   -0.2416272   -0.0801908
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.1734486   -0.3328109   -0.0140862
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                -0.0699141   -0.1658153    0.0259871
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -0.1752114   -0.2625268   -0.0878961
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.1394975   -0.2540651   -0.0249299
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -0.1380881   -0.1850565   -0.0911198
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -0.1682123   -0.2291881   -0.1072366
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -0.1592991   -0.2866002   -0.0319980
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -0.0938163   -0.1406577   -0.0469748
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0913776   -0.1255265   -0.0572288
6-12 months    ki1114097-CMIN             PERU                           2                    NA                -0.0832537   -0.1183813   -0.0481262
6-12 months    ki1114097-CMIN             PERU                           3                    NA                -0.0846849   -0.1133307   -0.0560391
6-12 months    ki1114097-CMIN             PERU                           4                    NA                -0.0802993   -0.1141368   -0.0464618
6-12 months    ki1114097-CMIN             PERU                           5                    NA                -0.0893259   -0.1239258   -0.0547260
6-12 months    ki1114097-CMIN             PERU                           6                    NA                -0.0933169   -0.1319540   -0.0546797
6-12 months    ki1114097-CMIN             PERU                           7                    NA                -0.0744062   -0.1155575   -0.0332550
6-12 months    ki1114097-CMIN             PERU                           8                    NA                -0.1031704   -0.1283810   -0.0779598
6-12 months    ki1114097-CMIN             PERU                           9                    NA                -0.1254255   -0.1627716   -0.0880793
6-12 months    ki1114097-CMIN             PERU                           10                   NA                -0.1188503   -0.1562273   -0.0814733
6-12 months    ki1114097-CMIN             PERU                           11                   NA                -0.0865793   -0.1222363   -0.0509223
6-12 months    ki1114097-CMIN             PERU                           12                   NA                -0.0921905   -0.1395301   -0.0448509
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0204897   -0.0882761    0.0472966
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0210621   -0.0594374    0.0173132
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                 0.0056096   -0.0222691    0.0334882
6-12 months    ki1114097-CONTENT          PERU                           4                    NA                -0.0233308   -0.0609926    0.0143309
6-12 months    ki1114097-CONTENT          PERU                           5                    NA                -0.0156266   -0.0759645    0.0447113
6-12 months    ki1114097-CONTENT          PERU                           6                    NA                -0.0398411   -0.0890079    0.0093256
6-12 months    ki1114097-CONTENT          PERU                           7                    NA                -0.0230547   -0.0558666    0.0097571
6-12 months    ki1114097-CONTENT          PERU                           8                    NA                -0.0320661   -0.0706343    0.0065021
6-12 months    ki1114097-CONTENT          PERU                           9                    NA                -0.0400842   -0.0826327    0.0024643
6-12 months    ki1114097-CONTENT          PERU                           10                   NA                -0.0194490   -0.0622977    0.0233996
6-12 months    ki1114097-CONTENT          PERU                           11                   NA                 0.0089823   -0.0424885    0.0604530
6-12 months    ki1114097-CONTENT          PERU                           12                   NA                -0.0609268   -0.1084044   -0.0134491
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0657488    0.0424053    0.0890924
6-12 months    ki1119695-PROBIT           BELARUS                        2                    NA                 0.0645339    0.0419272    0.0871406
6-12 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.0511599    0.0291738    0.0731459
6-12 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.0313874    0.0134705    0.0493043
6-12 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.0302105    0.0102666    0.0501545
6-12 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.0334654    0.0176523    0.0492785
6-12 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.0342055    0.0026232    0.0657878
6-12 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.0290180    0.0030899    0.0549462
6-12 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.0359366    0.0116408    0.0602325
6-12 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.0396614    0.0199269    0.0593959
6-12 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.0443701    0.0233612    0.0653790
6-12 months    ki1119695-PROBIT           BELARUS                        12                   NA                 0.0556103    0.0368037    0.0744169
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0424917   -0.0575464   -0.0274369
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0471614   -0.0634197   -0.0309032
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.0380803   -0.0576287   -0.0185320
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.0281018   -0.0440806   -0.0121230
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.0399872   -0.0577807   -0.0221937
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.0657117   -0.0834392   -0.0479842
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.0667240   -0.0818661   -0.0515818
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.0528691   -0.0675746   -0.0381636
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.0600090   -0.0747362   -0.0452818
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.0625556   -0.0786773   -0.0464340
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.0471531   -0.0599955   -0.0343108
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.0426091   -0.0583421   -0.0268762
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                -0.0263025   -0.0516579   -0.0009471
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                -0.0583737   -0.0857443   -0.0310031
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3                    NA                 0.0073417   -0.0175108    0.0321943
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         4                    NA                -0.0449803   -0.0738804   -0.0160803
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         5                    NA                -0.0640579   -0.0925806   -0.0355351
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         6                    NA                -0.0176942   -0.0489920    0.0136035
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         7                    NA                -0.0159327   -0.0440541    0.0121887
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         8                    NA                -0.0471003   -0.0692668   -0.0249338
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         9                    NA                -0.0595136   -0.0779174   -0.0411098
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         10                   NA                -0.0440717   -0.0642182   -0.0239251
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         11                   NA                -0.0272776   -0.0439623   -0.0105930
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         12                   NA                -0.0433210   -0.0713680   -0.0152740
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                -0.0687668   -0.1055615   -0.0319720
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2                    NA                -0.0775589   -0.1101568   -0.0449611
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         3                    NA                -0.0386838   -0.0667990   -0.0105686
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         4                    NA                -0.0682826   -0.1040024   -0.0325627
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         5                    NA                -0.0088137   -0.0470973    0.0294700
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         6                    NA                -0.0217606   -0.0535934    0.0100721
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         7                    NA                -0.0531818   -0.0842972   -0.0220665
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         8                    NA                -0.0220769   -0.0466396    0.0024857
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         9                    NA                -0.0556916   -0.0911696   -0.0202136
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         10                   NA                -0.0031648   -0.0377352    0.0314056
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         11                   NA                -0.0609821   -0.0913583   -0.0306059
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         12                   NA                -0.0481340   -0.0892114   -0.0070565
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0445310   -0.0849484   -0.0041136
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                 0.0105245   -0.0195943    0.0406434
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    NA                -0.0100689   -0.0347434    0.0146056
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    NA                 0.0259562   -0.0129638    0.0648762
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    NA                -0.0168153   -0.0508710    0.0172403
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    NA                -0.0394146   -0.0718147   -0.0070144
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    NA                 0.0142671   -0.0190504    0.0475846
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    NA                -0.0001148   -0.0293200    0.0290904
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    NA                 0.0345314   -0.0100494    0.0791122
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   NA                -0.0145913   -0.0440603    0.0148777
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   NA                -0.0119584   -0.0486258    0.0247091
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   NA                -0.0276463   -0.0656326    0.0103400
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.1039542   -0.1120443   -0.0958642
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0924250   -0.1017163   -0.0831337
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0734820   -0.0824217   -0.0645423
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.0670588   -0.0744626   -0.0596551
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.0588855   -0.0699620   -0.0478089
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.0590401   -0.0681154   -0.0499648
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.0543162   -0.0645585   -0.0440740
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.0598906   -0.0694077   -0.0503734
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.0690922   -0.0783177   -0.0598666
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.0722916   -0.0806338   -0.0639494
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.0826621   -0.0904952   -0.0748290
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.0910944   -0.0992206   -0.0829681
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0484472   -0.0783019   -0.0185925
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0484606   -0.0577577   -0.0391635
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -0.0436587   -0.0548785   -0.0324389
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -0.0390102   -0.0497792   -0.0282412
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -0.0349367   -0.0497542   -0.0201191
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -0.0183525   -0.0301564   -0.0065486
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -0.0340082   -0.0463676   -0.0216488
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -0.0424438   -0.0522704   -0.0326171
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -0.0409802   -0.0588963   -0.0230640
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0065304   -0.0302581    0.0171973
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0231933   -0.0411560   -0.0052305
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0310433   -0.0484621   -0.0136246
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0078952   -0.0231362    0.0073459
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.0240491   -0.0470059   -0.0010924
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.0497452   -0.0730446   -0.0264458
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.0053362   -0.0213026    0.0106303
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0104233   -0.0291327    0.0082860
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.0310647   -0.0489363   -0.0131931
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.0078589   -0.0213497    0.0056319
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.0092737   -0.0291330    0.0105856
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.0223725   -0.0352145   -0.0095305
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0116001   -0.0220037    0.0452039
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0137775   -0.0114920    0.0390470
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0171093   -0.0205726    0.0547913
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0508678    0.0000321    0.1017035
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0126244   -0.0182017    0.0434505
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.0480986   -0.0861926   -0.0100046
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.0052677   -0.0341657    0.0236303
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.0335044   -0.0529891   -0.0140196
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                -0.0135901   -0.0361224    0.0089422
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.0102433   -0.0495684    0.0290817
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0021953   -0.0401407    0.0445312
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                -0.0272505   -0.0738483    0.0193472
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0172903   -0.0369057    0.0023250
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0210962   -0.0392889   -0.0029036
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0166901   -0.0380657    0.0046854
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0105859   -0.0312317    0.0100599
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0207946   -0.0433081    0.0017189
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                 0.0041200   -0.0121860    0.0204260
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -0.0092331   -0.0290572    0.0105909
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -0.0140799   -0.0265142   -0.0016456
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -0.0086726   -0.0255904    0.0082451
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0147559   -0.0289686   -0.0005432
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                 0.0018377   -0.0128869    0.0165622
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                 0.0011791   -0.0113443    0.0137026
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0218515   -0.0372889   -0.0064141
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0254620   -0.0418640   -0.0090600
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0351344   -0.0524101   -0.0178587
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0237942   -0.0382429   -0.0093455
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.0322369   -0.0423886   -0.0220852
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.0396261   -0.0649406   -0.0143117
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0160214   -0.0326788    0.0006360
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0343702   -0.0496064   -0.0191340
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.0307498   -0.0544760   -0.0070236
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.0372821   -0.0541035   -0.0204606
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.0336315   -0.0495234   -0.0177396
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.0210073   -0.0398611   -0.0021535
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0131852   -0.0296127    0.0032423
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0143039   -0.0301984    0.0015906
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0194300   -0.0425799    0.0037200
12-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0303154   -0.0563165   -0.0043143
12-24 months   ki0047075b-MAL-ED          PERU                           5                    NA                -0.0112377   -0.0335009    0.0110255
12-24 months   ki0047075b-MAL-ED          PERU                           6                    NA                -0.0043849   -0.0314217    0.0226520
12-24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -0.0018029   -0.0310488    0.0274430
12-24 months   ki0047075b-MAL-ED          PERU                           8                    NA                -0.0004105   -0.0351950    0.0343740
12-24 months   ki0047075b-MAL-ED          PERU                           9                    NA                -0.0039201   -0.0286765    0.0208362
12-24 months   ki0047075b-MAL-ED          PERU                           10                   NA                -0.0060851   -0.0303943    0.0182241
12-24 months   ki0047075b-MAL-ED          PERU                           11                   NA                 0.0075283   -0.0157262    0.0307827
12-24 months   ki0047075b-MAL-ED          PERU                           12                   NA                -0.0201937   -0.0448420    0.0044546
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0134048   -0.0411845    0.0143749
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0346688   -0.0692678   -0.0000697
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0274141   -0.0578024    0.0029741
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0136376   -0.0128874    0.0401626
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.0393237   -0.0710148   -0.0076325
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.0001367   -0.0225321    0.0228054
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0149078   -0.0294021   -0.0004136
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -0.0124132   -0.0499885    0.0251621
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.0006484   -0.0191599    0.0204566
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -0.0088498   -0.0312061    0.0135065
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0239105   -0.0441428   -0.0036782
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.0202553   -0.0358035   -0.0047072
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0469269   -0.0787164   -0.0151375
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0400895   -0.0641450   -0.0160339
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0560632   -0.0766277   -0.0354987
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0508116   -0.0890546   -0.0125686
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0452120   -0.0714491   -0.0189749
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0487155   -0.0748409   -0.0225900
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.0260900   -0.0549533    0.0027734
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0082876   -0.0371547    0.0205795
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.0073516   -0.0330791    0.0183759
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0487816   -0.0790749   -0.0184882
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0656827   -0.0847715   -0.0465940
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0231175   -0.0421144   -0.0041205
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    NA                -0.0424764   -0.0728632   -0.0120896
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    NA                 0.0009730   -0.0387205    0.0406666
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    NA                -0.0529978   -0.0865155   -0.0194800
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    NA                -0.0556237   -0.0790466   -0.0322009
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    NA                -0.0318858   -0.0670904    0.0033188
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    NA                -0.0457715   -0.0871320   -0.0044111
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    NA                -0.0231959   -0.0601506    0.0137588
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    NA                -0.0792640   -0.1364278   -0.0221003
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    NA                -0.0631925   -0.1050192   -0.0213657
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   NA                -0.0423549   -0.0675649   -0.0171450
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   NA                -0.0748365   -0.1009442   -0.0487288
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   NA                -0.0256456   -0.0522976    0.0010064
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0265105   -0.0518905   -0.0011305
12-24 months   ki1000108-IRC              INDIA                          2                    NA                -0.0029871   -0.0293083    0.0233340
12-24 months   ki1000108-IRC              INDIA                          3                    NA                -0.0276433   -0.0504757   -0.0048110
12-24 months   ki1000108-IRC              INDIA                          4                    NA                -0.0066527   -0.0504726    0.0371673
12-24 months   ki1000108-IRC              INDIA                          5                    NA                -0.0329532   -0.0582886   -0.0076178
12-24 months   ki1000108-IRC              INDIA                          6                    NA                -0.0483725   -0.0734573   -0.0232877
12-24 months   ki1000108-IRC              INDIA                          7                    NA                -0.0574408   -0.0816677   -0.0332139
12-24 months   ki1000108-IRC              INDIA                          8                    NA                -0.0412687   -0.0586258   -0.0239117
12-24 months   ki1000108-IRC              INDIA                          9                    NA                -0.0516976   -0.0835021   -0.0198931
12-24 months   ki1000108-IRC              INDIA                          10                   NA                -0.0399397   -0.0585172   -0.0213623
12-24 months   ki1000108-IRC              INDIA                          11                   NA                -0.0187567   -0.0403751    0.0028618
12-24 months   ki1000108-IRC              INDIA                          12                   NA                -0.0162135   -0.0345832    0.0021561
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0269049   -0.0439498   -0.0098600
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.0337955   -0.0451435   -0.0224475
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.0413001   -0.0554428   -0.0271574
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.0540777   -0.0674525   -0.0407028
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.0595287   -0.0759837   -0.0430737
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0484576   -0.0677927   -0.0291224
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.0400486   -0.0548805   -0.0252167
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.0340987   -0.0581028   -0.0100947
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.0318496   -0.0472607   -0.0164385
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.0382861   -0.0557484   -0.0208239
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.0381660   -0.0538264   -0.0225057
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.0394911   -0.0515068   -0.0274754
12-24 months   ki1101329-Keneba           GAMBIA                         1                    NA                -0.0089061   -0.0199773    0.0021652
12-24 months   ki1101329-Keneba           GAMBIA                         2                    NA                -0.0208798   -0.0340870   -0.0076727
12-24 months   ki1101329-Keneba           GAMBIA                         3                    NA                -0.0294716   -0.0433654   -0.0155777
12-24 months   ki1101329-Keneba           GAMBIA                         4                    NA                -0.0280590   -0.0382828   -0.0178353
12-24 months   ki1101329-Keneba           GAMBIA                         5                    NA                -0.0293481   -0.0399721   -0.0187241
12-24 months   ki1101329-Keneba           GAMBIA                         6                    NA                -0.0329332   -0.0499536   -0.0159128
12-24 months   ki1101329-Keneba           GAMBIA                         7                    NA                -0.0248096   -0.0411541   -0.0084651
12-24 months   ki1101329-Keneba           GAMBIA                         8                    NA                -0.0172658   -0.0283018   -0.0062298
12-24 months   ki1101329-Keneba           GAMBIA                         9                    NA                -0.0199123   -0.0311376   -0.0086869
12-24 months   ki1101329-Keneba           GAMBIA                         10                   NA                -0.0118647   -0.0252243    0.0014948
12-24 months   ki1101329-Keneba           GAMBIA                         11                   NA                -0.0214850   -0.0372319   -0.0057380
12-24 months   ki1101329-Keneba           GAMBIA                         12                   NA                -0.0145212   -0.0270132   -0.0020292
12-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    NA                -0.0179596   -0.0335196   -0.0023996
12-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    NA                -0.0220092   -0.0288083   -0.0152102
12-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    NA                -0.0084118   -0.0164914   -0.0003323
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    NA                -0.0159533   -0.0472965    0.0153899
12-24 months   ki1114097-CMIN             BANGLADESH                     2                    NA                -0.0371492   -0.0589025   -0.0153959
12-24 months   ki1114097-CMIN             BANGLADESH                     3                    NA                -0.0061443   -0.0297063    0.0174176
12-24 months   ki1114097-CMIN             BANGLADESH                     4                    NA                -0.0434193   -0.0613193   -0.0255193
12-24 months   ki1114097-CMIN             BANGLADESH                     5                    NA                -0.0262715   -0.0533259    0.0007830
12-24 months   ki1114097-CMIN             BANGLADESH                     6                    NA                -0.0669290   -0.0993232   -0.0345347
12-24 months   ki1114097-CMIN             BANGLADESH                     7                    NA                -0.0088025   -0.0519443    0.0343394
12-24 months   ki1114097-CMIN             BANGLADESH                     8                    NA                -0.0439785   -0.0732311   -0.0147258
12-24 months   ki1114097-CMIN             BANGLADESH                     9                    NA                -0.0190511   -0.0508696    0.0127675
12-24 months   ki1114097-CMIN             BANGLADESH                     10                   NA                -0.0433173   -0.0703607   -0.0162739
12-24 months   ki1114097-CMIN             BANGLADESH                     11                   NA                -0.0374432   -0.0661171   -0.0087694
12-24 months   ki1114097-CMIN             BANGLADESH                     12                   NA                -0.0310848   -0.0471790   -0.0149905
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0181200   -0.0811355    0.0448955
12-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                -0.0464283   -0.0787212   -0.0141355
12-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                -0.0313742   -0.0646988    0.0019504
12-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                -0.0350253   -0.0545732   -0.0154774
12-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                -0.0478267   -0.1020871    0.0064338
12-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                -0.0345523   -0.0574351   -0.0116694
12-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                -0.0437042   -0.0954971    0.0080887
12-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                -0.0230423   -0.0411640   -0.0049207
12-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                -0.0389649   -0.0714416   -0.0064883
12-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                -0.0625315   -0.0811065   -0.0439564
12-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                -0.0574972   -0.0963217   -0.0186727
12-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                -0.0594038   -0.1190628    0.0002552
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                -0.0451626   -0.0689340   -0.0213913
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                -0.0116104   -0.0281123    0.0048915
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3                    NA                -0.0356732   -0.0509433   -0.0204032
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         4                    NA                -0.0502635   -0.0790780   -0.0214489
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         5                    NA                -0.0250635   -0.0504577    0.0003307
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         6                    NA                -0.0263889   -0.0418790   -0.0108988
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         7                    NA                -0.0306338   -0.0437586   -0.0175090
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         8                    NA                -0.0251778   -0.0377971   -0.0125586
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         9                    NA                -0.0323776   -0.0478702   -0.0168849
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         10                   NA                -0.0361529   -0.0498312   -0.0224746
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         11                   NA                -0.0292447   -0.0416978   -0.0167916
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         12                   NA                -0.0181326   -0.0340928   -0.0021724
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                -0.0079198   -0.0256265    0.0097868
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2                    NA                -0.0095351   -0.0268419    0.0077718
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         3                    NA                -0.0229882   -0.0387060   -0.0072703
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         4                    NA                -0.0182251   -0.0295516   -0.0068986
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         5                    NA                -0.0291502   -0.0477363   -0.0105640
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         6                    NA                -0.0256657   -0.0506484   -0.0006830
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         7                    NA                -0.0455586   -0.0616312   -0.0294859
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         8                    NA                -0.0257273   -0.0412833   -0.0101712
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         9                    NA                -0.0158427   -0.0353598    0.0036744
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         10                   NA                -0.0176432   -0.0381115    0.0028251
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         11                   NA                -0.0109264   -0.0268613    0.0050084
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         12                   NA                -0.0168392   -0.0368530    0.0031747
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0002834   -0.0225114    0.0219446
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -0.0052380   -0.0225175    0.0120415
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -0.0018105   -0.0237509    0.0201300
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                -0.0189989   -0.0472621    0.0092642
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -0.0272698   -0.0473360   -0.0072035
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -0.0088198   -0.0393649    0.0217253
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -0.0249347   -0.0431327   -0.0067368
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -0.0102610   -0.0243695    0.0038475
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                -0.0228567   -0.0472829    0.0015695
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                -0.0194427   -0.0363230   -0.0025624
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -0.0083841   -0.0221097    0.0053414
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -0.0295694   -0.0492841   -0.0098547
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0241345   -0.0307494   -0.0175196
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0210781   -0.0285824   -0.0135737
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0225087   -0.0285798   -0.0164377
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.0199734   -0.0254100   -0.0145368
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.0209890   -0.0282433   -0.0137347
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.0230242   -0.0296445   -0.0164038
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.0217020   -0.0272493   -0.0161547
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.0179417   -0.0243479   -0.0115354
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.0183899   -0.0246976   -0.0120822
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.0144713   -0.0200067   -0.0089360
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.0128239   -0.0174802   -0.0081677
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.0155615   -0.0211122   -0.0100108
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0165692   -0.0210915   -0.0120468
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0196468   -0.0241117   -0.0151819
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -0.0141178   -0.0192569   -0.0089787
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -0.0141826   -0.0191459   -0.0092193
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -0.0116451   -0.0177246   -0.0055655
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -0.0114404   -0.0172389   -0.0056420
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -0.0125316   -0.0170452   -0.0080180
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -0.0147432   -0.0190121   -0.0104743
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -0.0086736   -0.0185904    0.0012431


### Parameter: E(Y)


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0339062   -0.0659795   -0.0018330
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0204797   -0.0596747    0.0187152
0-3 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                 0.0746202    0.0395269    0.1097135
0-3 months     ki0047075b-MAL-ED          PERU                           NA                   NA                -0.1581085   -0.1906285   -0.1255886
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.1018785   -0.1458569   -0.0579001
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0461667   -0.0847570   -0.0075763
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.1191165   -0.1460676   -0.0921654
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                 0.0871908    0.0704561    0.1039256
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2850538   -0.3091443   -0.2609633
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0705261    0.0655716    0.0754805
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0225211   -0.0456381    0.0005960
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0401251   -0.0685271   -0.0117231
3-6 months     ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0214542   -0.0480456    0.0051373
3-6 months     ki0047075b-MAL-ED          PERU                           NA                   NA                 0.0273803   -0.0036374    0.0583980
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0000528   -0.0382594    0.0381539
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0705448   -0.1027245   -0.0383652
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979615   -0.1455947   -0.0503283
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0518918   -0.0819849   -0.0217987
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0166348   -0.0360336    0.0027639
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0509007   -0.0730097   -0.0287917
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                -0.0443716   -0.0584690   -0.0302741
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0844665   -0.1011169   -0.0678162
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0167995   -0.0352345    0.0016355
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0009676   -0.0102953    0.0083602
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0034526   -0.0083193    0.0014141
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090589   -0.0227889    0.0046710
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0807393   -0.0911050   -0.0703737
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0776724   -0.0898619   -0.0654829
6-12 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0488126   -0.0594641   -0.0381610
6-12 months    ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0373127   -0.0513600   -0.0232653
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0537724   -0.0711138   -0.0364310
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1240143   -0.1396706   -0.1083579
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0993395   -0.1199006   -0.0787784
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260151   -0.0389122   -0.0131180
6-12 months    ki1000304-VITAMIN-A        INDIA                          NA                   NA                -0.0754043   -0.0803601   -0.0704485
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0862318   -0.0909003   -0.0815633
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                 0.0011158   -0.0049386    0.0071703
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0598587   -0.0690454   -0.0506721
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0614070   -0.0692663   -0.0535478
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0751878   -0.0881244   -0.0622513
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0773003   -0.0921728   -0.0624278
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1193239   -0.1415513   -0.0970964
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0492642   -0.0539207   -0.0446077
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                -0.0373269   -0.0443181   -0.0303357
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                -0.0435155   -0.0534192   -0.0336118
6-12 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0066447   -0.0175712    0.0042818
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0748352   -0.0776789   -0.0719915
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0383413   -0.0427080   -0.0339747
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                -0.0178490   -0.0232486   -0.0124494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0098833   -0.0150187   -0.0047479
12-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                -0.0295113   -0.0345712   -0.0244514
12-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                -0.0092560   -0.0162726   -0.0022393
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                -0.0153445   -0.0229210   -0.0077680
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0393265   -0.0471437   -0.0315094
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0455184   -0.0556929   -0.0353439
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0317687   -0.0388357   -0.0247017
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0404278   -0.0450901   -0.0357656
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0205442   -0.0243542   -0.0167343
12-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.0155649   -0.0206065   -0.0105234
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0315963   -0.0399345   -0.0232582
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         NA                   NA                -0.0305575   -0.0354042   -0.0257108
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         NA                   NA                -0.0204974   -0.0257171   -0.0152777
12-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                -0.0159914   -0.0217529   -0.0102299
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0187830   -0.0206331   -0.0169328
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0145970   -0.0164717   -0.0127223


### Parameter: ATE


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0172548   -0.1526602    0.1181506
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0321828   -0.1766092    0.1122436
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0164276   -0.1083922    0.1412474
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0100424   -0.1308582    0.1509429
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0098138   -0.1136677    0.1332953
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0089716   -0.1760946    0.1940379
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0716874   -0.1954536    0.0520789
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.1156316   -0.2496066    0.0183434
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0757329   -0.2257869    0.0743210
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.1051620   -0.2406560    0.0303320
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.0312256   -0.1613924    0.0989412
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.2654329    0.0029462    0.5279196
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0776751   -0.1911054    0.3464556
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1706924   -0.0849486    0.4263334
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.2032865   -0.0322945    0.4388675
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.0644309   -0.2218260    0.3506877
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.1551632   -0.1306257    0.4409521
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0096238   -0.2952456    0.3144932
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.0355338   -0.1817961    0.2528636
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.0588888   -0.1978813    0.3156589
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0601276   -0.1637930    0.2840482
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.2935959    0.0047688    0.5824231
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0428105   -0.1290450    0.2146660
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.1758574   -0.0063493    0.3580642
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.2153983    0.0233033    0.4074933
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    1                  0.1192247   -0.0930128    0.3314623
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    1                  0.1198417   -0.0496452    0.2893285
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    1                  0.1615217   -0.0223249    0.3453683
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    1                  0.1160429   -0.0772184    0.3093041
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    1                  0.1825766   -0.0236006    0.3887538
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   1                  0.1461187   -0.0537125    0.3459499
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0937284   -0.0590755    0.2465324
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.1666945   -0.0309892    0.3643783
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0013749   -0.1498929    0.1471432
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1039174   -0.2653395    0.0575047
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0041591   -0.1695961    0.1779142
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    1                  0.0112631   -0.1092916    0.1318177
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0836943   -0.0675665    0.2349550
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1063255   -0.2859022    0.0732513
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0430294   -0.1426599    0.2287187
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    1                  0.0310172   -0.1005117    0.1625461
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.1025361   -0.2593724    0.0543003
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.0094028   -0.1607320    0.1419264
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0823923   -0.2962172    0.1314325
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0321789   -0.1195096    0.1838675
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.1176725   -0.0038278    0.2391727
0-3 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0250908   -0.0902226    0.1404042
0-3 months     ki0047075b-MAL-ED          PERU                           5                    1                 -0.1300054   -0.2639596    0.0039487
0-3 months     ki0047075b-MAL-ED          PERU                           6                    1                 -0.0405022   -0.2423512    0.1613469
0-3 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.0115838   -0.1358621    0.1126945
0-3 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0490899   -0.1707491    0.0725693
0-3 months     ki0047075b-MAL-ED          PERU                           9                    1                  0.0459339   -0.0795394    0.1714071
0-3 months     ki0047075b-MAL-ED          PERU                           10                   1                  0.0323101   -0.0913476    0.1559677
0-3 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.0152936   -0.1448630    0.1142759
0-3 months     ki0047075b-MAL-ED          PERU                           12                   1                 -0.0776844   -0.2250615    0.0696928
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.1208875   -0.3427422    0.1009671
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0635164   -0.1962484    0.3232813
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1204418   -0.0784008    0.3192844
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0136720   -0.2598655    0.2325216
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0355832   -0.2370908    0.1659245
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0245475   -0.1704973    0.2195923
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.1101661   -0.0939502    0.3142825
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0599808   -0.1583908    0.2783523
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.1126730   -0.0666672    0.2920132
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0225196   -0.1890675    0.2341066
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1097064   -0.3111601    0.0917473
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0928622   -0.2225919    0.0368675
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0450565   -0.2086300    0.1185171
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0776233   -0.2975295    0.1422830
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.1120756   -0.2637685    0.0396173
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0830238   -0.3181530    0.1521053
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.1967541   -0.3534157   -0.0400925
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0230052   -0.1981470    0.2441574
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0779838   -0.2316551    0.0756875
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0686379   -0.2159331    0.0786573
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0999640   -0.2433890    0.0434611
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.1679196   -0.3044963   -0.0313430
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.2260497   -0.4981700    0.0460705
0-3 months     ki1000108-IRC              INDIA                          3                    1                 -0.2774510   -0.5715470    0.0166450
0-3 months     ki1000108-IRC              INDIA                          4                    1                 -0.3341769   -0.5630477   -0.1053060
0-3 months     ki1000108-IRC              INDIA                          5                    1                 -0.5985174   -0.8233488   -0.3736859
0-3 months     ki1000108-IRC              INDIA                          6                    1                  0.0365729   -0.2171423    0.2902880
0-3 months     ki1000108-IRC              INDIA                          7                    1                 -0.0856136   -0.3021812    0.1309540
0-3 months     ki1000108-IRC              INDIA                          8                    1                 -0.0865854   -0.2918508    0.1186800
0-3 months     ki1000108-IRC              INDIA                          9                    1                  0.0303113   -0.2822374    0.3428601
0-3 months     ki1000108-IRC              INDIA                          10                   1                 -0.0173188   -0.2266277    0.1919900
0-3 months     ki1000108-IRC              INDIA                          11                   1                 -0.0879699   -0.2908692    0.1149295
0-3 months     ki1000108-IRC              INDIA                          12                   1                 -0.1999713   -0.3986684   -0.0012742
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0131930   -0.0449428    0.0185569
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0264216   -0.0984822    0.1513253
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                 -0.0427218   -0.1503792    0.0649356
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.0914403   -0.1367936   -0.0460869
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.0172496   -0.1268408    0.0923416
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.1143973   -0.1846882   -0.0441065
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.0791160   -0.1656253    0.0073933
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.1135886   -0.1747735   -0.0524036
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.0620496   -0.1581931    0.0340938
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                 -0.1039660   -0.1802403   -0.0276918
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                 -0.0677444   -0.1467068    0.0112180
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0275523   -0.1045453    0.1596498
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0240366   -0.1445344    0.0964613
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0599974   -0.1873076    0.0673128
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.1063320   -0.2295190    0.0168549
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0484996   -0.1761445    0.0791452
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.1118675   -0.2488975    0.0251624
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.1628358   -0.3192548   -0.0064167
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.1365284   -0.2721374   -0.0009195
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.0619230   -0.1960591    0.0722131
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0420479   -0.1573992    0.0733033
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0199147   -0.0947594    0.1345888
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    1                  0.1026440    0.0282501    0.1770379
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    1                  0.0252668   -0.0493879    0.0999215
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    1                  0.0748492    0.0047423    0.1449561
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    1                 -0.0072980   -0.0739511    0.0593551
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    1                  0.0290018   -0.0475924    0.1055961
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    1                  0.1245508    0.0347361    0.2143654
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    1                 -0.0011958   -0.0866794    0.0842879
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    1                 -0.0687036   -0.1658173    0.0284100
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   1                 -0.0117562   -0.0860531    0.0625406
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   1                  0.0736916    0.0014859    0.1458973
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   1                  0.0867890    0.0028562    0.1707219
0-3 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         2                    1                  0.0054617   -0.1111720    0.1220953
0-3 months     ki1101329-Keneba           GAMBIA                         3                    1                  0.0073347   -0.0992640    0.1139334
0-3 months     ki1101329-Keneba           GAMBIA                         4                    1                  0.0010187   -0.1160336    0.1180710
0-3 months     ki1101329-Keneba           GAMBIA                         5                    1                 -0.0397823   -0.1664958    0.0869313
0-3 months     ki1101329-Keneba           GAMBIA                         6                    1                 -0.0667353   -0.2098742    0.0764036
0-3 months     ki1101329-Keneba           GAMBIA                         7                    1                 -0.0818254   -0.2146207    0.0509699
0-3 months     ki1101329-Keneba           GAMBIA                         8                    1                 -0.0264255   -0.1465657    0.0937147
0-3 months     ki1101329-Keneba           GAMBIA                         9                    1                 -0.0775009   -0.1894612    0.0344594
0-3 months     ki1101329-Keneba           GAMBIA                         10                   1                 -0.0629668   -0.1704978    0.0445641
0-3 months     ki1101329-Keneba           GAMBIA                         11                   1                  0.0086097   -0.1080213    0.1252407
0-3 months     ki1101329-Keneba           GAMBIA                         12                   1                 -0.0013744   -0.1210306    0.1182818
0-3 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        2                    1                  0.0075726   -0.0455376    0.0606828
0-3 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0453335   -0.0145825    0.1052495
0-3 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.0155540   -0.0531975    0.0843055
0-3 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.0118043   -0.0609043    0.0845129
0-3 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.0758989   -0.0059241    0.1577218
0-3 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0299167   -0.0530152    0.1128487
0-3 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0544912   -0.0348652    0.1438476
0-3 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0304109   -0.0543113    0.1151331
0-3 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0277465   -0.0397976    0.0952906
0-3 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0278062   -0.0395726    0.0951851
0-3 months     ki1119695-PROBIT           BELARUS                        12                   1                  0.0433850   -0.0199100    0.1066799
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0263854   -0.0253030    0.0780739
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0157560   -0.0630493    0.0315372
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.0937796   -0.1430357   -0.0445235
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.1029283   -0.1543240   -0.0515326
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.1939638   -0.2444100   -0.1435175
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.1632536   -0.2115820   -0.1149252
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.1307287   -0.1764669   -0.0849904
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.1317577   -0.1761822   -0.0873331
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.1369611   -0.1845377   -0.0893846
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1169111   -0.1660780   -0.0677441
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0422345   -0.0896428    0.0051737
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0229414   -0.0418849   -0.0039979
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0166950   -0.0361132    0.0027232
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.0036252   -0.0250216    0.0177712
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0048691   -0.0299372    0.0201990
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0112377   -0.0109078    0.0333832
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0177231   -0.0398850    0.0044388
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0430302   -0.0636944   -0.0223661
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.0949280   -0.1152358   -0.0746203
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.0896921   -0.1084328   -0.0709514
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0709661   -0.0889954   -0.0529368
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0251864   -0.0437907   -0.0065821
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.0423822   -0.0890779    0.0043136
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    2                 -0.0497178   -0.0928455   -0.0065901
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0310663   -0.0393754    0.1015080
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 -0.0093086   -0.0877900    0.0691728
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    2                 -0.0654796   -0.1330929    0.0021337
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    2                 -0.1121799   -0.1766130   -0.0477468
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    2                 -0.1288705   -0.1917233   -0.0660176
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   2                 -0.1216866   -0.2083428   -0.0350304
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0103410   -0.1154843    0.0948023
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0222891   -0.1259942    0.0814160
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0536759   -0.1348429    0.0274910
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0474185   -0.0375724    0.1324093
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0103363   -0.0662283    0.0869009
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0354325   -0.1235377    0.0526727
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0031358   -0.1067311    0.1004595
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.0701394   -0.0063238    0.1466026
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0471833   -0.0380627    0.1324292
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.0547742   -0.0312347    0.1407832
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0762722   -0.0062336    0.1587781
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0315153   -0.1510511    0.2140816
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0828479   -0.0974421    0.2631380
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0857288   -0.1151027    0.2865602
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0444042   -0.1176524    0.2064608
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.1032676   -0.3648396    0.1583044
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0602995   -0.2868389    0.1662398
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0697634   -0.1522259    0.2917527
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.1564091   -0.0007114    0.3135296
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0232488   -0.1884159    0.1419183
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0011557   -0.1689189    0.1712302
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0627679   -0.1294656    0.2550014
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0317449   -0.1726578    0.1091681
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0247833   -0.1396936    0.1892602
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                 -0.0882467   -0.2634908    0.0869974
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    1                 -0.0062491   -0.1445603    0.1320621
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    1                 -0.0564726   -0.2017467    0.0888015
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0627519   -0.2296189    0.1041152
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    1                  0.0222871   -0.1123291    0.1569033
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    1                  0.0013638   -0.1521964    0.1549240
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   1                 -0.0249511   -0.1717797    0.1218775
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0388277   -0.0901667    0.1678222
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.0506724   -0.1088914    0.2102362
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1027648   -0.2069378    0.0014081
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1115079   -0.2372257    0.0142098
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.1850507   -0.2792747   -0.0908267
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.1335448   -0.2316359   -0.0354536
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.1436772   -0.2714549   -0.0158995
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1207228   -0.2183411   -0.0231045
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.1206766   -0.2468758    0.0055226
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.0842749   -0.2118682    0.0433184
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0380936   -0.0700905    0.1462777
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0388877   -0.0609539    0.1387293
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0412437   -0.1559428    0.0734555
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0496635   -0.1858207    0.0864938
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.1243597   -0.2629769    0.0142576
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0417553   -0.0844965    0.1680070
3-6 months     ki0047075b-MAL-ED          PERU                           5                    1                  0.1431559   -0.0101254    0.2964372
3-6 months     ki0047075b-MAL-ED          PERU                           6                    1                  0.0694597   -0.0841791    0.2230984
3-6 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.0476800   -0.1786231    0.0832630
3-6 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0392724   -0.1520768    0.0735321
3-6 months     ki0047075b-MAL-ED          PERU                           9                    1                 -0.1686020   -0.3079397   -0.0292644
3-6 months     ki0047075b-MAL-ED          PERU                           10                   1                 -0.0465038   -0.1727505    0.0797429
3-6 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.0479791   -0.1691785    0.0732203
3-6 months     ki0047075b-MAL-ED          PERU                           12                   1                  0.0513581   -0.1030351    0.2057513
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0989714   -0.0648739    0.2628167
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0478160   -0.1866466    0.2822785
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.0127356   -0.2002745    0.1748033
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0090931   -0.1704018    0.1522156
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.1195801   -0.0433325    0.2824928
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0421396   -0.1932268    0.1089477
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0446962   -0.1295596    0.2189520
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.0265247   -0.1675275    0.1144781
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.0638581   -0.2150175    0.0873014
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0057640   -0.1743222    0.1627942
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0814411   -0.2185835    0.0557013
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0166294   -0.1467093    0.1799682
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0401064   -0.2071719    0.1269590
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0822031   -0.2431726    0.0787664
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0816570   -0.0791800    0.2424941
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0279412   -0.1446014    0.2004838
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.1496823   -0.0080237    0.3073882
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0515013   -0.1651901    0.2681928
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.1502889   -0.0188803    0.3194580
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0192824   -0.1724659    0.1339012
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0224146   -0.1749624    0.1301332
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0692290   -0.0876491    0.2261072
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.2533534   -0.4409338   -0.0657730
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.3437243   -0.5426899   -0.1447587
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.1810877   -0.3851379    0.0229624
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.3069962   -0.5032048   -0.1107876
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.2639248   -0.4671279   -0.0607216
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                 -0.2872726   -0.5010540   -0.0734911
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.1019870   -0.4315055    0.2275314
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.1052232   -0.3744624    0.1640160
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.0060274   -0.2385937    0.2506484
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                  0.0789580   -0.1134291    0.2713451
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.0816727   -0.1468897    0.3102351
3-6 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          2                    1                 -0.1029589   -0.2341284    0.0282105
3-6 months     ki1000108-IRC              INDIA                          3                    1                  0.0397393   -0.0916418    0.1711204
3-6 months     ki1000108-IRC              INDIA                          4                    1                 -0.0878389   -0.1944724    0.0187947
3-6 months     ki1000108-IRC              INDIA                          5                    1                 -0.1934722   -0.3190214   -0.0679230
3-6 months     ki1000108-IRC              INDIA                          6                    1                 -0.0491895   -0.1894738    0.0910947
3-6 months     ki1000108-IRC              INDIA                          7                    1                 -0.0333264   -0.1673395    0.1006866
3-6 months     ki1000108-IRC              INDIA                          8                    1                 -0.0382170   -0.1698718    0.0934379
3-6 months     ki1000108-IRC              INDIA                          9                    1                  0.0935317   -0.0470230    0.2340864
3-6 months     ki1000108-IRC              INDIA                          10                   1                  0.0853517   -0.0220146    0.1927180
3-6 months     ki1000108-IRC              INDIA                          11                   1                  0.0036762   -0.1083876    0.1157400
3-6 months     ki1000108-IRC              INDIA                          12                   1                  0.0484131   -0.0543262    0.1511524
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0775438   -0.0077307    0.1628183
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0514490   -0.0393624    0.1422603
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.0611544   -0.0603578    0.1826666
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.0486478   -0.0407008    0.1379963
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.0035147   -0.0759203    0.0829497
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0547650   -0.0569540    0.1664839
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.1267246    0.0331224    0.2203268
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.1046218    0.0043385    0.2049051
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.0955987   -0.0125529    0.2037503
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0652138    0.0238976    0.1065299
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.1203501    0.0599293    0.1807708
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0390689   -0.1444143    0.0662765
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0086451   -0.1036089    0.0863187
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.0191651   -0.0821523    0.1204826
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.0433869   -0.1595659    0.0727921
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0111039   -0.1255491    0.1033412
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.0866782   -0.0140427    0.1873992
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0786910   -0.0481996    0.2055816
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0014127   -0.1009612    0.1037867
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0541380   -0.0554167    0.1636927
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0206323   -0.0684754    0.1097401
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0484460   -0.0430608    0.1399527
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    1                 -0.0589882   -0.1281269    0.0101505
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    1                 -0.0658380   -0.1316695   -0.0000064
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    1                 -0.0474105   -0.1115590    0.0167379
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    1                 -0.0251194   -0.0951186    0.0448797
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    1                  0.0036879   -0.0635571    0.0709329
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    1                  0.0135812   -0.0522934    0.0794557
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    1                 -0.0026331   -0.0891843    0.0839181
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    1                  0.0349948   -0.0491629    0.1191525
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   1                 -0.0472462   -0.1120733    0.0175809
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   1                 -0.0936563   -0.1595036   -0.0278091
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   1                 -0.0386467   -0.1043680    0.0270746
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0409963   -0.0399607    0.1219533
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0026733   -0.0803708    0.0750243
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0880854   -0.1739202   -0.0022506
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0754262   -0.1631042    0.0122518
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0955266   -0.1833173   -0.0077359
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.1046336   -0.1814346   -0.0278326
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.0218632   -0.1013446    0.0576181
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0297946   -0.1063158    0.0467265
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0500142   -0.1252526    0.0252242
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0715693   -0.1457870    0.0026484
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0163145   -0.0936467    0.0610176
3-6 months     ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         2                    1                 -0.1593152   -0.2384508   -0.0801797
3-6 months     ki1101329-Keneba           GAMBIA                         3                    1                 -0.1898728   -0.2626844   -0.1170613
3-6 months     ki1101329-Keneba           GAMBIA                         4                    1                 -0.1598919   -0.2469844   -0.0727994
3-6 months     ki1101329-Keneba           GAMBIA                         5                    1                 -0.1307904   -0.2204563   -0.0411245
3-6 months     ki1101329-Keneba           GAMBIA                         6                    1                 -0.1385971   -0.2338981   -0.0432960
3-6 months     ki1101329-Keneba           GAMBIA                         7                    1                 -0.0988997   -0.1994515    0.0016521
3-6 months     ki1101329-Keneba           GAMBIA                         8                    1                 -0.0828747   -0.1591380   -0.0066115
3-6 months     ki1101329-Keneba           GAMBIA                         9                    1                 -0.0481446   -0.1257165    0.0294273
3-6 months     ki1101329-Keneba           GAMBIA                         10                   1                 -0.0544402   -0.1235797    0.0146994
3-6 months     ki1101329-Keneba           GAMBIA                         11                   1                 -0.0583264   -0.1329951    0.0163423
3-6 months     ki1101329-Keneba           GAMBIA                         12                   1                 -0.0273502   -0.1095454    0.0548451
3-6 months     ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             BANGLADESH                     2                    1                  0.0078347   -0.1054694    0.1211388
3-6 months     ki1114097-CMIN             BANGLADESH                     3                    1                 -0.0028132   -0.1715115    0.1658851
3-6 months     ki1114097-CMIN             BANGLADESH                     4                    1                  0.1092111   -0.0292548    0.2476771
3-6 months     ki1114097-CMIN             BANGLADESH                     5                    1                  0.1599494   -0.0282450    0.3481437
3-6 months     ki1114097-CMIN             BANGLADESH                     6                    1                  0.0794271   -0.0863264    0.2451806
3-6 months     ki1114097-CMIN             BANGLADESH                     7                    1                 -0.0907748   -0.2083097    0.0267601
3-6 months     ki1114097-CMIN             BANGLADESH                     8                    1                 -0.1216921   -0.2690964    0.0257122
3-6 months     ki1114097-CMIN             BANGLADESH                     9                    1                 -0.0281737   -0.1527390    0.0963916
3-6 months     ki1114097-CMIN             BANGLADESH                     10                   1                  0.0464214   -0.0804303    0.1732731
3-6 months     ki1114097-CMIN             BANGLADESH                     11                   1                  0.0523625   -0.0476938    0.1524188
3-6 months     ki1114097-CMIN             BANGLADESH                     12                   1                  0.0415898   -0.0965315    0.1797111
3-6 months     ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CMIN             PERU                           2                    1                  0.0650074   -0.0425141    0.1725289
3-6 months     ki1114097-CMIN             PERU                           3                    1                  0.0932977   -0.0125018    0.1990972
3-6 months     ki1114097-CMIN             PERU                           4                    1                  0.0996862   -0.0030715    0.2024439
3-6 months     ki1114097-CMIN             PERU                           5                    1                  0.0583318   -0.0576660    0.1743295
3-6 months     ki1114097-CMIN             PERU                           6                    1                  0.0502050   -0.0633144    0.1637245
3-6 months     ki1114097-CMIN             PERU                           7                    1                  0.0378837   -0.0773468    0.1531143
3-6 months     ki1114097-CMIN             PERU                           8                    1                  0.0659493   -0.0382568    0.1701554
3-6 months     ki1114097-CMIN             PERU                           9                    1                 -0.0917357   -0.2044188    0.0209475
3-6 months     ki1114097-CMIN             PERU                           10                   1                  0.0318766   -0.0853387    0.1490919
3-6 months     ki1114097-CMIN             PERU                           11                   1                  0.0543700   -0.0654722    0.1742122
3-6 months     ki1114097-CMIN             PERU                           12                   1                 -0.0059063   -0.1294824    0.1176698
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                  0.0055725   -0.0632994    0.0744444
3-6 months     ki1114097-CONTENT          PERU                           3                    1                 -0.0062423   -0.0950991    0.0826145
3-6 months     ki1114097-CONTENT          PERU                           4                    1                 -0.0353716   -0.1237563    0.0530131
3-6 months     ki1114097-CONTENT          PERU                           5                    1                  0.0336308   -0.0618445    0.1291060
3-6 months     ki1114097-CONTENT          PERU                           6                    1                 -0.0521567   -0.1352998    0.0309863
3-6 months     ki1114097-CONTENT          PERU                           7                    1                  0.1066042    0.0306197    0.1825887
3-6 months     ki1114097-CONTENT          PERU                           8                    1                  0.1188082    0.0302092    0.2074071
3-6 months     ki1114097-CONTENT          PERU                           9                    1                  0.1389949    0.0520014    0.2259884
3-6 months     ki1114097-CONTENT          PERU                           10                   1                  0.0931814   -0.0046675    0.1910303
3-6 months     ki1114097-CONTENT          PERU                           11                   1                  0.0156691   -0.1133535    0.1446918
3-6 months     ki1114097-CONTENT          PERU                           12                   1                  0.0263676   -0.0789806    0.1317158
3-6 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        2                    1                 -0.0166647   -0.0583637    0.0250342
3-6 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0386950   -0.0136255    0.0910155
3-6 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.0493713   -0.0045245    0.1032672
3-6 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.0542625   -0.0000613    0.1085863
3-6 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.0227869   -0.0264457    0.0720195
3-6 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0325584   -0.0261370    0.0912538
3-6 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0268855   -0.0328377    0.0866088
3-6 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0440654    0.0014247    0.0867061
3-6 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0217792   -0.0253988    0.0689573
3-6 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0222602   -0.0194273    0.0639477
3-6 months     ki1119695-PROBIT           BELARUS                        12                   1                  0.0011846   -0.0505324    0.0529015
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0298651   -0.0157683    0.0754986
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0214246   -0.0673824    0.0245331
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0623192    0.0180492    0.1065891
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0451179    0.0022893    0.0879465
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.1659377    0.1182361    0.2136393
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.0566770    0.0151994    0.0981546
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.0449964    0.0059056    0.0840872
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.0563353    0.0160093    0.0966613
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.0678849    0.0248575    0.1109124
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0447482    0.0031739    0.0863225
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.0560176    0.0152685    0.0967667
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0259953   -0.0486012   -0.0033895
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0651405   -0.0867181   -0.0435628
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.0755166   -0.0968152   -0.0542179
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0652716   -0.0903678   -0.0401754
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.0871085   -0.1105258   -0.0636912
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0781153   -0.1004501   -0.0557805
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0230218   -0.0439210   -0.0021227
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0224376    0.0011544    0.0437207
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0451873    0.0244994    0.0658752
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0398649    0.0195879    0.0601418
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0108060   -0.0085539    0.0301658
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    2                  0.0918625    0.0327346    0.1509904
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    2                  0.0385614   -0.0234480    0.1005708
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0519093   -0.0103632    0.1141818
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 -0.0132853   -0.1026356    0.0760650
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    2                  0.0137022   -0.0517399    0.0791443
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    2                  0.0819657    0.0209821    0.1429493
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    2                  0.1347776    0.0693050    0.2002502
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   2                  0.1397502    0.0695436    0.2099568
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0059093   -0.0478398    0.0360213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0256371   -0.0168601    0.0681344
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0229937   -0.0681899    0.0222024
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0040310   -0.0422811    0.0503431
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0442603    0.0055530    0.0829675
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0336259   -0.0215581    0.0888098
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.0103552   -0.0314529    0.0521633
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.0098639   -0.0341999    0.0539277
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0133587   -0.0302142    0.0569317
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0136256   -0.0733608    0.0461096
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0095435   -0.0286293    0.0477164
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0949079   -0.1876577   -0.0021582
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0019240   -0.0801851    0.0763370
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0304603   -0.1200717    0.0591512
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0234099   -0.0576434    0.1044631
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.1545188    0.0101242    0.2989134
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.0332618   -0.0708335    0.1373570
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0387246   -0.0393173    0.1167665
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.0932787    0.0080957    0.1784616
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.0462101   -0.0456075    0.1380278
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0227571   -0.0572749    0.1027891
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0234705   -0.0905183    0.1374593
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.0401094   -0.0120215    0.0922402
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.0565273   -0.0052880    0.1183427
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.0202272   -0.0400433    0.0804977
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    1                  0.0672903    0.0125336    0.1220471
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.0170211   -0.0310689    0.0651111
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    1                  0.0570307   -0.0051985    0.1192598
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.0260206   -0.0287103    0.0807515
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.0116505   -0.0444791    0.0677800
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.0167810   -0.0408136    0.0743755
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   1                  0.0051264   -0.0454164    0.0556693
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.0092514   -0.0416985    0.0602013
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0178586   -0.0635899    0.0278727
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0132995   -0.0670067    0.0404078
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0076139   -0.0335707    0.0487985
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.0167652   -0.0272286    0.0607590
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0615666    0.0104120    0.1127213
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0402607   -0.0055185    0.0860400
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0596539    0.0156424    0.1036654
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.0441279   -0.0117790    0.1000348
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0236873   -0.0270985    0.0744732
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0102671   -0.0331821    0.0537163
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.0153386   -0.0276618    0.0583390
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0309541   -0.0205774    0.0824855
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0375837   -0.0230524    0.0982199
6-12 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.0247931   -0.0945869    0.0450008
6-12 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.0079922   -0.0659173    0.0499328
6-12 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0060300   -0.0584535    0.0705135
6-12 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0160868   -0.0666268    0.0344531
6-12 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.0334924   -0.0192235    0.0862084
6-12 months    ki0047075b-MAL-ED          PERU                           9                    1                  0.0473616   -0.0035974    0.0983206
6-12 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.0465618   -0.0395250    0.1326485
6-12 months    ki0047075b-MAL-ED          PERU                           11                   1                 -0.0018731   -0.0514450    0.0476989
6-12 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.0225488   -0.0643347    0.0192372
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0113201   -0.0972166    0.0745765
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0364328   -0.0412898    0.1141554
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.0277851   -0.1198233    0.0642532
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.0533157   -0.0346682    0.1412997
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0494769   -0.1396972    0.0407433
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0064910   -0.0674791    0.0804610
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                 -0.0041103   -0.0893830    0.0811624
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0023983   -0.0674548    0.0722513
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.0017995   -0.0799016    0.0763027
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0222817   -0.0597714    0.1043348
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0162619   -0.0543068    0.0868307
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0104535   -0.0842881    0.0633811
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0420918   -0.0431096    0.1272932
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0279824   -0.0984920    0.0425272
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0154618   -0.0839552    0.0530317
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0070996   -0.0747835    0.0605843
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.0311855   -0.1116978    0.0493269
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.0603957   -0.1670855    0.0462940
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.1023703   -0.1700934   -0.0346471
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0190465   -0.0912339    0.0531409
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0056018   -0.0642141    0.0754176
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0622845   -0.1321515    0.0075825
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                 -0.0861539   -0.2141089    0.0418011
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.0635536   -0.1877364    0.0606292
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.0831747   -0.1911830    0.0248337
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                 -0.0688707   -0.1777712    0.0400298
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.0071523   -0.1229421    0.1086374
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.0186391   -0.0919175    0.1291957
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                  0.0770543   -0.0607207    0.2148293
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                  0.0164475   -0.1092694    0.1421645
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                 -0.0756794   -0.1936986    0.0423397
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.0404619   -0.1471324    0.0662086
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                 -0.0892331   -0.2018108    0.0233446
6-12 months    ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0146176   -0.0419024    0.0711376
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0165587   -0.0679512    0.0348338
6-12 months    ki1000108-IRC              INDIA                          4                    1                  0.0009655   -0.0567499    0.0586809
6-12 months    ki1000108-IRC              INDIA                          5                    1                  0.0351768   -0.0270909    0.0974445
6-12 months    ki1000108-IRC              INDIA                          6                    1                  0.0194791   -0.0387530    0.0777112
6-12 months    ki1000108-IRC              INDIA                          7                    1                  0.0560446   -0.0067646    0.1188539
6-12 months    ki1000108-IRC              INDIA                          8                    1                  0.0218750   -0.0303417    0.0740918
6-12 months    ki1000108-IRC              INDIA                          9                    1                 -0.0018577   -0.0757199    0.0720044
6-12 months    ki1000108-IRC              INDIA                          10                   1                  0.0212329   -0.0259241    0.0683898
6-12 months    ki1000108-IRC              INDIA                          11                   1                  0.0322794   -0.0268946    0.0914533
6-12 months    ki1000108-IRC              INDIA                          12                   1                  0.0299467   -0.0219665    0.0818600
6-12 months    ki1000304-VITAMIN-A        INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-VITAMIN-A        INDIA                          2                    1                  0.0322447    0.0073085    0.0571810
6-12 months    ki1000304-VITAMIN-A        INDIA                          3                    1                  0.0513300    0.0292048    0.0734552
6-12 months    ki1000304-VITAMIN-A        INDIA                          4                    1                  0.0578712    0.0364365    0.0793059
6-12 months    ki1000304-VITAMIN-A        INDIA                          5                    1                  0.0638488    0.0422749    0.0854227
6-12 months    ki1000304-VITAMIN-A        INDIA                          6                    1                  0.0653447    0.0408800    0.0898093
6-12 months    ki1000304-VITAMIN-A        INDIA                          7                    1                  0.0497764    0.0281591    0.0713936
6-12 months    ki1000304-VITAMIN-A        INDIA                          8                    1                  0.0641929    0.0407019    0.0876838
6-12 months    ki1000304-VITAMIN-A        INDIA                          9                    1                  0.0479906    0.0252697    0.0707116
6-12 months    ki1000304-VITAMIN-A        INDIA                          10                   1                  0.0331509    0.0082753    0.0580265
6-12 months    ki1000304-VITAMIN-A        INDIA                          11                   1                  0.0086361   -0.0207925    0.0380647
6-12 months    ki1000304-VITAMIN-A        INDIA                          12                   1                  0.0096214   -0.0126736    0.0319164
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0006804   -0.0208349    0.0194741
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0067568   -0.0479848    0.0614984
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.0097391   -0.0209175    0.0403958
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.0470232   -0.0254422    0.1194885
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.0489897    0.0099306    0.0880488
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0354017   -0.0123857    0.0831891
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.0124757   -0.0544907    0.0295393
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.0107237   -0.0548297    0.0333822
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.0025940   -0.0437696    0.0385816
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0359966    0.0025979    0.0693953
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.0147408   -0.0274491    0.0569306
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0134935   -0.0529120    0.0259251
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0139630   -0.0315126    0.0594385
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.0177335   -0.0225196    0.0579865
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.0162207   -0.0273020    0.0597434
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.0352598   -0.0082325    0.0787521
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.0120493   -0.0293476    0.0534462
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0070300   -0.0313001    0.0453601
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0462232   -0.0037672    0.0962135
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0110592   -0.0342082    0.0563265
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0480335    0.0101266    0.0859403
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0004508   -0.0386104    0.0377087
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          2                    1                  0.0538277    0.0246181    0.0830373
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          3                    1                  0.0323667    0.0050737    0.0596597
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          4                    1                  0.0276687   -0.0003177    0.0556550
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          5                    1                  0.0416147    0.0115768    0.0716527
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          6                    1                  0.0213020   -0.0070017    0.0496057
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          7                    1                  0.0173339   -0.0104819    0.0451497
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          8                    1                 -0.0045890   -0.0344758    0.0252979
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          9                    1                  0.0018256   -0.0316136    0.0352648
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          10                   1                  0.0058862   -0.0216332    0.0334056
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          11                   1                  0.0149338   -0.0131317    0.0429992
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          12                   1                  0.0104100   -0.0167584    0.0375785
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0003213   -0.0522374    0.0515948
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0205096   -0.0281046    0.0691238
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0339198   -0.0210149    0.0888544
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0704325    0.0225245    0.1183405
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0829818    0.0368146    0.1291490
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0933490    0.0475821    0.1391160
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0894997    0.0426299    0.1363694
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0998681    0.0543124    0.1454237
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.0975558    0.0535187    0.1415929
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0689380    0.0278513    0.1100247
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0323866   -0.0120311    0.0768043
6-12 months    ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         2                    1                  0.0047781   -0.0309882    0.0405445
6-12 months    ki1101329-Keneba           GAMBIA                         3                    1                  0.0478946    0.0093613    0.0864278
6-12 months    ki1101329-Keneba           GAMBIA                         4                    1                  0.0297494   -0.0087184    0.0682173
6-12 months    ki1101329-Keneba           GAMBIA                         5                    1                  0.0217404   -0.0149175    0.0583982
6-12 months    ki1101329-Keneba           GAMBIA                         6                    1                  0.0237875   -0.0134388    0.0610138
6-12 months    ki1101329-Keneba           GAMBIA                         7                    1                  0.0103120   -0.0423873    0.0630113
6-12 months    ki1101329-Keneba           GAMBIA                         8                    1                  0.0139959   -0.0233042    0.0512960
6-12 months    ki1101329-Keneba           GAMBIA                         9                    1                 -0.0019887   -0.0376974    0.0337201
6-12 months    ki1101329-Keneba           GAMBIA                         10                   1                 -0.0020885   -0.0380239    0.0338470
6-12 months    ki1101329-Keneba           GAMBIA                         11                   1                  0.0084493   -0.0274808    0.0443793
6-12 months    ki1101329-Keneba           GAMBIA                         12                   1                 -0.0203337   -0.0548696    0.0142023
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                  0.0194181   -0.0544625    0.0932987
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0274207   -0.0237729    0.0786143
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0071263   -0.0442850    0.0585377
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                 -0.0087662   -0.0640141    0.0464817
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                  0.0284685   -0.0412222    0.0981593
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                 -0.0322728   -0.0904089    0.0258632
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                 -0.0231637   -0.1021266    0.0557992
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                 -0.0424331   -0.1060025    0.0211363
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                 -0.0202591   -0.0747777    0.0342594
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                  0.0047674   -0.0481371    0.0576720
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                  0.0032183   -0.0583237    0.0647602
6-12 months    ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0187686   -0.0776213    0.0400842
6-12 months    ki1114097-CMIN             BANGLADESH                     3                    1                  0.0143980   -0.0599270    0.0887231
6-12 months    ki1114097-CMIN             BANGLADESH                     4                    1                 -0.0153442   -0.0748307    0.0441424
6-12 months    ki1114097-CMIN             BANGLADESH                     5                    1                 -0.0166938   -0.0744509    0.0410633
6-12 months    ki1114097-CMIN             BANGLADESH                     6                    1                 -0.0518320   -0.1180574    0.0143935
6-12 months    ki1114097-CMIN             BANGLADESH                     7                    1                  0.0169422   -0.0549598    0.0888443
6-12 months    ki1114097-CMIN             BANGLADESH                     8                    1                  0.1042690    0.0175845    0.1909534
6-12 months    ki1114097-CMIN             BANGLADESH                     9                    1                  0.0674201   -0.0049707    0.1398108
6-12 months    ki1114097-CMIN             BANGLADESH                     10                   1                 -0.0416061   -0.1039969    0.0207847
6-12 months    ki1114097-CMIN             BANGLADESH                     11                   1                 -0.0099898   -0.0737791    0.0537994
6-12 months    ki1114097-CMIN             BANGLADESH                     12                   1                  0.0147000   -0.0555808    0.0849808
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                  0.0095827   -0.1358140    0.1549793
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.0451668   -0.1931104    0.1027767
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.1271072   -0.2896637    0.0354494
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                 -0.1396467   -0.3524977    0.0732043
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 -0.0361122   -0.2067177    0.1344933
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.1414096   -0.3073408    0.0245217
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.1056957   -0.2874508    0.0760595
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                 -0.1042863   -0.2529982    0.0444256
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 -0.1344105   -0.2881221    0.0193011
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.1254972   -0.3155361    0.0645417
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.0600144   -0.2086863    0.0886575
6-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           2                    1                  0.0081239   -0.0408668    0.0571146
6-12 months    ki1114097-CMIN             PERU                           3                    1                  0.0066927   -0.0378800    0.0512654
6-12 months    ki1114097-CMIN             PERU                           4                    1                  0.0110783   -0.0369958    0.0591524
6-12 months    ki1114097-CMIN             PERU                           5                    1                  0.0020518   -0.0465620    0.0506655
6-12 months    ki1114097-CMIN             PERU                           6                    1                 -0.0019392   -0.0535045    0.0496260
6-12 months    ki1114097-CMIN             PERU                           7                    1                  0.0169714   -0.0365036    0.0704464
6-12 months    ki1114097-CMIN             PERU                           8                    1                 -0.0117927   -0.0542394    0.0306539
6-12 months    ki1114097-CMIN             PERU                           9                    1                 -0.0340478   -0.0846529    0.0165573
6-12 months    ki1114097-CMIN             PERU                           10                   1                 -0.0274727   -0.0781006    0.0231552
6-12 months    ki1114097-CMIN             PERU                           11                   1                  0.0047984   -0.0445733    0.0541701
6-12 months    ki1114097-CMIN             PERU                           12                   1                 -0.0008129   -0.0591839    0.0575582
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                 -0.0005724   -0.0784675    0.0773228
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0260993   -0.0471961    0.0993947
6-12 months    ki1114097-CONTENT          PERU                           4                    1                 -0.0028411   -0.0803873    0.0747050
6-12 months    ki1114097-CONTENT          PERU                           5                    1                  0.0048631   -0.0858874    0.0956136
6-12 months    ki1114097-CONTENT          PERU                           6                    1                 -0.0193514   -0.1030913    0.0643884
6-12 months    ki1114097-CONTENT          PERU                           7                    1                 -0.0025650   -0.0778751    0.0727451
6-12 months    ki1114097-CONTENT          PERU                           8                    1                 -0.0115764   -0.0895667    0.0664140
6-12 months    ki1114097-CONTENT          PERU                           9                    1                 -0.0195945   -0.0996280    0.0604391
6-12 months    ki1114097-CONTENT          PERU                           10                   1                  0.0010407   -0.0791528    0.0812342
6-12 months    ki1114097-CONTENT          PERU                           11                   1                  0.0294720   -0.0556411    0.1145850
6-12 months    ki1114097-CONTENT          PERU                           12                   1                 -0.0404370   -0.1231964    0.0423223
6-12 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        2                    1                 -0.0012150   -0.0233102    0.0208802
6-12 months    ki1119695-PROBIT           BELARUS                        3                    1                 -0.0145889   -0.0415790    0.0124011
6-12 months    ki1119695-PROBIT           BELARUS                        4                    1                 -0.0343614   -0.0585250   -0.0101978
6-12 months    ki1119695-PROBIT           BELARUS                        5                    1                 -0.0355383   -0.0600509   -0.0110257
6-12 months    ki1119695-PROBIT           BELARUS                        6                    1                 -0.0322834   -0.0559412   -0.0086257
6-12 months    ki1119695-PROBIT           BELARUS                        7                    1                 -0.0315433   -0.0650800    0.0019933
6-12 months    ki1119695-PROBIT           BELARUS                        8                    1                 -0.0367308   -0.0644709   -0.0089907
6-12 months    ki1119695-PROBIT           BELARUS                        9                    1                 -0.0298122   -0.0564814   -0.0031430
6-12 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0260874   -0.0492674   -0.0029074
6-12 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0213787   -0.0473126    0.0045552
6-12 months    ki1119695-PROBIT           BELARUS                        12                   1                 -0.0101385   -0.0340952    0.0138181
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0046698   -0.0268278    0.0174882
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0044113   -0.0202622    0.0290849
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0143899   -0.0075639    0.0363437
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0025044   -0.0208034    0.0258123
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.0232200   -0.0464775    0.0000375
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0242323   -0.0455849   -0.0028797
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0103774   -0.0314226    0.0106677
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0175173   -0.0385776    0.0035430
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.0200640   -0.0421219    0.0019940
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.0046615   -0.0244497    0.0151267
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0001175   -0.0218930    0.0216580
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    1                 -0.0320712   -0.0693814    0.0052389
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3                    1                  0.0336442   -0.0018600    0.0691484
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         4                    1                 -0.0186779   -0.0571241    0.0197683
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         5                    1                 -0.0377554   -0.0759188    0.0004080
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         6                    1                  0.0086082   -0.0316714    0.0488879
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         7                    1                  0.0103698   -0.0274946    0.0482342
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         8                    1                 -0.0207978   -0.0544764    0.0128808
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         9                    1                 -0.0332111   -0.0645416   -0.0018807
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         10                   1                 -0.0177692   -0.0501541    0.0146157
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         11                   1                 -0.0009752   -0.0313277    0.0293774
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         12                   1                 -0.0170185   -0.0548277    0.0207906
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2                    1                 -0.0087922   -0.0579498    0.0403655
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         3                    1                  0.0300830   -0.0162238    0.0763898
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         4                    1                  0.0004842   -0.0507970    0.0517654
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         5                    1                  0.0599531    0.0068542    0.1130520
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         6                    1                  0.0470061   -0.0016476    0.0956598
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         7                    1                  0.0155849   -0.0326024    0.0637723
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         8                    1                  0.0466898    0.0024498    0.0909298
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         9                    1                  0.0130752   -0.0380378    0.0641882
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         10                   1                  0.0656020    0.0151147    0.1160892
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         11                   1                  0.0077847   -0.0399287    0.0554981
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         12                   1                  0.0206328   -0.0345144    0.0757800
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0550556    0.0046501    0.1054611
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    1                  0.0344621   -0.0128918    0.0818161
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    1                  0.0704872    0.0143772    0.1265972
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    1                  0.0277157   -0.0251365    0.0805679
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    1                  0.0051165   -0.0466845    0.0569174
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    1                  0.0587981    0.0064185    0.1111777
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    1                  0.0444162   -0.0054487    0.0942811
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    1                  0.0790625    0.0188876    0.1392373
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.0299397   -0.0200801    0.0799596
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   1                  0.0325727   -0.0219990    0.0871444
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   1                  0.0168847   -0.0385817    0.0723512
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0115292    0.0000128    0.0230457
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0304723    0.0180829    0.0428616
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0368954    0.0262511    0.0475398
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0450688    0.0318960    0.0582416
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0449141    0.0328370    0.0569912
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0496380    0.0365213    0.0627547
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0440637    0.0317105    0.0564169
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0348621    0.0221940    0.0475301
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0316626    0.0205661    0.0427592
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0212922    0.0102045    0.0323798
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0128599    0.0012995    0.0244203
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.0000134   -0.0313196    0.0312929
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    2                  0.0047885   -0.0267849    0.0363619
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0094370   -0.0227551    0.0416291
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    2                  0.0135105   -0.0196896    0.0467106
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    2                  0.0300947   -0.0022723    0.0624618
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    2                  0.0144390   -0.0180639    0.0469420
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    2                  0.0060034   -0.0253496    0.0373565
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   2                  0.0074671   -0.0273198    0.0422539
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0166629   -0.0464230    0.0130972
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0245130   -0.0539480    0.0049220
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0013648   -0.0295658    0.0268362
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0175188   -0.0505342    0.0154966
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0432149   -0.0764694   -0.0099603
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0011942   -0.0274053    0.0297937
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0038930   -0.0341096    0.0263237
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0245343   -0.0542395    0.0051709
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0013285   -0.0286233    0.0259663
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0027433   -0.0336852    0.0281985
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.0158422   -0.0428222    0.0111379
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0021774   -0.0398673    0.0442222
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0055093   -0.0449798    0.0559983
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0392677   -0.0216707    0.1002061
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0010243   -0.0445768    0.0466255
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.0596986   -0.1104959   -0.0089013
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0168678   -0.0611883    0.0274528
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.0451044   -0.0839486   -0.0062602
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.0251902   -0.0656490    0.0152687
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0218434   -0.0735703    0.0298835
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.0094048   -0.0634562    0.0446466
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                 -0.0388506   -0.0963011    0.0186000
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0038059   -0.0305591    0.0229473
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0006002   -0.0284115    0.0296119
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0067044   -0.0217739    0.0351827
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.0035043   -0.0333643    0.0263558
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.0214103   -0.0040975    0.0469181
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.0080572   -0.0198311    0.0359455
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    1                  0.0032104   -0.0200140    0.0264349
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    1                  0.0086177   -0.0172854    0.0345209
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.0025345   -0.0216887    0.0267577
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   1                  0.0191280   -0.0053990    0.0436550
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.0184695   -0.0048028    0.0417418
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0036105   -0.0261347    0.0189137
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0132829   -0.0364510    0.0098853
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0019427   -0.0230869    0.0192016
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0103854   -0.0288616    0.0080908
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.0177746   -0.0474248    0.0118756
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0058301   -0.0168807    0.0285410
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.0125187   -0.0342087    0.0091713
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.0088983   -0.0372045    0.0194080
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.0154305   -0.0382620    0.0074009
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.0117800   -0.0339355    0.0103755
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                  0.0008442   -0.0235234    0.0252118
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                 -0.0011187   -0.0239769    0.0217396
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                 -0.0062447   -0.0346310    0.0221416
12-24 months   ki0047075b-MAL-ED          PERU                           4                    1                 -0.0171302   -0.0478860    0.0136256
12-24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0019476   -0.0257204    0.0296155
12-24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.0088004   -0.0228359    0.0404367
12-24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.0113824   -0.0221614    0.0449261
12-24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.0127747   -0.0256938    0.0512432
12-24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.0092651   -0.0204458    0.0389760
12-24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.0071001   -0.0222392    0.0364395
12-24 months   ki0047075b-MAL-ED          PERU                           11                   1                  0.0207135   -0.0077581    0.0491851
12-24 months   ki0047075b-MAL-ED          PERU                           12                   1                 -0.0070085   -0.0366295    0.0226125
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0212640   -0.0656352    0.0231072
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0140093   -0.0551816    0.0271630
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0270424   -0.0113671    0.0654519
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0259189   -0.0680620    0.0162243
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.0135415   -0.0223136    0.0493965
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0015031   -0.0328367    0.0298306
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0009916   -0.0457375    0.0477208
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0140532   -0.0200654    0.0481718
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0045550   -0.0311034    0.0402133
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0105057   -0.0448722    0.0238608
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0068505   -0.0386854    0.0249843
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0068375   -0.0330278    0.0467027
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0091363   -0.0469974    0.0287249
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0038846   -0.0536149    0.0458456
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0017149   -0.0395034    0.0429333
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0017885   -0.0429359    0.0393589
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0208370   -0.0221009    0.0637748
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0386394   -0.0043010    0.0815798
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0395754   -0.0013205    0.0804712
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0018546   -0.0457665    0.0420573
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0187558   -0.0558361    0.0183245
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0238095   -0.0132237    0.0608426
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          2                    1                  0.0434494   -0.0065400    0.0934388
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          3                    1                 -0.0105214   -0.0557629    0.0347202
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          4                    1                 -0.0131474   -0.0515138    0.0252191
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          5                    1                  0.0105906   -0.0359145    0.0570957
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          6                    1                 -0.0032951   -0.0546181    0.0480278
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          7                    1                  0.0192805   -0.0285631    0.0671241
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          8                    1                 -0.0367876   -0.1015260    0.0279507
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          9                    1                 -0.0207161   -0.0724155    0.0309834
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          10                   1                  0.0001215   -0.0393615    0.0396044
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          11                   1                 -0.0323601   -0.0724222    0.0077020
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          12                   1                  0.0168307   -0.0235882    0.0572496
12-24 months   ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0235233   -0.0130409    0.0600876
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0011329   -0.0352717    0.0330060
12-24 months   ki1000108-IRC              INDIA                          4                    1                  0.0198578   -0.0307814    0.0704970
12-24 months   ki1000108-IRC              INDIA                          5                    1                 -0.0064427   -0.0423039    0.0294185
12-24 months   ki1000108-IRC              INDIA                          6                    1                 -0.0218620   -0.0575466    0.0138226
12-24 months   ki1000108-IRC              INDIA                          7                    1                 -0.0309303   -0.0660172    0.0041565
12-24 months   ki1000108-IRC              INDIA                          8                    1                 -0.0147583   -0.0455058    0.0159893
12-24 months   ki1000108-IRC              INDIA                          9                    1                 -0.0251871   -0.0658770    0.0155028
12-24 months   ki1000108-IRC              INDIA                          10                   1                 -0.0134293   -0.0448818    0.0180233
12-24 months   ki1000108-IRC              INDIA                          11                   1                  0.0077538   -0.0255854    0.0410930
12-24 months   ki1000108-IRC              INDIA                          12                   1                  0.0102969   -0.0210334    0.0416272
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0068906   -0.0273675    0.0135864
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0143952   -0.0365434    0.0077530
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0271728   -0.0488387   -0.0055068
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.0326238   -0.0563154   -0.0089321
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0215527   -0.0473281    0.0042228
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.0131437   -0.0357382    0.0094509
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.0071938   -0.0366339    0.0222464
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.0049447   -0.0279236    0.0180342
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.0113812   -0.0357832    0.0130208
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0112611   -0.0344079    0.0118856
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0125862   -0.0334406    0.0082682
12-24 months   ki1101329-Keneba           GAMBIA                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         2                    1                 -0.0119738   -0.0292075    0.0052600
12-24 months   ki1101329-Keneba           GAMBIA                         3                    1                 -0.0205655   -0.0383309   -0.0028000
12-24 months   ki1101329-Keneba           GAMBIA                         4                    1                 -0.0191530   -0.0342227   -0.0040832
12-24 months   ki1101329-Keneba           GAMBIA                         5                    1                 -0.0204420   -0.0357861   -0.0050979
12-24 months   ki1101329-Keneba           GAMBIA                         6                    1                 -0.0240271   -0.0443315   -0.0037228
12-24 months   ki1101329-Keneba           GAMBIA                         7                    1                 -0.0159036   -0.0356447    0.0038376
12-24 months   ki1101329-Keneba           GAMBIA                         8                    1                 -0.0083598   -0.0239919    0.0072724
12-24 months   ki1101329-Keneba           GAMBIA                         9                    1                 -0.0110062   -0.0267726    0.0047602
12-24 months   ki1101329-Keneba           GAMBIA                         10                   1                 -0.0029587   -0.0203095    0.0143921
12-24 months   ki1101329-Keneba           GAMBIA                         11                   1                 -0.0125789   -0.0318283    0.0066705
12-24 months   ki1101329-Keneba           GAMBIA                         12                   1                 -0.0056151   -0.0223071    0.0110769
12-24 months   ki1113344-GMS-Nepal        NEPAL                          6                    6                  0.0000000    0.0000000    0.0000000
12-24 months   ki1113344-GMS-Nepal        NEPAL                          7                    6                 -0.0040496   -0.0210302    0.0129310
12-24 months   ki1113344-GMS-Nepal        NEPAL                          8                    6                  0.0095478   -0.0079848    0.0270804
12-24 months   ki1114097-CMIN             BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             BANGLADESH                     2                    1                 -0.0211959   -0.0593483    0.0169564
12-24 months   ki1114097-CMIN             BANGLADESH                     3                    1                  0.0098090   -0.0294028    0.0490208
12-24 months   ki1114097-CMIN             BANGLADESH                     4                    1                 -0.0274660   -0.0635605    0.0086284
12-24 months   ki1114097-CMIN             BANGLADESH                     5                    1                 -0.0103182   -0.0517228    0.0310864
12-24 months   ki1114097-CMIN             BANGLADESH                     6                    1                 -0.0509757   -0.0960510   -0.0059003
12-24 months   ki1114097-CMIN             BANGLADESH                     7                    1                  0.0071508   -0.0461747    0.0604764
12-24 months   ki1114097-CMIN             BANGLADESH                     8                    1                 -0.0280252   -0.0708984    0.0148480
12-24 months   ki1114097-CMIN             BANGLADESH                     9                    1                 -0.0030978   -0.0477611    0.0415656
12-24 months   ki1114097-CMIN             BANGLADESH                     10                   1                 -0.0273640   -0.0687613    0.0140334
12-24 months   ki1114097-CMIN             BANGLADESH                     11                   1                 -0.0214899   -0.0639704    0.0209905
12-24 months   ki1114097-CMIN             BANGLADESH                     12                   1                 -0.0151315   -0.0503653    0.0201023
12-24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 -0.0283083   -0.0979885    0.0413719
12-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 -0.0132542   -0.0869979    0.0604896
12-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 -0.0169053   -0.0817633    0.0479527
12-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 -0.0297066   -0.1183313    0.0589180
12-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0164322   -0.0831395    0.0502750
12-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0255842   -0.1047879    0.0536195
12-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 -0.0049223   -0.0698766    0.0600320
12-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 -0.0208449   -0.0968185    0.0551287
12-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 -0.0444114   -0.1106410    0.0218181
12-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 -0.0393772   -0.1090045    0.0302502
12-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 -0.0412838   -0.0732541   -0.0093134
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    1                  0.0335522    0.0046145    0.0624899
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3                    1                  0.0094894   -0.0187640    0.0377427
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         4                    1                 -0.0051008   -0.0424553    0.0322536
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         5                    1                  0.0200991   -0.0146851    0.0548833
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         6                    1                  0.0187737   -0.0095992    0.0471466
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         7                    1                  0.0145288   -0.0126251    0.0416827
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         8                    1                  0.0199848   -0.0069285    0.0468980
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         9                    1                  0.0127850   -0.0155892    0.0411593
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         10                   1                  0.0090097   -0.0184160    0.0364355
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         11                   1                  0.0159179   -0.0109179    0.0427536
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         12                   1                  0.0270300   -0.0016022    0.0556623
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2                    1                 -0.0016152   -0.0263751    0.0231447
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         3                    1                 -0.0150683   -0.0387448    0.0086082
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         4                    1                 -0.0103052   -0.0313246    0.0107142
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         5                    1                 -0.0212303   -0.0469007    0.0044401
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         6                    1                 -0.0177458   -0.0483671    0.0128754
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         7                    1                 -0.0376387   -0.0615522   -0.0137253
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         8                    1                 -0.0178074   -0.0413768    0.0057620
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         9                    1                 -0.0079228   -0.0342751    0.0184294
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         10                   1                 -0.0097234   -0.0367877    0.0173410
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         11                   1                 -0.0030066   -0.0268277    0.0208145
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         12                   1                 -0.0089193   -0.0356416    0.0178029
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                 -0.0049546   -0.0331089    0.0231997
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                 -0.0015271   -0.0327595    0.0297054
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                 -0.0187155   -0.0546723    0.0172412
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0269863   -0.0569319    0.0029592
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0085364   -0.0463132    0.0292404
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                 -0.0246513   -0.0533785    0.0040758
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                 -0.0099776   -0.0363051    0.0163498
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                 -0.0225733   -0.0555994    0.0104528
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                 -0.0191593   -0.0470704    0.0087518
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                 -0.0081007   -0.0342249    0.0180235
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                 -0.0292860   -0.0589971    0.0004252
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0030565   -0.0068963    0.0130092
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0016258   -0.0072776    0.0105292
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0041611   -0.0046778    0.0130000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0031455   -0.0068002    0.0130912
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0011103   -0.0079120    0.0101327
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0024325   -0.0059077    0.0107727
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0061928   -0.0028496    0.0152353
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0057446   -0.0033745    0.0148637
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0096632    0.0009667    0.0183596
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0113106    0.0031827    0.0194385
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0085730    0.0000937    0.0170523
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.0030777   -0.0092516    0.0030963
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    2                  0.0024514   -0.0042975    0.0092004
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0023866   -0.0044608    0.0092340
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    2                  0.0049241   -0.0026408    0.0124890
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    2                  0.0051287   -0.0022794    0.0125368
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    2                  0.0040376   -0.0024649    0.0105400
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    2                  0.0018260   -0.0044077    0.0080596
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   2                  0.0078955   -0.0030369    0.0188280
