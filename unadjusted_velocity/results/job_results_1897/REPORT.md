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

**Intervention Variable:** birthlen

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* diffcat
* studyid
* country

## Data Summary

diffcat        studyid                    country                        birthlen    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=0             37     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <-3              6     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         34     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         77     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          84     238
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=0             34     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <-3              6     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         29     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         73     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          81     223
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=0             35     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <-3              6     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         29     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         66     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          77     213
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0             37     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3              6     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         25     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         60     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          72     200
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=0              5      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          8      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           9      23
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=0              3      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          8      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           5      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=0              3      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          8      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           5      17
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0              3      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          7      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           5      16
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=0            199     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <-3              1     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         21     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        160     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         253     634
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=0            182     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <-3              1     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         20     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        145     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         226     574
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=0            177     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <-3              1     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         20     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        137     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         210     545
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0            143     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3              1     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         19     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        114     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         181     458
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0            209     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3              5     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         46     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        177     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         283     720
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0            205     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3              5     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         45     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        169     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         271     695
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0            204     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3              6     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         42     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        169     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         255     676
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0            153     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3              6     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         30     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        128     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         178     495
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0           1865   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3           1910   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)       4082   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       6946   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        5242   20045
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0           2036   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3           1006   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)       2265   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       3884   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        3169   12360
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0           1555    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3            793    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)       1791    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       3013    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        2488    9640
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0            728    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3            409    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)        844    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       1381    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        1183    4545
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0            216    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3            130    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        326    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        609    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         526    1807
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0            805    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3            151    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        360    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        695    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         761    2772
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0            908    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3            175    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        416    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        787    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         788    3074
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0            552    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3             93    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        218    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        418    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         457    1738
0-3 months     ki1119695-PROBIT           BELARUS                        >=0          11610   12745
0-3 months     ki1119695-PROBIT           BELARUS                        <-3              5   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-3--2)         26   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)        102   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)        1002   12745
3-6 months     ki1119695-PROBIT           BELARUS                        >=0          12104   13303
3-6 months     ki1119695-PROBIT           BELARUS                        <-3              6   13303
3-6 months     ki1119695-PROBIT           BELARUS                        [-3--2)         26   13303
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)        113   13303
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)        1054   13303
6-12 months    ki1119695-PROBIT           BELARUS                        >=0          11745   12892
6-12 months    ki1119695-PROBIT           BELARUS                        <-3              4   12892
6-12 months    ki1119695-PROBIT           BELARUS                        [-3--2)         22   12892
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)        108   12892
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)        1013   12892
12-24 months   ki1119695-PROBIT           BELARUS                        >=0           2318    2532
12-24 months   ki1119695-PROBIT           BELARUS                        [-3--2)          4    2532
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)         21    2532
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)         189    2532
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0             43     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <-3              7     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)         10     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)         45     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)          75     180
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0             40     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <-3              7     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)         10     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)         40     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)          75     172
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0             36     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <-3              7     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)          9     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)         39     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)          69     160
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0             25     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <-3              5     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)          8     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)         35     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)          62     135
0-3 months     ki1114097-CMIN             BRAZIL                         >=0             42      81
0-3 months     ki1114097-CMIN             BRAZIL                         <-3              3      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-3--2)          1      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-2--1)          9      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-1-0)          26      81
3-6 months     ki1114097-CMIN             BRAZIL                         >=0             41      77
3-6 months     ki1114097-CMIN             BRAZIL                         <-3              2      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-3--2)          1      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-2--1)          7      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-1-0)          26      77
6-12 months    ki1114097-CMIN             BRAZIL                         >=0             50      90
6-12 months    ki1114097-CMIN             BRAZIL                         <-3              2      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-3--2)          2      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-2--1)          7      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-1-0)          29      90
12-24 months   ki1101329-Keneba           GAMBIA                         >=0            434     780
12-24 months   ki1101329-Keneba           GAMBIA                         <-3             10     780
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)         28     780
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)         74     780
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)         234     780
6-12 months    ki1101329-Keneba           GAMBIA                         >=0            484     879
6-12 months    ki1101329-Keneba           GAMBIA                         <-3             14     879
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)         33     879
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)         83     879
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)         265     879
0-3 months     ki1101329-Keneba           GAMBIA                         >=0            670    1251
0-3 months     ki1101329-Keneba           GAMBIA                         <-3             24    1251
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)         41    1251
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)        137    1251
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)         379    1251
3-6 months     ki1101329-Keneba           GAMBIA                         >=0            519     950
3-6 months     ki1101329-Keneba           GAMBIA                         <-3             16     950
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)         33     950
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)         95     950
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)         287     950
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          >=0             75     280
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          <-3              4     280
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          [-3--2)         22     280
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          [-2--1)         71     280
0-3 months     ki1033518-iLiNS-DYAD-G     GHANA                          [-1-0)         108     280
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          >=0             71     265
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          <-3              4     265
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          [-3--2)         20     265
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          [-2--1)         68     265
3-6 months     ki1033518-iLiNS-DYAD-G     GHANA                          [-1-0)         102     265
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          >=0             71     252
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          <-3              4     252
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          [-3--2)         19     252
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          [-2--1)         65     252
6-12 months    ki1033518-iLiNS-DYAD-G     GHANA                          [-1-0)          93     252
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=0            415     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      <-3              6     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)         32     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)         69     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)         206     728
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0            353     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3              6     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)         27     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)         56     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)         178     620
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0            349     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3              7     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)         27     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)         60     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)         172     615
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0            289     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3              5     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)         24     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)         63     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)         159     540
0-3 months     ki0047075b-MAL-ED          INDIA                          >=0             33     195
0-3 months     ki0047075b-MAL-ED          INDIA                          <-3              7     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-3--2)         23     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-2--1)         65     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-1-0)          67     195
3-6 months     ki0047075b-MAL-ED          INDIA                          >=0             33     187
3-6 months     ki0047075b-MAL-ED          INDIA                          <-3              5     187
3-6 months     ki0047075b-MAL-ED          INDIA                          [-3--2)         21     187
3-6 months     ki0047075b-MAL-ED          INDIA                          [-2--1)         63     187
3-6 months     ki0047075b-MAL-ED          INDIA                          [-1-0)          65     187
6-12 months    ki0047075b-MAL-ED          INDIA                          >=0             32     182
6-12 months    ki0047075b-MAL-ED          INDIA                          <-3              4     182
6-12 months    ki0047075b-MAL-ED          INDIA                          [-3--2)         22     182
6-12 months    ki0047075b-MAL-ED          INDIA                          [-2--1)         60     182
6-12 months    ki0047075b-MAL-ED          INDIA                          [-1-0)          64     182
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0             32     182
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3              6     182
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)         22     182
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)         59     182
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)          63     182
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0             11      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         11      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         20      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          35      80
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0             11      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         10      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         19      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          31      74
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0             13      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         12      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         19      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          34      81
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0             13      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         13      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         20      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          36      85
0-3 months     ki1000108-IRC              INDIA                          >=0            139     377
0-3 months     ki1000108-IRC              INDIA                          <-3             15     377
0-3 months     ki1000108-IRC              INDIA                          [-3--2)         26     377
0-3 months     ki1000108-IRC              INDIA                          [-2--1)         63     377
0-3 months     ki1000108-IRC              INDIA                          [-1-0)         134     377
3-6 months     ki1000108-IRC              INDIA                          >=0            139     376
3-6 months     ki1000108-IRC              INDIA                          <-3             14     376
3-6 months     ki1000108-IRC              INDIA                          [-3--2)         26     376
3-6 months     ki1000108-IRC              INDIA                          [-2--1)         63     376
3-6 months     ki1000108-IRC              INDIA                          [-1-0)         134     376
6-12 months    ki1000108-IRC              INDIA                          >=0            140     379
6-12 months    ki1000108-IRC              INDIA                          <-3             14     379
6-12 months    ki1000108-IRC              INDIA                          [-3--2)         26     379
6-12 months    ki1000108-IRC              INDIA                          [-2--1)         65     379
6-12 months    ki1000108-IRC              INDIA                          [-1-0)         134     379
12-24 months   ki1000108-IRC              INDIA                          >=0            138     375
12-24 months   ki1000108-IRC              INDIA                          <-3             13     375
12-24 months   ki1000108-IRC              INDIA                          [-3--2)         26     375
12-24 months   ki1000108-IRC              INDIA                          [-2--1)         65     375
12-24 months   ki1000108-IRC              INDIA                          [-1-0)         133     375
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0            170    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3             57    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)        177    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)        364    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)         400    1168
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0            202    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3             51    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)        153    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)        330    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)         377    1113
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0            201    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3             48    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)        162    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)        337    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)         378    1126
0-3 months     ki1135781-COHORTS          INDIA                          >=0           1805    6465
0-3 months     ki1135781-COHORTS          INDIA                          <-3            197    6465
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)        560    6465
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)       1529    6465
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)        2374    6465
3-6 months     ki1135781-COHORTS          INDIA                          >=0           1687    5975
3-6 months     ki1135781-COHORTS          INDIA                          <-3            161    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)        510    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)       1405    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)        2212    5975
6-12 months    ki1135781-COHORTS          INDIA                          >=0           1328    4658
6-12 months    ki1135781-COHORTS          INDIA                          <-3            131    4658
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)        384    4658
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)       1095    4658
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)        1720    4658
12-24 months   ki1135781-COHORTS          INDIA                          >=0           1147    3954
12-24 months   ki1135781-COHORTS          INDIA                          <-3            114    3954
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)        334    3954
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)        917    3954
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)        1442    3954
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=0             44     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          <-3              6     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-2--1)         45     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-1-0)          64     171
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=0             44     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          <-3              6     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-2--1)         44     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-1-0)          64     170
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=0             44     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          <-3              5     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)         44     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)          62     167
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=0             41     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          <-3              5     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)         44     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)          62     164
0-3 months     ki1000109-EE               PAKISTAN                       >=0              1       2
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)          1       2
3-6 months     ki1000109-EE               PAKISTAN                       >=0              1       2
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)          1       2
0-3 months     ki1000109-ResPak           PAKISTAN                       >=0              2       5
0-3 months     ki1000109-ResPak           PAKISTAN                       [-3--2)          2       5
0-3 months     ki1000109-ResPak           PAKISTAN                       [-1-0)           1       5
3-6 months     ki1000109-ResPak           PAKISTAN                       >=0              1       3
3-6 months     ki1000109-ResPak           PAKISTAN                       [-3--2)          1       3
3-6 months     ki1000109-ResPak           PAKISTAN                       [-1-0)           1       3
6-12 months    ki1000109-ResPak           PAKISTAN                       >=0              1       4
6-12 months    ki1000109-ResPak           PAKISTAN                       [-3--2)          1       4
6-12 months    ki1000109-ResPak           PAKISTAN                       [-1-0)           2       4
0-3 months     ki0047075b-MAL-ED          PERU                           >=0             41     268
0-3 months     ki0047075b-MAL-ED          PERU                           <-3              7     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-3--2)         26     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-2--1)         88     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-1-0)         106     268
3-6 months     ki0047075b-MAL-ED          PERU                           >=0             39     255
3-6 months     ki0047075b-MAL-ED          PERU                           <-3              7     255
3-6 months     ki0047075b-MAL-ED          PERU                           [-3--2)         24     255
3-6 months     ki0047075b-MAL-ED          PERU                           [-2--1)         87     255
3-6 months     ki0047075b-MAL-ED          PERU                           [-1-0)          98     255
6-12 months    ki0047075b-MAL-ED          PERU                           >=0             35     228
6-12 months    ki0047075b-MAL-ED          PERU                           <-3              6     228
6-12 months    ki0047075b-MAL-ED          PERU                           [-3--2)         22     228
6-12 months    ki0047075b-MAL-ED          PERU                           [-2--1)         79     228
6-12 months    ki0047075b-MAL-ED          PERU                           [-1-0)          86     228
12-24 months   ki0047075b-MAL-ED          PERU                           >=0             29     181
12-24 months   ki0047075b-MAL-ED          PERU                           <-3              2     181
12-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)         21     181
12-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)         62     181
12-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)          67     181
0-3 months     ki1114097-CMIN             PERU                           >=0              8       8
3-6 months     ki1114097-CMIN             PERU                           >=0              8       8
6-12 months    ki1114097-CMIN             PERU                           >=0              8       8
12-24 months   ki1114097-CMIN             PERU                           >=0              3       3
0-3 months     ki1114097-CONTENT          PERU                           >=0              1       2
0-3 months     ki1114097-CONTENT          PERU                           [-2--1)          1       2
3-6 months     ki1114097-CONTENT          PERU                           >=0              1       2
3-6 months     ki1114097-CONTENT          PERU                           [-2--1)          1       2
6-12 months    ki1114097-CONTENT          PERU                           >=0              1       2
6-12 months    ki1114097-CONTENT          PERU                           [-2--1)          1       2
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0           1042    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3             31    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)        111    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)        348    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)         882    2414
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0            968    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3             29    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)         97    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)        332    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)         831    2257
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             51     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         23     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         60     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          94     229
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             45     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         19     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         53     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          86     204
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             40     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         19     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         53     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          83     196
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             40     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         18     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         54     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          80     193
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             20     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              5     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         11     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         27     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          44     107
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             19      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              5      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          9      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         26      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          38      97
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             24     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              4     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         11     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         29     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          48     116
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             22     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              4     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         11     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         29     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          47     113
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0           2635    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3            238    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)        536    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)       1453    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)        3002    7864
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0           1945    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3            182    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)        383    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)       1056    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)        2230    5796
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0           1422    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3            144    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)        299    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)        875    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)        1755    4495
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0             42     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3             21     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)         39     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)        101     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)          93     296


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
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
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
* diffcat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
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
* diffcat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* diffcat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* diffcat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* diffcat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* diffcat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* diffcat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* diffcat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* diffcat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* diffcat: 0-3 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 3-6 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 6-12 months, studyid: ki1033518-iLiNS-DYAD-G, country: GHANA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* diffcat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* diffcat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* diffcat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* diffcat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* diffcat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* diffcat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* diffcat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
##          y_rate_haz
## birthlen  -0.625814862068966 -0.222820011627907 -0.219501958762887
##   >=0                      1                  1                  1
##   <-3                      0                  0                  0
##   [-3--2)                  0                  0                  0
##   [-2--1)                  0                  0                  0
##   [-1-0)                   0                  0                  0
##          y_rate_haz
## birthlen  -0.20054967032967 -0.181205872340426 -0.0743519333333333
##   >=0                     1                  1                   1
##   <-3                     0                  0                   0
##   [-3--2)                 0                  0                   0
##   [-2--1)                 0                  0                   0
##   [-1-0)                  0                  0                   0
##          y_rate_haz
## birthlen  0.065850587628866 0.252861722891566
##   >=0                     1                 1
##   <-3                     0                 0
##   [-3--2)                 0                 0
##   [-2--1)                 0                 0
##   [-1-0)                  0                 0
##          y_rate_haz
## birthlen  -0.240798875 -0.21813996969697 -0.150294282352941 -0.1216668
##   >=0                1                 1                  1          1
##   <-3                0                 0                  0          0
##   [-3--2)            0                 0                  0          0
##   [-2--1)            0                 0                  0          0
##   [-1-0)             0                 0                  0          0
##          y_rate_haz
## birthlen  -0.022812525 -0.0148374146341463 0.0794981931818182
##   >=0                1                   1                  1
##   <-3                0                   0                  0
##   [-3--2)            0                   0                  0
##   [-2--1)            0                   0                  0
##   [-1-0)             0                   0                  0
##          y_rate_haz
## birthlen  0.0854401685393258
##   >=0                      1
##   <-3                      0
##   [-3--2)                  0
##   [-2--1)                  0
##   [-1-0)                   0
##          y_rate_haz
## birthlen  -0.224889430851064 -0.219399147540984 -0.1520835
##   >=0                      1                  1          1
##   <-3                      0                  0          0
##   [-3--2)                  0                  0          0
##   [-2--1)                  0                  0          0
##   [-1-0)                   0                  0          0
##          y_rate_haz
## birthlen  -0.129231575129534 -0.124045759776536 -0.0180856054054054 0
##   >=0                      1                  1                   1 1
##   <-3                      0                  0                   0 0
##   [-3--2)                  0                  0                   0 0
##   [-2--1)                  0                  0                   0 0
##   [-1-0)                   0                  0                   0 0
##          y_rate_haz
## birthlen  0.123672296703297
##   >=0                     1
##   <-3                     0
##   [-3--2)                 0
##   [-2--1)                 0
##   [-1-0)                  0
```




# Results Detail

## Results Plots
![](/tmp/f1d52f1e-9aed-4f52-970a-b62642e29936/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f1d52f1e-9aed-4f52-970a-b62642e29936/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.1903885   -0.2716692   -0.1091078
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                 0.3102427    0.1580766    0.4624088
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                 0.0889340   -0.0103644    0.1882324
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                 0.0105583   -0.0354645    0.0565810
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0884703   -0.1369144   -0.0400263
0-3 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                 0.0325877   -0.0549109    0.1200864
0-3 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                 0.6970839    0.4540686    0.9400993
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                 0.6357524    0.4878804    0.7836244
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.2260827    0.1129734    0.3391920
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                 0.1586994    0.0946592    0.2227397
0-3 months     ki0047075b-MAL-ED         INDIA                          >=0                  NA                -0.1564984   -0.2239543   -0.0890425
0-3 months     ki0047075b-MAL-ED         INDIA                          <-3                  NA                 0.2237680   -0.0457644    0.4933003
0-3 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                 0.0916661   -0.0445830    0.2279152
0-3 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                 0.0151220   -0.0396544    0.0698983
0-3 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                -0.0378447   -0.1109195    0.0352301
0-3 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0462525   -0.1060320    0.0135269
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                 0.2206868    0.0249963    0.4163773
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                 0.3438522    0.1875644    0.5001400
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                 0.1505050    0.0890613    0.2119488
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                 0.0439742   -0.0067370    0.0946854
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                -0.3057814   -0.3956372   -0.2159256
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                 0.1414746   -0.1107247    0.3936739
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                -0.0798501   -0.1753439    0.0156436
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                -0.0805357   -0.1297985   -0.0312728
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                -0.2080515   -0.2564098   -0.1596932
0-3 months     ki1000108-IRC             INDIA                          >=0                  NA                -0.5942125   -0.6770707   -0.5113542
0-3 months     ki1000108-IRC             INDIA                          <-3                  NA                 0.5314047    0.1912871    0.8715224
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              NA                 0.0758362   -0.1042564    0.2559289
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              NA                -0.0219924   -0.1331834    0.0891987
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               NA                -0.1775514   -0.2486574   -0.1064454
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                -0.1223123   -0.1876454   -0.0569792
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                 0.1912112    0.0708024    0.3116201
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                 0.1193186    0.0622148    0.1764224
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                 0.0480723    0.0319154    0.0642291
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                -0.0357566   -0.0748748    0.0033616
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.2100925   -0.2410813   -0.1791036
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                -0.1382587   -0.3282307    0.0517133
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                 0.0436830   -0.0208072    0.1081733
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                -0.0370727   -0.0743219    0.0001765
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                -0.1369118   -0.1643346   -0.1094890
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.4440106   -0.4717219   -0.4162993
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                 0.9361035    0.6604552    1.2117518
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                 0.1552599    0.0496017    0.2609181
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0662865   -0.1206755   -0.0118976
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.2215015   -0.2528418   -0.1901612
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                -0.4601466   -0.5175598   -0.4027335
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                 0.9115795    0.5823533    1.2408056
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                 0.0404920   -0.1204361    0.2014200
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                -0.0770575   -0.2019852    0.0478702
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                -0.2320683   -0.2880066   -0.1761300
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.3977035   -0.4145230   -0.3808840
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                 0.4204495    0.3617887    0.4791102
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                 0.2012199    0.1648350    0.2376048
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                 0.0573849    0.0364152    0.0783546
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                -0.1220750   -0.1362497   -0.1079003
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.6215664   -0.6492332   -0.5938995
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                -0.0336215   -0.3320397    0.2647966
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                -0.3142470   -0.4296056   -0.1988885
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                -0.4030655   -0.4738602   -0.3322708
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.4826716   -0.5182346   -0.4471087
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  NA                -0.1863329   -0.1984342   -0.1742317
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  NA                 0.1821399    0.1360890    0.2281909
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                 0.1056437    0.0808150    0.1304725
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                 0.0144579    0.0009335    0.0279824
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0774027   -0.0877194   -0.0670861
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.1117004   -0.1261745   -0.0972262
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                 0.2386957    0.2230758    0.2543157
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                 0.1566942    0.1473885    0.1659999
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                 0.0758503    0.0691098    0.0825909
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0000716   -0.0076464    0.0075033
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0921856   -0.1375977   -0.0467736
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.2905282    0.2239079    0.3571485
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                 0.1673992    0.1317284    0.2030700
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                 0.0765859    0.0555619    0.0976099
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                 0.0048812   -0.0218572    0.0316196
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.0389348   -0.0893740    0.0115044
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                 0.1134436   -0.1083437    0.3352309
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                 0.0204937   -0.0492152    0.0902026
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                -0.0104203   -0.0545877    0.0337471
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0457848   -0.0807441   -0.0108256
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                -0.0040107   -0.0791868    0.0711653
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                 0.1617853    0.0646581    0.2589125
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                 0.1621975   -0.0191244    0.3435193
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.0541932   -0.0404080    0.1487943
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                 0.0648297    0.0053120    0.1243474
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  NA                -0.1236535   -0.2006423   -0.0466647
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  NA                -0.0559526   -0.1693915    0.0574863
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                 0.0789062    0.0042694    0.1535430
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                -0.0731629   -0.1169898   -0.0293360
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                -0.0416480   -0.0986969    0.0154009
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0841164   -0.1520336   -0.0161993
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                 0.1951734    0.0488814    0.3414655
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                 0.0882662   -0.0142678    0.1908002
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                -0.0242899   -0.0761495    0.0275697
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                -0.0339837   -0.0750872    0.0071197
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                -0.0566226   -0.1415970    0.0283517
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                 0.1722017    0.0602991    0.2841043
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                 0.1073257   -0.0041593    0.2188107
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                 0.0342238   -0.0228635    0.0913112
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                 0.0259815   -0.0205693    0.0725322
3-6 months     ki1000108-IRC             INDIA                          >=0                  NA                -0.0787360   -0.1343722   -0.0230999
3-6 months     ki1000108-IRC             INDIA                          <-3                  NA                 0.0853936   -0.0815584    0.2523456
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              NA                -0.0450133   -0.1473237    0.0572972
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              NA                -0.0372459   -0.1080725    0.0335807
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               NA                -0.0249393   -0.0741300    0.0242513
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                -0.0661688   -0.0848483   -0.0474892
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                 0.1304704    0.0098604    0.2510804
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                 0.0241758   -0.0179952    0.0663469
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                -0.0320279   -0.0774705    0.0134147
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                -0.0038902   -0.0371044    0.0293240
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.0143237   -0.0438339    0.0151866
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                 0.4411388    0.1386131    0.7436646
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                 0.0781866    0.0214605    0.1349128
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                 0.0690452    0.0313932    0.1066971
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                 0.0153194   -0.0092328    0.0398717
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.0675273   -0.0960839   -0.0389708
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                 0.0518360   -0.0656896    0.1693615
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                 0.0475550   -0.0329912    0.1281012
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0014292   -0.0641275    0.0612690
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.0178996   -0.0574092    0.0216101
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                 0.0414692    0.0217541    0.0611843
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                -0.0417103   -0.2847838    0.2013632
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                 0.1471915   -0.0043381    0.2987211
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                 0.1922493    0.1165894    0.2679093
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                 0.0956920    0.0717019    0.1196821
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.0252440   -0.0408556   -0.0096324
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                 0.0956686    0.0470405    0.1442966
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                 0.0589488    0.0237277    0.0941699
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                 0.0102196   -0.0132612    0.0337003
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                 0.0007016   -0.0144099    0.0158132
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.1444105   -0.1652368   -0.1235841
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                 0.0885917   -0.0025076    0.1796910
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                -0.1124959   -0.1874830   -0.0375087
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                 0.0094371   -0.0477493    0.0666234
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.0705069   -0.0987861   -0.0422278
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  NA                -0.0967881   -0.1076667   -0.0859094
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  NA                 0.0619957    0.0193989    0.1045925
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                 0.0009530   -0.0183298    0.0202357
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                -0.0325086   -0.0444988   -0.0205185
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0602941   -0.0697720   -0.0508163
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.0415766   -0.0530918   -0.0300613
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                 0.1143535    0.0972239    0.1314831
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                 0.0266007    0.0157020    0.0374993
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                -0.0096038   -0.0172336   -0.0019740
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0328736   -0.0413968   -0.0243503
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0322782   -0.0546579   -0.0098984
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.1006562    0.0405157    0.1607968
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                 0.0411940    0.0027506    0.0796374
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                -0.0174108   -0.0502719    0.0154502
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                -0.0179578   -0.0426002    0.0066846
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.1166393   -0.1407887   -0.0924898
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                -0.0273721   -0.0582547    0.0035105
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                -0.0725944   -0.0993105   -0.0458782
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                -0.0607657   -0.0804127   -0.0411186
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0890366   -0.1059942   -0.0720790
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                 0.0089783   -0.0298849    0.0478415
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                 0.0496469   -0.0002450    0.0995387
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                -0.0854547   -0.1369384   -0.0339710
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.0473804   -0.0071405    0.1019014
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                -0.0071286   -0.0371192    0.0228621
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0614100   -0.0825611   -0.0402590
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  NA                -0.0259597   -0.0706005    0.0186811
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                -0.0734155   -0.1340398   -0.0127913
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                -0.0404232   -0.0636959   -0.0171505
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                -0.0638834   -0.0819218   -0.0458449
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  NA                -0.0583595   -0.0909050   -0.0258140
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  NA                -0.0265659   -0.1315138    0.0783819
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              NA                -0.0269068   -0.0696066    0.0157930
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              NA                -0.0236950   -0.0473573   -0.0000327
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               NA                -0.0442735   -0.0684569   -0.0200902
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.1039976   -0.1683761   -0.0396191
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                -0.0749644   -0.1633207    0.0133920
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.1010000   -0.1597479   -0.0422522
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.1155368   -0.1768441   -0.0542295
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.1515956   -0.1813788   -0.1218124
6-12 months    ki1000108-IRC             INDIA                          >=0                  NA                -0.0388215   -0.0596996   -0.0179434
6-12 months    ki1000108-IRC             INDIA                          <-3                  NA                 0.0470881   -0.0619097    0.1560860
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              NA                -0.0103964   -0.0416493    0.0208565
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              NA                 0.0022877   -0.0305737    0.0351490
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               NA                -0.0398271   -0.0625474   -0.0171067
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                -0.0929010   -0.1122398   -0.0735621
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                -0.0206316   -0.0525989    0.0113358
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                -0.0698306   -0.0883354   -0.0513259
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                -0.0851630   -0.0922324   -0.0780936
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                -0.0975190   -0.1098060   -0.0852320
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.0492382   -0.0624346   -0.0360418
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                 0.0071691   -0.0555602    0.0698984
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                -0.0092705   -0.0408518    0.0223108
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                -0.0223296   -0.0363610   -0.0082981
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                -0.0281327   -0.0399699   -0.0162956
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.0555836   -0.0688078   -0.0423594
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  NA                -0.1195084   -0.1626204   -0.0763963
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              NA                -0.0583545   -0.0893340   -0.0273750
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0613778   -0.0809421   -0.0418135
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.0749027   -0.0900505   -0.0597549
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.0592335   -0.0671093   -0.0513578
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                -0.0052203   -0.0316443    0.0212036
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                -0.0186357   -0.0356324   -0.0016391
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                -0.0470019   -0.0580939   -0.0359099
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                -0.0525959   -0.0602039   -0.0449879
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.1168356   -0.1274960   -0.1061753
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  NA                -0.0389879   -0.1237682    0.0457925
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                -0.0531150   -0.0878671   -0.0183630
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                -0.0889392   -0.1161771   -0.0617012
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.1053717   -0.1216274   -0.0891159
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  NA                -0.0916858   -0.0984565   -0.0849150
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  NA                -0.0627930   -0.0898650   -0.0357210
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              NA                -0.0754629   -0.0885616   -0.0623642
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              NA                -0.0877886   -0.0958711   -0.0797061
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0982324   -0.1039917   -0.0924731
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                -0.0997017   -0.1073384   -0.0920650
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                -0.0542638   -0.0988184   -0.0097091
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                -0.0869021   -0.1121301   -0.0616740
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                -0.0937168   -0.1065744   -0.0808592
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                -0.1064827   -0.1151610   -0.0978045
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.0835573   -0.0901926   -0.0769221
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                -0.0327724   -0.0420512   -0.0234936
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                -0.0643524   -0.0705371   -0.0581676
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                -0.0790926   -0.0836232   -0.0745620
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0858161   -0.0909620   -0.0806702
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0458004   -0.0539119   -0.0376889
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.0082794   -0.0118304    0.0283893
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                -0.0226543   -0.0391749   -0.0061338
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                -0.0346548   -0.0430440   -0.0262656
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                -0.0497805   -0.0577073   -0.0418536
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.0267754   -0.0380535   -0.0154973
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                -0.0239805   -0.0584211    0.0104600
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                -0.0045495   -0.0188247    0.0097256
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                -0.0187930   -0.0276162   -0.0099699
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0158484   -0.0261677   -0.0055291
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                -0.0191466   -0.0436269    0.0053336
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                -0.0040273   -0.0425238    0.0344691
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                -0.0093455   -0.0600225    0.0413314
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.0115878   -0.0161014    0.0392770
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                -0.0066036   -0.0211260    0.0079189
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  NA                -0.0194454   -0.0323754   -0.0065154
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  NA                 0.0146748   -0.0043678    0.0337173
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                -0.0035882   -0.0200238    0.0128474
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                -0.0164851   -0.0259869   -0.0069834
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                 0.0000391   -0.0096712    0.0097495
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0390462   -0.0496288   -0.0284637
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  NA                -0.0130020   -0.0297353    0.0037312
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                -0.0193082   -0.0389728    0.0003563
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                -0.0220864   -0.0342849   -0.0098878
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                -0.0271983   -0.0360039   -0.0183927
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.0452523   -0.0695353   -0.0209693
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                -0.0234422   -0.0605506    0.0136661
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.0285571   -0.0619335    0.0048192
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.0515583   -0.0713883   -0.0317284
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0289125   -0.0468867   -0.0109383
12-24 months   ki1000108-IRC             INDIA                          >=0                  NA                -0.0486663   -0.0616466   -0.0356861
12-24 months   ki1000108-IRC             INDIA                          <-3                  NA                -0.0026315   -0.0529939    0.0477309
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              NA                -0.0125329   -0.0448476    0.0197819
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              NA                -0.0248398   -0.0376985   -0.0119812
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               NA                -0.0235276   -0.0349628   -0.0120923
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.0194635   -0.0267852   -0.0121418
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                 0.0267212    0.0033776    0.0500648
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                 0.0207651    0.0031147    0.0384154
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                 0.0062247   -0.0015818    0.0140312
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                -0.0080885   -0.0138822   -0.0022947
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.0266717   -0.0330699   -0.0202734
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  NA                 0.0110956   -0.0239633    0.0461545
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              NA                -0.0109933   -0.0281409    0.0061542
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0122402   -0.0235383   -0.0009421
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.0103186   -0.0176288   -0.0030084
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.0485910   -0.0675815   -0.0296005
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                -0.0331141   -0.0617136   -0.0045145
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                -0.0540456   -0.0834778   -0.0246133
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                -0.0524658   -0.0677812   -0.0371505
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                -0.0566712   -0.0748912   -0.0384512
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.0382135   -0.0448101   -0.0316169
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  NA                 0.0146710   -0.0065235    0.0358655
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                -0.0225715   -0.0437179   -0.0014250
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                -0.0281867   -0.0411129   -0.0152605
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.0286913   -0.0367067   -0.0206759
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  NA                -0.0387989   -0.0419544   -0.0356433
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  NA                -0.0161181   -0.0264073   -0.0058290
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              NA                -0.0262032   -0.0323610   -0.0200454
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              NA                -0.0357237   -0.0393085   -0.0321389
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0353101   -0.0381362   -0.0324841
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                -0.0625138   -0.0663193   -0.0587083
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                -0.0457784   -0.0725891   -0.0189678
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                -0.0357181   -0.0481890   -0.0232472
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                -0.0508720   -0.0572481   -0.0444959
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                -0.0574895   -0.0616661   -0.0533129
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.0307915   -0.0354385   -0.0261445
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                 0.0007346   -0.0055791    0.0070484
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                -0.0100209   -0.0142589   -0.0057829
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                -0.0196908   -0.0228298   -0.0165518
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0241350   -0.0271980   -0.0210721
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0197284   -0.0233468   -0.0161100
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.0049514   -0.0024056    0.0123084
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                -0.0090248   -0.0146050   -0.0034447
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                -0.0115055   -0.0152285   -0.0077825
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                -0.0173041   -0.0213582   -0.0132500


### Parameter: E(Y)


diffcat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0368810   -0.0694686   -0.0042934
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0156021   -0.0554731    0.0242688
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                 0.0760369    0.0401947    0.1118791
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                -0.1595650   -0.1924063   -0.1267237
0-3 months     ki1000108-IRC             INDIA                          NA                   NA                -0.2594964   -0.3154509   -0.2035418
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.2891169   -0.3126690   -0.2655648
0-3 months     ki1119695-PROBIT          BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     ki1135781-COHORTS         GUATEMALA                      NA                   NA                -0.5431999   -0.5652020   -0.5211979
0-3 months     ki1135781-COHORTS         INDIA                          NA                   NA                -0.0623259   -0.0692941   -0.0553576
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                 0.0705261    0.0655716    0.0754805
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0202604   -0.0440268    0.0035061
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0559535    0.0155245    0.0963825
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0535812   -0.0842010   -0.0229614
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0277330   -0.0575360    0.0020701
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                 0.0278298   -0.0041422    0.0598018
3-6 months     ki1000108-IRC             INDIA                          NA                   NA                -0.0441689   -0.0753496   -0.0129882
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0135211   -0.0340996    0.0070574
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0399168   -0.0609273   -0.0189063
3-6 months     ki1119695-PROBIT          BELARUS                        NA                   NA                 0.0472151    0.0280069    0.0664234
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                 0.0005600   -0.0088100    0.0099301
3-6 months     ki1135781-COHORTS         GUATEMALA                      NA                   NA                -0.1056524   -0.1218342   -0.0894706
3-6 months     ki1135781-COHORTS         INDIA                          NA                   NA                -0.0555413   -0.0614176   -0.0496651
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0041130   -0.0090411    0.0008150
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0086080   -0.0226417    0.0054258
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0808366   -0.0914442   -0.0702290
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                 0.0078601   -0.0135577    0.0292779
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0566001   -0.0683295   -0.0448707
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                -0.0371638   -0.0514034   -0.0229242
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.1248175   -0.1494828   -0.1001522
6-12 months    ki1000108-IRC             INDIA                          NA                   NA                -0.0270032   -0.0404733   -0.0135331
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                -0.0857354   -0.0904010   -0.0810699
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0630772   -0.0720024   -0.0541519
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0498301   -0.0545019   -0.0451583
6-12 months    ki1135781-COHORTS         GUATEMALA                      NA                   NA                -0.1072243   -0.1155466   -0.0989020
6-12 months    ki1135781-COHORTS         INDIA                          NA                   NA                -0.0910371   -0.0947327   -0.0873414
6-12 months    ki1135781-COHORTS         PHILIPPINES                    NA                   NA                -0.1001444   -0.1052550   -0.0950339
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0749991   -0.0778926   -0.0721057
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0381467   -0.0427379   -0.0335556
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                -0.0175849   -0.0230782   -0.0120915
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                -0.0042771   -0.0157130    0.0071587
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                -0.0086995   -0.0143699   -0.0030290
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                -0.0277787   -0.0334672   -0.0220901
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0378681   -0.0487380   -0.0269983
12-24 months   ki1000108-IRC             INDIA                          NA                   NA                -0.0315194   -0.0388868   -0.0241520
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                -0.0193496   -0.0237741   -0.0149251
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                -0.0520725   -0.0613969   -0.0427481
12-24 months   ki1135781-COHORTS         GUATEMALA                      NA                   NA                -0.0330551   -0.0377001   -0.0284101
12-24 months   ki1135781-COHORTS         INDIA                          NA                   NA                -0.0350955   -0.0368190   -0.0333720
12-24 months   ki1135781-COHORTS         PHILIPPINES                    NA                   NA                -0.0575848   -0.0601109   -0.0550587
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                -0.0189919   -0.0208522   -0.0171316
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                -0.0141483   -0.0162267   -0.0120698


### Parameter: ATE


diffcat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.5006312    0.3281172    0.6731452
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.2793225    0.1509998    0.4076452
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.2009468    0.1075409    0.2943526
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.1019182    0.0072959    0.1965404
0-3 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.6644962    0.4062086    0.9227838
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.6031647    0.4313446    0.7749848
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.1934950    0.0504924    0.3364976
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.1261117    0.0176812    0.2345422
0-3 months     ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.3802664    0.1024211    0.6581117
0-3 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.2481645    0.0961312    0.4001978
0-3 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.1716204    0.0847253    0.2585154
0-3 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.1186537    0.0192040    0.2181033
0-3 months     ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.2669394    0.0623218    0.4715569
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.3901047    0.2227743    0.5574351
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.1967576    0.1110318    0.2824834
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0902267    0.0118353    0.1686181
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.4472560    0.1795275    0.7149845
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.2259313    0.0948087    0.3570538
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.2252457    0.1227719    0.3277196
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0977299   -0.0043122    0.1997720
0-3 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC             INDIA                          <-3                  >=0                1.1256172    0.7755522    1.4756823
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                0.6700487    0.4718093    0.8682881
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                0.5722201    0.4335517    0.7108886
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.4166611    0.3074753    0.5258469
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.3135235    0.1946757    0.4323713
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.2416309    0.1386883    0.3445734
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.1703845    0.1057182    0.2350509
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.0865557    0.0034197    0.1696916
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.0718337   -0.1206492    0.2643167
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.2537755    0.1822262    0.3253248
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.1730198    0.1245656    0.2214739
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0731807    0.0318005    0.1145608
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                1.3801141    1.1030764    1.6571519
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.5992705    0.4900388    0.7085022
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.3777241    0.3166825    0.4387657
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.2225091    0.1806745    0.2643437
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0                1.3717261    1.0313314    1.7121208
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                0.5006386    0.3309142    0.6703630
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.3830891    0.2616930    0.5044853
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.2280783    0.1754268    0.2807299
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.8181530    0.7571285    0.8791774
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.5989234    0.5588390    0.6390078
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.4550884    0.4282067    0.4819701
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.2756285    0.2536326    0.2976243
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.5879448    0.2882469    0.8876428
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.3073194    0.1886895    0.4259493
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.2185009    0.1424921    0.2945097
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.1388947    0.0938372    0.1839522
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.3684729    0.3208585    0.4160873
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.2919767    0.2643559    0.3195974
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.2007909    0.1826429    0.2189389
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.1089302    0.0930282    0.1248322
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.3503961    0.3296162    0.3711760
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.2683945    0.2515899    0.2851992
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.1875507    0.1720647    0.2030367
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.1116288    0.0962399    0.1270177
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.3827138    0.3019233    0.4635043
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.2595848    0.2016018    0.3175678
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.1687715    0.1187124    0.2188306
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0970668    0.0442882    0.1498454
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.1523784   -0.0750721    0.3798289
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0594285   -0.0266147    0.1454717
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0285145   -0.0385293    0.0955583
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0               -0.0068500   -0.0682199    0.0545199
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.1657961    0.0429745    0.2886176
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.1662082   -0.0300800    0.3624964
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0582039   -0.0626299    0.1790378
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.0688404   -0.0270438    0.1647247
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.0677008   -0.0693964    0.2047981
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.2025597    0.0953313    0.3097881
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.0504906   -0.0380988    0.1390799
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.0820055   -0.0138165    0.1778274
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.2792899    0.1180010    0.4405787
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.1723826    0.0493950    0.2953703
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0598265   -0.0256261    0.1452792
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0501327   -0.0292539    0.1295193
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.2288244    0.0883152    0.3693336
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.1639483    0.0237715    0.3041252
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.0908464   -0.0115235    0.1932164
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0826041   -0.0142856    0.1794938
3-6 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC             INDIA                          <-3                  >=0                0.1641296   -0.0118487    0.3401079
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0337227   -0.0827367    0.1501822
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0414901   -0.0485754    0.1315555
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0537967   -0.0204671    0.1280604
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.1966392    0.0860004    0.3072780
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.0903446    0.0413245    0.1393647
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.0341409   -0.0163880    0.0846697
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.0622786    0.0264435    0.0981137
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.4554625    0.1515008    0.7594242
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0925103    0.0285672    0.1564534
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0833688    0.0355303    0.1312074
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0296431   -0.0087453    0.0680315
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                0.1193633   -0.0015818    0.2403085
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.1150824    0.0296238    0.2005409
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.0660981   -0.0027971    0.1349933
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0496278    0.0008786    0.0983770
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0               -0.0831795   -0.3218423    0.1554833
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                0.1057224   -0.0424362    0.2538809
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.1507802    0.0758570    0.2257033
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.0542228    0.0316092    0.0768364
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.1209125    0.0698399    0.1719852
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.0841928    0.0456668    0.1227187
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0354636    0.0072666    0.0636605
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0259456    0.0042182    0.0476731
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.2330022    0.1395526    0.3264517
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.0319146   -0.0459109    0.1097401
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.1538476    0.0929869    0.2147082
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.0739036    0.0387831    0.1090240
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.1587838    0.1148198    0.2027477
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.0977410    0.0756013    0.1198808
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0642794    0.0480897    0.0804692
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.0364939    0.0220657    0.0509222
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.1559300    0.1351574    0.1767027
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0681772    0.0524432    0.0839113
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0319728    0.0180148    0.0459308
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0087030   -0.0056951    0.0231011
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.1329344    0.0693388    0.1965300
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0734722    0.0291960    0.1177484
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.0148673   -0.0248081    0.0545427
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0143204   -0.0185359    0.0471766
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.0892672    0.0500635    0.1284709
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0440449    0.0080317    0.0800581
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0558736    0.0247416    0.0870056
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.0276027   -0.0019059    0.0571112
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.0406685   -0.0225734    0.1039105
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0               -0.0944330   -0.1589382   -0.0299278
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0384021   -0.0285522    0.1053564
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0               -0.0161069   -0.0651964    0.0329827
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.0354503   -0.0139478    0.0848484
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0               -0.0120055   -0.0762135    0.0522025
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0209868   -0.0104613    0.0524349
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0               -0.0024734   -0.0302718    0.0253251
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.0317936   -0.0780848    0.1416720
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.0314527   -0.0222360    0.0851415
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.0346645   -0.0055737    0.0749027
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0140860   -0.0264608    0.0546328
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.0290332   -0.0802894    0.1383559
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0029976   -0.0841569    0.0901520
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0115392   -0.1004390    0.0773606
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0475980   -0.1185319    0.0233360
6-12 months    ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC             INDIA                          <-3                  >=0                0.0859096   -0.0250698    0.1968891
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0284251   -0.0091600    0.0660102
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0411092    0.0021763    0.0800420
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               >=0               -0.0010056   -0.0318618    0.0298507
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.0722694    0.0313677    0.1131711
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.0230703   -0.0010471    0.0471878
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.0077380   -0.0126621    0.0281380
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0               -0.0046181   -0.0322588    0.0230227
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.0564072   -0.0076951    0.1205096
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0399677    0.0057402    0.0741951
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0269086    0.0076465    0.0461706
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0211055    0.0033780    0.0388329
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  >=0               -0.0639248   -0.1090195   -0.0188301
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              >=0               -0.0027709   -0.0364549    0.0309130
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              >=0               -0.0057942   -0.0294086    0.0178202
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               >=0               -0.0193191   -0.0394272    0.0007889
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.0540132    0.0264405    0.0815859
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.0405978    0.0218651    0.0593305
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0122317   -0.0013720    0.0258353
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0066377   -0.0043127    0.0175880
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.0778478   -0.0076002    0.1632957
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.0637206    0.0273702    0.1000710
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.0278965   -0.0013533    0.0571463
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.0114640   -0.0079755    0.0309034
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  >=0                0.0288928    0.0009870    0.0567987
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.0162229    0.0014778    0.0309680
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0038972   -0.0066465    0.0144409
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               >=0               -0.0065466   -0.0154356    0.0023423
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0                0.0454379    0.0002336    0.0906423
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0                0.0127997   -0.0135589    0.0391582
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0                0.0059849   -0.0089696    0.0209394
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0               -0.0067810   -0.0183409    0.0047789
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0507849    0.0396376    0.0619322
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0192050    0.0103588    0.0280511
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0044647   -0.0032081    0.0121376
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0               -0.0022587   -0.0106582    0.0061407
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.0540799    0.0325215    0.0756382
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0231461    0.0045029    0.0417893
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.0111456   -0.0003013    0.0225925
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0               -0.0039800   -0.0154947    0.0075346
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.0027948   -0.0334453    0.0390350
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0222259    0.0040331    0.0404186
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0079823   -0.0063370    0.0223017
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.0109270   -0.0043597    0.0262137
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.0151193   -0.0305015    0.0607401
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.0098011   -0.0464789    0.0660811
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0307345   -0.0062246    0.0676936
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.0125431   -0.0159207    0.0410068
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.0341202    0.0111027    0.0571376
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.0158572   -0.0050548    0.0367693
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.0029603   -0.0130855    0.0190061
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.0194845    0.0033144    0.0356547
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.0260442    0.0062454    0.0458430
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.0197380   -0.0025932    0.0420692
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0169599    0.0008107    0.0331090
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0118479   -0.0019190    0.0256148
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.0218101   -0.0225374    0.0661575
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0166952   -0.0245800    0.0579703
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0063060   -0.0376571    0.0250450
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0163398   -0.0138717    0.0465513
12-24 months   ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC             INDIA                          <-3                  >=0                0.0460348   -0.0059734    0.0980431
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0361335    0.0013093    0.0709577
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0238265    0.0055554    0.0420976
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0251388    0.0078399    0.0424377
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.0461847    0.0217198    0.0706496
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0402285    0.0211199    0.0593372
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0256882    0.0149855    0.0363909
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0113750    0.0020383    0.0207118
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  >=0                0.0377672    0.0021293    0.0734052
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.0156783   -0.0026240    0.0339807
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.0144315    0.0014474    0.0274155
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0163530    0.0066382    0.0260678
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.0154770   -0.0188534    0.0498073
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0               -0.0054546   -0.0404816    0.0295725
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0               -0.0038748   -0.0282715    0.0205219
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0               -0.0080802   -0.0343976    0.0182373
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.0528845    0.0306872    0.0750819
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.0156421   -0.0065094    0.0377935
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.0100269   -0.0044853    0.0245390
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.0095222   -0.0008586    0.0199030
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  >=0                0.0226807    0.0119186    0.0334429
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.0125957    0.0056764    0.0195149
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0030752   -0.0017006    0.0078510
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.0034887   -0.0007473    0.0077248
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0                0.0167353   -0.0103440    0.0438147
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0                0.0267957    0.0137571    0.0398343
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0                0.0116417    0.0042163    0.0190671
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0                0.0050242   -0.0006261    0.0106746
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0315262    0.0239084    0.0391439
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0207706    0.0145294    0.0270119
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0111007    0.0055634    0.0166380
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0066565    0.0010340    0.0122790
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.0246798    0.0165943    0.0327653
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0107036    0.0040816    0.0173257
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.0082229    0.0030933    0.0133525
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0024243   -0.0028772    0.0077259
