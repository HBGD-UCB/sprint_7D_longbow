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

**Intervention Variable:** month

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                     country                        month    n_cell       n
-------------  --------------------------  -----------------------------  ------  -------  ------
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     1            19     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     2            20     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     3            26     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     4            21     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     5            21     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     6             8     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     7            20     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     8            24     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     9            22     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     10           21     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     11           14     244
0-3 months     ki0047075b-MAL-ED           BANGLADESH                     12           28     244
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     1            16     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     2            19     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     3            22     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     4            21     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     5            20     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     6             7     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     7            19     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     8            22     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     9            22     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     10           21     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     11           15     231
3-6 months     ki0047075b-MAL-ED           BANGLADESH                     12           27     231
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     1            15     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     2            18     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     3            20     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     4            21     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     5            19     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     6             6     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     7            19     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     8            21     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     9            21     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     10           21     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     11           12     220
6-12 months    ki0047075b-MAL-ED           BANGLADESH                     12           27     220
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     1            13     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     2            16     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     3            20     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     4            20     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     5            17     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     6             5     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     7            20     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     8            21     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     9            19     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     10           20     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     11            9     206
12-24 months   ki0047075b-MAL-ED           BANGLADESH                     12           26     206
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     6             1      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     7             8      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     8            27      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     9             1      38
12-24 months   ki1000110-WASH-Bangladesh   BANGLADESH                     12            1      38
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     1            59     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     2            52     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     3            52     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     4            48     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     5            44     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     6            41     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     7            43     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     8            40     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     9            30     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     10           55     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     11           52     566
0-3 months     ki1017093-NIH-Birth         BANGLADESH                     12           50     566
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     1            48     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     2            48     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     3            47     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     4            43     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     5            40     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     6            38     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     7            43     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     8            37     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     9            30     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     10           50     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     11           49     523
3-6 months     ki1017093-NIH-Birth         BANGLADESH                     12           50     523
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     1            44     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     2            41     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     3            45     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     4            39     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     5            36     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     6            35     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     7            41     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     8            33     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     9            24     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     10           47     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     11           48     482
6-12 months    ki1017093-NIH-Birth         BANGLADESH                     12           49     482
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     1            41     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     2            35     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     3            41     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     4            33     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     5            34     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     6            29     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     7            35     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     8            30     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     9            17     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     10           40     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     11           41     421
12-24 months   ki1017093-NIH-Birth         BANGLADESH                     12           45     421
3-6 months     ki1114097-CMIN              BANGLADESH                     1            17     185
3-6 months     ki1114097-CMIN              BANGLADESH                     2            18     185
3-6 months     ki1114097-CMIN              BANGLADESH                     3            14     185
3-6 months     ki1114097-CMIN              BANGLADESH                     4            16     185
3-6 months     ki1114097-CMIN              BANGLADESH                     5            14     185
3-6 months     ki1114097-CMIN              BANGLADESH                     6             8     185
3-6 months     ki1114097-CMIN              BANGLADESH                     7            13     185
3-6 months     ki1114097-CMIN              BANGLADESH                     8            11     185
3-6 months     ki1114097-CMIN              BANGLADESH                     9            13     185
3-6 months     ki1114097-CMIN              BANGLADESH                     10           21     185
3-6 months     ki1114097-CMIN              BANGLADESH                     11           22     185
3-6 months     ki1114097-CMIN              BANGLADESH                     12           18     185
6-12 months    ki1114097-CMIN              BANGLADESH                     1            16     164
6-12 months    ki1114097-CMIN              BANGLADESH                     2            15     164
6-12 months    ki1114097-CMIN              BANGLADESH                     3             8     164
6-12 months    ki1114097-CMIN              BANGLADESH                     4            19     164
6-12 months    ki1114097-CMIN              BANGLADESH                     5            13     164
6-12 months    ki1114097-CMIN              BANGLADESH                     6             6     164
6-12 months    ki1114097-CMIN              BANGLADESH                     7             9     164
6-12 months    ki1114097-CMIN              BANGLADESH                     8             9     164
6-12 months    ki1114097-CMIN              BANGLADESH                     9            15     164
6-12 months    ki1114097-CMIN              BANGLADESH                     10           19     164
6-12 months    ki1114097-CMIN              BANGLADESH                     11           18     164
6-12 months    ki1114097-CMIN              BANGLADESH                     12           17     164
12-24 months   ki1114097-CMIN              BANGLADESH                     1            14     138
12-24 months   ki1114097-CMIN              BANGLADESH                     2            15     138
12-24 months   ki1114097-CMIN              BANGLADESH                     3             9     138
12-24 months   ki1114097-CMIN              BANGLADESH                     4            13     138
12-24 months   ki1114097-CMIN              BANGLADESH                     5            10     138
12-24 months   ki1114097-CMIN              BANGLADESH                     6             6     138
12-24 months   ki1114097-CMIN              BANGLADESH                     7             7     138
12-24 months   ki1114097-CMIN              BANGLADESH                     8             9     138
12-24 months   ki1114097-CMIN              BANGLADESH                     9            12     138
12-24 months   ki1114097-CMIN              BANGLADESH                     10           14     138
12-24 months   ki1114097-CMIN              BANGLADESH                     11           16     138
12-24 months   ki1114097-CMIN              BANGLADESH                     12           13     138
0-3 months     ki1114097-CMIN              BANGLADESH                     1             5      43
0-3 months     ki1114097-CMIN              BANGLADESH                     2             4      43
0-3 months     ki1114097-CMIN              BANGLADESH                     3             3      43
0-3 months     ki1114097-CMIN              BANGLADESH                     4             4      43
0-3 months     ki1114097-CMIN              BANGLADESH                     5             6      43
0-3 months     ki1114097-CMIN              BANGLADESH                     6             2      43
0-3 months     ki1114097-CMIN              BANGLADESH                     7             7      43
0-3 months     ki1114097-CMIN              BANGLADESH                     8             4      43
0-3 months     ki1114097-CMIN              BANGLADESH                     9             3      43
0-3 months     ki1114097-CMIN              BANGLADESH                     11            2      43
0-3 months     ki1114097-CMIN              BANGLADESH                     12            3      43
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     1          1937   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     2          1605   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     3          1838   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     4          1335   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     5           953   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     6           928   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     7          1164   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     8          1477   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     9          1980   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     10         2149   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     11         2258   20045
0-3 months     kiGH5241-JiVitA-3           BANGLADESH                     12         2421   20045
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     1          1051   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     2           964   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     3           983   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     4           881   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     5           762   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     6           820   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     7           964   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     8          1069   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     9          1169   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     10         1296   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     11         1352   12580
3-6 months     kiGH5241-JiVitA-3           BANGLADESH                     12         1269   12580
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     1           829    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     2           823    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     3           838    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     4           786    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     5           698    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     6           686    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     7           701    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     8           734    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     9           798    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     10          975    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     11         1010    9839
6-12 months    kiGH5241-JiVitA-3           BANGLADESH                     12          961    9839
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     1           405    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     2           372    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     3           427    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     4           336    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     5           241    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     6           271    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     7           310    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     8           347    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     9           356    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     10          473    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     11          524    4653
12-24 months   kiGH5241-JiVitA-3           BANGLADESH                     12          591    4653
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     2           303    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     3           326    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     4           398    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     5           193    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     6            57    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     7           134    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     8           179    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     9           135    1807
0-3 months     kiGH5241-JiVitA-4           BANGLADESH                     10           82    1807
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     1            26    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     2            20    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     3           238    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     4           568    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     5           461    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     6           319    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     7           535    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     8           358    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     9           276    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     10          209    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     11          105    3160
6-12 months    kiGH5241-JiVitA-4           BANGLADESH                     12           45    3160
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     1            30    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     2           229    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     3           280    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     4           601    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     5           468    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     6           361    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     7           638    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     8           364    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     9           321    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     10          193    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     11          107    3637
12-24 months   kiGH5241-JiVitA-4           BANGLADESH                     12           45    3637
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     1            14    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     2            18    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     3           223    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     4           499    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     5           223    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     6            66    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     7           207    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     8           198    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     9           156    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     10          147    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     11           62    1840
3-6 months     kiGH5241-JiVitA-4           BANGLADESH                     12           27    1840
0-3 months     ki1119695-PROBIT            BELARUS                        1           781   12745
0-3 months     ki1119695-PROBIT            BELARUS                        2           739   12745
0-3 months     ki1119695-PROBIT            BELARUS                        3           904   12745
0-3 months     ki1119695-PROBIT            BELARUS                        4           898   12745
0-3 months     ki1119695-PROBIT            BELARUS                        5           886   12745
0-3 months     ki1119695-PROBIT            BELARUS                        6           928   12745
0-3 months     ki1119695-PROBIT            BELARUS                        7          1199   12745
0-3 months     ki1119695-PROBIT            BELARUS                        8          1233   12745
0-3 months     ki1119695-PROBIT            BELARUS                        9          1162   12745
0-3 months     ki1119695-PROBIT            BELARUS                        10         1362   12745
0-3 months     ki1119695-PROBIT            BELARUS                        11         1264   12745
0-3 months     ki1119695-PROBIT            BELARUS                        12         1389   12745
3-6 months     ki1119695-PROBIT            BELARUS                        1           862   13309
3-6 months     ki1119695-PROBIT            BELARUS                        2           812   13309
3-6 months     ki1119695-PROBIT            BELARUS                        3           945   13309
3-6 months     ki1119695-PROBIT            BELARUS                        4           935   13309
3-6 months     ki1119695-PROBIT            BELARUS                        5           955   13309
3-6 months     ki1119695-PROBIT            BELARUS                        6           908   13309
3-6 months     ki1119695-PROBIT            BELARUS                        7          1234   13309
3-6 months     ki1119695-PROBIT            BELARUS                        8          1234   13309
3-6 months     ki1119695-PROBIT            BELARUS                        9          1232   13309
3-6 months     ki1119695-PROBIT            BELARUS                        10         1397   13309
3-6 months     ki1119695-PROBIT            BELARUS                        11         1356   13309
3-6 months     ki1119695-PROBIT            BELARUS                        12         1439   13309
6-12 months    ki1119695-PROBIT            BELARUS                        1           837   12896
6-12 months    ki1119695-PROBIT            BELARUS                        2           779   12896
6-12 months    ki1119695-PROBIT            BELARUS                        3           875   12896
6-12 months    ki1119695-PROBIT            BELARUS                        4           897   12896
6-12 months    ki1119695-PROBIT            BELARUS                        5           938   12896
6-12 months    ki1119695-PROBIT            BELARUS                        6           873   12896
6-12 months    ki1119695-PROBIT            BELARUS                        7          1184   12896
6-12 months    ki1119695-PROBIT            BELARUS                        8          1200   12896
6-12 months    ki1119695-PROBIT            BELARUS                        9          1217   12896
6-12 months    ki1119695-PROBIT            BELARUS                        10         1375   12896
6-12 months    ki1119695-PROBIT            BELARUS                        11         1332   12896
6-12 months    ki1119695-PROBIT            BELARUS                        12         1389   12896
12-24 months   ki1119695-PROBIT            BELARUS                        1           186    2533
12-24 months   ki1119695-PROBIT            BELARUS                        2           119    2533
12-24 months   ki1119695-PROBIT            BELARUS                        3           192    2533
12-24 months   ki1119695-PROBIT            BELARUS                        4           200    2533
12-24 months   ki1119695-PROBIT            BELARUS                        5           218    2533
12-24 months   ki1119695-PROBIT            BELARUS                        6           169    2533
12-24 months   ki1119695-PROBIT            BELARUS                        7           219    2533
12-24 months   ki1119695-PROBIT            BELARUS                        8           212    2533
12-24 months   ki1119695-PROBIT            BELARUS                        9           239    2533
12-24 months   ki1119695-PROBIT            BELARUS                        10          239    2533
12-24 months   ki1119695-PROBIT            BELARUS                        11          243    2533
12-24 months   ki1119695-PROBIT            BELARUS                        12          297    2533
0-3 months     ki0047075b-MAL-ED           BRAZIL                         1             9     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         2            21     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         3            15     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         4             8     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         5            17     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         6             6     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         7            15     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         8            17     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         9            27     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         10           18     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         11           15     180
0-3 months     ki0047075b-MAL-ED           BRAZIL                         12           12     180
3-6 months     ki0047075b-MAL-ED           BRAZIL                         1            13     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         2            24     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         3            17     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         4            11     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         5            21     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         6             7     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         7            17     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         8            16     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         9            29     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         10           20     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         11           18     208
3-6 months     ki0047075b-MAL-ED           BRAZIL                         12           15     208
6-12 months    ki0047075b-MAL-ED           BRAZIL                         1            13     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         2            22     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         3            17     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         4            10     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         5            20     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         6             6     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         7            17     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         8            13     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         9            27     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         10           17     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         11           18     194
6-12 months    ki0047075b-MAL-ED           BRAZIL                         12           14     194
12-24 months   ki0047075b-MAL-ED           BRAZIL                         1            11     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         2            17     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         3            15     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         4            10     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         5            15     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         6             5     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         7            11     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         8            13     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         9            25     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         10           14     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         11           15     165
12-24 months   ki0047075b-MAL-ED           BRAZIL                         12           14     165
12-24 months   ki1000107-Serrinha-VitA     BRAZIL                         12           13      13
0-3 months     ki1114097-CMIN              BRAZIL                         1             6      81
0-3 months     ki1114097-CMIN              BRAZIL                         2             6      81
0-3 months     ki1114097-CMIN              BRAZIL                         3            10      81
0-3 months     ki1114097-CMIN              BRAZIL                         4             6      81
0-3 months     ki1114097-CMIN              BRAZIL                         5             4      81
0-3 months     ki1114097-CMIN              BRAZIL                         6             5      81
0-3 months     ki1114097-CMIN              BRAZIL                         7             3      81
0-3 months     ki1114097-CMIN              BRAZIL                         8             7      81
0-3 months     ki1114097-CMIN              BRAZIL                         9             4      81
0-3 months     ki1114097-CMIN              BRAZIL                         10           15      81
0-3 months     ki1114097-CMIN              BRAZIL                         11           10      81
0-3 months     ki1114097-CMIN              BRAZIL                         12            5      81
3-6 months     ki1114097-CMIN              BRAZIL                         1             6      81
3-6 months     ki1114097-CMIN              BRAZIL                         2             6      81
3-6 months     ki1114097-CMIN              BRAZIL                         3             9      81
3-6 months     ki1114097-CMIN              BRAZIL                         4             6      81
3-6 months     ki1114097-CMIN              BRAZIL                         5             3      81
3-6 months     ki1114097-CMIN              BRAZIL                         6             6      81
3-6 months     ki1114097-CMIN              BRAZIL                         7             3      81
3-6 months     ki1114097-CMIN              BRAZIL                         8             8      81
3-6 months     ki1114097-CMIN              BRAZIL                         9             4      81
3-6 months     ki1114097-CMIN              BRAZIL                         10           14      81
3-6 months     ki1114097-CMIN              BRAZIL                         11           10      81
3-6 months     ki1114097-CMIN              BRAZIL                         12            6      81
6-12 months    ki1114097-CMIN              BRAZIL                         1             9      93
6-12 months    ki1114097-CMIN              BRAZIL                         2             5      93
6-12 months    ki1114097-CMIN              BRAZIL                         3            10      93
6-12 months    ki1114097-CMIN              BRAZIL                         4             9      93
6-12 months    ki1114097-CMIN              BRAZIL                         5             4      93
6-12 months    ki1114097-CMIN              BRAZIL                         6             6      93
6-12 months    ki1114097-CMIN              BRAZIL                         7             4      93
6-12 months    ki1114097-CMIN              BRAZIL                         8            10      93
6-12 months    ki1114097-CMIN              BRAZIL                         9             7      93
6-12 months    ki1114097-CMIN              BRAZIL                         10           12      93
6-12 months    ki1114097-CMIN              BRAZIL                         11            9      93
6-12 months    ki1114097-CMIN              BRAZIL                         12            8      93
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   1             7      20
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   2            11      20
12-24 months   ki1112895-Burkina Faso Zn   BURKINA FASO                   12            2      20
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          1            71     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          2            68     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          3            78     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          4            96     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          5           120     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          6            85     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          7            80     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          8            68     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          9            53     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          10           86     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          11           79     972
3-6 months     ki1033518-iLiNS-DYAD-G      GHANA                          12           88     972
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          1            72     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          2            62     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          3            77     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          4            97     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          5           118     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          6            89     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          7            78     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          8            71     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          9            49     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          10           76     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          11           74     945
6-12 months    ki1033518-iLiNS-DYAD-G      GHANA                          12           82     945
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          1            70     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          2            71     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          3            82     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          4            95     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          5           104     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          6            82     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          7            71     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          8            65     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          9            49     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          10           85     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          11           82     937
0-3 months     ki1033518-iLiNS-DYAD-G      GHANA                          12           81     937
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      1             8     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      2            15     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      3            15     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      4            12     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      5            17     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      6            28     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      7            17     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      8            13     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      9            20     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      10           13     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      11           16     181
6-12 months    ki1112895-Guatemala BSC     GUATEMALA                      12            7     181
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  1            10     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  2             5     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  3             5     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  4            17     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  5             9     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  6            15     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  7            11     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  8             3     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  9            24     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  10           10     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  11           11     133
3-6 months     ki1114097-CMIN              GUINEA-BISSAU                  12           13     133
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  1             6     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  2            11     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  3            13     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  4            21     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  5            30     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  6            13     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  7             7     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  8            11     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  9            24     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  10           17     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  11           10     176
6-12 months    ki1114097-CMIN              GUINEA-BISSAU                  12           13     176
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  2             2      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  3             2      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  5             1      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  6             4      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  7             2      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  8             1      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  9             8      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  11            1      22
0-3 months     ki1114097-CMIN              GUINEA-BISSAU                  12            1      22
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  1             3      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  2             3      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  3             3      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  4             7      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  5             4      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  6             6      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  7             1      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  8             2      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  9             8      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  10            6      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  11            2      50
12-24 months   ki1114097-CMIN              GUINEA-BISSAU                  12            5      50
0-3 months     ki0047075b-MAL-ED           INDIA                          1            16     201
0-3 months     ki0047075b-MAL-ED           INDIA                          2            16     201
0-3 months     ki0047075b-MAL-ED           INDIA                          3            19     201
0-3 months     ki0047075b-MAL-ED           INDIA                          4            13     201
0-3 months     ki0047075b-MAL-ED           INDIA                          5             7     201
0-3 months     ki0047075b-MAL-ED           INDIA                          6            15     201
0-3 months     ki0047075b-MAL-ED           INDIA                          7            22     201
0-3 months     ki0047075b-MAL-ED           INDIA                          8            17     201
0-3 months     ki0047075b-MAL-ED           INDIA                          9            17     201
0-3 months     ki0047075b-MAL-ED           INDIA                          10           24     201
0-3 months     ki0047075b-MAL-ED           INDIA                          11           20     201
0-3 months     ki0047075b-MAL-ED           INDIA                          12           15     201
3-6 months     ki0047075b-MAL-ED           INDIA                          1            19     229
3-6 months     ki0047075b-MAL-ED           INDIA                          2            17     229
3-6 months     ki0047075b-MAL-ED           INDIA                          3            21     229
3-6 months     ki0047075b-MAL-ED           INDIA                          4            14     229
3-6 months     ki0047075b-MAL-ED           INDIA                          5             8     229
3-6 months     ki0047075b-MAL-ED           INDIA                          6            17     229
3-6 months     ki0047075b-MAL-ED           INDIA                          7            21     229
3-6 months     ki0047075b-MAL-ED           INDIA                          8            21     229
3-6 months     ki0047075b-MAL-ED           INDIA                          9            20     229
3-6 months     ki0047075b-MAL-ED           INDIA                          10           27     229
3-6 months     ki0047075b-MAL-ED           INDIA                          11           25     229
3-6 months     ki0047075b-MAL-ED           INDIA                          12           19     229
6-12 months    ki0047075b-MAL-ED           INDIA                          1            19     224
6-12 months    ki0047075b-MAL-ED           INDIA                          2            17     224
6-12 months    ki0047075b-MAL-ED           INDIA                          3            18     224
6-12 months    ki0047075b-MAL-ED           INDIA                          4            14     224
6-12 months    ki0047075b-MAL-ED           INDIA                          5             8     224
6-12 months    ki0047075b-MAL-ED           INDIA                          6            18     224
6-12 months    ki0047075b-MAL-ED           INDIA                          7            21     224
6-12 months    ki0047075b-MAL-ED           INDIA                          8            21     224
6-12 months    ki0047075b-MAL-ED           INDIA                          9            18     224
6-12 months    ki0047075b-MAL-ED           INDIA                          10           27     224
6-12 months    ki0047075b-MAL-ED           INDIA                          11           24     224
6-12 months    ki0047075b-MAL-ED           INDIA                          12           19     224
12-24 months   ki0047075b-MAL-ED           INDIA                          1            19     225
12-24 months   ki0047075b-MAL-ED           INDIA                          2            18     225
12-24 months   ki0047075b-MAL-ED           INDIA                          3            18     225
12-24 months   ki0047075b-MAL-ED           INDIA                          4            15     225
12-24 months   ki0047075b-MAL-ED           INDIA                          5             8     225
12-24 months   ki0047075b-MAL-ED           INDIA                          6            17     225
12-24 months   ki0047075b-MAL-ED           INDIA                          7            22     225
12-24 months   ki0047075b-MAL-ED           INDIA                          8            20     225
12-24 months   ki0047075b-MAL-ED           INDIA                          9            18     225
12-24 months   ki0047075b-MAL-ED           INDIA                          10           27     225
12-24 months   ki0047075b-MAL-ED           INDIA                          11           24     225
12-24 months   ki0047075b-MAL-ED           INDIA                          12           19     225
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          1            26     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          2            12     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          3            29     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          4            37     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          5            30     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          6            31     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          7            34     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          8            12     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          9            16     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          10           25     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          11           35     307
3-6 months     ki1000108-CMC-V-BCS-2002    INDIA                          12           20     307
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          1            29     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          2            14     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          3            27     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          4            35     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          5            31     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          6            33     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          7            34     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          8            16     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          9            17     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          10           26     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          11           39     323
6-12 months    ki1000108-CMC-V-BCS-2002    INDIA                          12           22     323
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          1            29     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          2            15     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          3            24     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          4            39     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          5            32     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          6            33     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          7            35     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          8            15     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          9            17     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          10           26     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          11           38     324
12-24 months   ki1000108-CMC-V-BCS-2002    INDIA                          12           21     324
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          1             6      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          2             1      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          3             9      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          4            10      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          5            10      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          6             9      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          7             7      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          8             4      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          9             8      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          10           10      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          11            9      87
0-3 months     ki1000108-CMC-V-BCS-2002    INDIA                          12            4      87
3-6 months     ki1000108-IRC               INDIA                          1            34     397
3-6 months     ki1000108-IRC               INDIA                          2            27     397
3-6 months     ki1000108-IRC               INDIA                          3            28     397
3-6 months     ki1000108-IRC               INDIA                          4            22     397
3-6 months     ki1000108-IRC               INDIA                          5            20     397
3-6 months     ki1000108-IRC               INDIA                          6            37     397
3-6 months     ki1000108-IRC               INDIA                          7            36     397
3-6 months     ki1000108-IRC               INDIA                          8            44     397
3-6 months     ki1000108-IRC               INDIA                          9            26     397
3-6 months     ki1000108-IRC               INDIA                          10           35     397
3-6 months     ki1000108-IRC               INDIA                          11           39     397
3-6 months     ki1000108-IRC               INDIA                          12           49     397
6-12 months    ki1000108-IRC               INDIA                          1            35     400
6-12 months    ki1000108-IRC               INDIA                          2            27     400
6-12 months    ki1000108-IRC               INDIA                          3            29     400
6-12 months    ki1000108-IRC               INDIA                          4            17     400
6-12 months    ki1000108-IRC               INDIA                          5            20     400
6-12 months    ki1000108-IRC               INDIA                          6            37     400
6-12 months    ki1000108-IRC               INDIA                          7            35     400
6-12 months    ki1000108-IRC               INDIA                          8            45     400
6-12 months    ki1000108-IRC               INDIA                          9            27     400
6-12 months    ki1000108-IRC               INDIA                          10           36     400
6-12 months    ki1000108-IRC               INDIA                          11           41     400
6-12 months    ki1000108-IRC               INDIA                          12           51     400
12-24 months   ki1000108-IRC               INDIA                          1            35     396
12-24 months   ki1000108-IRC               INDIA                          2            27     396
12-24 months   ki1000108-IRC               INDIA                          3            29     396
12-24 months   ki1000108-IRC               INDIA                          4            16     396
12-24 months   ki1000108-IRC               INDIA                          5            19     396
12-24 months   ki1000108-IRC               INDIA                          6            37     396
12-24 months   ki1000108-IRC               INDIA                          7            35     396
12-24 months   ki1000108-IRC               INDIA                          8            45     396
12-24 months   ki1000108-IRC               INDIA                          9            27     396
12-24 months   ki1000108-IRC               INDIA                          10           35     396
12-24 months   ki1000108-IRC               INDIA                          11           41     396
12-24 months   ki1000108-IRC               INDIA                          12           50     396
0-3 months     ki1000108-IRC               INDIA                          1            32     377
0-3 months     ki1000108-IRC               INDIA                          2            25     377
0-3 months     ki1000108-IRC               INDIA                          3            26     377
0-3 months     ki1000108-IRC               INDIA                          4            22     377
0-3 months     ki1000108-IRC               INDIA                          5            20     377
0-3 months     ki1000108-IRC               INDIA                          6            34     377
0-3 months     ki1000108-IRC               INDIA                          7            35     377
0-3 months     ki1000108-IRC               INDIA                          8            38     377
0-3 months     ki1000108-IRC               INDIA                          9            24     377
0-3 months     ki1000108-IRC               INDIA                          10           36     377
0-3 months     ki1000108-IRC               INDIA                          11           38     377
0-3 months     ki1000108-IRC               INDIA                          12           47     377
6-12 months    ki1000304-VITAMIN-A         INDIA                          1           208    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          2           163    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          3           155    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          4           193    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          5           211    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          6           158    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          7           188    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          8           263    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          9           165    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          10          121    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          11          127    2020
6-12 months    ki1000304-VITAMIN-A         INDIA                          12           68    2020
3-6 months     ki1000304-VITAMIN-A         INDIA                          3             2      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          4             2      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          6             1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          7             1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          8             3      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          10            1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          11            1      12
3-6 months     ki1000304-VITAMIN-A         INDIA                          12            1      12
6-12 months    ki1000304-Vitamin-B12       INDIA                          1            14      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          2            10      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          6             5      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          7             6      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          8             2      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          9             2      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          10            1      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          11            2      49
6-12 months    ki1000304-Vitamin-B12       INDIA                          12            7      49
12-24 months   ki1000304-ZnMort            INDIA                          4             1       1
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          1            86    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          2            65    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          3            67    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          4            64    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          5            67    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          6            86    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          7           100    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          8           135    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          9           145    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          10          129    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          11          112    1168
0-3 months     ki1000304b-SAS-CompFeed     INDIA                          12          112    1168
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          1            76    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          2            62    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          3            66    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          4            69    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          5            66    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          6            83    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          7            90    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          8           131    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          9           137    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          10          127    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          11          107    1124
3-6 months     ki1000304b-SAS-CompFeed     INDIA                          12          110    1124
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          1            71    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          2            63    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          3            64    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          4            69    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          5            70    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          6            83    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          7            98    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          8           124    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          9           141    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          10          133    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          11          102    1137
6-12 months    ki1000304b-SAS-CompFeed     INDIA                          12          119    1137
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          1            52     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          2            32     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          3            28     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          4            26     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          5            25     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          6            27     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          7            14     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          9            10     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          10           23     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          11           41     332
6-12 months    ki1000304b-SAS-FoodSuppl    INDIA                          12           54     332
12-24 months   ki1000111-WASH-Kenya        KENYA                          1            35     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          2            55     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          3            47     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          4            76     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          5            58     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          6            10     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          10            3     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          11           22     331
12-24 months   ki1000111-WASH-Kenya        KENYA                          12           25     331
6-12 months    ki1148112-LCNI-5            MALAWI                         1            33     434
6-12 months    ki1148112-LCNI-5            MALAWI                         2            55     434
6-12 months    ki1148112-LCNI-5            MALAWI                         3            39     434
6-12 months    ki1148112-LCNI-5            MALAWI                         4            45     434
6-12 months    ki1148112-LCNI-5            MALAWI                         5            58     434
6-12 months    ki1148112-LCNI-5            MALAWI                         6            50     434
6-12 months    ki1148112-LCNI-5            MALAWI                         7            36     434
6-12 months    ki1148112-LCNI-5            MALAWI                         8            33     434
6-12 months    ki1148112-LCNI-5            MALAWI                         9            16     434
6-12 months    ki1148112-LCNI-5            MALAWI                         10           19     434
6-12 months    ki1148112-LCNI-5            MALAWI                         11           33     434
6-12 months    ki1148112-LCNI-5            MALAWI                         12           17     434
12-24 months   ki1148112-LCNI-5            MALAWI                         1            27     310
12-24 months   ki1148112-LCNI-5            MALAWI                         2            45     310
12-24 months   ki1148112-LCNI-5            MALAWI                         3            25     310
12-24 months   ki1148112-LCNI-5            MALAWI                         4            37     310
12-24 months   ki1148112-LCNI-5            MALAWI                         5            40     310
12-24 months   ki1148112-LCNI-5            MALAWI                         6            37     310
12-24 months   ki1148112-LCNI-5            MALAWI                         7            21     310
12-24 months   ki1148112-LCNI-5            MALAWI                         8            19     310
12-24 months   ki1148112-LCNI-5            MALAWI                         9            12     310
12-24 months   ki1148112-LCNI-5            MALAWI                         10           13     310
12-24 months   ki1148112-LCNI-5            MALAWI                         11           23     310
12-24 months   ki1148112-LCNI-5            MALAWI                         12           11     310
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         1            71    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         2            99    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         3           128    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         4           119    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         5           133    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         6            70    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         7            81    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         8            75    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         9            72    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         10           51    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         11           56    1029
6-12 months    ki1148112-iLiNS-DOSE        MALAWI                         12           74    1029
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         1            32     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         2            54     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         3            59     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         4            66     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         5            66     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         6            30     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         7            36     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         8            29     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         9            40     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         10           18     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         11           23     485
12-24 months   ki1148112-iLiNS-DOSE        MALAWI                         12           32     485
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         1            36     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         2            44     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         3            57     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         4            40     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         5            46     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         6            43     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         7            46     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         8            59     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         9            54     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         10           30     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         11           31     538
6-12 months    ki1148112-iLiNS-DYAD-M      MALAWI                         12           52     538
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         1            37     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         2            49     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         3            55     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         4            39     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         5            44     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         6            36     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         7            40     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         8            48     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         9            42     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         10           33     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         11           34     508
12-24 months   ki1148112-iLiNS-DYAD-M      MALAWI                         12           51     508
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         3             2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         4             2       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         9             1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         10            1       7
3-6 months     ki1148112-iLiNS-DYAD-M      MALAWI                         11            1       7
3-6 months     ki0047075b-MAL-ED           NEPAL                          1            20     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          2            19     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          3            16     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          4            20     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          5            19     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          6            21     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          7            17     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          8            24     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          9            14     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          10           22     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          11           24     233
3-6 months     ki0047075b-MAL-ED           NEPAL                          12           17     233
6-12 months    ki0047075b-MAL-ED           NEPAL                          1            20     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          2            17     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          3            16     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          4            20     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          5            18     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          6            21     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          7            18     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          8            24     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          9            13     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          10           21     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          11           24     230
6-12 months    ki0047075b-MAL-ED           NEPAL                          12           18     230
12-24 months   ki0047075b-MAL-ED           NEPAL                          1            19     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          2            17     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          3            16     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          4            20     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          5            18     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          6            21     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          7            17     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          8            24     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          9            13     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          10           20     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          11           24     226
12-24 months   ki0047075b-MAL-ED           NEPAL                          12           17     226
0-3 months     ki0047075b-MAL-ED           NEPAL                          1            17     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          2            14     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          3            13     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          4            16     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          5            18     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          6            13     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          7            15     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          8            15     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          9            10     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          10           16     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          11           18     175
0-3 months     ki0047075b-MAL-ED           NEPAL                          12           10     175
3-6 months     ki1113344-GMS-Nepal         NEPAL                          6            87     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          7           187     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          8           184     471
3-6 months     ki1113344-GMS-Nepal         NEPAL                          9            13     471
6-12 months    ki1113344-GMS-Nepal         NEPAL                          6            89     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          7           187     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          8           184     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          9            14     475
6-12 months    ki1113344-GMS-Nepal         NEPAL                          10            1     475
12-24 months   ki1113344-GMS-Nepal         NEPAL                          6            25     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          7           167     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          8           159     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          9            14     367
12-24 months   ki1113344-GMS-Nepal         NEPAL                          10            2     367
0-3 months     ki1000109-EE                PAKISTAN                       1            73     297
0-3 months     ki1000109-EE                PAKISTAN                       2            57     297
0-3 months     ki1000109-EE                PAKISTAN                       3            28     297
0-3 months     ki1000109-EE                PAKISTAN                       4            13     297
0-3 months     ki1000109-EE                PAKISTAN                       10            4     297
0-3 months     ki1000109-EE                PAKISTAN                       11           52     297
0-3 months     ki1000109-EE                PAKISTAN                       12           70     297
3-6 months     ki1000109-EE                PAKISTAN                       1            80     331
3-6 months     ki1000109-EE                PAKISTAN                       2            58     331
3-6 months     ki1000109-EE                PAKISTAN                       3            32     331
3-6 months     ki1000109-EE                PAKISTAN                       4            15     331
3-6 months     ki1000109-EE                PAKISTAN                       10            4     331
3-6 months     ki1000109-EE                PAKISTAN                       11           67     331
3-6 months     ki1000109-EE                PAKISTAN                       12           75     331
6-12 months    ki1000109-EE                PAKISTAN                       3             1       4
6-12 months    ki1000109-EE                PAKISTAN                       11            3       4
0-3 months     ki1000109-ResPak            PAKISTAN                       1             4      78
0-3 months     ki1000109-ResPak            PAKISTAN                       2             1      78
0-3 months     ki1000109-ResPak            PAKISTAN                       3             3      78
0-3 months     ki1000109-ResPak            PAKISTAN                       4            11      78
0-3 months     ki1000109-ResPak            PAKISTAN                       5            11      78
0-3 months     ki1000109-ResPak            PAKISTAN                       6            21      78
0-3 months     ki1000109-ResPak            PAKISTAN                       7             7      78
0-3 months     ki1000109-ResPak            PAKISTAN                       8             8      78
0-3 months     ki1000109-ResPak            PAKISTAN                       9             8      78
0-3 months     ki1000109-ResPak            PAKISTAN                       10            1      78
0-3 months     ki1000109-ResPak            PAKISTAN                       11            3      78
3-6 months     ki1000109-ResPak            PAKISTAN                       1             6     156
3-6 months     ki1000109-ResPak            PAKISTAN                       2             7     156
3-6 months     ki1000109-ResPak            PAKISTAN                       3            16     156
3-6 months     ki1000109-ResPak            PAKISTAN                       4            17     156
3-6 months     ki1000109-ResPak            PAKISTAN                       5            15     156
3-6 months     ki1000109-ResPak            PAKISTAN                       6            39     156
3-6 months     ki1000109-ResPak            PAKISTAN                       7            16     156
3-6 months     ki1000109-ResPak            PAKISTAN                       8            17     156
3-6 months     ki1000109-ResPak            PAKISTAN                       9            16     156
3-6 months     ki1000109-ResPak            PAKISTAN                       10            5     156
3-6 months     ki1000109-ResPak            PAKISTAN                       12            2     156
6-12 months    ki1000109-ResPak            PAKISTAN                       1             4     138
6-12 months    ki1000109-ResPak            PAKISTAN                       2             5     138
6-12 months    ki1000109-ResPak            PAKISTAN                       3            10     138
6-12 months    ki1000109-ResPak            PAKISTAN                       4            14     138
6-12 months    ki1000109-ResPak            PAKISTAN                       5            16     138
6-12 months    ki1000109-ResPak            PAKISTAN                       6            37     138
6-12 months    ki1000109-ResPak            PAKISTAN                       7            16     138
6-12 months    ki1000109-ResPak            PAKISTAN                       8            16     138
6-12 months    ki1000109-ResPak            PAKISTAN                       9            16     138
6-12 months    ki1000109-ResPak            PAKISTAN                       10            3     138
6-12 months    ki1000109-ResPak            PAKISTAN                       12            1     138
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       1             9      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       2             1      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       6             2      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       7             7      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       8             4      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       9             5      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       10            4      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       11           13      52
6-12 months    ki1000125-AgaKhanUniv       PAKISTAN                       12            7      52
12-24 months   ki1000125-AgaKhanUniv       PAKISTAN                       10            1       1
0-3 months     ki0047075b-MAL-ED           PERU                           1            38     271
0-3 months     ki0047075b-MAL-ED           PERU                           2            23     271
0-3 months     ki0047075b-MAL-ED           PERU                           3            21     271
0-3 months     ki0047075b-MAL-ED           PERU                           4            20     271
0-3 months     ki0047075b-MAL-ED           PERU                           5            24     271
0-3 months     ki0047075b-MAL-ED           PERU                           6            17     271
0-3 months     ki0047075b-MAL-ED           PERU                           7            22     271
0-3 months     ki0047075b-MAL-ED           PERU                           8            16     271
0-3 months     ki0047075b-MAL-ED           PERU                           9            22     271
0-3 months     ki0047075b-MAL-ED           PERU                           10           20     271
0-3 months     ki0047075b-MAL-ED           PERU                           11           29     271
0-3 months     ki0047075b-MAL-ED           PERU                           12           19     271
3-6 months     ki0047075b-MAL-ED           PERU                           1            36     267
3-6 months     ki0047075b-MAL-ED           PERU                           2            21     267
3-6 months     ki0047075b-MAL-ED           PERU                           3            21     267
3-6 months     ki0047075b-MAL-ED           PERU                           4            20     267
3-6 months     ki0047075b-MAL-ED           PERU                           5            23     267
3-6 months     ki0047075b-MAL-ED           PERU                           6            18     267
3-6 months     ki0047075b-MAL-ED           PERU                           7            22     267
3-6 months     ki0047075b-MAL-ED           PERU                           8            15     267
3-6 months     ki0047075b-MAL-ED           PERU                           9            23     267
3-6 months     ki0047075b-MAL-ED           PERU                           10           18     267
3-6 months     ki0047075b-MAL-ED           PERU                           11           31     267
3-6 months     ki0047075b-MAL-ED           PERU                           12           19     267
6-12 months    ki0047075b-MAL-ED           PERU                           1            31     237
6-12 months    ki0047075b-MAL-ED           PERU                           2            19     237
6-12 months    ki0047075b-MAL-ED           PERU                           3            18     237
6-12 months    ki0047075b-MAL-ED           PERU                           4            16     237
6-12 months    ki0047075b-MAL-ED           PERU                           5            19     237
6-12 months    ki0047075b-MAL-ED           PERU                           6            17     237
6-12 months    ki0047075b-MAL-ED           PERU                           7            20     237
6-12 months    ki0047075b-MAL-ED           PERU                           8            14     237
6-12 months    ki0047075b-MAL-ED           PERU                           9            22     237
6-12 months    ki0047075b-MAL-ED           PERU                           10           16     237
6-12 months    ki0047075b-MAL-ED           PERU                           11           26     237
6-12 months    ki0047075b-MAL-ED           PERU                           12           19     237
12-24 months   ki0047075b-MAL-ED           PERU                           1            24     191
12-24 months   ki0047075b-MAL-ED           PERU                           2            19     191
12-24 months   ki0047075b-MAL-ED           PERU                           3            13     191
12-24 months   ki0047075b-MAL-ED           PERU                           4            12     191
12-24 months   ki0047075b-MAL-ED           PERU                           5            18     191
12-24 months   ki0047075b-MAL-ED           PERU                           6            11     191
12-24 months   ki0047075b-MAL-ED           PERU                           7            14     191
12-24 months   ki0047075b-MAL-ED           PERU                           8            12     191
12-24 months   ki0047075b-MAL-ED           PERU                           9            20     191
12-24 months   ki0047075b-MAL-ED           PERU                           10           13     191
12-24 months   ki0047075b-MAL-ED           PERU                           11           20     191
12-24 months   ki0047075b-MAL-ED           PERU                           12           15     191
3-6 months     ki1114097-CMIN              PERU                           1            27     407
3-6 months     ki1114097-CMIN              PERU                           2            37     407
3-6 months     ki1114097-CMIN              PERU                           3            48     407
3-6 months     ki1114097-CMIN              PERU                           4            48     407
3-6 months     ki1114097-CMIN              PERU                           5            29     407
3-6 months     ki1114097-CMIN              PERU                           6            37     407
3-6 months     ki1114097-CMIN              PERU                           7            26     407
3-6 months     ki1114097-CMIN              PERU                           8            31     407
3-6 months     ki1114097-CMIN              PERU                           9            29     407
3-6 months     ki1114097-CMIN              PERU                           10           16     407
3-6 months     ki1114097-CMIN              PERU                           11           46     407
3-6 months     ki1114097-CMIN              PERU                           12           33     407
6-12 months    ki1114097-CMIN              PERU                           1            33     360
6-12 months    ki1114097-CMIN              PERU                           2            27     360
6-12 months    ki1114097-CMIN              PERU                           3            39     360
6-12 months    ki1114097-CMIN              PERU                           4            44     360
6-12 months    ki1114097-CMIN              PERU                           5            28     360
6-12 months    ki1114097-CMIN              PERU                           6            31     360
6-12 months    ki1114097-CMIN              PERU                           7            25     360
6-12 months    ki1114097-CMIN              PERU                           8            22     360
6-12 months    ki1114097-CMIN              PERU                           9            23     360
6-12 months    ki1114097-CMIN              PERU                           10           22     360
6-12 months    ki1114097-CMIN              PERU                           11           44     360
6-12 months    ki1114097-CMIN              PERU                           12           22     360
12-24 months   ki1114097-CMIN              PERU                           1            55     199
12-24 months   ki1114097-CMIN              PERU                           2             9     199
12-24 months   ki1114097-CMIN              PERU                           3            19     199
12-24 months   ki1114097-CMIN              PERU                           4            15     199
12-24 months   ki1114097-CMIN              PERU                           5            12     199
12-24 months   ki1114097-CMIN              PERU                           6            12     199
12-24 months   ki1114097-CMIN              PERU                           7            13     199
12-24 months   ki1114097-CMIN              PERU                           8             7     199
12-24 months   ki1114097-CMIN              PERU                           9             6     199
12-24 months   ki1114097-CMIN              PERU                           10           13     199
12-24 months   ki1114097-CMIN              PERU                           11           29     199
12-24 months   ki1114097-CMIN              PERU                           12            9     199
0-3 months     ki1114097-CMIN              PERU                           1             4      93
0-3 months     ki1114097-CMIN              PERU                           2             6      93
0-3 months     ki1114097-CMIN              PERU                           3             8      93
0-3 months     ki1114097-CMIN              PERU                           4            11      93
0-3 months     ki1114097-CMIN              PERU                           5            13      93
0-3 months     ki1114097-CMIN              PERU                           6             9      93
0-3 months     ki1114097-CMIN              PERU                           7             9      93
0-3 months     ki1114097-CMIN              PERU                           8             8      93
0-3 months     ki1114097-CMIN              PERU                           9             7      93
0-3 months     ki1114097-CMIN              PERU                           10            5      93
0-3 months     ki1114097-CMIN              PERU                           11            8      93
0-3 months     ki1114097-CMIN              PERU                           12            5      93
3-6 months     ki1114097-CONTENT           PERU                           1             9     214
3-6 months     ki1114097-CONTENT           PERU                           2            15     214
3-6 months     ki1114097-CONTENT           PERU                           3            30     214
3-6 months     ki1114097-CONTENT           PERU                           4            12     214
3-6 months     ki1114097-CONTENT           PERU                           5            25     214
3-6 months     ki1114097-CONTENT           PERU                           6            14     214
3-6 months     ki1114097-CONTENT           PERU                           7            24     214
3-6 months     ki1114097-CONTENT           PERU                           8            18     214
3-6 months     ki1114097-CONTENT           PERU                           9            20     214
3-6 months     ki1114097-CONTENT           PERU                           10           24     214
3-6 months     ki1114097-CONTENT           PERU                           11           18     214
3-6 months     ki1114097-CONTENT           PERU                           12            5     214
6-12 months    ki1114097-CONTENT           PERU                           1             9     213
6-12 months    ki1114097-CONTENT           PERU                           2            15     213
6-12 months    ki1114097-CONTENT           PERU                           3            30     213
6-12 months    ki1114097-CONTENT           PERU                           4            12     213
6-12 months    ki1114097-CONTENT           PERU                           5            25     213
6-12 months    ki1114097-CONTENT           PERU                           6            14     213
6-12 months    ki1114097-CONTENT           PERU                           7            23     213
6-12 months    ki1114097-CONTENT           PERU                           8            18     213
6-12 months    ki1114097-CONTENT           PERU                           9            20     213
6-12 months    ki1114097-CONTENT           PERU                           10           24     213
6-12 months    ki1114097-CONTENT           PERU                           11           18     213
6-12 months    ki1114097-CONTENT           PERU                           12            5     213
12-24 months   ki1114097-CONTENT           PERU                           1             4      38
12-24 months   ki1114097-CONTENT           PERU                           2             3      38
12-24 months   ki1114097-CONTENT           PERU                           3             4      38
12-24 months   ki1114097-CONTENT           PERU                           4             2      38
12-24 months   ki1114097-CONTENT           PERU                           5             1      38
12-24 months   ki1114097-CONTENT           PERU                           7             5      38
12-24 months   ki1114097-CONTENT           PERU                           8             6      38
12-24 months   ki1114097-CONTENT           PERU                           9             7      38
12-24 months   ki1114097-CONTENT           PERU                           10            2      38
12-24 months   ki1114097-CONTENT           PERU                           11            4      38
0-3 months     ki1114097-CONTENT           PERU                           2             2      29
0-3 months     ki1114097-CONTENT           PERU                           3             4      29
0-3 months     ki1114097-CONTENT           PERU                           4             5      29
0-3 months     ki1114097-CONTENT           PERU                           5             3      29
0-3 months     ki1114097-CONTENT           PERU                           6             3      29
0-3 months     ki1114097-CONTENT           PERU                           7             4      29
0-3 months     ki1114097-CONTENT           PERU                           8             5      29
0-3 months     ki1114097-CONTENT           PERU                           10            1      29
0-3 months     ki1114097-CONTENT           PERU                           12            2      29
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   1            26     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   2            18     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   3            14     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   4            12     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   5            13     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   6            15     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   7            22     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   8             8     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   9            20     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   10           24     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   11           24     229
0-3 months     ki0047075b-MAL-ED           SOUTH AFRICA                   12           33     229
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   1            37     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   2            21     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   3            13     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   4            12     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   5            11     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   6            14     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   7            24     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   8             8     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   9            18     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   10           26     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   11           23     241
3-6 months     ki0047075b-MAL-ED           SOUTH AFRICA                   12           34     241
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   1            37     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   2            19     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   3            13     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   4            12     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   5            11     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   6            13     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   7            23     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   8             8     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   9            18     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   10           24     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   11           21     232
6-12 months    ki0047075b-MAL-ED           SOUTH AFRICA                   12           33     232
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   1            33     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   2            19     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   3            14     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   4            12     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   5            11     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   6            15     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   7            23     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   8             8     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   9            19     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   10           25     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   11           20     230
12-24 months   ki0047075b-MAL-ED           SOUTH AFRICA                   12           31     230
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1            16     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            26     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            17     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             8     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            15     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6            20     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            22     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8            11     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9            20     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10           18     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           24     223
6-12 months    ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           26     223
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1            16     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            21     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            19     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             6     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            16     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6            19     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            20     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8            11     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9            17     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10           15     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           22     207
12-24 months   ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           25     207
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1            20     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            27     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            18     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             8     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            17     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6            16     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            22     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8            11     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9            21     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10           19     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           25     229
0-3 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           25     229
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   1            22     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   2            28     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   3            17     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   4             8     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   5            15     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   6            20     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   7            23     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   8            12     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   9            20     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   10           20     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   11           26     239
3-6 months     ki0047075b-MAL-ED           TANZANIA, UNITED REPUBLIC OF   12           28     239
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1           114    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2           120    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3           120    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   4           118    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   5           124    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   6           116    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   7           152    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   8           167    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   9           144    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   10          171    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   11          161    1660
3-6 months     ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   12          153    1660
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   1            71    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   2            80    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   3            76    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   4            85    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   5            81    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   6            79    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   7           100    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   8           113    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   9           102    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   10          108    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   11          103    1083
6-12 months    ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   12           85    1083
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   4             1       2
12-24 months   ki1066203-TanzaniaChild2    TANZANIA, UNITED REPUBLIC OF   5             1       2
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       1           773    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       2           559    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       3           685    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       4           609    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       5           584    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       6           632    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       7           680    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       8           746    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       9           713    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       10          533    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       11          598    7844
0-3 months     ki1126311-ZVITAMBO          ZIMBABWE                       12          732    7844
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       1           580    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       2           402    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       3           515    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       4           469    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       5           430    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       6           470    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       7           470    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       8           556    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       9           558    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       10          396    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       11          468    5876
3-6 months     ki1126311-ZVITAMBO          ZIMBABWE                       12          562    5876
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       1           418    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       2           300    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       3           411    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       4           364    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       5           346    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       6           382    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       7           355    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       8           426    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       9           410    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       10          318    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       11          401    4560
6-12 months    ki1126311-ZVITAMBO          ZIMBABWE                       12          429    4560
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       1            32     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       2            38     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       3            46     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       4            32     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       5            36     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       6            30     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       7            22     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       8            24     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       9             2     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       10            1     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       11           12     302
12-24 months   ki1126311-ZVITAMBO          ZIMBABWE                       12           27     302


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
* diffcat: 12-24 months, studyid: ki1000111-WASH-Kenya, country: KENYA
* diffcat: 3-6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI
* diffcat: 6-12 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 12-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki1000125-AgaKhanUniv, country: PAKISTAN
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
##      y_rate_haz
## month -0.174855360962567 -0.108689008 -0.101662285714286
##    1                   0            0                  0
##    2                   0            0                  0
##    3                   0            0                  0
##    4                   0            0                  0
##    5                   0            0                  0
##    6                   0            0                  0
##    7                   0            0                  0
##    8                   0            0                  0
##    9                   0            0                  0
##    10                  0            0                  0
##    11                  0            0                  0
##    12                  1            1                  1
##      y_rate_haz
## month -0.100044318302387 -0.0862077593582888 -0.0839081379310345
##    1                   0                   0                   0
##    2                   0                   0                   0
##    3                   0                   0                   0
##    4                   0                   0                   0
##    5                   0                   0                   0
##    6                   0                   0                   0
##    7                   0                   0                   0
##    8                   0                   0                   0
##    9                   0                   0                   0
##    10                  0                   0                   0
##    11                  0                   0                   0
##    12                  1                   1                   1
##      y_rate_haz
## month -0.0748218288770053 -0.0708898699186992 -0.066511184
##    1                    0                   0            0
##    2                    0                   0            0
##    3                    0                   0            0
##    4                    0                   0            0
##    5                    0                   0            0
##    6                    0                   0            0
##    7                    0                   0            0
##    8                    0                   0            0
##    9                    0                   0            0
##    10                   0                   0            0
##    11                   0                   0            0
##    12                   1                   1            1
##      y_rate_haz
## month -0.0629311034482759 -0.0619750455764075 -0.0393531428571429
##    1                    0                   0                   0
##    2                    0                   0                   0
##    3                    0                   0                   0
##    4                    0                   0                   0
##    5                    0                   0                   0
##    6                    0                   0                   0
##    7                    0                   0                   0
##    8                    0                   0                   0
##    9                    0                   0                   0
##    10                   0                   0                   0
##    11                   0                   0                   0
##    12                   1                   1                   1
##      y_rate_haz
## month -0.0387268328912467
##    1                    0
##    2                    0
##    3                    0
##    4                    0
##    5                    0
##    6                    0
##    7                    0
##    8                    0
##    9                    0
##    10                   0
##    11                   0
##    12                   1
```




# Results Detail

## Results Plots
![](/tmp/9f4c003b-2311-4906-b2df-53d674200844/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9f4c003b-2311-4906-b2df-53d674200844/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0123300   -0.1000339    0.0753738
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                 0.0283115   -0.0775785    0.1342015
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0493574   -0.1538875    0.0551726
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                 0.0174403   -0.0722930    0.1071736
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                 0.0110550   -0.0999633    0.1220733
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                 0.0017044   -0.1031814    0.1065902
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                 0.0137174   -0.1339524    0.1613872
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0808616   -0.1705049    0.0087818
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.1015086   -0.2021485   -0.0008686
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.0674958   -0.1949274    0.0599359
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.1072876   -0.2121755   -0.0023996
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.0398169   -0.1370278    0.0573940
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0018193   -0.1975182    0.2011568
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.3598277    0.1986562    0.5209992
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.1619927   -0.0246766    0.3486621
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.2550100    0.0878131    0.4222070
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.2876042    0.1530646    0.4221438
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.0699468   -0.1107348    0.2506284
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                 0.2649527    0.0626903    0.4672152
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.0939415   -0.1417444    0.3296273
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.1183056    0.0155088    0.2211024
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.1442277   -0.0153181    0.3037736
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.1571847    0.0686320    0.2457375
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.3036221    0.0862616    0.5209827
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1493587   -0.2831302   -0.0155871
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.1065482   -0.2144346    0.0013382
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0239343   -0.1061854    0.1540539
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    NA                 0.0667461   -0.0605171    0.1940094
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0301339   -0.1949063    0.1346384
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    NA                -0.0295011   -0.1405111    0.0815089
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    NA                 0.0128300   -0.1132379    0.1388979
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    NA                 0.0017999   -0.1175196    0.1211194
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    NA                 0.0104317   -0.1612472    0.1821106
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0136895   -0.1573678    0.1299887
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   NA                -0.0556302   -0.1294829    0.0182224
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   NA                 0.0173359   -0.1282114    0.1628832
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0931933   -0.0163074    0.2026939
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                 0.0918184   -0.0085171    0.1921539
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0107241   -0.1293272    0.1078790
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                 0.1221855   -0.0237449    0.2681159
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                 0.0797785    0.0225913    0.1369658
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                 0.1626851    0.0727557    0.2526145
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0131322   -0.1554608    0.1291963
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                 0.1362227   -0.0137444    0.2861898
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                 0.1145348    0.0285669    0.2005026
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                 0.0133987   -0.0892731    0.1160705
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                 0.0837904   -0.0206612    0.1882420
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.0108009   -0.1728582    0.1944601
0-3 months     ki0047075b-MAL-ED          PERU                           1                    NA                -0.1499157   -0.2211061   -0.0787254
0-3 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.1288183   -0.2532770   -0.0043596
0-3 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0204973   -0.1217731    0.0807785
0-3 months     ki0047075b-MAL-ED          PERU                           4                    NA                -0.1213759   -0.2106094   -0.0321425
0-3 months     ki0047075b-MAL-ED          PERU                           5                    NA                -0.2814452   -0.4052974   -0.1575930
0-3 months     ki0047075b-MAL-ED          PERU                           6                    NA                -0.2231240   -0.3854091   -0.0608390
0-3 months     ki0047075b-MAL-ED          PERU                           7                    NA                -0.1646228   -0.2687479   -0.0604977
0-3 months     ki0047075b-MAL-ED          PERU                           8                    NA                -0.2021288   -0.3031135   -0.1011441
0-3 months     ki0047075b-MAL-ED          PERU                           9                    NA                -0.1071051   -0.2126536   -0.0015566
0-3 months     ki0047075b-MAL-ED          PERU                           10                   NA                -0.1052753   -0.2092794   -0.0012711
0-3 months     ki0047075b-MAL-ED          PERU                           11                   NA                -0.1798108   -0.2914250   -0.0681965
0-3 months     ki0047075b-MAL-ED          PERU                           12                   NA                -0.2236817   -0.3483562   -0.0990072
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.1079227   -0.2643334    0.0484879
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.2514278   -0.4111112   -0.0917443
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0284984   -0.2234210    0.1664242
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0125191   -0.1102575    0.1352957
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.1294386   -0.3335618    0.0746846
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.1346752   -0.2626709   -0.0066795
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0814632   -0.1977273    0.0348010
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -0.0223056   -0.1456050    0.1009937
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.0479420   -0.2003291    0.1044452
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                 0.0047503   -0.0829915    0.0924921
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0854032   -0.2278981    0.0570917
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.2176291   -0.3445909   -0.0906673
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0472469   -0.0346794    0.1291732
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0489806   -0.1473997    0.0494384
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                 0.0029188   -0.1271554    0.1329930
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0300017   -0.2565689    0.1965654
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0286457   -0.1291688    0.0718774
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0822323   -0.3119993    0.1475347
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.1462806   -0.2765962   -0.0159651
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0007494   -0.1577509    0.1562520
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0060415   -0.1336017    0.1456848
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0339485   -0.1557158    0.0878188
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0430916   -0.1533893    0.0672061
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1353042   -0.2448661   -0.0257422
0-3 months     ki1000108-IRC              INDIA                          1                    NA                -0.1428701   -0.2787522   -0.0069881
0-3 months     ki1000108-IRC              INDIA                          2                    NA                -0.3210399   -0.5678738   -0.0742060
0-3 months     ki1000108-IRC              INDIA                          3                    NA                -0.3682757   -0.6141526   -0.1223988
0-3 months     ki1000108-IRC              INDIA                          4                    NA                -0.5000419   -0.6913325   -0.3087512
0-3 months     ki1000108-IRC              INDIA                          5                    NA                -0.6948527   -0.8730111   -0.5166943
0-3 months     ki1000108-IRC              INDIA                          6                    NA                -0.1333342   -0.3590159    0.0923476
0-3 months     ki1000108-IRC              INDIA                          7                    NA                -0.2348700   -0.3931516   -0.0765884
0-3 months     ki1000108-IRC              INDIA                          8                    NA                -0.1845502   -0.3451095   -0.0239910
0-3 months     ki1000108-IRC              INDIA                          9                    NA                -0.0967615   -0.3785288    0.1850057
0-3 months     ki1000108-IRC              INDIA                          10                   NA                -0.1549093   -0.3177454    0.0079268
0-3 months     ki1000108-IRC              INDIA                          11                   NA                -0.2032194   -0.3522510   -0.0541878
0-3 months     ki1000108-IRC              INDIA                          12                   NA                -0.3270442   -0.4726004   -0.1814880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                 0.0830369    0.0470871    0.1189868
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                 0.0934361    0.0392717    0.1476004
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                 0.1075434    0.0714607    0.1436261
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                 0.0248258   -0.0478100    0.0974616
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.0101648   -0.0587608    0.0384311
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                 0.0621715    0.0312298    0.0931131
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.0382726   -0.1014332    0.0248880
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.0067171   -0.0552816    0.0418473
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.0076785   -0.0346020    0.0192450
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.0092919   -0.1069451    0.0883613
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.0079552   -0.0586729    0.0427624
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.0385392   -0.0873330    0.0102546
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0396237   -0.1319847    0.0527373
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.0264106   -0.1219002    0.0690789
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.1077243   -0.1931508   -0.0222977
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.0912628   -0.1720209   -0.0105047
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.1917389   -0.2791846   -0.1042932
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.1375051   -0.2355392   -0.0394710
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.1539264   -0.2502876   -0.0575653
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.2148505   -0.3389392   -0.0907618
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.1985586   -0.3209265   -0.0761907
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.1616171   -0.2500135   -0.0732207
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.1184869   -0.1938050   -0.0431689
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.0686484   -0.1346309   -0.0026659
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                 0.0518110   -0.0006472    0.1042691
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    NA                 0.1475919    0.0921198    0.2030640
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    NA                 0.0832209    0.0305658    0.1358760
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    NA                 0.1197943    0.0724787    0.1671099
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    NA                 0.0474590    0.0041607    0.0907572
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    NA                 0.0679094    0.0117927    0.1240260
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    NA                 0.1735720    0.1021560    0.2449879
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    NA                 0.0502613   -0.0197486    0.1202712
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    NA                -0.0206246   -0.1012538    0.0600047
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   NA                 0.0399060   -0.0149740    0.0947860
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   NA                 0.1232072    0.0730816    0.1733327
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   NA                 0.1334341    0.0692243    0.1976439
0-3 months     ki1119695-PROBIT           BELARUS                        1                    NA                -0.4711089   -0.5638751   -0.3783428
0-3 months     ki1119695-PROBIT           BELARUS                        2                    NA                -0.4664198   -0.5446331   -0.3882065
0-3 months     ki1119695-PROBIT           BELARUS                        3                    NA                -0.4245254   -0.5015798   -0.3474710
0-3 months     ki1119695-PROBIT           BELARUS                        4                    NA                -0.4502202   -0.5313458   -0.3690947
0-3 months     ki1119695-PROBIT           BELARUS                        5                    NA                -0.4598316   -0.5184077   -0.4012555
0-3 months     ki1119695-PROBIT           BELARUS                        6                    NA                -0.3947396   -0.4560099   -0.3334693
0-3 months     ki1119695-PROBIT           BELARUS                        7                    NA                -0.4350590   -0.4966277   -0.3734902
0-3 months     ki1119695-PROBIT           BELARUS                        8                    NA                -0.4232487   -0.4954830   -0.3510144
0-3 months     ki1119695-PROBIT           BELARUS                        9                    NA                -0.4360178   -0.5018674   -0.3701682
0-3 months     ki1119695-PROBIT           BELARUS                        10                   NA                -0.4458628   -0.5056109   -0.3861147
0-3 months     ki1119695-PROBIT           BELARUS                        11                   NA                -0.4390998   -0.4984503   -0.3797493
0-3 months     ki1119695-PROBIT           BELARUS                        12                   NA                -0.4249276   -0.4906372   -0.3592181
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0494864   -0.0815559   -0.0174168
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0259132   -0.0664636    0.0146372
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.0687824   -0.1034236   -0.0341413
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.1420078   -0.1800530   -0.1039627
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.1528659   -0.1930708   -0.1126611
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.2491453   -0.2883726   -0.2099180
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.2046719   -0.2404767   -0.1688672
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.1904376   -0.2234620   -0.1574132
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.1852736   -0.2158311   -0.1547160
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.1845948   -0.2198281   -0.1493616
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.1682074   -0.2057225   -0.1306922
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.0988218   -0.1332205   -0.0644231
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.1061916    0.0921113    0.1202719
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                 0.0863598    0.0729633    0.0997562
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                 0.0925657    0.0786899    0.1064415
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                 0.1048786    0.0877710    0.1219861
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                 0.1018523    0.0804248    0.1232798
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                 0.1195731    0.1022746    0.1368716
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                 0.0889423    0.0722460    0.1056385
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                 0.0719171    0.0563930    0.0874412
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                 0.0143770   -0.0006932    0.0294473
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                 0.0184943    0.0057107    0.0312779
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                 0.0344080    0.0224940    0.0463220
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                 0.0807774    0.0686396    0.0929153
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                 0.1155669    0.0823795    0.1487544
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0979204    0.0672108    0.1286301
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                 0.0380947    0.0060043    0.0701852
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                 0.1373772    0.0828395    0.1919148
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                 0.1056163    0.0300104    0.1812222
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                 0.0648114   -0.0006073    0.1302301
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                 0.0243674   -0.0309352    0.0796700
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -0.0190121   -0.0764930    0.0384687
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -0.0424062   -0.1010796    0.0162672
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0358495   -0.0852149    0.0135158
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0460453   -0.1398472    0.0477565
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0655946   -0.1519353    0.0207461
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0931369   -0.1609615   -0.0253123
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    NA                 0.0079575   -0.0643995    0.0803145
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.0422210   -0.1100413    0.0255994
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.0652507   -0.1357533    0.0052518
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0320745   -0.1275234    0.0633744
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    NA                 0.0168256   -0.0481562    0.0818074
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.0042137   -0.0764484    0.0680211
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   NA                 0.0368194   -0.0418909    0.1155296
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   NA                 0.0330696   -0.0341684    0.1003077
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    NA                 0.0045187   -0.1536802    0.1627177
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0439655   -0.0662368    0.1541679
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.1207981    0.0079837    0.2336124
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.1064152   -0.0384092    0.2512396
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0650906   -0.0179949    0.1481761
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.1671247   -0.3475355    0.0132860
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.0073286   -0.1864877    0.1718305
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.0904498   -0.0825244    0.2634241
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.1859492    0.1125432    0.2593553
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.0064175   -0.0912892    0.0784543
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0298704   -0.0827572    0.1424981
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.0614978   -0.0485057    0.1715013
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0325012   -0.1511497    0.0861473
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0642460   -0.1402657    0.0117736
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    NA                 0.0212121   -0.0829867    0.1254108
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    NA                -0.1560692   -0.2932243   -0.0189141
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0387502   -0.1098313    0.0323309
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    NA                -0.0776917   -0.1634713    0.0080880
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    NA                -0.1092597   -0.2272807    0.0087614
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    NA                -0.0229595   -0.0802045    0.0342855
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    NA                -0.0069473   -0.1071778    0.0932832
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0628347   -0.1467687    0.0210992
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   NA                 0.0063266   -0.0442906    0.0569437
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   NA                 0.0181712   -0.0885206    0.1248631
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    NA                 0.0570369   -0.0120018    0.1260756
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0457280   -0.1237386    0.0322827
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0544710   -0.1595358    0.0505937
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.1130047   -0.1761984   -0.0498110
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.1179129   -0.1946702   -0.0411556
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.0669308   -0.1615738    0.0277122
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0636859   -0.1327003    0.0053285
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0636397   -0.1692801    0.0420007
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.0135068   -0.1339237    0.1069101
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   NA                 0.0612084   -0.0173237    0.1397405
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   NA                 0.1173723    0.0433403    0.1914042
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   NA                 0.0083758   -0.0789818    0.0957334
3-6 months     ki0047075b-MAL-ED          PERU                           1                    NA                 0.0539802   -0.0430846    0.1510450
3-6 months     ki0047075b-MAL-ED          PERU                           2                    NA                -0.0114639   -0.1025558    0.0796280
3-6 months     ki0047075b-MAL-ED          PERU                           3                    NA                -0.0803877   -0.1883879    0.0276124
3-6 months     ki0047075b-MAL-ED          PERU                           4                    NA                 0.0824476    0.0001314    0.1647637
3-6 months     ki0047075b-MAL-ED          PERU                           5                    NA                 0.2192210    0.0983636    0.3400784
3-6 months     ki0047075b-MAL-ED          PERU                           6                    NA                 0.0902909   -0.0376320    0.2182139
3-6 months     ki0047075b-MAL-ED          PERU                           7                    NA                -0.0012564   -0.0938912    0.0913785
3-6 months     ki0047075b-MAL-ED          PERU                           8                    NA                 0.0071513   -0.0573467    0.0716493
3-6 months     ki0047075b-MAL-ED          PERU                           9                    NA                -0.1221784   -0.2263423   -0.0180144
3-6 months     ki0047075b-MAL-ED          PERU                           10                   NA                 0.0113033   -0.0763777    0.0989844
3-6 months     ki0047075b-MAL-ED          PERU                           11                   NA                -0.0004045   -0.0782565    0.0774475
3-6 months     ki0047075b-MAL-ED          PERU                           12                   NA                 0.0799691   -0.0419577    0.2018959
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                 0.0056612   -0.0877076    0.0990300
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                 0.1046325   -0.0300060    0.2392711
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                 0.0534771   -0.1615925    0.2685468
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0070744   -0.1697186    0.1555697
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.0115585   -0.1540849    0.1309680
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                 0.1253602   -0.0102672    0.2609876
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0247078   -0.1378817    0.0884662
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                 0.0503574   -0.0967729    0.1974878
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.0208636   -0.1265236    0.0847965
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -0.0581969   -0.1770726    0.0606788
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0001028   -0.1404386    0.1402329
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.0757799   -0.1762304    0.0246706
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1029006   -0.2188306    0.0130294
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0799728   -0.1838946    0.0239490
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1626830   -0.2686056   -0.0567604
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.2210524   -0.3112197   -0.1308850
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0415672   -0.1420615    0.0589271
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0495430   -0.1625278    0.0634419
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                 0.0187419   -0.0754586    0.1129425
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0200758   -0.2020199    0.1618683
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                 0.0327095   -0.0750283    0.1404473
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.1286396   -0.2183501   -0.0389292
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.1178123   -0.1993343   -0.0362903
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0506141   -0.1491332    0.0479049
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
3-6 months     ki1000108-IRC              INDIA                          1                    NA                -0.0444711   -0.1166115    0.0276693
3-6 months     ki1000108-IRC              INDIA                          2                    NA                -0.1090959   -0.2230504    0.0048586
3-6 months     ki1000108-IRC              INDIA                          3                    NA                -0.0378783   -0.1489484    0.0731919
3-6 months     ki1000108-IRC              INDIA                          4                    NA                -0.1229426   -0.2002311   -0.0456542
3-6 months     ki1000108-IRC              INDIA                          5                    NA                -0.2274703   -0.3358154   -0.1191251
3-6 months     ki1000108-IRC              INDIA                          6                    NA                -0.0890677   -0.2102161    0.0320808
3-6 months     ki1000108-IRC              INDIA                          7                    NA                -0.0733012   -0.1871122    0.0405098
3-6 months     ki1000108-IRC              INDIA                          8                    NA                -0.0870846   -0.1969742    0.0228049
3-6 months     ki1000108-IRC              INDIA                          9                    NA                 0.0527327   -0.0689637    0.1744290
3-6 months     ki1000108-IRC              INDIA                          10                   NA                 0.0428353   -0.0405415    0.1262122
3-6 months     ki1000108-IRC              INDIA                          11                   NA                -0.0334874   -0.1187919    0.0518172
3-6 months     ki1000108-IRC              INDIA                          12                   NA                 0.0076140   -0.0672841    0.0825122
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0728335   -0.1278150   -0.0178520
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0273713   -0.1357109    0.0809683
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.0319088   -0.0748125    0.0109949
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.0312364   -0.1086392    0.0461665
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.0898440   -0.1876902    0.0080022
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.0508951   -0.1198641    0.0180740
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.0494404   -0.1365633    0.0376824
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    NA                 0.0399633   -0.0094572    0.0893839
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.0054643   -0.0681340    0.0572054
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   NA                 0.0194785   -0.0620678    0.1010247
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.0146355   -0.0743743    0.0451034
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   NA                 0.0182306   -0.0138214    0.0502826
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0833124   -0.1530924   -0.0135325
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.0929718   -0.1751303   -0.0108133
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.0588020   -0.1162471   -0.0013569
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.0877621   -0.1604005   -0.0151237
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.0573340   -0.1514515    0.0367835
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0774260   -0.1771351    0.0222830
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.0186747   -0.0936103    0.0562610
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.0070764   -0.1016140    0.0874612
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.0483913   -0.1347547    0.0379722
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.0292650   -0.1068695    0.0483396
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.0554660   -0.1093071   -0.0016248
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   NA                 0.0062250   -0.0502587    0.0627086
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                -0.0156606   -0.0665301    0.0352090
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    NA                -0.0784274   -0.1259059   -0.0309489
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    NA                -0.0651879   -0.1082316   -0.0221442
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    NA                -0.0691065   -0.1091099   -0.0291031
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    NA                -0.0377815   -0.0870366    0.0114736
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    NA                -0.0104172   -0.0541030    0.0332685
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    NA                -0.0120822   -0.0525172    0.0283528
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    NA                -0.0115305   -0.0892360    0.0661750
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    NA                 0.0162286   -0.0415381    0.0739954
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   NA                -0.0587899   -0.1015055   -0.0160743
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   NA                -0.1017740   -0.1443209   -0.0592272
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   NA                -0.0631761   -0.1044313   -0.0219209
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0405529   -0.0958207    0.0147148
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0067714   -0.0678527    0.0543099
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0427015   -0.0960572    0.0106542
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1206303   -0.1886529   -0.0526077
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.1265662   -0.1926662   -0.0604662
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.1281972   -0.1985550   -0.0578395
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.1503898   -0.2051124   -0.0956672
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0613409   -0.1161626   -0.0065192
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.0799721   -0.1334031   -0.0265412
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0891034   -0.1407808   -0.0374260
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0979913   -0.1482835   -0.0476991
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0602794   -0.1131227   -0.0074361
3-6 months     ki1113344-GMS-Nepal        NEPAL                          6                    NA                -0.1714825   -0.2124982   -0.1304668
3-6 months     ki1113344-GMS-Nepal        NEPAL                          7                    NA                -0.1780422   -0.2075110   -0.1485735
3-6 months     ki1113344-GMS-Nepal        NEPAL                          8                    NA                -0.1559855   -0.1844940   -0.1274770
3-6 months     ki1113344-GMS-Nepal        NEPAL                          9                    NA                -0.0977097   -0.2708535    0.0754341
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
3-6 months     ki1114097-CMIN             PERU                           1                    NA                -0.1980562   -0.3109013   -0.0852111
3-6 months     ki1114097-CMIN             PERU                           2                    NA                -0.1080518   -0.1731856   -0.0429180
3-6 months     ki1114097-CMIN             PERU                           3                    NA                -0.0104554   -0.0695731    0.0486623
3-6 months     ki1114097-CMIN             PERU                           4                    NA                -0.0202529   -0.0835352    0.0430295
3-6 months     ki1114097-CMIN             PERU                           5                    NA                 0.0370326   -0.0457271    0.1197923
3-6 months     ki1114097-CMIN             PERU                           6                    NA                -0.0939322   -0.1622496   -0.0256148
3-6 months     ki1114097-CMIN             PERU                           7                    NA                -0.0578018   -0.1581603    0.0425567
3-6 months     ki1114097-CMIN             PERU                           8                    NA                -0.0285630   -0.1031783    0.0460522
3-6 months     ki1114097-CMIN             PERU                           9                    NA                -0.0737470   -0.1411999   -0.0062941
3-6 months     ki1114097-CMIN             PERU                           10                   NA                -0.0237697   -0.1066940    0.0591547
3-6 months     ki1114097-CMIN             PERU                           11                   NA                -0.1017832   -0.1680868   -0.0354796
3-6 months     ki1114097-CMIN             PERU                           12                   NA                -0.0195160   -0.0962766    0.0572446
3-6 months     ki1114097-CONTENT          PERU                           1                    NA                 0.0510156   -0.0479092    0.1499404
3-6 months     ki1114097-CONTENT          PERU                           2                    NA                -0.0507206   -0.1017852    0.0003439
3-6 months     ki1114097-CONTENT          PERU                           3                    NA                -0.0166108   -0.0755318    0.0423102
3-6 months     ki1114097-CONTENT          PERU                           4                    NA                -0.1356244   -0.2194886   -0.0517601
3-6 months     ki1114097-CONTENT          PERU                           5                    NA                -0.0301327   -0.0876185    0.0273531
3-6 months     ki1114097-CONTENT          PERU                           6                    NA                -0.0607127   -0.1509988    0.0295734
3-6 months     ki1114097-CONTENT          PERU                           7                    NA                 0.0079985   -0.0479143    0.0639112
3-6 months     ki1114097-CONTENT          PERU                           8                    NA                 0.0981657    0.0381557    0.1581757
3-6 months     ki1114097-CONTENT          PERU                           9                    NA                 0.0583097   -0.0180781    0.1346976
3-6 months     ki1114097-CONTENT          PERU                           10                   NA                 0.0898479    0.0243724    0.1553233
3-6 months     ki1114097-CONTENT          PERU                           11                   NA                 0.1117271    0.0345362    0.1889180
3-6 months     ki1114097-CONTENT          PERU                           12                   NA                -0.1063913   -0.2062025   -0.0065801
3-6 months     ki1119695-PROBIT           BELARUS                        1                    NA                 0.0222946   -0.0230075    0.0675968
3-6 months     ki1119695-PROBIT           BELARUS                        2                    NA                 0.0139555   -0.0258213    0.0537323
3-6 months     ki1119695-PROBIT           BELARUS                        3                    NA                 0.0532657    0.0237214    0.0828100
3-6 months     ki1119695-PROBIT           BELARUS                        4                    NA                 0.0741005    0.0424871    0.1057139
3-6 months     ki1119695-PROBIT           BELARUS                        5                    NA                 0.0726750    0.0435344    0.1018156
3-6 months     ki1119695-PROBIT           BELARUS                        6                    NA                 0.0476430    0.0199393    0.0753468
3-6 months     ki1119695-PROBIT           BELARUS                        7                    NA                 0.0528726    0.0196891    0.0860562
3-6 months     ki1119695-PROBIT           BELARUS                        8                    NA                 0.0500581    0.0221068    0.0780094
3-6 months     ki1119695-PROBIT           BELARUS                        9                    NA                 0.0648857    0.0346616    0.0951099
3-6 months     ki1119695-PROBIT           BELARUS                        10                   NA                 0.0486519    0.0223009    0.0750029
3-6 months     ki1119695-PROBIT           BELARUS                        11                   NA                 0.0440022    0.0100402    0.0779641
3-6 months     ki1119695-PROBIT           BELARUS                        12                   NA                 0.0202488   -0.0059264    0.0464240
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0441513   -0.0721017   -0.0162008
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0209958   -0.0569480    0.0149564
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.0754884   -0.1126680   -0.0383087
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                 0.0135605   -0.0204319    0.0475528
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.0052077   -0.0379203    0.0275049
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                 0.1189719    0.0804486    0.1574952
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                 0.0055644   -0.0250618    0.0361906
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.0012699   -0.0288975    0.0263577
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.0015904   -0.0303260    0.0271453
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                 0.0264910   -0.0059683    0.0589504
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.0188407   -0.0488166    0.0111351
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                 0.0073591   -0.0226847    0.0374030
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0127396   -0.0019144    0.0273937
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0085849   -0.0253433    0.0081736
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0399431   -0.0557782   -0.0241080
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.0583566   -0.0742704   -0.0424427
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.0535303   -0.0717819   -0.0352786
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.0733118   -0.0929721   -0.0536515
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.0647842   -0.0821622   -0.0474063
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.0154839   -0.0303690   -0.0005987
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                 0.0316191    0.0150057    0.0482326
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                 0.0606773    0.0462970    0.0750577
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                 0.0480372    0.0346371    0.0614373
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                 0.0326963    0.0185815    0.0468112
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0005575   -0.1073876    0.1062726
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0562958   -0.1391263    0.0265347
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                 0.0102353   -0.0325328    0.0530035
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -0.0192555   -0.0475785    0.0090674
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -0.0479681   -0.0819189   -0.0140172
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -0.0560167   -0.1157991    0.0037657
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -0.0440973   -0.0858255   -0.0023692
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -0.0046111   -0.0403714    0.0311493
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                 0.0370018   -0.0178818    0.0918853
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                 0.0411486    0.0033219    0.0789752
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                 0.0494073   -0.0004672    0.0992817
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                 0.0455359   -0.0209613    0.1120331
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0823608   -0.1126279   -0.0520936
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0984815   -0.1294455   -0.0675176
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0660143   -0.0960049   -0.0360237
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.1113611   -0.1469518   -0.0757703
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.0843363   -0.1213338   -0.0473388
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.0496677   -0.0745027   -0.0248328
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.0518660   -0.0953350   -0.0083971
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0697813   -0.0979381   -0.0416245
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.0867108   -0.1228332   -0.0505885
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.0766599   -0.1116033   -0.0417164
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.1001191   -0.1535226   -0.0467156
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.0782309   -0.1033895   -0.0530723
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0121929   -0.0887436    0.0643578
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    NA                -0.1009796   -0.1623331   -0.0396261
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    NA                -0.0274631   -0.0689130    0.0139868
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    NA                -0.0462887   -0.1050946    0.0125171
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0075814   -0.0371125    0.0522753
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    NA                 0.1778000    0.0542474    0.3013525
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    NA                 0.0107627   -0.0648032    0.0863286
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    NA                 0.0228961   -0.0160711    0.0618634
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    NA                 0.0688097    0.0179414    0.1196780
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   NA                 0.0468736   -0.0195061    0.1132532
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   NA                 0.0111998   -0.0305640    0.0529635
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.0019978   -0.0781700    0.0821655
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    NA                -0.1025360   -0.1407370   -0.0643350
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0624267   -0.0978993   -0.0269540
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0466149   -0.0978988    0.0046690
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0789365   -0.1226926   -0.0351805
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0352457   -0.0744756    0.0039842
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    NA                -0.0846331   -0.1154164   -0.0538498
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    NA                -0.0427352   -0.0909558    0.0054855
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    NA                -0.0810559   -0.1209482   -0.0411637
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    NA                -0.0922368   -0.1330819   -0.0513918
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0840564   -0.1256914   -0.0424214
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   NA                -0.0974096   -0.1305044   -0.0643148
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   NA                -0.0932847   -0.1269978   -0.0595715
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0700172   -0.1003361   -0.0396984
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0878759   -0.1221121   -0.0536396
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0833167   -0.1276477   -0.0389857
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0635833   -0.0940990   -0.0330675
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.0497194   -0.0821610   -0.0172779
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.0176266   -0.0549399    0.0196868
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0297565   -0.0640567    0.0045437
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0103634   -0.0422661    0.0215393
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.0141045   -0.0582072    0.0299983
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.0442287   -0.0843251   -0.0041323
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.0651520   -0.0983143   -0.0319897
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.0557039   -0.0845690   -0.0268389
6-12 months    ki0047075b-MAL-ED          PERU                           1                    NA                -0.0501520   -0.0798381   -0.0204659
6-12 months    ki0047075b-MAL-ED          PERU                           2                    NA                -0.0143970   -0.0534959    0.0247018
6-12 months    ki0047075b-MAL-ED          PERU                           3                    NA                -0.0061343   -0.0622404    0.0499718
6-12 months    ki0047075b-MAL-ED          PERU                           4                    NA                -0.0717769   -0.1315222   -0.0120317
6-12 months    ki0047075b-MAL-ED          PERU                           5                    NA                -0.0580976   -0.1098372   -0.0063581
6-12 months    ki0047075b-MAL-ED          PERU                           6                    NA                -0.0393384   -0.0952646    0.0165878
6-12 months    ki0047075b-MAL-ED          PERU                           7                    NA                -0.0631763   -0.1049417   -0.0214110
6-12 months    ki0047075b-MAL-ED          PERU                           8                    NA                -0.0135971   -0.0579708    0.0307767
6-12 months    ki0047075b-MAL-ED          PERU                           9                    NA                 0.0002721   -0.0419994    0.0425436
6-12 months    ki0047075b-MAL-ED          PERU                           10                   NA                -0.0064101   -0.0919090    0.0790889
6-12 months    ki0047075b-MAL-ED          PERU                           11                   NA                -0.0405684   -0.0820443    0.0009075
6-12 months    ki0047075b-MAL-ED          PERU                           12                   NA                -0.0725341   -0.1020438   -0.0430243
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0579974   -0.1144817   -0.0015131
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0693175   -0.1340302   -0.0046047
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0215646   -0.0749530    0.0318238
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                -0.0857824   -0.1584499   -0.0131150
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.0217593   -0.0864758    0.0429572
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.0936345   -0.1745438   -0.0127251
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0515589   -0.0984336   -0.0046842
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -0.0621077   -0.1259901    0.0017747
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                -0.0555991   -0.0966963   -0.0145020
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -0.0597969   -0.1137364   -0.0058573
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0357157   -0.0952324    0.0238011
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.0417355   -0.0840377    0.0005667
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1149507   -0.1737618   -0.0561395
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1197298   -0.1676348   -0.0718249
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0462747   -0.1115162    0.0189669
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.1186726   -0.1650409   -0.0723044
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.1203701   -0.1656887   -0.0750515
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.1073922   -0.1453142   -0.0694703
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.1248316   -0.1828011   -0.0668622
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.1689952   -0.2539032   -0.0840872
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.2021579   -0.2421264   -0.1621895
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.1188342   -0.1659730   -0.0716953
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0963292   -0.1413538   -0.0513045
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.1505472   -0.1925995   -0.1084949
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
6-12 months    ki1000108-IRC              INDIA                          1                    NA                -0.0432250   -0.0806293   -0.0058206
6-12 months    ki1000108-IRC              INDIA                          2                    NA                -0.0372728   -0.0831299    0.0085844
6-12 months    ki1000108-IRC              INDIA                          3                    NA                -0.0532109   -0.0868601   -0.0195618
6-12 months    ki1000108-IRC              INDIA                          4                    NA                -0.0533348   -0.0986451   -0.0080245
6-12 months    ki1000108-IRC              INDIA                          5                    NA                -0.0131739   -0.0661400    0.0397923
6-12 months    ki1000108-IRC              INDIA                          6                    NA                -0.0292329   -0.0740467    0.0155808
6-12 months    ki1000108-IRC              INDIA                          7                    NA                 0.0084860   -0.0422162    0.0591882
6-12 months    ki1000108-IRC              INDIA                          8                    NA                -0.0187421   -0.0569085    0.0194243
6-12 months    ki1000108-IRC              INDIA                          9                    NA                -0.0476605   -0.1120559    0.0167348
6-12 months    ki1000108-IRC              INDIA                          10                   NA                -0.0230241   -0.0539595    0.0079113
6-12 months    ki1000108-IRC              INDIA                          11                   NA                -0.0151502   -0.0609430    0.0306427
6-12 months    ki1000108-IRC              INDIA                          12                   NA                -0.0158561   -0.0530867    0.0213746
6-12 months    ki1000304-VITAMIN-A        INDIA                          1                    NA                -0.1103529   -0.1242693   -0.0964365
6-12 months    ki1000304-VITAMIN-A        INDIA                          2                    NA                -0.1153911   -0.1332306   -0.0975516
6-12 months    ki1000304-VITAMIN-A        INDIA                          3                    NA                -0.0815786   -0.0990361   -0.0641211
6-12 months    ki1000304-VITAMIN-A        INDIA                          4                    NA                -0.0692690   -0.0847500   -0.0537881
6-12 months    ki1000304-VITAMIN-A        INDIA                          5                    NA                -0.0535134   -0.0665014   -0.0405253
6-12 months    ki1000304-VITAMIN-A        INDIA                          6                    NA                -0.0495470   -0.0654882   -0.0336057
6-12 months    ki1000304-VITAMIN-A        INDIA                          7                    NA                -0.0634045   -0.0817034   -0.0451055
6-12 months    ki1000304-VITAMIN-A        INDIA                          8                    NA                -0.0617324   -0.0758547   -0.0476100
6-12 months    ki1000304-VITAMIN-A        INDIA                          9                    NA                -0.0555760   -0.0738443   -0.0373077
6-12 months    ki1000304-VITAMIN-A        INDIA                          10                   NA                -0.0784958   -0.0975672   -0.0594243
6-12 months    ki1000304-VITAMIN-A        INDIA                          11                   NA                -0.0925807   -0.1104697   -0.0746917
6-12 months    ki1000304-VITAMIN-A        INDIA                          12                   NA                -0.1005846   -0.1314090   -0.0697603
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    NA                -0.0968759   -0.1275067   -0.0662451
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    NA                -0.0979270   -0.1398984   -0.0559557
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    NA                -0.1157157   -0.1542702   -0.0771612
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    NA                -0.0716531   -0.0998222   -0.0434840
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    NA                -0.0537235   -0.0898090   -0.0176381
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    NA                -0.0478833   -0.0757545   -0.0200122
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    NA                -0.0641105   -0.1089116   -0.0193094
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    NA                -0.1036530   -0.1274445   -0.0798615
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    NA                -0.1026787   -0.1353135   -0.0700440
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   NA                -0.1044785   -0.1274213   -0.0815357
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   NA                -0.0711337   -0.1113702   -0.0308971
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   NA                -0.0852804   -0.1067809   -0.0637799
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    NA                -0.0936292   -0.1875952    0.0003368
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    NA                -0.1108608   -0.2102685   -0.0114530
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    NA                -0.0791692   -0.2229593    0.0646208
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    NA                 0.0240650   -0.1671898    0.2153197
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    NA                -0.1436050   -0.1772871   -0.1099230
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    NA                -0.1160322   -0.1937409   -0.0383234
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    NA                -0.1227560   -0.1777093   -0.0678027
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    NA                -0.0364620   -0.2861300    0.2132060
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   NA                -0.1101852   -0.1895148   -0.0308556
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   NA                -0.1551015   -0.1924121   -0.1177908
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   NA                -0.1509779   -0.2110468   -0.0909091
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0627613   -0.0905658   -0.0349567
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.0742165   -0.1045527   -0.0438802
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.0648875   -0.0986752   -0.0310997
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.0434974   -0.0745366   -0.0124582
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.0618303   -0.0976644   -0.0259962
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0334738   -0.0665704   -0.0003773
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.0426919   -0.0720193   -0.0133645
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.0742381   -0.1038365   -0.0446397
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.0466730   -0.0868147   -0.0065314
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.0322556   -0.0691066    0.0045955
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.0288662   -0.0559750   -0.0017574
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.0725079   -0.0994744   -0.0455415
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          1                    NA                -0.0172619   -0.0379682    0.0034443
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          2                    NA                 0.0337009    0.0119487    0.0554532
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          3                    NA                 0.0175017   -0.0006652    0.0356685
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          4                    NA                 0.0058185   -0.0137593    0.0253964
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          5                    NA                 0.0222469   -0.0001016    0.0445953
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          6                    NA                -0.0026012   -0.0215701    0.0163677
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          7                    NA                 0.0010074   -0.0164947    0.0185094
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          8                    NA                -0.0304405   -0.0521304   -0.0087506
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          9                    NA                -0.0025865   -0.0309081    0.0257352
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          10                   NA                -0.0162423   -0.0353390    0.0028545
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          11                   NA                -0.0013701   -0.0205863    0.0178461
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          12                   NA                -0.0067387   -0.0240314    0.0105541
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.1186723   -0.1553345   -0.0820101
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.1200814   -0.1590264   -0.0811364
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.1030706   -0.1351143   -0.0710269
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0964317   -0.1388020   -0.0540615
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0486129   -0.0811795   -0.0160463
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0414266   -0.0712967   -0.0115566
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.0252193   -0.0541686    0.0037301
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0328967   -0.0632751   -0.0025183
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.0184778   -0.0468770    0.0099215
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0253040   -0.0514360    0.0008279
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0538107   -0.0736978   -0.0339235
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0841770   -0.1105362   -0.0578179
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    NA                -0.0942594   -0.1320056   -0.0565133
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    NA                -0.0954265   -0.1378936   -0.0529593
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    NA                -0.0916551   -0.1307176   -0.0525925
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    NA                -0.0821265   -0.1461475   -0.0181055
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    NA                -0.0863079   -0.1121694   -0.0604464
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    NA                -0.0669326   -0.1085681   -0.0252972
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    NA                -0.0319508   -0.0701425    0.0062408
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    NA                -0.0699996   -0.0939493   -0.0460498
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    NA                -0.0578687   -0.0999959   -0.0157416
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   NA                -0.0945036   -0.1281109   -0.0608963
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   NA                -0.0555356   -0.0971532   -0.0139181
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   NA                -0.1420259   -0.2146068   -0.0694450
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
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  1                    NA                -0.0880458   -0.1476449   -0.0284467
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    NA                -0.1807946   -0.3050062   -0.0565830
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    NA                -0.1301141   -0.2071206   -0.0531077
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    NA                -0.0963898   -0.1475624   -0.0452171
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    NA                -0.0780495   -0.1338322   -0.0222667
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    NA                -0.1268510   -0.1885510   -0.0651510
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    NA                -0.2179119   -0.3227677   -0.1130562
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    NA                -0.1481147   -0.2554900   -0.0407393
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    NA                -0.0787168   -0.1417412   -0.0156924
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   NA                -0.1578764   -0.2312935   -0.0844593
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   NA                -0.1546429   -0.2161688   -0.0931169
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   NA                -0.1156610   -0.1711771   -0.0601449
6-12 months    ki1114097-CMIN             PERU                           1                    NA                -0.0839657   -0.1199162   -0.0480152
6-12 months    ki1114097-CMIN             PERU                           2                    NA                -0.0932601   -0.1249234   -0.0615968
6-12 months    ki1114097-CMIN             PERU                           3                    NA                -0.0794893   -0.1098703   -0.0491083
6-12 months    ki1114097-CMIN             PERU                           4                    NA                -0.0952976   -0.1277781   -0.0628171
6-12 months    ki1114097-CMIN             PERU                           5                    NA                -0.0889211   -0.1242374   -0.0536047
6-12 months    ki1114097-CMIN             PERU                           6                    NA                -0.0855398   -0.1226128   -0.0484668
6-12 months    ki1114097-CMIN             PERU                           7                    NA                -0.1040081   -0.1429250   -0.0650912
6-12 months    ki1114097-CMIN             PERU                           8                    NA                -0.0950744   -0.1307716   -0.0593772
6-12 months    ki1114097-CMIN             PERU                           9                    NA                -0.0635498   -0.1100515   -0.0170482
6-12 months    ki1114097-CMIN             PERU                           10                   NA                -0.1142157   -0.1549345   -0.0734969
6-12 months    ki1114097-CMIN             PERU                           11                   NA                -0.1346919   -0.1674712   -0.1019126
6-12 months    ki1114097-CMIN             PERU                           12                   NA                -0.0761121   -0.1116352   -0.0405889
6-12 months    ki1114097-CONTENT          PERU                           1                    NA                -0.0558450   -0.1173676    0.0056776
6-12 months    ki1114097-CONTENT          PERU                           2                    NA                -0.0416368   -0.0842740    0.0010005
6-12 months    ki1114097-CONTENT          PERU                           3                    NA                 0.0177093   -0.0051791    0.0405977
6-12 months    ki1114097-CONTENT          PERU                           4                    NA                -0.0227381   -0.0605668    0.0150906
6-12 months    ki1114097-CONTENT          PERU                           5                    NA                -0.0260029   -0.0697020    0.0176962
6-12 months    ki1114097-CONTENT          PERU                           6                    NA                -0.0404249   -0.0816101    0.0007603
6-12 months    ki1114097-CONTENT          PERU                           7                    NA                -0.0155906   -0.0484747    0.0172934
6-12 months    ki1114097-CONTENT          PERU                           8                    NA                -0.0188609   -0.0683769    0.0306551
6-12 months    ki1114097-CONTENT          PERU                           9                    NA                -0.0557574   -0.0962730   -0.0152417
6-12 months    ki1114097-CONTENT          PERU                           10                   NA                -0.0400710   -0.0792607   -0.0008814
6-12 months    ki1114097-CONTENT          PERU                           11                   NA                -0.0021040   -0.0451186    0.0409106
6-12 months    ki1114097-CONTENT          PERU                           12                   NA                 0.0117003   -0.0798454    0.1032460
6-12 months    ki1119695-PROBIT           BELARUS                        1                    NA                 0.0638963    0.0413578    0.0864349
6-12 months    ki1119695-PROBIT           BELARUS                        2                    NA                 0.0673253    0.0431153    0.0915353
6-12 months    ki1119695-PROBIT           BELARUS                        3                    NA                 0.0519878    0.0306254    0.0733502
6-12 months    ki1119695-PROBIT           BELARUS                        4                    NA                 0.0317900    0.0131545    0.0504256
6-12 months    ki1119695-PROBIT           BELARUS                        5                    NA                 0.0298538    0.0103965    0.0493111
6-12 months    ki1119695-PROBIT           BELARUS                        6                    NA                 0.0328612    0.0175587    0.0481637
6-12 months    ki1119695-PROBIT           BELARUS                        7                    NA                 0.0336137    0.0036894    0.0635380
6-12 months    ki1119695-PROBIT           BELARUS                        8                    NA                 0.0300007    0.0035154    0.0564859
6-12 months    ki1119695-PROBIT           BELARUS                        9                    NA                 0.0356641    0.0107688    0.0605593
6-12 months    ki1119695-PROBIT           BELARUS                        10                   NA                 0.0400024    0.0190125    0.0609924
6-12 months    ki1119695-PROBIT           BELARUS                        11                   NA                 0.0445223    0.0244944    0.0645502
6-12 months    ki1119695-PROBIT           BELARUS                        12                   NA                 0.0541423    0.0353542    0.0729304
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    NA                -0.0434746   -0.0584552   -0.0284940
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    NA                -0.0477556   -0.0636289   -0.0318822
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    NA                -0.0345758   -0.0546851   -0.0144664
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    NA                -0.0312354   -0.0470665   -0.0154043
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    NA                -0.0376517   -0.0555297   -0.0197736
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    NA                -0.0675701   -0.0849945   -0.0501457
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    NA                -0.0627123   -0.0781375   -0.0472872
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    NA                -0.0567106   -0.0716204   -0.0418007
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    NA                -0.0563195   -0.0709805   -0.0416584
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   NA                -0.0655729   -0.0817818   -0.0493641
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   NA                -0.0471742   -0.0598065   -0.0345418
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   NA                -0.0434503   -0.0590914   -0.0278091
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                -0.0373174   -0.0638610   -0.0107739
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                -0.0496510   -0.0712828   -0.0280192
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3                    NA                -0.0610400   -0.0769566   -0.0451233
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         4                    NA                -0.0212932   -0.0424065   -0.0001799
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         5                    NA                -0.0407823   -0.0596827   -0.0218819
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         6                    NA                -0.0309968   -0.0572998   -0.0046939
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         7                    NA                -0.0344284   -0.0597709   -0.0090858
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         8                    NA                -0.0513559   -0.0799001   -0.0228118
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         9                    NA                 0.0138430   -0.0102468    0.0379328
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         10                   NA                -0.0630613   -0.0900691   -0.0360534
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         11                   NA                -0.0485143   -0.0825068   -0.0145219
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         12                   NA                -0.0179315   -0.0469132    0.0110502
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                -0.0683604   -0.1086493   -0.0280715
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2                    NA                -0.0710712   -0.1007318   -0.0414107
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         3                    NA                -0.0467527   -0.0762866   -0.0172187
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         4                    NA                -0.0558550   -0.0901556   -0.0215544
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         5                    NA                -0.0065846   -0.0478569    0.0346877
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         6                    NA                -0.0257378   -0.0552847    0.0038090
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         7                    NA                -0.0537123   -0.0866877   -0.0207370
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         8                    NA                -0.0181192   -0.0422592    0.0060208
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         9                    NA                -0.0505166   -0.0840578   -0.0169754
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         10                   NA                -0.0252060   -0.0667243    0.0163124
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         11                   NA                -0.0628043   -0.0955280   -0.0300805
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         12                   NA                -0.0489172   -0.0857070   -0.0121275
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0014537   -0.0300270    0.0329344
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    NA                 0.0085245   -0.0216099    0.0386589
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    NA                 0.0289356   -0.0143034    0.0721746
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    NA                -0.0172279   -0.0482269    0.0137712
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    NA                -0.0072051   -0.0419955    0.0275852
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    NA                -0.0221158   -0.0622062    0.0179746
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    NA                -0.0475593   -0.0848700   -0.0102485
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    NA                 0.0198451   -0.0095856    0.0492758
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    NA                -0.0289092   -0.0567877   -0.0010307
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   NA                 0.0481840    0.0176483    0.0787196
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   NA                -0.0243291   -0.0569403    0.0082821
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   NA                -0.0484111   -0.0807660   -0.0160563
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0970445   -0.1057174   -0.0883717
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0963835   -0.1052667   -0.0875003
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0763740   -0.0848279   -0.0679201
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.0693300   -0.0776477   -0.0610124
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.0589046   -0.0690128   -0.0487965
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.0613359   -0.0715360   -0.0511358
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.0542930   -0.0645776   -0.0440083
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.0546002   -0.0637391   -0.0454612
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.0721129   -0.0811217   -0.0631042
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.0709673   -0.0789068   -0.0630278
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.0813085   -0.0894615   -0.0731556
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.0914112   -0.0993880   -0.0834345
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0872746   -0.1192897   -0.0552595
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0458972   -0.1352123    0.0434178
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0434595   -0.0584702   -0.0284489
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -0.0471755   -0.0572426   -0.0371085
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -0.0431224   -0.0533570   -0.0328878
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -0.0398454   -0.0544629   -0.0252278
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -0.0261880   -0.0374762   -0.0148998
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -0.0357197   -0.0494790   -0.0219605
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -0.0379981   -0.0513048   -0.0246913
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -0.0274204   -0.0439015   -0.0109393
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                -0.0363802   -0.0512030   -0.0215574
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                -0.0312417   -0.0625302    0.0000468
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    NA                -0.0095893   -0.0339830    0.0148044
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    NA                -0.0199110   -0.0374037   -0.0024184
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    NA                -0.0324079   -0.0491607   -0.0156550
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    NA                -0.0078952   -0.0231362    0.0073459
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    NA                -0.0240491   -0.0470059   -0.0010924
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    NA                -0.0379282   -0.0638098   -0.0120465
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    NA                -0.0127313   -0.0301250    0.0046624
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    NA                -0.0164530   -0.0318525   -0.0010534
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    NA                -0.0233140   -0.0458162   -0.0008118
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   NA                -0.0078589   -0.0213497    0.0056319
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   NA                -0.0088267   -0.0308731    0.0132197
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   NA                -0.0211307   -0.0338619   -0.0083996
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    NA                -0.0023436   -0.0344657    0.0297785
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    NA                 0.0232075   -0.0038966    0.0503116
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    NA                 0.0161349   -0.0190835    0.0513534
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    NA                 0.0508678    0.0000321    0.1017035
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    NA                 0.0126244   -0.0182017    0.0434505
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    NA                -0.0572183   -0.0984970   -0.0159396
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    NA                -0.0050161   -0.0312912    0.0212590
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    NA                -0.0335044   -0.0529891   -0.0140196
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    NA                -0.0130427   -0.0364505    0.0103652
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   NA                -0.0114600   -0.0480487    0.0251288
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   NA                -0.0275596   -0.0523670   -0.0027521
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   NA                 0.0109394   -0.0482378    0.0701167
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    NA                -0.0172903   -0.0369057    0.0023250
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    NA                -0.0210962   -0.0392889   -0.0029036
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    NA                -0.0161399   -0.0386757    0.0063958
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    NA                -0.0116531   -0.0310287    0.0077224
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    NA                -0.0207946   -0.0433081    0.0017189
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    NA                 0.0050031   -0.0121695    0.0221757
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    NA                -0.0066015   -0.0256677    0.0124648
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    NA                -0.0177272   -0.0310580   -0.0043963
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    NA                -0.0109742   -0.0268480    0.0048996
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   NA                -0.0125211   -0.0268693    0.0018272
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   NA                 0.0018377   -0.0128869    0.0165622
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   NA                 0.0011791   -0.0113443    0.0137026
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    NA                -0.0218515   -0.0372889   -0.0064141
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    NA                -0.0254620   -0.0418640   -0.0090600
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    NA                -0.0351344   -0.0524101   -0.0178587
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    NA                -0.0238150   -0.0389737   -0.0086562
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    NA                -0.0320264   -0.0439958   -0.0200570
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    NA                -0.0379271   -0.0597115   -0.0161427
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    NA                -0.0160214   -0.0326788    0.0006360
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    NA                -0.0343702   -0.0496064   -0.0191340
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    NA                -0.0338910   -0.0563578   -0.0114242
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   NA                -0.0356638   -0.0545983   -0.0167293
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   NA                -0.0326602   -0.0486084   -0.0167119
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   NA                -0.0220692   -0.0399290   -0.0042095
12-24 months   ki0047075b-MAL-ED          PERU                           1                    NA                -0.0183008   -0.0341718   -0.0024297
12-24 months   ki0047075b-MAL-ED          PERU                           2                    NA                -0.0077244   -0.0248454    0.0093965
12-24 months   ki0047075b-MAL-ED          PERU                           3                    NA                -0.0170250   -0.0414685    0.0074185
12-24 months   ki0047075b-MAL-ED          PERU                           4                    NA                -0.0320137   -0.0560612   -0.0079661
12-24 months   ki0047075b-MAL-ED          PERU                           5                    NA                -0.0112377   -0.0335009    0.0110255
12-24 months   ki0047075b-MAL-ED          PERU                           6                    NA                -0.0043849   -0.0314217    0.0226520
12-24 months   ki0047075b-MAL-ED          PERU                           7                    NA                -0.0018029   -0.0310488    0.0274430
12-24 months   ki0047075b-MAL-ED          PERU                           8                    NA                -0.0004105   -0.0351950    0.0343740
12-24 months   ki0047075b-MAL-ED          PERU                           9                    NA                -0.0039201   -0.0286765    0.0208362
12-24 months   ki0047075b-MAL-ED          PERU                           10                   NA                -0.0059763   -0.0321544    0.0202019
12-24 months   ki0047075b-MAL-ED          PERU                           11                   NA                 0.0059067   -0.0173209    0.0291342
12-24 months   ki0047075b-MAL-ED          PERU                           12                   NA                -0.0171853   -0.0408888    0.0065181
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    NA                -0.0134048   -0.0411845    0.0143749
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    NA                -0.0420061   -0.0752893   -0.0087229
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    NA                -0.0179745   -0.0513732    0.0154242
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    NA                 0.0136376   -0.0128874    0.0401626
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    NA                -0.0303297   -0.0595660   -0.0010933
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    NA                -0.0078492   -0.0377302    0.0220318
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    NA                -0.0144086   -0.0276728   -0.0011444
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    NA                -0.0124132   -0.0499885    0.0251621
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    NA                 0.0006484   -0.0191599    0.0204566
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   NA                -0.0088498   -0.0312061    0.0135065
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   NA                -0.0207608   -0.0410367   -0.0004849
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   NA                -0.0224053   -0.0380149   -0.0067957
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0479003   -0.0777603   -0.0180402
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    NA                -0.0400937   -0.0652948   -0.0148926
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    NA                -0.0552178   -0.0747669   -0.0356687
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    NA                -0.0508116   -0.0890546   -0.0125686
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    NA                -0.0410718   -0.0696857   -0.0124580
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    NA                -0.0518094   -0.0771120   -0.0265068
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    NA                -0.0269650   -0.0559094    0.0019795
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    NA                -0.0104129   -0.0369561    0.0161302
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    NA                -0.0073516   -0.0330791    0.0183759
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   NA                -0.0487816   -0.0790749   -0.0184882
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   NA                -0.0640724   -0.0837649   -0.0443799
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   NA                -0.0246619   -0.0443725   -0.0049514
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
12-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0223471   -0.0484424    0.0037483
12-24 months   ki1000108-IRC              INDIA                          2                    NA                -0.0105336   -0.0389021    0.0178349
12-24 months   ki1000108-IRC              INDIA                          3                    NA                -0.0260468   -0.0481169   -0.0039767
12-24 months   ki1000108-IRC              INDIA                          4                    NA                -0.0055485   -0.0466832    0.0355863
12-24 months   ki1000108-IRC              INDIA                          5                    NA                -0.0298191   -0.0557307   -0.0039076
12-24 months   ki1000108-IRC              INDIA                          6                    NA                -0.0483675   -0.0734514   -0.0232836
12-24 months   ki1000108-IRC              INDIA                          7                    NA                -0.0578986   -0.0821816   -0.0336156
12-24 months   ki1000108-IRC              INDIA                          8                    NA                -0.0420552   -0.0590951   -0.0250154
12-24 months   ki1000108-IRC              INDIA                          9                    NA                -0.0516976   -0.0835021   -0.0198931
12-24 months   ki1000108-IRC              INDIA                          10                   NA                -0.0396601   -0.0587602   -0.0205600
12-24 months   ki1000108-IRC              INDIA                          11                   NA                -0.0195121   -0.0406540    0.0016299
12-24 months   ki1000108-IRC              INDIA                          12                   NA                -0.0162135   -0.0345832    0.0021561
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    NA                -0.0222767   -0.0390326   -0.0055208
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    NA                -0.0364428   -0.0480155   -0.0248701
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    NA                -0.0382135   -0.0519824   -0.0244446
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    NA                -0.0516274   -0.0648269   -0.0384278
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    NA                -0.0583110   -0.0728417   -0.0437802
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    NA                -0.0540648   -0.0751800   -0.0329495
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    NA                -0.0421595   -0.0577328   -0.0265861
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    NA                -0.0324406   -0.0535103   -0.0113709
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    NA                -0.0241617   -0.0449304   -0.0033930
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   NA                -0.0441670   -0.0589651   -0.0293688
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   NA                -0.0348663   -0.0511418   -0.0185907
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   NA                -0.0434360   -0.0557074   -0.0311646
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
12-24 months   ki1114097-CMIN             PERU                           1                    NA                -0.0190259   -0.0313421   -0.0067097
12-24 months   ki1114097-CMIN             PERU                           2                    NA                -0.0442751   -0.0710676   -0.0174826
12-24 months   ki1114097-CMIN             PERU                           3                    NA                -0.0248979   -0.0421360   -0.0076598
12-24 months   ki1114097-CMIN             PERU                           4                    NA                -0.0564279   -0.0817371   -0.0311186
12-24 months   ki1114097-CMIN             PERU                           5                    NA                -0.0172131   -0.0414519    0.0070257
12-24 months   ki1114097-CMIN             PERU                           6                    NA                -0.0158350   -0.0327483    0.0010784
12-24 months   ki1114097-CMIN             PERU                           7                    NA                -0.0415845   -0.0573735   -0.0257955
12-24 months   ki1114097-CMIN             PERU                           8                    NA                -0.0626301   -0.0940174   -0.0312427
12-24 months   ki1114097-CMIN             PERU                           9                    NA                -0.0345044   -0.0620236   -0.0069852
12-24 months   ki1114097-CMIN             PERU                           10                   NA                -0.0381710   -0.0662034   -0.0101386
12-24 months   ki1114097-CMIN             PERU                           11                   NA                -0.0241017   -0.0432835   -0.0049199
12-24 months   ki1114097-CMIN             PERU                           12                   NA                -0.0303936   -0.0642768    0.0034895
12-24 months   ki1119695-PROBIT           BELARUS                        1                    NA                -0.0219622   -0.1026890    0.0587646
12-24 months   ki1119695-PROBIT           BELARUS                        2                    NA                -0.0428602   -0.0734046   -0.0123159
12-24 months   ki1119695-PROBIT           BELARUS                        3                    NA                -0.0344551   -0.0684382   -0.0004721
12-24 months   ki1119695-PROBIT           BELARUS                        4                    NA                -0.0380106   -0.0574747   -0.0185465
12-24 months   ki1119695-PROBIT           BELARUS                        5                    NA                -0.0439046   -0.0961918    0.0083825
12-24 months   ki1119695-PROBIT           BELARUS                        6                    NA                -0.0366313   -0.0587933   -0.0144694
12-24 months   ki1119695-PROBIT           BELARUS                        7                    NA                -0.0406060   -0.0951015    0.0138895
12-24 months   ki1119695-PROBIT           BELARUS                        8                    NA                -0.0254155   -0.0438873   -0.0069437
12-24 months   ki1119695-PROBIT           BELARUS                        9                    NA                -0.0366398   -0.0689999   -0.0042798
12-24 months   ki1119695-PROBIT           BELARUS                        10                   NA                -0.0639846   -0.0833808   -0.0445884
12-24 months   ki1119695-PROBIT           BELARUS                        11                   NA                -0.0578668   -0.0955864   -0.0201471
12-24 months   ki1119695-PROBIT           BELARUS                        12                   NA                -0.0588838   -0.1079900   -0.0097776
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    NA                -0.0269556   -0.0391173   -0.0147939
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    NA                -0.0214942   -0.0331485   -0.0098400
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3                    NA                -0.0357918   -0.0498845   -0.0216990
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         4                    NA                -0.0385300   -0.0510421   -0.0260179
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         5                    NA                -0.0258905   -0.0409826   -0.0107985
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         6                    NA                -0.0200745   -0.0356177   -0.0045314
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         7                    NA                -0.0400777   -0.0631656   -0.0169898
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         8                    NA                -0.0144146   -0.0307153    0.0018861
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         9                    NA                -0.0428898   -0.0582120   -0.0275676
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         10                   NA                -0.0529662   -0.0903804   -0.0155521
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         11                   NA                -0.0193342   -0.0422646    0.0035962
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         12                   NA                -0.0267794   -0.0408077   -0.0127511
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    NA                -0.0118282   -0.0312746    0.0076181
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2                    NA                -0.0103193   -0.0260509    0.0054123
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         3                    NA                -0.0177807   -0.0340517   -0.0015097
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         4                    NA                -0.0219584   -0.0337580   -0.0101587
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         5                    NA                -0.0311473   -0.0494955   -0.0127990
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         6                    NA                -0.0229837   -0.0479369    0.0019695
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         7                    NA                -0.0399048   -0.0551664   -0.0246432
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         8                    NA                -0.0286059   -0.0452927   -0.0119191
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         9                    NA                -0.0182154   -0.0378077    0.0013768
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         10                   NA                -0.0168343   -0.0356691    0.0020005
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         11                   NA                -0.0146726   -0.0292417   -0.0001035
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         12                   NA                -0.0127148   -0.0321609    0.0067312
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                -0.0300485   -0.0473325   -0.0127645
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    NA                -0.0082613   -0.0229675    0.0064449
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    NA                -0.0197915   -0.0425390    0.0029560
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    NA                -0.0166888   -0.0338868    0.0005091
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    NA                -0.0114844   -0.0253497    0.0023808
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    NA                -0.0291446   -0.0490254   -0.0092639
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    NA                -0.0002834   -0.0225114    0.0219446
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    NA                -0.0162230   -0.0322881   -0.0001579
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    NA                 0.0125628   -0.0093679    0.0344936
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   NA                -0.0226470   -0.0494681    0.0041742
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   NA                -0.0269396   -0.0461439   -0.0077354
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   NA                -0.0042553   -0.0362359    0.0277253
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                -0.0241901   -0.0309532   -0.0174271
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    NA                -0.0202739   -0.0274555   -0.0130923
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    NA                -0.0240899   -0.0298663   -0.0183135
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    NA                -0.0195570   -0.0253701   -0.0137439
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    NA                -0.0206100   -0.0275843   -0.0136357
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    NA                -0.0225561   -0.0290648   -0.0160473
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    NA                -0.0183587   -0.0239172   -0.0128002
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    NA                -0.0197257   -0.0258950   -0.0135564
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    NA                -0.0204157   -0.0266965   -0.0141349
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   NA                -0.0162174   -0.0218353   -0.0105994
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   NA                -0.0117703   -0.0165686   -0.0069719
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   NA                -0.0143461   -0.0196626   -0.0090296
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    NA                -0.0122992   -0.0245208   -0.0000776
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    NA                -0.0129303   -0.0200816   -0.0057790
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    NA                -0.0194170   -0.0250213   -0.0138126
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    NA                -0.0173766   -0.0218006   -0.0129526
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    NA                -0.0140294   -0.0190647   -0.0089941
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    NA                -0.0111085   -0.0172619   -0.0049550
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    NA                -0.0146811   -0.0191757   -0.0101866
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    NA                -0.0119031   -0.0169705   -0.0068358
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    NA                -0.0135275   -0.0184907   -0.0085644
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   NA                -0.0142719   -0.0211134   -0.0074305
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   NA                -0.0177090   -0.0248107   -0.0106073
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   NA                -0.0136063   -0.0251397   -0.0020728


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
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1424947   -0.1529204   -0.1320690
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
3-6 months     ki1113344-GMS-Nepal        NEPAL                          NA                   NA                -0.1659967   -0.1845182   -0.1474752
3-6 months     ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0085806   -0.0411510    0.0239898
3-6 months     ki1114097-CMIN             PERU                           NA                   NA                -0.0576273   -0.0800097   -0.0352449
3-6 months     ki1114097-CONTENT          PERU                           NA                   NA                 0.0127563   -0.0097402    0.0352528
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0010307   -0.0103671    0.0083056
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
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                -0.1080113   -0.1390238   -0.0769988
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                -0.0530976   -0.0624028   -0.0437924
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          NA                   NA                 0.0011158   -0.0049386    0.0071703
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0598587   -0.0690454   -0.0506721
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                -0.0751878   -0.0881244   -0.0622513
6-12 months    ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0773003   -0.0921728   -0.0624278
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  NA                   NA                -0.1193239   -0.1415513   -0.0970964
6-12 months    ki1114097-CMIN             PERU                           NA                   NA                -0.0944187   -0.1050232   -0.0838142
6-12 months    ki1114097-CONTENT          PERU                           NA                   NA                -0.0227186   -0.0352036   -0.0102335
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0493071   -0.0539695   -0.0446447
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
12-24 months   ki1114097-CMIN             BANGLADESH                     NA                   NA                -0.0315963   -0.0399345   -0.0232582
12-24 months   ki1114097-CMIN             PERU                           NA                   NA                -0.0292246   -0.0357414   -0.0227079
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
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                  0.0406415   -0.0968527    0.1781357
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0370274   -0.1734771    0.0994222
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0297703   -0.0957049    0.1552455
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0233850   -0.1180965    0.1648666
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0140344   -0.1226880    0.1507568
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0260474   -0.1457034    0.1977982
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0685315   -0.1939425    0.0568794
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0891786   -0.2226715    0.0443144
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                 -0.0551657   -0.2098615    0.0995300
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0949576   -0.2316815    0.0417664
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.0274869   -0.1584141    0.1034403
0-3 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.3580084    0.1016654    0.6143513
0-3 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1601734   -0.1129216    0.4332684
0-3 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.2531907   -0.0069828    0.5133642
0-3 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.2857849    0.0452930    0.5262767
0-3 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.0681275   -0.2009102    0.3371652
0-3 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.2631334   -0.0208482    0.5471150
0-3 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0921222   -0.2165577    0.4008020
0-3 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.1164863   -0.1077962    0.3407687
0-3 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.1424084   -0.1129155    0.3977323
0-3 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.1553654   -0.0627562    0.3734870
0-3 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.3018028    0.0068773    0.5967283
0-3 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          INDIA                          2                    1                  0.0428105   -0.1290450    0.2146660
0-3 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.1732929   -0.0133242    0.3599101
0-3 months     ki0047075b-MAL-ED          INDIA                          4                    1                  0.2161048    0.0314679    0.4007417
0-3 months     ki0047075b-MAL-ED          INDIA                          5                    1                  0.1192247   -0.0930128    0.3314623
0-3 months     ki0047075b-MAL-ED          INDIA                          6                    1                  0.1198576   -0.0539759    0.2936910
0-3 months     ki0047075b-MAL-ED          INDIA                          7                    1                  0.1621887   -0.0216263    0.3460037
0-3 months     ki0047075b-MAL-ED          INDIA                          8                    1                  0.1511586   -0.0280954    0.3304125
0-3 months     ki0047075b-MAL-ED          INDIA                          9                    1                  0.1597904   -0.0578526    0.3774334
0-3 months     ki0047075b-MAL-ED          INDIA                          10                   1                  0.1356691   -0.0606426    0.3319808
0-3 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0937284   -0.0590755    0.2465324
0-3 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.1666945   -0.0309892    0.3643783
0-3 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0013749   -0.1498929    0.1471432
0-3 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1039174   -0.2653395    0.0575047
0-3 months     ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0289922   -0.1534525    0.2114369
0-3 months     ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0134148   -0.1369493    0.1101197
0-3 months     ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0694918   -0.0722039    0.2111876
0-3 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1063255   -0.2859022    0.0732513
0-3 months     ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0430294   -0.1426599    0.2287187
0-3 months     ki0047075b-MAL-ED          NEPAL                          9                    1                  0.0213415   -0.1178737    0.1605566
0-3 months     ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.0797946   -0.2299009    0.0703117
0-3 months     ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.0094028   -0.1607320    0.1419264
0-3 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0823923   -0.2962172    0.1314325
0-3 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          PERU                           2                    1                  0.0210975   -0.1222833    0.1644782
0-3 months     ki0047075b-MAL-ED          PERU                           3                    1                  0.1294185    0.0056249    0.2532121
0-3 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0285398   -0.0856122    0.1426918
0-3 months     ki0047075b-MAL-ED          PERU                           5                    1                 -0.1315294   -0.2743840    0.0113251
0-3 months     ki0047075b-MAL-ED          PERU                           6                    1                 -0.0732083   -0.2504215    0.1040049
0-3 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.0147070   -0.1408423    0.1114282
0-3 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0522131   -0.1757686    0.0713424
0-3 months     ki0047075b-MAL-ED          PERU                           9                    1                  0.0428107   -0.0845021    0.1701235
0-3 months     ki0047075b-MAL-ED          PERU                           10                   1                  0.0446405   -0.0813950    0.1706759
0-3 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.0298950   -0.1622800    0.1024900
0-3 months     ki0047075b-MAL-ED          PERU                           12                   1                 -0.0737659   -0.2173340    0.0698021
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.1435050   -0.3670293    0.0800192
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0794243   -0.1704938    0.3293425
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.1204418   -0.0784008    0.3192844
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0215159   -0.2786746    0.2356428
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0267525   -0.2288594    0.1753544
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0264595   -0.1684293    0.2213484
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0856171   -0.1135487    0.2847829
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0599808   -0.1583908    0.2783523
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.1126730   -0.0666672    0.2920132
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0225196   -0.1890675    0.2341066
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.1097064   -0.3111601    0.0917473
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0962275   -0.2242831    0.0318281
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0443281   -0.1980526    0.1093965
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0772486   -0.3181731    0.1636758
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0758926   -0.2055722    0.0537871
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.1294792   -0.3734152    0.1144569
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.1935275   -0.3474563   -0.0395988
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.0479963   -0.2250877    0.1290951
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0412053   -0.2031070    0.1206963
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0811954   -0.2279578    0.0655670
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0903384   -0.2277339    0.0470570
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.1825510   -0.3193565   -0.0457456
0-3 months     ki1000108-IRC              INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          2                    1                 -0.1781697   -0.4599337    0.1035942
0-3 months     ki1000108-IRC              INDIA                          3                    1                 -0.2254056   -0.5063315    0.0555204
0-3 months     ki1000108-IRC              INDIA                          4                    1                 -0.3571718   -0.5918120   -0.1225315
0-3 months     ki1000108-IRC              INDIA                          5                    1                 -0.5519826   -0.7760459   -0.3279193
0-3 months     ki1000108-IRC              INDIA                          6                    1                  0.0095360   -0.2538956    0.2729675
0-3 months     ki1000108-IRC              INDIA                          7                    1                 -0.0919998   -0.3006071    0.1166075
0-3 months     ki1000108-IRC              INDIA                          8                    1                 -0.0416801   -0.2520208    0.1686606
0-3 months     ki1000108-IRC              INDIA                          9                    1                  0.0461086   -0.2667120    0.3589292
0-3 months     ki1000108-IRC              INDIA                          10                   1                 -0.0120392   -0.2241230    0.2000446
0-3 months     ki1000108-IRC              INDIA                          11                   1                 -0.0603493   -0.2620281    0.1413296
0-3 months     ki1000108-IRC              INDIA                          12                   1                 -0.1841740   -0.3832985    0.0149504
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0103991   -0.0521865    0.0729847
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0245064   -0.0329621    0.0819749
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                 -0.0582112   -0.1650619    0.0486395
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.0932018   -0.1339327   -0.0524708
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                 -0.0208655   -0.0833025    0.0415716
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                 -0.1213095   -0.1777983   -0.0648207
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.0897541   -0.1484049   -0.0311032
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.0907154   -0.1419717   -0.0394591
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.0923289   -0.1833841   -0.0012736
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                 -0.0909922   -0.1641687   -0.0178156
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                 -0.1215761   -0.1858815   -0.0572707
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                  0.0132130   -0.1196358    0.1460619
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0681006   -0.1939110    0.0577098
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0516391   -0.1743275    0.0710492
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.1521153   -0.2793053   -0.0249252
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0978815   -0.2325709    0.0368080
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.1143028   -0.2477794    0.0191739
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.1752268   -0.3299154   -0.0205382
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.1589349   -0.3122466   -0.0056233
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.1219934   -0.2498389    0.0058521
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0788633   -0.1980411    0.0403146
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0290247   -0.1425336    0.0844841
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    1                  0.0957809    0.0194330    0.1721289
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    1                  0.0314100   -0.0429164    0.1057364
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    1                  0.0679833   -0.0026610    0.1386277
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    1                 -0.0043520   -0.0723711    0.0636671
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    1                  0.0160984   -0.0607191    0.0929160
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    1                  0.1217610    0.0331490    0.2103730
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    1                 -0.0015497   -0.0890325    0.0859332
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    1                 -0.0724355   -0.1686277    0.0237566
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   1                 -0.0119050   -0.0878239    0.0640139
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   1                  0.0713962   -0.0011602    0.1439525
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   1                  0.0816231   -0.0012910    0.1645372
0-3 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        2                    1                  0.0046891   -0.0443783    0.0537566
0-3 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0465835   -0.0119931    0.1051602
0-3 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.0208887   -0.0445711    0.0863486
0-3 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.0112774   -0.0585605    0.0811153
0-3 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.0763693   -0.0009074    0.1536461
0-3 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0360500   -0.0425130    0.1146130
0-3 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0478602   -0.0400493    0.1357698
0-3 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0350912   -0.0462552    0.1164375
0-3 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0252461   -0.0384845    0.0889767
0-3 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0320092   -0.0313735    0.0953919
0-3 months     ki1119695-PROBIT           BELARUS                        12                   1                  0.0461813   -0.0142449    0.1066076
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0235732   -0.0281259    0.0752722
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0192961   -0.0665027    0.0279106
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                 -0.0925215   -0.1422798   -0.0427631
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                 -0.1033796   -0.1548080   -0.0519511
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.1996589   -0.2503269   -0.1489910
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.1551856   -0.2032526   -0.1071186
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.1409512   -0.1869846   -0.0949179
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.1357872   -0.1800842   -0.0914902
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.1351085   -0.1827513   -0.0874657
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.1187210   -0.1680753   -0.0693667
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                 -0.0493354   -0.0963644   -0.0023064
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0198319   -0.0381269   -0.0015368
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0136259   -0.0330333    0.0057814
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.0013130   -0.0232918    0.0206658
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0043393   -0.0291573    0.0204786
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0133815   -0.0084622    0.0352252
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0172493   -0.0383427    0.0038440
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0342745   -0.0551563   -0.0133926
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                 -0.0918146   -0.1124321   -0.0711970
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                 -0.0876973   -0.1065251   -0.0688696
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                 -0.0717836   -0.0899750   -0.0535922
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                 -0.0254142   -0.0438592   -0.0069692
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    2                  0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    2                 -0.0176465   -0.0636433    0.0283503
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    2                 -0.0774722   -0.1230817   -0.0318627
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    2                  0.0218102   -0.0420374    0.0856578
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    2                 -0.0099506   -0.0929639    0.0730626
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    2                 -0.0507556   -0.1240790    0.0225679
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    2                 -0.0911995   -0.1566348   -0.0257643
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    2                 -0.1345791   -0.2010573   -0.0681009
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   2                 -0.1579732   -0.2251890   -0.0907573
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0101958   -0.1161945    0.0958029
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0297451   -0.1292019    0.0697117
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0572873   -0.1411749    0.0266002
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     5                    1                  0.0438071   -0.0437856    0.1313997
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0063714   -0.0902556    0.0775127
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0294012   -0.1154683    0.0566660
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.0037750   -0.1036840    0.1112340
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     9                    1                  0.0526751   -0.0289311    0.1342814
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0316359   -0.0558559    0.1191276
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.0726689   -0.0202410    0.1655788
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0689192   -0.0144948    0.1523332
3-6 months     ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0394468   -0.1533522    0.2322458
3-6 months     ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.1162793   -0.0780245    0.3105831
3-6 months     ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.1018964   -0.1125820    0.3163749
3-6 months     ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0605719   -0.1181181    0.2392618
3-6 months     ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.1716435   -0.4115913    0.0683043
3-6 months     ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0118473   -0.2508555    0.2271608
3-6 months     ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0859311   -0.1484767    0.3203388
3-6 months     ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.1814305    0.0070305    0.3558304
3-6 months     ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0109362   -0.1904637    0.1685913
3-6 months     ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0253517   -0.1688438    0.2195472
3-6 months     ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0569791   -0.1357064    0.2496645
3-6 months     ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0317449   -0.1726578    0.1091681
3-6 months     ki0047075b-MAL-ED          INDIA                          3                    1                  0.0537132   -0.1041945    0.2116210
3-6 months     ki0047075b-MAL-ED          INDIA                          4                    1                 -0.1235681   -0.3049213    0.0577852
3-6 months     ki0047075b-MAL-ED          INDIA                          5                    1                 -0.0062491   -0.1445603    0.1320621
3-6 months     ki0047075b-MAL-ED          INDIA                          6                    1                 -0.0451905   -0.1915996    0.1012186
3-6 months     ki0047075b-MAL-ED          INDIA                          7                    1                 -0.0767585   -0.2441097    0.0905927
3-6 months     ki0047075b-MAL-ED          INDIA                          8                    1                  0.0095417   -0.1221947    0.1412780
3-6 months     ki0047075b-MAL-ED          INDIA                          9                    1                  0.0255539   -0.1297639    0.1808717
3-6 months     ki0047075b-MAL-ED          INDIA                          10                   1                 -0.0303336   -0.1756690    0.1150018
3-6 months     ki0047075b-MAL-ED          INDIA                          11                   1                  0.0388277   -0.0901667    0.1678222
3-6 months     ki0047075b-MAL-ED          INDIA                          12                   1                  0.0506724   -0.1088914    0.2102362
3-6 months     ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.1027648   -0.2069378    0.0014081
3-6 months     ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.1115079   -0.2372257    0.0142098
3-6 months     ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.1700416   -0.2636353   -0.0764479
3-6 months     ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.1749498   -0.2781875   -0.0717121
3-6 months     ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.1239677   -0.2411157   -0.0068198
3-6 months     ki0047075b-MAL-ED          NEPAL                          7                    1                 -0.1207228   -0.2183411   -0.0231045
3-6 months     ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.1206766   -0.2468758    0.0055226
3-6 months     ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.0705437   -0.2093477    0.0682604
3-6 months     ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0041715   -0.1003925    0.1087356
3-6 months     ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0603354   -0.0408925    0.1615632
3-6 months     ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0486610   -0.1600060    0.0626839
3-6 months     ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          PERU                           2                    1                 -0.0654441   -0.1985580    0.0676698
3-6 months     ki0047075b-MAL-ED          PERU                           3                    1                 -0.1343679   -0.2795768    0.0108409
3-6 months     ki0047075b-MAL-ED          PERU                           4                    1                  0.0284674   -0.0988022    0.1557369
3-6 months     ki0047075b-MAL-ED          PERU                           5                    1                  0.1652408    0.0102308    0.3202508
3-6 months     ki0047075b-MAL-ED          PERU                           6                    1                  0.0363107   -0.1242690    0.1968905
3-6 months     ki0047075b-MAL-ED          PERU                           7                    1                 -0.0552365   -0.1894111    0.0789380
3-6 months     ki0047075b-MAL-ED          PERU                           8                    1                 -0.0468289   -0.1633689    0.0697111
3-6 months     ki0047075b-MAL-ED          PERU                           9                    1                 -0.1761585   -0.3185373   -0.0337798
3-6 months     ki0047075b-MAL-ED          PERU                           10                   1                 -0.0426769   -0.1734803    0.0881266
3-6 months     ki0047075b-MAL-ED          PERU                           11                   1                 -0.0543847   -0.1788135    0.0700440
3-6 months     ki0047075b-MAL-ED          PERU                           12                   1                  0.0259889   -0.1298563    0.1818341
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                  0.0989714   -0.0648739    0.2628167
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0478160   -0.1866466    0.2822785
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.0127356   -0.2002745    0.1748033
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0172196   -0.1876061    0.1531668
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.1196990   -0.0449598    0.2843579
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0303690   -0.1770867    0.1163487
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0446962   -0.1295596    0.2189520
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                 -0.0265247   -0.1675275    0.1144781
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.0638581   -0.2150175    0.0873014
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0057640   -0.1743222    0.1627942
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0814411   -0.2185835    0.0557013
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0229278   -0.1327626    0.1786182
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0597824   -0.2168154    0.0972506
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.1181517   -0.2650187    0.0287153
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0613334   -0.0920904    0.2147573
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0533577   -0.1085230    0.2152383
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.1216426   -0.0277345    0.2710196
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0828248   -0.1329144    0.2985640
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.1356101   -0.0226530    0.2938732
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0257390   -0.1723259    0.1208479
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0149117   -0.1566353    0.1268120
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0522865   -0.0998508    0.2044238
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
3-6 months     ki1000108-IRC              INDIA                          2                    1                 -0.0646248   -0.1994946    0.0702450
3-6 months     ki1000108-IRC              INDIA                          3                    1                  0.0065929   -0.1258489    0.1390346
3-6 months     ki1000108-IRC              INDIA                          4                    1                 -0.0784715   -0.1841963    0.0272533
3-6 months     ki1000108-IRC              INDIA                          5                    1                 -0.1829992   -0.3131641   -0.0528342
3-6 months     ki1000108-IRC              INDIA                          6                    1                 -0.0445965   -0.1855972    0.0964041
3-6 months     ki1000108-IRC              INDIA                          7                    1                 -0.0288301   -0.1635787    0.1059185
3-6 months     ki1000108-IRC              INDIA                          8                    1                 -0.0426135   -0.1740667    0.0888397
3-6 months     ki1000108-IRC              INDIA                          9                    1                  0.0972038   -0.0442679    0.2386755
3-6 months     ki1000108-IRC              INDIA                          10                   1                  0.0873064   -0.0229475    0.1975604
3-6 months     ki1000108-IRC              INDIA                          11                   1                  0.0109837   -0.1007351    0.1227026
3-6 months     ki1000108-IRC              INDIA                          12                   1                  0.0520852   -0.0519051    0.1560754
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          2                    1                  0.0454622   -0.0794114    0.1703358
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          3                    1                  0.0409247   -0.0456956    0.1275450
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.0415972   -0.0784089    0.1616032
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          5                    1                 -0.0170104   -0.1516432    0.1176223
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.0219385   -0.0648679    0.1087448
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0233931   -0.0712280    0.1180142
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          8                    1                  0.1127969    0.0323769    0.1932169
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          9                    1                  0.0673692   -0.0251848    0.1599232
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          10                   1                  0.0923120    0.0207736    0.1638505
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0581981   -0.0045527    0.1209488
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.0910641    0.0253106    0.1568177
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0096594   -0.1174520    0.0981333
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     3                    1                  0.0245104   -0.0658730    0.1148939
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0044496   -0.1051749    0.0962756
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.0259784   -0.0911853    0.1431422
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.0058864   -0.1158146    0.1275874
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.0646378   -0.0377565    0.1670321
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     8                    1                  0.0762360   -0.0412655    0.1937375
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0349211   -0.0761099    0.1459522
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0540475   -0.0503158    0.1584108
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0278465   -0.0602904    0.1159833
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     12                   1                  0.0895374   -0.0002381    0.1793129
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          2                    1                 -0.0627668   -0.1323507    0.0068171
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          3                    1                 -0.0495274   -0.1161642    0.0171095
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          4                    1                 -0.0534459   -0.1181605    0.0112687
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          5                    1                 -0.0221209   -0.0929289    0.0486871
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          6                    1                  0.0052433   -0.0618100    0.0722967
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          7                    1                  0.0035784   -0.0614039    0.0685606
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          8                    1                  0.0041300   -0.0887454    0.0970055
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          9                    1                  0.0318892   -0.0450830    0.1088613
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          10                   1                 -0.0431293   -0.1095547    0.0232960
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          11                   1                 -0.0861135   -0.1524305   -0.0197965
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          12                   1                 -0.0475155   -0.1130114    0.0179803
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0337815   -0.0485923    0.1161553
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0021486   -0.0789689    0.0746717
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0800774   -0.1677221    0.0075674
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0860133   -0.1721744    0.0001478
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0876443   -0.1771135    0.0018249
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.1098369   -0.1876128   -0.0320610
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.0207880   -0.0986336    0.0570576
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0394192   -0.1162918    0.0374534
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0485505   -0.1242147    0.0271138
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0574384   -0.1321634    0.0172867
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0197265   -0.0961918    0.0567388
3-6 months     ki1113344-GMS-Nepal        NEPAL                          6                    6                  0.0000000    0.0000000    0.0000000
3-6 months     ki1113344-GMS-Nepal        NEPAL                          7                    6                 -0.0065597   -0.0570641    0.0439447
3-6 months     ki1113344-GMS-Nepal        NEPAL                          8                    6                  0.0154970   -0.0344532    0.0654472
3-6 months     ki1113344-GMS-Nepal        NEPAL                          9                    6                  0.0737729   -0.1041627    0.2517084
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
3-6 months     ki1114097-CMIN             PERU                           2                    1                  0.0900044   -0.0402892    0.2202980
3-6 months     ki1114097-CMIN             PERU                           3                    1                  0.1876008    0.0602080    0.3149936
3-6 months     ki1114097-CMIN             PERU                           4                    1                  0.1778033    0.0484253    0.3071813
3-6 months     ki1114097-CMIN             PERU                           5                    1                  0.2350888    0.0951489    0.3750287
3-6 months     ki1114097-CMIN             PERU                           6                    1                  0.1041240   -0.0277899    0.2360379
3-6 months     ki1114097-CMIN             PERU                           7                    1                  0.1402544   -0.0107617    0.2912704
3-6 months     ki1114097-CMIN             PERU                           8                    1                  0.1694932    0.0342103    0.3047760
3-6 months     ki1114097-CMIN             PERU                           9                    1                  0.1243092   -0.0071591    0.2557774
3-6 months     ki1114097-CMIN             PERU                           10                   1                  0.1742865    0.0342492    0.3143239
3-6 months     ki1114097-CMIN             PERU                           11                   1                  0.0962730   -0.0346093    0.2271553
3-6 months     ki1114097-CMIN             PERU                           12                   1                  0.1785402    0.0420623    0.3150180
3-6 months     ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1114097-CONTENT          PERU                           2                    1                 -0.1017362   -0.2130633    0.0095908
3-6 months     ki1114097-CONTENT          PERU                           3                    1                 -0.0676264   -0.1827690    0.0475161
3-6 months     ki1114097-CONTENT          PERU                           4                    1                 -0.1866400   -0.3163293   -0.0569506
3-6 months     ki1114097-CONTENT          PERU                           5                    1                 -0.0811483   -0.1955630    0.0332665
3-6 months     ki1114097-CONTENT          PERU                           6                    1                 -0.1117283   -0.2456600    0.0222034
3-6 months     ki1114097-CONTENT          PERU                           7                    1                 -0.0430171   -0.1566497    0.0706154
3-6 months     ki1114097-CONTENT          PERU                           8                    1                  0.0471501   -0.0685535    0.1628537
3-6 months     ki1114097-CONTENT          PERU                           9                    1                  0.0072941   -0.1176908    0.1322790
3-6 months     ki1114097-CONTENT          PERU                           10                   1                  0.0388323   -0.0797981    0.1574626
3-6 months     ki1114097-CONTENT          PERU                           11                   1                  0.0607115   -0.0647658    0.1861889
3-6 months     ki1114097-CONTENT          PERU                           12                   1                 -0.1574069   -0.2979359   -0.0168779
3-6 months     ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        2                    1                 -0.0083391   -0.0452060    0.0285277
3-6 months     ki1119695-PROBIT           BELARUS                        3                    1                  0.0309711   -0.0182366    0.0801788
3-6 months     ki1119695-PROBIT           BELARUS                        4                    1                  0.0518058   -0.0003056    0.1039173
3-6 months     ki1119695-PROBIT           BELARUS                        5                    1                  0.0503803    0.0005923    0.1001684
3-6 months     ki1119695-PROBIT           BELARUS                        6                    1                  0.0253484   -0.0207079    0.0714047
3-6 months     ki1119695-PROBIT           BELARUS                        7                    1                  0.0305780   -0.0243347    0.0854907
3-6 months     ki1119695-PROBIT           BELARUS                        8                    1                  0.0277635   -0.0272143    0.0827412
3-6 months     ki1119695-PROBIT           BELARUS                        9                    1                  0.0425911    0.0017385    0.0834437
3-6 months     ki1119695-PROBIT           BELARUS                        10                   1                  0.0263573   -0.0175906    0.0703051
3-6 months     ki1119695-PROBIT           BELARUS                        11                   1                  0.0217075   -0.0167725    0.0601876
3-6 months     ki1119695-PROBIT           BELARUS                        12                   1                 -0.0020459   -0.0512018    0.0471101
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                  0.0231555   -0.0223834    0.0686943
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                 -0.0313371   -0.0778511    0.0151769
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0577118    0.0137037    0.1017198
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0389436   -0.0040836    0.0819708
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                  0.1631231    0.1155283    0.2107180
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                  0.0497157    0.0082525    0.0911788
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                  0.0428814    0.0035811    0.0821817
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                  0.0425609    0.0024740    0.0826479
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                  0.0706423    0.0278074    0.1134773
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                  0.0253105   -0.0156746    0.0662956
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.0515104    0.0104755    0.0925453
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     2                    1                 -0.0213245   -0.0437131    0.0010641
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     3                    1                 -0.0526827   -0.0739618   -0.0314037
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     4                    1                 -0.0710962   -0.0929217   -0.0492707
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     5                    1                 -0.0662699   -0.0901219   -0.0424179
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     6                    1                 -0.0860515   -0.1102430   -0.0618599
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     7                    1                 -0.0775239   -0.1001869   -0.0548608
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     8                    1                 -0.0282235   -0.0492129   -0.0072341
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0188795   -0.0028297    0.0405886
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0479377    0.0274912    0.0683842
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0352976    0.0150198    0.0555754
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0199567   -0.0002544    0.0401678
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0557383   -0.1885445    0.0770680
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0107928   -0.1043467    0.1259324
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 -0.0186980   -0.1279184    0.0905223
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.0474106   -0.1598346    0.0650134
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     6                    1                 -0.0554592   -0.1771901    0.0662717
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.0435398   -0.1583566    0.0712770
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     8                    1                 -0.0040536   -0.1163613    0.1082541
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.0375593   -0.0825432    0.1576618
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.0417061   -0.0728551    0.1562672
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.0499648   -0.0676413    0.1675708
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.0460934   -0.0798335    0.1720202
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0161208   -0.0594205    0.0271790
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     3                    1                  0.0163465   -0.0262626    0.0589555
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     4                    1                 -0.0290003   -0.0757207    0.0177202
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0019755   -0.0497763    0.0458253
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     6                    1                  0.0326930   -0.0064589    0.0718449
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     7                    1                  0.0304947   -0.0224737    0.0834631
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     8                    1                  0.0125795   -0.0287594    0.0539184
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0043501   -0.0514768    0.0427766
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0057009   -0.0405284    0.0519302
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     11                   1                 -0.0177583   -0.0791427    0.0436260
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     12                   1                  0.0041299   -0.0352282    0.0434879
6-12 months    ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         2                    1                 -0.0887867   -0.1868900    0.0093167
6-12 months    ki0047075b-MAL-ED          BRAZIL                         3                    1                 -0.0152702   -0.1023225    0.0717821
6-12 months    ki0047075b-MAL-ED          BRAZIL                         4                    1                 -0.0340958   -0.1306263    0.0624347
6-12 months    ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0197743   -0.0688685    0.1084171
6-12 months    ki0047075b-MAL-ED          BRAZIL                         6                    1                  0.1899929    0.0446476    0.3353381
6-12 months    ki0047075b-MAL-ED          BRAZIL                         7                    1                  0.0229556   -0.0846093    0.1305206
6-12 months    ki0047075b-MAL-ED          BRAZIL                         8                    1                  0.0350890   -0.0508089    0.1209870
6-12 months    ki0047075b-MAL-ED          BRAZIL                         9                    1                  0.0810026   -0.0109082    0.1729134
6-12 months    ki0047075b-MAL-ED          BRAZIL                         10                   1                  0.0590665   -0.0422561    0.1603890
6-12 months    ki0047075b-MAL-ED          BRAZIL                         11                   1                  0.0233927   -0.0638095    0.1105949
6-12 months    ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0141907   -0.0966555    0.1250369
6-12 months    ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          INDIA                          2                    1                  0.0401094   -0.0120215    0.0922402
6-12 months    ki0047075b-MAL-ED          INDIA                          3                    1                  0.0559211   -0.0080270    0.1198691
6-12 months    ki0047075b-MAL-ED          INDIA                          4                    1                  0.0235995   -0.0344858    0.0816849
6-12 months    ki0047075b-MAL-ED          INDIA                          5                    1                  0.0672903    0.0125336    0.1220471
6-12 months    ki0047075b-MAL-ED          INDIA                          6                    1                  0.0179030   -0.0311575    0.0669634
6-12 months    ki0047075b-MAL-ED          INDIA                          7                    1                  0.0598009   -0.0017178    0.1213196
6-12 months    ki0047075b-MAL-ED          INDIA                          8                    1                  0.0214801   -0.0337531    0.0767133
6-12 months    ki0047075b-MAL-ED          INDIA                          9                    1                  0.0102992   -0.0456260    0.0662245
6-12 months    ki0047075b-MAL-ED          INDIA                          10                   1                  0.0184796   -0.0380252    0.0749844
6-12 months    ki0047075b-MAL-ED          INDIA                          11                   1                  0.0051264   -0.0454164    0.0556693
6-12 months    ki0047075b-MAL-ED          INDIA                          12                   1                  0.0092514   -0.0416985    0.0602013
6-12 months    ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0178586   -0.0635899    0.0278727
6-12 months    ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0132995   -0.0670067    0.0404078
6-12 months    ki0047075b-MAL-ED          NEPAL                          4                    1                  0.0064340   -0.0365828    0.0494507
6-12 months    ki0047075b-MAL-ED          NEPAL                          5                    1                  0.0202978   -0.0241058    0.0647014
6-12 months    ki0047075b-MAL-ED          NEPAL                          6                    1                  0.0523907    0.0043124    0.1004689
6-12 months    ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0402607   -0.0055185    0.0860400
6-12 months    ki0047075b-MAL-ED          NEPAL                          8                    1                  0.0596539    0.0156424    0.1036654
6-12 months    ki0047075b-MAL-ED          NEPAL                          9                    1                  0.0559128    0.0023938    0.1094318
6-12 months    ki0047075b-MAL-ED          NEPAL                          10                   1                  0.0257885   -0.0244803    0.0760573
6-12 months    ki0047075b-MAL-ED          NEPAL                          11                   1                  0.0048652   -0.0400677    0.0497982
6-12 months    ki0047075b-MAL-ED          NEPAL                          12                   1                  0.0143133   -0.0275486    0.0561753
6-12 months    ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          PERU                           2                    1                  0.0357550   -0.0133367    0.0848466
6-12 months    ki0047075b-MAL-ED          PERU                           3                    1                  0.0440177   -0.0194580    0.1074934
6-12 months    ki0047075b-MAL-ED          PERU                           4                    1                 -0.0216249   -0.0883389    0.0450891
6-12 months    ki0047075b-MAL-ED          PERU                           5                    1                 -0.0079456   -0.0675966    0.0517054
6-12 months    ki0047075b-MAL-ED          PERU                           6                    1                  0.0108136   -0.0525031    0.0741303
6-12 months    ki0047075b-MAL-ED          PERU                           7                    1                 -0.0130243   -0.0642650    0.0382164
6-12 months    ki0047075b-MAL-ED          PERU                           8                    1                  0.0365549   -0.0168332    0.0899431
6-12 months    ki0047075b-MAL-ED          PERU                           9                    1                  0.0504241   -0.0012300    0.1020782
6-12 months    ki0047075b-MAL-ED          PERU                           10                   1                  0.0437419   -0.0467641    0.1342479
6-12 months    ki0047075b-MAL-ED          PERU                           11                   1                  0.0095836   -0.0414214    0.0605887
6-12 months    ki0047075b-MAL-ED          PERU                           12                   1                 -0.0223821   -0.0642401    0.0194759
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0113201   -0.0972166    0.0745765
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                  0.0364328   -0.0412898    0.1141554
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                 -0.0277851   -0.1198233    0.0642532
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                  0.0362381   -0.0496613    0.1221374
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                 -0.0356371   -0.1343123    0.0630382
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                  0.0064385   -0.0669626    0.0798395
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                 -0.0041103   -0.0893830    0.0811624
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0023983   -0.0674548    0.0722513
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                 -0.0017995   -0.0799016    0.0763027
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                  0.0222817   -0.0597714    0.1043348
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                  0.0162619   -0.0543068    0.0868307
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0047792   -0.0806319    0.0710735
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0686760   -0.0191603    0.1565123
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0037220   -0.0786137    0.0711697
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                 -0.0054195   -0.0796659    0.0688269
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0075584   -0.0624189    0.0775357
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                 -0.0098810   -0.0924595    0.0726975
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                 -0.0540446   -0.1573312    0.0492420
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                 -0.0872073   -0.1583144   -0.0161001
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0038835   -0.0792547    0.0714877
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0186215   -0.0554458    0.0926888
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                 -0.0355966   -0.1078956    0.0367024
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
6-12 months    ki1000108-IRC              INDIA                          2                    1                  0.0059522   -0.0532252    0.0651296
6-12 months    ki1000108-IRC              INDIA                          3                    1                 -0.0099860   -0.0602985    0.0403266
6-12 months    ki1000108-IRC              INDIA                          4                    1                 -0.0101099   -0.0688645    0.0486448
6-12 months    ki1000108-IRC              INDIA                          5                    1                  0.0300511   -0.0347910    0.0948932
6-12 months    ki1000108-IRC              INDIA                          6                    1                  0.0139920   -0.0443805    0.0723646
6-12 months    ki1000108-IRC              INDIA                          7                    1                  0.0517110   -0.0112953    0.1147173
6-12 months    ki1000108-IRC              INDIA                          8                    1                  0.0244829   -0.0289565    0.0779222
6-12 months    ki1000108-IRC              INDIA                          9                    1                 -0.0044356   -0.0789060    0.0700348
6-12 months    ki1000108-IRC              INDIA                          10                   1                  0.0202009   -0.0283386    0.0687403
6-12 months    ki1000108-IRC              INDIA                          11                   1                  0.0280748   -0.0310527    0.0872023
6-12 months    ki1000108-IRC              INDIA                          12                   1                  0.0273689   -0.0254061    0.0801439
6-12 months    ki1000304-VITAMIN-A        INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304-VITAMIN-A        INDIA                          2                    1                 -0.0050382   -0.0276637    0.0175873
6-12 months    ki1000304-VITAMIN-A        INDIA                          3                    1                  0.0287743    0.0064487    0.0510998
6-12 months    ki1000304-VITAMIN-A        INDIA                          4                    1                  0.0410839    0.0202674    0.0619003
6-12 months    ki1000304-VITAMIN-A        INDIA                          5                    1                  0.0568395    0.0378039    0.0758752
6-12 months    ki1000304-VITAMIN-A        INDIA                          6                    1                  0.0608060    0.0396449    0.0819670
6-12 months    ki1000304-VITAMIN-A        INDIA                          7                    1                  0.0469484    0.0239589    0.0699380
6-12 months    ki1000304-VITAMIN-A        INDIA                          8                    1                  0.0486205    0.0287936    0.0684475
6-12 months    ki1000304-VITAMIN-A        INDIA                          9                    1                  0.0547769    0.0318118    0.0777421
6-12 months    ki1000304-VITAMIN-A        INDIA                          10                   1                  0.0318571    0.0082481    0.0554662
6-12 months    ki1000304-VITAMIN-A        INDIA                          11                   1                  0.0177722   -0.0048923    0.0404368
6-12 months    ki1000304-VITAMIN-A        INDIA                          12                   1                  0.0097683   -0.0240519    0.0435885
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          2                    1                 -0.0010511   -0.0564395    0.0543372
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          3                    1                 -0.0188398   -0.0736199    0.0359403
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          4                    1                  0.0252228   -0.0077140    0.0581597
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          5                    1                  0.0431523   -0.0130187    0.0993234
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          6                    1                  0.0489926    0.0104880    0.0874972
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          7                    1                  0.0327654   -0.0254400    0.0909708
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          8                    1                 -0.0067771   -0.0479564    0.0344022
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          9                    1                 -0.0058028   -0.0538190    0.0422133
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          10                   1                 -0.0076026   -0.0378810    0.0226758
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          11                   1                  0.0257422   -0.0188118    0.0702962
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          12                   1                  0.0115955   -0.0223825    0.0455735
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          2                    1                 -0.0172316   -0.1540216    0.1195584
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          3                    1                  0.0144599   -0.1573108    0.1862307
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          4                    1                  0.1176942   -0.0953973    0.3307857
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          5                    1                 -0.0499758   -0.1497961    0.0498444
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          6                    1                 -0.0224030   -0.1443384    0.0995325
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          7                    1                 -0.0291268   -0.1379820    0.0797285
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          9                    1                  0.0571672   -0.2095981    0.3239325
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          10                   1                 -0.0165560   -0.1395308    0.1064188
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          11                   1                 -0.0614723   -0.1625747    0.0396301
6-12 months    ki1000304b-SAS-FoodSuppl   INDIA                          12                   1                 -0.0573488   -0.1688740    0.0541765
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0114552   -0.0526059    0.0296955
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0021262   -0.0458835    0.0416311
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     4                    1                  0.0192639   -0.0224077    0.0609355
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     5                    1                  0.0009310   -0.0444251    0.0462870
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     6                    1                  0.0292874   -0.0139384    0.0725133
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     7                    1                  0.0200694   -0.0203433    0.0604821
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.0114768   -0.0520866    0.0291329
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     9                    1                  0.0160882   -0.0327425    0.0649189
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     10                   1                  0.0305057   -0.0156580    0.0766694
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     11                   1                  0.0338950   -0.0049376    0.0727277
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0097467   -0.0484801    0.0289868
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          2                    1                  0.0509629    0.0209311    0.0809947
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          3                    1                  0.0347636    0.0072176    0.0623096
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          4                    1                  0.0230805   -0.0054158    0.0515768
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          5                    1                  0.0395088    0.0090424    0.0699752
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          6                    1                  0.0146608   -0.0134207    0.0427422
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          7                    1                  0.0182693   -0.0088428    0.0453815
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          8                    1                 -0.0131786   -0.0431652    0.0168081
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          9                    1                  0.0146755   -0.0204082    0.0497591
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          10                   1                  0.0010197   -0.0271483    0.0291877
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          11                   1                  0.0158918   -0.0123573    0.0441409
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          12                   1                  0.0105233   -0.0164543    0.0375008
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2                    1                 -0.0014092   -0.0548959    0.0520776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   3                    1                  0.0156017   -0.0330904    0.0642937
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   4                    1                  0.0222405   -0.0337894    0.0782705
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0700593    0.0210216    0.1190971
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   6                    1                  0.0772456    0.0299557    0.1245356
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0934530    0.0467391    0.1401668
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0857756    0.0381629    0.1333882
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   9                    1                  0.1001945    0.0538196    0.1465694
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   10                   1                  0.0933682    0.0483460    0.1383904
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   11                   1                  0.0648616    0.0231529    0.1065703
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0344952   -0.0106592    0.0796497
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      2                    1                 -0.0011670   -0.0579845    0.0556505
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      3                    1                  0.0026044   -0.0517155    0.0569243
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      4                    1                  0.0121330   -0.0621870    0.0864530
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      5                    1                  0.0079515   -0.0378042    0.0537073
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      6                    1                  0.0273268   -0.0288718    0.0835254
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      7                    1                  0.0623086    0.0086116    0.1160056
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      8                    1                  0.0242599   -0.0204432    0.0689629
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      9                    1                  0.0363907   -0.0201732    0.0929546
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      10                   1                 -0.0002442   -0.0507835    0.0502952
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      11                   1                  0.0387238   -0.0174616    0.0949092
6-12 months    ki1112895-Guatemala BSC    GUATEMALA                      12                   1                 -0.0477665   -0.1295758    0.0340428
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
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  2                    1                 -0.0927488   -0.2305188    0.0450212
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  3                    1                 -0.0420683   -0.1394441    0.0553075
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  4                    1                 -0.0083439   -0.0868977    0.0702098
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  5                    1                  0.0099964   -0.0716355    0.0916282
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  6                    1                 -0.0388052   -0.1245895    0.0469791
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  7                    1                 -0.1298661   -0.2504762   -0.0092561
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  8                    1                 -0.0600688   -0.1828757    0.0627380
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  9                    1                  0.0093290   -0.0774127    0.0960708
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  10                   1                 -0.0698306   -0.1643933    0.0247322
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  11                   1                 -0.0665970   -0.1522562    0.0190621
6-12 months    ki1114097-CMIN             GUINEA-BISSAU                  12                   1                 -0.0276152   -0.1090651    0.0538347
6-12 months    ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CMIN             PERU                           2                    1                 -0.0092944   -0.0572007    0.0386118
6-12 months    ki1114097-CMIN             PERU                           3                    1                  0.0044764   -0.0425921    0.0515449
6-12 months    ki1114097-CMIN             PERU                           4                    1                 -0.0113319   -0.0597821    0.0371183
6-12 months    ki1114097-CMIN             PERU                           5                    1                 -0.0049554   -0.0553507    0.0454399
6-12 months    ki1114097-CMIN             PERU                           6                    1                 -0.0015741   -0.0532156    0.0500674
6-12 months    ki1114097-CMIN             PERU                           7                    1                 -0.0200424   -0.0730232    0.0329384
6-12 months    ki1114097-CMIN             PERU                           8                    1                 -0.0111087   -0.0617716    0.0395541
6-12 months    ki1114097-CMIN             PERU                           9                    1                  0.0204158   -0.0383621    0.0791937
6-12 months    ki1114097-CMIN             PERU                           10                   1                 -0.0302500   -0.0845682    0.0240681
6-12 months    ki1114097-CMIN             PERU                           11                   1                 -0.0507262   -0.0993772   -0.0020752
6-12 months    ki1114097-CMIN             PERU                           12                   1                  0.0078536   -0.0426868    0.0583940
6-12 months    ki1114097-CONTENT          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1114097-CONTENT          PERU                           2                    1                  0.0142082   -0.0606447    0.0890612
6-12 months    ki1114097-CONTENT          PERU                           3                    1                  0.0735543    0.0079120    0.1391966
6-12 months    ki1114097-CONTENT          PERU                           4                    1                  0.0331069   -0.0391153    0.1053291
6-12 months    ki1114097-CONTENT          PERU                           5                    1                  0.0298421   -0.0456207    0.1053050
6-12 months    ki1114097-CONTENT          PERU                           6                    1                  0.0154201   -0.0586154    0.0894556
6-12 months    ki1114097-CONTENT          PERU                           7                    1                  0.0402544   -0.0295052    0.1100139
6-12 months    ki1114097-CONTENT          PERU                           8                    1                  0.0369841   -0.0419897    0.1159580
6-12 months    ki1114097-CONTENT          PERU                           9                    1                  0.0000877   -0.0735775    0.0737528
6-12 months    ki1114097-CONTENT          PERU                           10                   1                  0.0157740   -0.0571703    0.0887182
6-12 months    ki1114097-CONTENT          PERU                           11                   1                  0.0537410   -0.0213275    0.1288096
6-12 months    ki1114097-CONTENT          PERU                           12                   1                  0.0675453   -0.0427527    0.1778433
6-12 months    ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        2                    1                  0.0034289   -0.0190871    0.0259450
6-12 months    ki1119695-PROBIT           BELARUS                        3                    1                 -0.0119085   -0.0378489    0.0140318
6-12 months    ki1119695-PROBIT           BELARUS                        4                    1                 -0.0321063   -0.0548611   -0.0093515
6-12 months    ki1119695-PROBIT           BELARUS                        5                    1                 -0.0340425   -0.0581233   -0.0099618
6-12 months    ki1119695-PROBIT           BELARUS                        6                    1                 -0.0310351   -0.0536377   -0.0084326
6-12 months    ki1119695-PROBIT           BELARUS                        7                    1                 -0.0302827   -0.0610227    0.0004573
6-12 months    ki1119695-PROBIT           BELARUS                        8                    1                 -0.0338957   -0.0610283   -0.0067630
6-12 months    ki1119695-PROBIT           BELARUS                        9                    1                 -0.0282323   -0.0540743   -0.0023902
6-12 months    ki1119695-PROBIT           BELARUS                        10                   1                 -0.0238939   -0.0454204   -0.0023674
6-12 months    ki1119695-PROBIT           BELARUS                        11                   1                 -0.0193740   -0.0432814    0.0045333
6-12 months    ki1119695-PROBIT           BELARUS                        12                   1                 -0.0097540   -0.0324471    0.0129391
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       2                    1                 -0.0042810   -0.0261072    0.0175452
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       3                    1                  0.0088988   -0.0161772    0.0339748
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       4                    1                  0.0122392   -0.0095563    0.0340347
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       5                    1                  0.0058229   -0.0175018    0.0291477
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       6                    1                 -0.0240955   -0.0470744   -0.0011166
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       7                    1                 -0.0192377   -0.0407402    0.0022647
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       8                    1                 -0.0132360   -0.0343718    0.0078998
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       9                    1                 -0.0128449   -0.0338059    0.0081162
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       10                   1                 -0.0220983   -0.0441698   -0.0000269
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       11                   1                 -0.0036996   -0.0232954    0.0158962
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       12                   1                  0.0000243   -0.0216336    0.0216823
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         2                    1                 -0.0123335   -0.0465753    0.0219082
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         3                    1                 -0.0237226   -0.0546725    0.0072274
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         4                    1                  0.0160242   -0.0178923    0.0499408
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         5                    1                 -0.0034648   -0.0360499    0.0291202
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         6                    1                  0.0063206   -0.0310480    0.0436891
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         7                    1                  0.0028891   -0.0338098    0.0395879
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         8                    1                 -0.0140385   -0.0530171    0.0249401
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         9                    1                  0.0511604    0.0153152    0.0870056
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         10                   1                 -0.0257439   -0.0636119    0.0121241
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         11                   1                 -0.0111969   -0.0543251    0.0319313
6-12 months    ki1148112-iLiNS-DOSE       MALAWI                         12                   1                  0.0193859   -0.0199142    0.0586860
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2                    1                 -0.0027109   -0.0527403    0.0473186
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         3                    1                  0.0216077   -0.0283468    0.0715622
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         4                    1                  0.0125054   -0.0404071    0.0654178
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         5                    1                  0.0617758    0.0040991    0.1194525
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         6                    1                  0.0426225   -0.0073396    0.0925847
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         7                    1                  0.0146480   -0.0374151    0.0667112
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         8                    1                  0.0502412    0.0032738    0.0972086
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         9                    1                  0.0178438   -0.0345796    0.0702671
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         10                   1                  0.0431544   -0.0146986    0.1010074
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         11                   1                  0.0055561   -0.0463481    0.0574603
6-12 months    ki1148112-iLiNS-DYAD-M     MALAWI                         12                   1                  0.0194431   -0.0351158    0.0740021
6-12 months    ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    ki1148112-LCNI-5           MALAWI                         2                    1                  0.0070709   -0.0365080    0.0506497
6-12 months    ki1148112-LCNI-5           MALAWI                         3                    1                  0.0274819   -0.0260031    0.0809669
6-12 months    ki1148112-LCNI-5           MALAWI                         4                    1                 -0.0186815   -0.0628627    0.0254997
6-12 months    ki1148112-LCNI-5           MALAWI                         5                    1                 -0.0086588   -0.0555779    0.0382603
6-12 months    ki1148112-LCNI-5           MALAWI                         6                    1                 -0.0235695   -0.0745428    0.0274038
6-12 months    ki1148112-LCNI-5           MALAWI                         7                    1                 -0.0490129   -0.0978302   -0.0001957
6-12 months    ki1148112-LCNI-5           MALAWI                         8                    1                  0.0183914   -0.0247038    0.0614867
6-12 months    ki1148112-LCNI-5           MALAWI                         9                    1                 -0.0303629   -0.0724134    0.0116876
6-12 months    ki1148112-LCNI-5           MALAWI                         10                   1                  0.0467303    0.0028730    0.0905876
6-12 months    ki1148112-LCNI-5           MALAWI                         11                   1                 -0.0257828   -0.0711097    0.0195441
6-12 months    ki1148112-LCNI-5           MALAWI                         12                   1                 -0.0498648   -0.0950076   -0.0047220
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0006610   -0.0113570    0.0126791
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0206705    0.0083691    0.0329720
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0277145    0.0164307    0.0389983
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0381399    0.0251596    0.0511201
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0357086    0.0224186    0.0489987
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0427516    0.0290846    0.0564185
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0424444    0.0299721    0.0549167
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0249316    0.0122446    0.0376186
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0260772    0.0146419    0.0375126
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0157360    0.0041823    0.0272898
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0056333   -0.0065026    0.0177692
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     2                    1                  0.0413774   -0.0528977    0.1356525
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     3                    1                  0.0438151    0.0081194    0.0795107
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     4                    1                  0.0400991    0.0066285    0.0735697
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     5                    1                  0.0441522    0.0113758    0.0769287
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.0474293    0.0120703    0.0827882
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     7                    1                  0.0610866    0.0274424    0.0947308
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.0515549    0.0171897    0.0859201
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     9                    1                  0.0492765    0.0144048    0.0841483
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     10                   1                  0.0598542    0.0236302    0.0960782
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     11                   1                  0.0508944    0.0156322    0.0861565
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     12                   1                  0.0560329    0.0109836    0.1010822
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     2                    1                 -0.0103217   -0.0403391    0.0196957
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     3                    1                 -0.0228185   -0.0524109    0.0067738
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     4                    1                  0.0016941   -0.0270694    0.0304577
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     5                    1                 -0.0144598   -0.0479570    0.0190374
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     6                    1                 -0.0283389   -0.0639045    0.0072267
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     7                    1                 -0.0031420   -0.0331019    0.0268178
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     8                    1                 -0.0068636   -0.0357115    0.0219842
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     9                    1                 -0.0137247   -0.0469120    0.0194627
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     10                   1                  0.0017304   -0.0261453    0.0296061
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     11                   1                  0.0007626   -0.0321174    0.0336426
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     12                   1                 -0.0115414   -0.0390575    0.0159746
12-24 months   ki0047075b-MAL-ED          BRAZIL                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         2                    1                  0.0255510   -0.0164783    0.0675803
12-24 months   ki0047075b-MAL-ED          BRAZIL                         3                    1                  0.0184785   -0.0291888    0.0661458
12-24 months   ki0047075b-MAL-ED          BRAZIL                         4                    1                  0.0532113   -0.0069227    0.1133453
12-24 months   ki0047075b-MAL-ED          BRAZIL                         5                    1                  0.0149680   -0.0295526    0.0594885
12-24 months   ki0047075b-MAL-ED          BRAZIL                         6                    1                 -0.0548747   -0.1071792   -0.0025702
12-24 months   ki0047075b-MAL-ED          BRAZIL                         7                    1                 -0.0026725   -0.0441721    0.0388270
12-24 months   ki0047075b-MAL-ED          BRAZIL                         8                    1                 -0.0311608   -0.0687305    0.0064089
12-24 months   ki0047075b-MAL-ED          BRAZIL                         9                    1                 -0.0106991   -0.0504453    0.0290471
12-24 months   ki0047075b-MAL-ED          BRAZIL                         10                   1                 -0.0091164   -0.0578048    0.0395721
12-24 months   ki0047075b-MAL-ED          BRAZIL                         11                   1                 -0.0252160   -0.0658022    0.0153702
12-24 months   ki0047075b-MAL-ED          BRAZIL                         12                   1                  0.0132830   -0.0540503    0.0806163
12-24 months   ki0047075b-MAL-ED          INDIA                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          2                    1                 -0.0038059   -0.0305591    0.0229473
12-24 months   ki0047075b-MAL-ED          INDIA                          3                    1                  0.0011504   -0.0287264    0.0310272
12-24 months   ki0047075b-MAL-ED          INDIA                          4                    1                  0.0056372   -0.0219341    0.0332085
12-24 months   ki0047075b-MAL-ED          INDIA                          5                    1                 -0.0035043   -0.0333643    0.0263558
12-24 months   ki0047075b-MAL-ED          INDIA                          6                    1                  0.0222935   -0.0037769    0.0483638
12-24 months   ki0047075b-MAL-ED          INDIA                          7                    1                  0.0106889   -0.0166659    0.0380437
12-24 months   ki0047075b-MAL-ED          INDIA                          8                    1                 -0.0004368   -0.0241534    0.0232797
12-24 months   ki0047075b-MAL-ED          INDIA                          9                    1                  0.0063162   -0.0189175    0.0315498
12-24 months   ki0047075b-MAL-ED          INDIA                          10                   1                  0.0047693   -0.0195337    0.0290722
12-24 months   ki0047075b-MAL-ED          INDIA                          11                   1                  0.0191280   -0.0053990    0.0436550
12-24 months   ki0047075b-MAL-ED          INDIA                          12                   1                  0.0184695   -0.0048028    0.0417418
12-24 months   ki0047075b-MAL-ED          NEPAL                          1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          NEPAL                          2                    1                 -0.0036105   -0.0261347    0.0189137
12-24 months   ki0047075b-MAL-ED          NEPAL                          3                    1                 -0.0132829   -0.0364510    0.0098853
12-24 months   ki0047075b-MAL-ED          NEPAL                          4                    1                 -0.0019634   -0.0235991    0.0196722
12-24 months   ki0047075b-MAL-ED          NEPAL                          5                    1                 -0.0101749   -0.0297089    0.0093592
12-24 months   ki0047075b-MAL-ED          NEPAL                          6                    1                 -0.0160756   -0.0427753    0.0106241
12-24 months   ki0047075b-MAL-ED          NEPAL                          7                    1                  0.0058301   -0.0168807    0.0285410
12-24 months   ki0047075b-MAL-ED          NEPAL                          8                    1                 -0.0125187   -0.0342087    0.0091713
12-24 months   ki0047075b-MAL-ED          NEPAL                          9                    1                 -0.0120395   -0.0392988    0.0152198
12-24 months   ki0047075b-MAL-ED          NEPAL                          10                   1                 -0.0138123   -0.0382423    0.0106178
12-24 months   ki0047075b-MAL-ED          NEPAL                          11                   1                 -0.0108086   -0.0330046    0.0113873
12-24 months   ki0047075b-MAL-ED          NEPAL                          12                   1                 -0.0002177   -0.0238246    0.0233892
12-24 months   ki0047075b-MAL-ED          PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          PERU                           2                    1                  0.0105764   -0.0127692    0.0339220
12-24 months   ki0047075b-MAL-ED          PERU                           3                    1                  0.0012758   -0.0278683    0.0304198
12-24 months   ki0047075b-MAL-ED          PERU                           4                    1                 -0.0137129   -0.0425257    0.0150999
12-24 months   ki0047075b-MAL-ED          PERU                           5                    1                  0.0070631   -0.0202781    0.0344043
12-24 months   ki0047075b-MAL-ED          PERU                           6                    1                  0.0139159   -0.0174350    0.0452669
12-24 months   ki0047075b-MAL-ED          PERU                           7                    1                  0.0164979   -0.0167769    0.0497727
12-24 months   ki0047075b-MAL-ED          PERU                           8                    1                  0.0178902   -0.0203439    0.0561244
12-24 months   ki0047075b-MAL-ED          PERU                           9                    1                  0.0143806   -0.0150263    0.0437875
12-24 months   ki0047075b-MAL-ED          PERU                           10                   1                  0.0123245   -0.0182890    0.0429380
12-24 months   ki0047075b-MAL-ED          PERU                           11                   1                  0.0242075   -0.0039246    0.0523395
12-24 months   ki0047075b-MAL-ED          PERU                           12                   1                  0.0011154   -0.0274108    0.0296417
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   2                    1                 -0.0286013   -0.0719543    0.0147517
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   3                    1                 -0.0045697   -0.0480115    0.0388721
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   4                    1                  0.0270424   -0.0113671    0.0654519
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   5                    1                 -0.0169249   -0.0572544    0.0234047
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   6                    1                  0.0055556   -0.0352437    0.0463550
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   7                    1                 -0.0010038   -0.0317878    0.0297801
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   8                    1                  0.0009916   -0.0457375    0.0477208
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   9                    1                  0.0140532   -0.0200654    0.0481718
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   10                   1                  0.0045550   -0.0311034    0.0402133
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   11                   1                 -0.0073560   -0.0417482    0.0270362
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   12                   1                 -0.0090005   -0.0408654    0.0228644
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   2                    1                  0.0078065   -0.0312667    0.0468798
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   3                    1                 -0.0073175   -0.0430077    0.0283727
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   4                    1                 -0.0029113   -0.0514309    0.0456083
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   5                    1                  0.0068284   -0.0345283    0.0481851
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   6                    1                 -0.0039091   -0.0430479    0.0352297
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   7                    1                  0.0209353   -0.0206508    0.0625214
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   8                    1                  0.0374873   -0.0024647    0.0774393
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   9                    1                  0.0405487    0.0011339    0.0799635
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   10                   1                 -0.0008813   -0.0434173    0.0416547
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   11                   1                 -0.0161721   -0.0519411    0.0195968
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   12                   1                  0.0232384   -0.0125405    0.0590172
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
12-24 months   ki1000108-IRC              INDIA                          2                    1                  0.0118135   -0.0267318    0.0503588
12-24 months   ki1000108-IRC              INDIA                          3                    1                 -0.0036997   -0.0378765    0.0304771
12-24 months   ki1000108-IRC              INDIA                          4                    1                  0.0167986   -0.0319152    0.0655124
12-24 months   ki1000108-IRC              INDIA                          5                    1                 -0.0074721   -0.0442467    0.0293026
12-24 months   ki1000108-IRC              INDIA                          6                    1                 -0.0260205   -0.0622167    0.0101758
12-24 months   ki1000108-IRC              INDIA                          7                    1                 -0.0355515   -0.0711974    0.0000944
12-24 months   ki1000108-IRC              INDIA                          8                    1                 -0.0197081   -0.0508742    0.0114579
12-24 months   ki1000108-IRC              INDIA                          9                    1                 -0.0293505   -0.0704904    0.0117894
12-24 months   ki1000108-IRC              INDIA                          10                   1                 -0.0173130   -0.0496515    0.0150255
12-24 months   ki1000108-IRC              INDIA                          11                   1                  0.0028350   -0.0307499    0.0364200
12-24 months   ki1000108-IRC              INDIA                          12                   1                  0.0061335   -0.0257790    0.0380461
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     2                    1                 -0.0141661   -0.0345300    0.0061977
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     3                    1                 -0.0159368   -0.0376242    0.0057506
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     4                    1                 -0.0293507   -0.0506811   -0.0080202
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     5                    1                 -0.0360343   -0.0582132   -0.0138554
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     6                    1                 -0.0317881   -0.0587438   -0.0048323
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     7                    1                 -0.0198828   -0.0427582    0.0029927
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     8                    1                 -0.0101639   -0.0370840    0.0167562
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     9                    1                 -0.0018850   -0.0285702    0.0248002
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     10                   1                 -0.0218903   -0.0442453    0.0004647
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     11                   1                 -0.0125896   -0.0359488    0.0107697
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     12                   1                 -0.0211593   -0.0419282   -0.0003905
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
12-24 months   ki1114097-CMIN             PERU                           1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1114097-CMIN             PERU                           2                    1                 -0.0252492   -0.0547370    0.0042385
12-24 months   ki1114097-CMIN             PERU                           3                    1                 -0.0058720   -0.0270579    0.0153139
12-24 months   ki1114097-CMIN             PERU                           4                    1                 -0.0374020   -0.0655489   -0.0092551
12-24 months   ki1114097-CMIN             PERU                           5                    1                  0.0018128   -0.0253756    0.0290012
12-24 months   ki1114097-CMIN             PERU                           6                    1                  0.0031909   -0.0177316    0.0241134
12-24 months   ki1114097-CMIN             PERU                           7                    1                 -0.0225586   -0.0425831   -0.0025341
12-24 months   ki1114097-CMIN             PERU                           8                    1                 -0.0436042   -0.0773214   -0.0098869
12-24 months   ki1114097-CMIN             PERU                           9                    1                 -0.0154785   -0.0456281    0.0146710
12-24 months   ki1114097-CMIN             PERU                           10                   1                 -0.0191451   -0.0497638    0.0114735
12-24 months   ki1114097-CMIN             PERU                           11                   1                 -0.0050759   -0.0278713    0.0177195
12-24 months   ki1114097-CMIN             PERU                           12                   1                 -0.0113678   -0.0474199    0.0246844
12-24 months   ki1119695-PROBIT           BELARUS                        1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        2                    1                 -0.0208980   -0.1053896    0.0635936
12-24 months   ki1119695-PROBIT           BELARUS                        3                    1                 -0.0124929   -0.1020354    0.0770496
12-24 months   ki1119695-PROBIT           BELARUS                        4                    1                 -0.0160484   -0.0984039    0.0663072
12-24 months   ki1119695-PROBIT           BELARUS                        5                    1                 -0.0219424   -0.1225666    0.0786818
12-24 months   ki1119695-PROBIT           BELARUS                        6                    1                 -0.0146691   -0.0971598    0.0678215
12-24 months   ki1119695-PROBIT           BELARUS                        7                    1                 -0.0186438   -0.1144005    0.0771128
12-24 months   ki1119695-PROBIT           BELARUS                        8                    1                 -0.0034533   -0.0857000    0.0787934
12-24 months   ki1119695-PROBIT           BELARUS                        9                    1                 -0.0146776   -0.1028669    0.0735117
12-24 months   ki1119695-PROBIT           BELARUS                        10                   1                 -0.0420224   -0.1275809    0.0435360
12-24 months   ki1119695-PROBIT           BELARUS                        11                   1                 -0.0359046   -0.1216049    0.0497958
12-24 months   ki1119695-PROBIT           BELARUS                        12                   1                 -0.0369216   -0.0872143    0.0133711
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         2                    1                  0.0054613   -0.0113829    0.0223056
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         3                    1                 -0.0088362   -0.0274511    0.0097786
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         4                    1                 -0.0115744   -0.0290232    0.0058743
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         5                    1                  0.0010650   -0.0183174    0.0204474
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         6                    1                  0.0068810   -0.0128547    0.0266167
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         7                    1                 -0.0131221   -0.0392173    0.0129730
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         8                    1                  0.0125409   -0.0077967    0.0328786
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         9                    1                 -0.0159343   -0.0354964    0.0036278
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         10                   1                 -0.0260107   -0.0653518    0.0133305
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         11                   1                  0.0076214   -0.0183346    0.0335773
12-24 months   ki1148112-iLiNS-DOSE       MALAWI                         12                   1                  0.0001761   -0.0183900    0.0187422
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2                    1                  0.0015090   -0.0235039    0.0265218
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         3                    1                 -0.0059525   -0.0313080    0.0194031
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         4                    1                 -0.0101301   -0.0328764    0.0126161
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         5                    1                 -0.0193190   -0.0460551    0.0074171
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         6                    1                 -0.0111554   -0.0427912    0.0204803
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         7                    1                 -0.0280765   -0.0527965   -0.0033566
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         8                    1                 -0.0167776   -0.0424020    0.0088468
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         9                    1                 -0.0063872   -0.0339918    0.0212175
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         10                   1                 -0.0050061   -0.0320784    0.0220663
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         11                   1                 -0.0028444   -0.0271429    0.0214541
12-24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         12                   1                 -0.0008866   -0.0283877    0.0266145
12-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   ki1148112-LCNI-5           MALAWI                         2                    1                  0.0217872   -0.0009066    0.0444810
12-24 months   ki1148112-LCNI-5           MALAWI                         3                    1                  0.0102570   -0.0183119    0.0388260
12-24 months   ki1148112-LCNI-5           MALAWI                         4                    1                  0.0133597   -0.0110228    0.0377422
12-24 months   ki1148112-LCNI-5           MALAWI                         5                    1                  0.0185641   -0.0035940    0.0407222
12-24 months   ki1148112-LCNI-5           MALAWI                         6                    1                  0.0009039   -0.0254397    0.0272474
12-24 months   ki1148112-LCNI-5           MALAWI                         7                    1                  0.0297651    0.0016081    0.0579222
12-24 months   ki1148112-LCNI-5           MALAWI                         8                    1                  0.0138255   -0.0097716    0.0374226
12-24 months   ki1148112-LCNI-5           MALAWI                         9                    1                  0.0426114    0.0146883    0.0705344
12-24 months   ki1148112-LCNI-5           MALAWI                         10                   1                  0.0074015   -0.0245063    0.0393094
12-24 months   ki1148112-LCNI-5           MALAWI                         11                   1                  0.0031089   -0.0227279    0.0289457
12-24 months   ki1148112-LCNI-5           MALAWI                         12                   1                  0.0257933   -0.0105591    0.0621456
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2                    1                  0.0039163   -0.0060578    0.0138903
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     3                    1                  0.0001003   -0.0086100    0.0088105
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     4                    1                  0.0046331   -0.0044541    0.0137204
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     5                    1                  0.0035802   -0.0063637    0.0135240
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     6                    1                  0.0016340   -0.0075571    0.0108252
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     7                    1                  0.0058314   -0.0027853    0.0144481
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     8                    1                  0.0044644   -0.0045361    0.0134650
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     9                    1                  0.0037744   -0.0056110    0.0131599
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     10                   1                  0.0079728   -0.0008731    0.0168187
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     11                   1                  0.0124199    0.0039129    0.0209268
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     12                   1                  0.0098440    0.0013926    0.0182955
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     1                    1                  0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     2                    1                 -0.0006311   -0.0148210    0.0135589
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     3                    1                 -0.0071178   -0.0206582    0.0064226
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     4                    1                 -0.0050774   -0.0181355    0.0079807
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     5                    1                 -0.0017302   -0.0148714    0.0114110
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     6                    1                  0.0011907   -0.0124604    0.0148418
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     7                    1                 -0.0023819   -0.0155311    0.0107673
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     8                    1                  0.0003961   -0.0128097    0.0136018
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     9                    1                 -0.0012283   -0.0144615    0.0120048
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     10                   1                 -0.0019727   -0.0157961    0.0118506
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     11                   1                 -0.0054098   -0.0195599    0.0087402
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     12                   1                 -0.0013071   -0.0181988    0.0155847
