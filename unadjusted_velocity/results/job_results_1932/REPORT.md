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

**Outcome Variable:** y_rate_lencm

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
##          y_rate_lencm
## birthlen  2.62212931034483 3.17110276595745 3.18314302325581
##   >=0                    1                1                1
##   <-3                    0                0                0
##   [-3--2)                0                0                0
##   [-2--1)                0                0                0
##   [-1-0)                 0                0                0
##          y_rate_lencm
## birthlen  3.20879472527473 3.35524422680412 3.447226 3.70017587628866
##   >=0                    1                1        1                1
##   <-3                    0                0        0                0
##   [-3--2)                0                0        0                0
##   [-2--1)                0                0        0                0
##   [-1-0)                 0                0        0                0
##          y_rate_lencm
## birthlen  4.21436204819277
##   >=0                    1
##   <-3                    0
##   [-3--2)                0
##   [-2--1)                0
##   [-1-0)                 0
##          y_rate_lencm
## birthlen  1.457466875 1.59764484848485 1.68186458823529 1.786981125
##   >=0               1                1                1           1
##   <-3               0                0                0           0
##   [-3--2)           0                0                0           0
##   [-2--1)           0                0                0           0
##   [-1-0)            0                0                0           0
##          y_rate_lencm
## birthlen  1.9770855 2.00305097560975 2.14299477272727 2.2556204494382
##   >=0             1                1                1               1
##   <-3             0                0                0               0
##   [-3--2)         0                0                0               0
##   [-2--1)         0                0                0               0
##   [-1-0)          0                0                0               0
##          y_rate_lencm
## birthlen  0.83105737704918 0.841312978723405 1.04461393939394
##   >=0                    1                 1                1
##   <-3                    0                 0                0
##   [-3--2)                0                 0                0
##   [-2--1)                0                 0                0
##   [-1-0)                 0                 0                0
##          y_rate_lencm
## birthlen  1.07053189944134 1.07167647668394 1.26599237837838
##   >=0                    1                1                1
##   <-3                    0                0                0
##   [-3--2)                0                0                0
##   [-2--1)                0                0                0
##   [-1-0)                 0                0                0
##          y_rate_lencm
## birthlen  1.33649136363636 1.72138467032967
##   >=0                    1                1
##   <-3                    0                0
##   [-3--2)                0                0
##   [-2--1)                0                0
##   [-1-0)                 0                0
```




# Results Detail

## Results Plots
![](/tmp/3db608b8-b0a8-4f5f-a3ba-f42f7a7f3c52/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/3db608b8-b0a8-4f5f-a3ba-f42f7a7f3c52/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


diffcat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                3.3266417   3.1696234   3.4836600
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                3.9881331   3.7080072   4.2682590
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                3.7267972   3.5134935   3.9401010
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                3.6543678   3.5607354   3.7480002
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                3.4791012   3.3803071   3.5778952
0-3 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                3.7748709   3.6069329   3.9428088
0-3 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                4.8268550   4.3908291   5.2628810
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                4.8241765   4.5254381   5.1229149
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                4.0804880   3.8487315   4.3122445
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                4.0160492   3.8803399   4.1517585
0-3 months     ki0047075b-MAL-ED         INDIA                          >=0                  NA                3.4063562   3.2590844   3.5536281
0-3 months     ki0047075b-MAL-ED         INDIA                          <-3                  NA                3.9668801   3.4859337   4.4478266
0-3 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                3.7386277   3.4765268   4.0007286
0-3 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                3.6083849   3.4903074   3.7264624
0-3 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                3.5848319   3.4374654   3.7321984
0-3 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                3.6453337   3.5093325   3.7813350
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                4.0690253   3.6624145   4.4756362
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                4.3064477   3.9821858   4.6307096
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                3.9276494   3.7893578   4.0659410
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                3.7750821   3.6557764   3.8943878
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                3.0924358   2.9198350   3.2650365
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                3.7157459   3.2901750   4.1413167
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                3.4094416   3.2247649   3.5941182
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                3.4336679   3.3308842   3.5364516
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                3.2482506   3.1497269   3.3467743
0-3 months     ki1000108-IRC             INDIA                          >=0                  NA                2.5910536   2.4196953   2.7624118
0-3 months     ki1000108-IRC             INDIA                          <-3                  NA                4.5774589   3.8943948   5.2605229
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              NA                3.7697366   3.3812576   4.1582157
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              NA                3.5303293   3.2925549   3.7681037
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               NA                3.3354385   3.1847766   3.4861004
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                3.4184459   3.2998129   3.5370788
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                3.7884305   3.5749065   4.0019545
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                3.7981908   3.6790904   3.9172911
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                3.6382319   3.5956348   3.6808289
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                3.5336265   3.4647658   3.6024873
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                3.1616304   3.0945311   3.2287297
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                3.0319299   2.7017638   3.3620959
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                3.5434996   3.3914884   3.6955109
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                3.4274168   3.3503782   3.5044554
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                3.2949437   3.2354272   3.3544602
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                2.8837039   2.8262278   2.9411801
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                5.3474471   4.8048548   5.8900394
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                3.8853831   3.6676843   4.1030820
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                3.5019131   3.3859626   3.6178636
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                3.2451907   3.1777879   3.3125934
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                2.7969900   2.6862737   2.9077064
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                5.3456042   4.7420550   5.9491534
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                3.6993620   3.3571612   4.0415627
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                3.4184981   3.1801655   3.6568306
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                3.1883606   3.0757364   3.3009848
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                2.9232580   2.8888594   2.9576566
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                4.3299329   4.2109095   4.4489563
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                3.9750098   3.9004283   4.0495912
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                3.7135259   3.6693921   3.7576596
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                3.4135548   3.3838265   3.4432832
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                2.5097327   2.4528272   2.5666381
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                3.4816050   2.8481339   4.1150762
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                2.9564691   2.7360859   3.1768523
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                2.7396504   2.5888577   2.8904431
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                2.6954012   2.6228713   2.7679312
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  NA                3.3738477   3.3484278   3.3992676
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  NA                3.8792015   3.7854898   3.9729132
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                3.8003977   3.7482263   3.8525691
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                3.6581823   3.6294186   3.6869460
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                3.5221502   3.5001364   3.5441640
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                3.4428128   3.4127415   3.4728840
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                3.9388502   3.9069908   3.9707096
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                3.8427607   3.8229392   3.8625822
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                3.7314951   3.7166008   3.7463894
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                3.6221008   3.6060258   3.6381759
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                3.3513883   3.2527265   3.4500500
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                3.9947538   3.8726127   4.1168949
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                3.7884577   3.7125174   3.8643980
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                3.6625978   3.6158851   3.7093105
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                3.5461970   3.4879697   3.6044243
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                1.9280530   1.8155667   2.0405392
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                2.1249941   1.6600295   2.5899586
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                1.9738356   1.8248035   2.1228678
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                1.9555633   1.8616007   2.0495258
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                1.8868548   1.8111994   1.9625102
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                2.0345570   1.8681531   2.2009609
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                2.2873213   2.0608898   2.5137528
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                2.3430433   1.9358750   2.7502115
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                2.1120546   1.9070706   2.3170385
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                2.1636473   2.0354192   2.2918753
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  NA                1.7452907   1.5785019   1.9120796
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  NA                1.8343042   1.5957711   2.0728374
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                2.1104958   1.9517429   2.2692488
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                1.7925860   1.6941097   1.8910623
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                1.9013060   1.7807495   2.0218625
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                1.8595391   1.7155610   2.0035172
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                2.3928196   2.0983188   2.6873204
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                2.1774572   1.9447947   2.4101197
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                1.9415157   1.8331080   2.0499234
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                1.9438790   1.8542655   2.0334925
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                1.8714375   1.6886566   2.0542183
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                2.2593155   2.0472659   2.4713650
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                2.1559279   1.9201522   2.3917036
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                2.0164616   1.8947754   2.1381478
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                2.0328811   1.9338619   2.1319004
3-6 months     ki1000108-IRC             INDIA                          >=0                  NA                1.8490469   1.7306243   1.9674695
3-6 months     ki1000108-IRC             INDIA                          <-3                  NA                2.1187460   1.7418386   2.4956534
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              NA                1.8669443   1.6595645   2.0743240
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              NA                1.8702402   1.7198203   2.0206601
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               NA                1.9447640   1.8406677   2.0488603
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                1.8741552   1.8297597   1.9185507
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                2.1721958   1.9113261   2.4330655
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                2.0091531   1.9215472   2.0967591
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                1.8867640   1.7834729   1.9900551
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                1.9818050   1.9094639   2.0541461
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                1.9442923   1.8803915   2.0081932
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                2.7656055   2.0796162   3.4515949
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                2.0618827   1.9357393   2.1880261
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                2.0685543   1.9860632   2.1510453
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                1.9898552   1.9359646   2.0437458
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                1.9088585   1.8472925   1.9704245
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                2.1184773   1.8682932   2.3686613
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                2.0871894   1.9071381   2.2672407
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                1.9939257   1.8581682   2.1296833
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                1.9800310   1.8961067   2.0639553
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                2.0830582   2.0409416   2.1251748
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                1.8658131   1.3963903   2.3352359
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                2.2487562   1.9283215   2.5691908
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                2.3503842   2.1808962   2.5198723
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                2.1609853   2.1103872   2.2115833
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                1.9410912   1.9077429   1.9744395
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                2.1277516   2.0229279   2.2325754
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                2.0746873   1.9994902   2.1498845
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                1.9809649   1.9307373   2.0311925
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                1.9801099   1.9477349   2.0124850
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                1.6880115   1.6438809   1.7321422
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                2.0954776   1.9251414   2.2658138
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                1.6708597   1.5164312   1.8252882
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                1.9332578   1.8123399   2.0541758
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                1.8004487   1.7385777   1.8623198
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  NA                1.8217801   1.7981792   1.8453810
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  NA                2.0563923   1.9626367   2.1501480
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                1.9559520   1.9139084   1.9979956
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                1.9025380   1.8763684   1.9287076
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                1.8667117   1.8459555   1.8874678
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                1.8696812   1.8448020   1.8945603
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                2.1143496   2.0778518   2.1508473
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                1.9587021   1.9353973   1.9820070
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                1.9040727   1.8876761   1.9204693
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                1.8777504   1.8592000   1.8963007
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                1.8732650   1.8240762   1.9224538
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                2.0803526   1.9524899   2.2082153
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                1.9677117   1.8829571   2.0524663
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                1.8669446   1.7949912   1.9388980
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                1.8919065   1.8390949   1.9447181
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                1.0731170   1.0150779   1.1311560
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                1.1916749   1.1098761   1.2734738
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                1.0947661   1.0295948   1.1599374
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                1.1542046   1.1070338   1.2013754
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                1.1007920   1.0583997   1.1431844
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                1.4309071   1.3362329   1.5255814
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                1.4461724   1.3168072   1.5755376
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                1.1505485   1.0207592   1.2803377
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                1.4628285   1.3361705   1.5894865
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                1.3514959   1.2818791   1.4211128
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  NA                1.2229474   1.1709953   1.2748995
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  NA                1.2112649   1.1017621   1.3207678
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                1.1352251   0.9849755   1.2854747
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                1.2243779   1.1672611   1.2814947
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                1.1883113   1.1457098   1.2309127
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  NA                1.1933368   1.1145834   1.2720902
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  NA                1.1872275   0.9384379   1.4360171
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              NA                1.1981344   1.0980410   1.2982279
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              NA                1.2303717   1.1746833   1.2860600
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               NA                1.2052370   1.1496282   1.2608458
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                1.0906367   0.9383652   1.2429082
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                1.0834823   0.9063785   1.2605861
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                1.0215340   0.8837340   1.1593341
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                1.0204359   0.8700942   1.1707776
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.9490913   0.8796560   1.0185266
6-12 months    ki1000108-IRC             INDIA                          >=0                  NA                1.2371710   1.1891837   1.2851582
6-12 months    ki1000108-IRC             INDIA                          <-3                  NA                1.3763137   1.1302963   1.6223311
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              NA                1.2459503   1.1707685   1.3211320
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              NA                1.3008230   1.2261824   1.3754636
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               NA                1.2170571   1.1659015   1.2682127
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                1.1163042   1.0703978   1.1622105
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                1.1917909   1.1139322   1.2696495
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                1.1046294   1.0655386   1.1437202
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                1.0864360   1.0712004   1.1016716
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                1.0877589   1.0552490   1.1202688
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                1.2171338   1.1853371   1.2489306
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                1.2365703   1.0759562   1.3971844
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                1.2331638   1.1559221   1.3104055
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                1.2277786   1.1937388   1.2618183
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                1.2361355   1.2077734   1.2644976
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  NA                1.2107586   1.1802555   1.2412617
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  NA                1.0093904   0.9071313   1.1116496
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              NA                1.1430956   1.0635163   1.2226749
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              NA                1.1543669   1.1076058   1.2011279
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               NA                1.1382224   1.1020291   1.1744157
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                1.1891537   1.1707150   1.2075924
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                1.2571355   1.1940627   1.3202083
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                1.2467395   1.2063205   1.2871585
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                1.1922191   1.1659800   1.2184583
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                1.1918605   1.1740389   1.2096821
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  NA                1.0235963   0.9975624   1.0496302
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  NA                1.1233627   0.9278879   1.3188376
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                1.0911090   1.0064954   1.1757227
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                1.0366882   0.9699438   1.1034327
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                1.0126836   0.9726225   1.0527446
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  NA                1.1287085   1.1124356   1.1449815
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  NA                1.1083814   1.0452144   1.1715483
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              NA                1.0982793   1.0672475   1.1293111
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              NA                1.0852118   1.0659649   1.1044587
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               NA                1.0830265   1.0690557   1.0969974
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                1.0884278   1.0702481   1.1066076
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                1.1011988   0.9931293   1.2092684
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                1.0509453   0.9905017   1.1113890
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                1.0564799   1.0256869   1.0872730
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                1.0463850   1.0257017   1.0670683
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                1.1186945   1.1030453   1.1343437
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                1.1527898   1.1313312   1.1742484
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                1.1067579   1.0920311   1.1214847
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                1.0931496   1.0823715   1.1039277
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                1.1011910   1.0891072   1.1132748
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                1.2049260   1.1855237   1.2243283
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                1.2599177   1.2090852   1.3107502
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                1.2140217   1.1763467   1.2516967
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                1.2019473   1.1814557   1.2224390
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                1.1875609   1.1684479   1.2066739
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                0.8602290   0.8302485   0.8902095
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                0.7909677   0.6879441   0.8939912
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                0.8456118   0.8026695   0.8885542
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                0.8322132   0.8021746   0.8622518
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                0.8585181   0.8299921   0.8870441
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                0.9804518   0.9034441   1.0574594
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                0.9610762   0.8328066   1.0893457
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                0.9204239   0.7681129   1.0727349
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                0.9908714   0.9122976   1.0694451
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                0.9595435   0.9167604   1.0023267
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  NA                0.8905087   0.8498795   0.9311378
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  NA                0.8626009   0.7832588   0.9419431
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                0.8704079   0.8093137   0.9315021
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                0.8461368   0.8141877   0.8780860
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                0.9228036   0.8902062   0.9554009
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  NA                0.8689630   0.8388104   0.8991156
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  NA                0.8150053   0.7940770   0.8359337
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                0.8673799   0.8065774   0.9281824
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                0.8654377   0.8290144   0.9018609
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                0.8668603   0.8371389   0.8965816
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.8097767   0.7424876   0.8770657
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.7759687   0.6584870   0.8934503
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.7759952   0.6938995   0.8580909
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.7193725   0.6532815   0.7854634
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.8067080   0.7522184   0.8611976
12-24 months   ki1000108-IRC             INDIA                          >=0                  NA                0.7958886   0.7596595   0.8321177
12-24 months   ki1000108-IRC             INDIA                          <-3                  NA                0.8744281   0.7457101   1.0031460
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              NA                0.8406119   0.7527566   0.9284673
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              NA                0.8353599   0.7996157   0.8711041
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               NA                0.8585368   0.8261437   0.8909299
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                0.8649045   0.8428635   0.8869454
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                0.8842094   0.8083640   0.9600548
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                0.9036569   0.8522141   0.9550997
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                0.8907367   0.8674024   0.9140710
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                0.8688144   0.8503046   0.8873241
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  NA                0.8418019   0.8241956   0.8594081
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  NA                0.8897963   0.8060445   0.9735481
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              NA                0.8291776   0.7841720   0.8741832
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              NA                0.8470251   0.8127021   0.8813482
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               NA                0.8571343   0.8346541   0.8796146
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                0.7373615   0.6865214   0.7882016
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                0.7219120   0.6400187   0.8038054
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                0.6882767   0.6042200   0.7723334
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                0.7026752   0.6598480   0.7455024
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                0.7104417   0.6584644   0.7624189
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  NA                0.7767082   0.7575012   0.7959153
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  NA                0.8324997   0.8169905   0.8480090
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                0.7360989   0.6646615   0.8075363
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                0.7587844   0.7203396   0.7972292
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                0.7671296   0.7425648   0.7916945
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  NA                0.8533228   0.8437394   0.8629062
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  NA                0.8147278   0.7827383   0.8467174
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              NA                0.8082157   0.7899681   0.8264634
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              NA                0.8000808   0.7892788   0.8108827
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               NA                0.8272479   0.8187143   0.8357815
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                0.7154350   0.7043680   0.7265020
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                0.6729348   0.5910034   0.7548662
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                0.7198566   0.6862115   0.7535018
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                0.6982625   0.6791803   0.7173448
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                0.6997994   0.6875950   0.7120037
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                0.7980571   0.7851681   0.8109462
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                0.7987593   0.7801837   0.8173349
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                0.7971938   0.7845364   0.8098511
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                0.7888534   0.7795787   0.7981282
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                0.8028605   0.7938425   0.8118785
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                0.8538404   0.8432350   0.8644457
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                0.8522971   0.8306035   0.8739908
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                0.8407815   0.8258474   0.8557155
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                0.8504065   0.8396656   0.8611474
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                0.8540601   0.8421493   0.8659708


### Parameter: E(Y)


diffcat        studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                3.5603213   3.4965371   3.6241055
0-3 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                3.5943339   3.5152425   3.6734253
0-3 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                3.8294484   3.7523124   3.9065845
0-3 months     ki0047075b-MAL-ED         PERU                           NA                   NA                3.3131452   3.2493248   3.3769656
0-3 months     ki1000108-IRC             INDIA                          NA                   NA                3.1729204   3.0609523   3.2848884
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba          GAMBIA                         NA                   NA                3.1410155   3.0942096   3.1878215
0-3 months     ki1119695-PROBIT          BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
0-3 months     ki1135781-COHORTS         GUATEMALA                      NA                   NA                2.6117091   2.5680119   2.6554063
0-3 months     ki1135781-COHORTS         INDIA                          NA                   NA                3.5478988   3.5336609   3.5621367
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                3.7184443   3.7081005   3.7287881
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.9333469   1.8827032   1.9839906
3-6 months     ki0047075b-MAL-ED         BRAZIL                         NA                   NA                2.1370912   2.0494394   2.2247430
3-6 months     ki0047075b-MAL-ED         INDIA                          NA                   NA                1.8588467   1.7931260   1.9245674
3-6 months     ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.9537710   1.8906776   2.0168644
3-6 months     ki0047075b-MAL-ED         PERU                           NA                   NA                2.0203845   1.9526963   2.0880727
3-6 months     ki1000108-IRC             INDIA                          NA                   NA                1.8979894   1.8318964   1.9640824
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.9465718   1.9002562   1.9928873
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1101329-Keneba          GAMBIA                         NA                   NA                1.9485919   1.9035866   1.9935972
3-6 months     ki1119695-PROBIT          BELARUS                        NA                   NA                2.0917290   2.0505957   2.1328624
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.9780577   1.9580366   1.9980788
3-6 months     ki1135781-COHORTS         GUATEMALA                      NA                   NA                1.7456394   1.7115844   1.7796945
3-6 months     ki1135781-COHORTS         INDIA                          NA                   NA                1.8751782   1.8624443   1.8879121
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.9187845   1.9081770   1.9293920
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.8995744   1.8690448   1.9301040
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                1.1145345   1.0891836   1.1398854
6-12 months    ki0047075b-MAL-ED         BRAZIL                         NA                   NA                1.3893396   1.3390346   1.4396445
6-12 months    ki0047075b-MAL-ED         NEPAL                          NA                   NA                1.2038122   1.1754217   1.2322027
6-12 months    ki0047075b-MAL-ED         PERU                           NA                   NA                1.2109599   1.1778190   1.2441008
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.0072786   0.9485980   1.0659592
6-12 months    ki1000108-IRC             INDIA                          NA                   NA                1.2467181   1.2162335   1.2772028
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          NA                   NA                1.0993205   1.0874204   1.1112206
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1101329-Keneba          GAMBIA                         NA                   NA                1.1778182   1.1568582   1.1987781
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                1.1968156   1.1858561   1.2077751
6-12 months    ki1135781-COHORTS         GUATEMALA                      NA                   NA                1.0259211   1.0057423   1.0460999
6-12 months    ki1135781-COHORTS         INDIA                          NA                   NA                1.0985347   1.0896671   1.1074023
6-12 months    ki1135781-COHORTS         PHILIPPINES                    NA                   NA                1.0669016   1.0547084   1.0790949
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                1.1067799   1.0999217   1.1136382
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                1.2035888   1.1926725   1.2145050
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     NA                   NA                0.8473033   0.8311655   0.8634412
12-24 months   ki0047075b-MAL-ED         BRAZIL                         NA                   NA                0.9692760   0.9358403   1.0027117
12-24 months   ki0047075b-MAL-ED         INDIA                          NA                   NA                0.8839536   0.8647473   0.9031599
12-24 months   ki0047075b-MAL-ED         NEPAL                          NA                   NA                0.8654614   0.8481208   0.8828019
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7794654   0.7463664   0.8125645
12-24 months   ki1000108-IRC             INDIA                          NA                   NA                0.8307730   0.8104424   0.8511037
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba          GAMBIA                         NA                   NA                0.8470593   0.8345607   0.8595578
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       NA                   NA                0.7095047   0.6832130   0.7357964
12-24 months   ki1135781-COHORTS         GUATEMALA                      NA                   NA                0.7705085   0.7567567   0.7842603
12-24 months   ki1135781-COHORTS         INDIA                          NA                   NA                0.8265427   0.8213170   0.8317684
12-24 months   ki1135781-COHORTS         PHILIPPINES                    NA                   NA                0.7067961   0.6994517   0.7141404
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     NA                   NA                0.7964137   0.7910429   0.8017845
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     NA                   NA                0.8511625   0.8452650   0.8570599


### Parameter: ATE


diffcat        studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.6614914    0.3403602    0.9826226
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.4001556    0.1352910    0.6650201
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.3277261    0.1449099    0.5105423
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.1524595   -0.0330533    0.3379723
0-3 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                1.0519841    0.5847350    1.5192333
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                1.0493056    0.7065991    1.3920122
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.3056171    0.0194105    0.5918237
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.2411784    0.0252614    0.4570954
0-3 months     ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.5605239    0.0575344    1.0635134
0-3 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.3322715    0.0316290    0.6329140
0-3 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.2020287    0.0132662    0.3907912
0-3 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.1784757   -0.0298651    0.3868165
0-3 months     ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.4236916   -0.0050609    0.8524441
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.6611139    0.3094861    1.0127417
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.2823157    0.0883545    0.4762768
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.1297483   -0.0511665    0.3106632
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.6233101    0.1640699    1.0825503
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.3170058    0.0642282    0.5697833
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.3412321    0.1403453    0.5421189
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.1558148   -0.0429261    0.3545557
0-3 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC             INDIA                          <-3                  >=0                1.9864053    1.2821752    2.6906355
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                1.1786831    0.7540896    1.6032766
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                0.9392758    0.6461882    1.2323633
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.7443849    0.5162125    0.9725574
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.3699846    0.1431493    0.5968200
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.3797449    0.1923067    0.5671831
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.2197860    0.0902569    0.3493152
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.1151806   -0.0433252    0.2736864
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0               -0.1297006   -0.4666159    0.2072148
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.3818692    0.2157075    0.5480310
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.2657863    0.1636234    0.3679492
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.1333133    0.0436220    0.2230046
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                2.4637432    1.9181152    3.0093712
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                1.0016792    0.7765208    1.2268375
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.6182091    0.4887950    0.7476233
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.3614867    0.2729055    0.4500680
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0                2.5486142    1.9246309    3.1725975
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                0.9023720    0.5541194    1.2506245
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.6215080    0.3916530    0.8513631
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.3913706    0.2880508    0.4946904
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                1.4066749    1.2827805    1.5305693
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                1.0517518    0.9696198    1.1338837
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.7902678    0.7343120    0.8462236
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.4902968    0.4448321    0.5357615
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.9718724    0.3358504    1.6078943
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.4467364    0.2191249    0.6743479
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.2299177    0.0687450    0.3910905
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.1856686    0.0934795    0.2778576
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.5053538    0.4082556    0.6024519
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.4265500    0.3685153    0.4845847
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.2843346    0.2459481    0.3227211
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.1483025    0.1146755    0.1819296
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.4960374    0.4532670    0.5388078
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.3999479    0.3646367    0.4352592
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.2886823    0.2559826    0.3213821
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.1792881    0.1472970    0.2112792
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.6433655    0.4854719    0.8012592
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.4370695    0.3119566    0.5621823
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.3112096    0.2017977    0.4206214
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.1948088    0.0805855    0.3090320
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.1969411   -0.2814365    0.6753187
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0457827   -0.1409356    0.2325010
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0275103   -0.1190575    0.1740781
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0               -0.0411982   -0.1767596    0.0943633
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.2527643   -0.0282366    0.5337651
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.3084862   -0.1313732    0.7483456
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0774976   -0.1865265    0.3415216
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.1290902   -0.0809876    0.3391681
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.0890135   -0.2020476    0.3800747
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.3652051    0.1349422    0.5954681
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.0472952   -0.1463956    0.2409860
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.1560153   -0.0497817    0.3618123
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.5332805    0.2054690    0.8610921
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.3179182    0.0443098    0.5915265
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0819766   -0.0982508    0.2622040
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0843399   -0.0852486    0.2539284
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.3878780    0.1079247    0.6678313
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.2844904   -0.0138366    0.5828175
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.1450241   -0.0745581    0.3646064
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.1614437   -0.0464353    0.3693226
3-6 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC             INDIA                          <-3                  >=0                0.2696991   -0.1253744    0.6647727
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0178974   -0.2209128    0.2567075
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0211933   -0.1702488    0.2126354
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0957171   -0.0619533    0.2533875
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.2980406    0.0583877    0.5376934
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.1349979    0.0286776    0.2413183
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.0126088   -0.0981853    0.1234028
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.1076498    0.0350466    0.1802530
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.8213132    0.1323540    1.5102724
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.1175904   -0.0238150    0.2589957
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.1242619    0.0199159    0.2286079
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0455628   -0.0380285    0.1291542
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                0.2096188   -0.0480291    0.4672667
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.1783309   -0.0119553    0.3686172
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.0850673   -0.0639981    0.2341326
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0711726   -0.0329123    0.1752574
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0               -0.2172451   -0.6761060    0.2416157
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                0.1656979   -0.1483755    0.4797714
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.2673260    0.0994770    0.4351749
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.0779270    0.0315270    0.1243270
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.1866604    0.0766598    0.2966610
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.1335961    0.0513360    0.2158562
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0398737   -0.0204166    0.1001640
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0390187   -0.0074598    0.0854973
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.4074661    0.2315061    0.5834262
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0               -0.0171518   -0.1777622    0.1434585
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.2452463    0.1165270    0.3739657
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.1124372    0.0364402    0.1884342
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.2346122    0.1379317    0.3312927
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.1341719    0.0859571    0.1823867
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0807579    0.0455180    0.1159978
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.0449316    0.0135019    0.0763612
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.2446684    0.2006164    0.2887204
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0890210    0.0550794    0.1229626
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0343916    0.0044180    0.0643651
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0080692   -0.0231525    0.0392909
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.2070876    0.0714329    0.3427424
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0944467   -0.0032204    0.1921138
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0               -0.0063204   -0.0935064    0.0808656
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0186415   -0.0525558    0.0898389
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.1185580    0.0182605    0.2188555
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0216491   -0.0656196    0.1089178
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0810876    0.0062972    0.1558781
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.0276751   -0.0441974    0.0995475
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.0152652   -0.1450425    0.1755730
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0               -0.2803586   -0.4410088   -0.1197085
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0319214   -0.1262098    0.1900525
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0               -0.0794112   -0.1969260    0.0381035
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  >=0               -0.0116825   -0.1328844    0.1095194
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0               -0.0877223   -0.2467002    0.0712556
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0014305   -0.0757793    0.0786402
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0               -0.0346362   -0.1018217    0.0325494
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  >=0               -0.0061093   -0.2670659    0.2548473
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.0047976   -0.1225633    0.1321585
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.0370348   -0.0594187    0.1334884
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0119002   -0.0845074    0.1083078
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0               -0.0071544   -0.2407189    0.2264101
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.0691027   -0.2744693    0.1362640
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0702008   -0.2841849    0.1437834
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.1415453   -0.3089009    0.0258102
6-12 months    ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC             INDIA                          <-3                  >=0                0.1391428   -0.1115111    0.3897966
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0087793   -0.0804119    0.0979705
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0636520   -0.0250835    0.1523876
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               >=0               -0.0201139   -0.0902543    0.0500265
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.0754867   -0.0229971    0.1739705
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0               -0.0116748   -0.0667331    0.0433836
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0               -0.0298682   -0.0814716    0.0217353
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0               -0.0285453   -0.0969938    0.0399032
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.0194365   -0.1442948    0.1831677
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0160300   -0.0675003    0.0995603
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0106447   -0.0359357    0.0572252
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0190017   -0.0236063    0.0616097
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  >=0               -0.2013682   -0.3080798   -0.0946566
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              >=0               -0.0676630   -0.1528880    0.0175620
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              >=0               -0.0563918   -0.1122222   -0.0005614
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               >=0               -0.0725362   -0.1198691   -0.0252034
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.0679818    0.0022691    0.1336946
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.0575858    0.0131597    0.1020119
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0030655   -0.0290044    0.0351353
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0027068   -0.0229368    0.0283504
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.0997664   -0.0974345    0.2969673
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.0675127   -0.0210154    0.1560409
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.0130919   -0.0585502    0.0847340
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0               -0.0109127   -0.0586898    0.0368643
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  >=0               -0.0203272   -0.0855565    0.0449022
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              >=0               -0.0304293   -0.0654690    0.0046105
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              >=0               -0.0434967   -0.0687009   -0.0182926
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               >=0               -0.0456820   -0.0671295   -0.0242346
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0                0.0127710   -0.0968170    0.1223590
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0               -0.0374825   -0.1006009    0.0256359
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0               -0.0319479   -0.0677071    0.0038113
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0               -0.0420428   -0.0695801   -0.0145056
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0340953    0.0080880    0.0601026
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0               -0.0119366   -0.0328791    0.0090059
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0               -0.0255449   -0.0436701   -0.0074197
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0               -0.0175035   -0.0371758    0.0021688
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.0549917    0.0010720    0.1089114
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0090957   -0.0338913    0.0520827
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0               -0.0029786   -0.0306679    0.0247106
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0               -0.0173651   -0.0450756    0.0103453
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0               -0.0692613   -0.1765585    0.0380358
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0               -0.0146172   -0.0669896    0.0377553
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0               -0.0280158   -0.0704557    0.0144241
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0               -0.0017109   -0.0430940    0.0396722
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0               -0.0193756   -0.1689859    0.1302347
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0               -0.0600279   -0.2306995    0.1106438
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0104196   -0.0995986    0.1204378
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0               -0.0209082   -0.1090023    0.0671859
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  >=0               -0.0279077   -0.1170475    0.0612321
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0               -0.0201008   -0.0934713    0.0532697
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0               -0.0443718   -0.0960582    0.0073145
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.0322949   -0.0197946    0.0843844
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  >=0               -0.0539577   -0.0906615   -0.0172538
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0               -0.0015831   -0.0694515    0.0662854
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0               -0.0035253   -0.0508099    0.0437593
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0               -0.0021027   -0.0444411    0.0402356
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0               -0.0338080   -0.1691955    0.1015794
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.0337815   -0.1399301    0.0723671
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0904042   -0.1847219    0.0039135
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0030687   -0.0896536    0.0835161
12-24 months   ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC             INDIA                          <-3                  >=0                0.0785395   -0.0551798    0.2122588
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0447233   -0.0503088    0.1397555
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0394713   -0.0114227    0.0903652
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0626482    0.0140493    0.1112472
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.0193049   -0.0596781    0.0982880
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0387524   -0.0172133    0.0947182
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0258323   -0.0062659    0.0579304
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0039099   -0.0248723    0.0326921
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  >=0                0.0479944   -0.0375879    0.1335768
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              >=0               -0.0126243   -0.0609511    0.0357026
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.0052233   -0.0333520    0.0437985
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0153325   -0.0132217    0.0438866
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0               -0.0154495   -0.1118405    0.0809416
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0               -0.0490848   -0.1473204    0.0491509
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0               -0.0346863   -0.1011610    0.0317884
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0               -0.0269198   -0.0996272    0.0457875
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.0557915    0.0311045    0.0804785
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0               -0.0406094   -0.1145838    0.0333650
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0               -0.0179239   -0.0608996    0.0250519
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0               -0.0095786   -0.0407610    0.0216038
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  >=0               -0.0385949   -0.0719891   -0.0052007
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              >=0               -0.0451070   -0.0657181   -0.0244959
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              >=0               -0.0532420   -0.0676823   -0.0388016
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               >=0               -0.0260749   -0.0389070   -0.0132427
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0               -0.0425002   -0.1251756    0.0401753
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0                0.0044216   -0.0309969    0.0398402
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0               -0.0171725   -0.0392317    0.0048867
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0               -0.0156356   -0.0321106    0.0008393
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0007022   -0.0217198    0.0231242
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0               -0.0008634   -0.0187354    0.0170086
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0               -0.0092037   -0.0250137    0.0066063
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0048034   -0.0109488    0.0205555
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0               -0.0015432   -0.0256553    0.0225689
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0               -0.0130589   -0.0314538    0.0053360
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0               -0.0034338   -0.0183014    0.0114337
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0002197   -0.0154170    0.0158564
