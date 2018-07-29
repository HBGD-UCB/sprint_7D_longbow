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
      W: ['apgar1', 'apgar5', 'gagebrth', 'mage', 'meducyrs', 'sexn']
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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** birthlen

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* W_nrooms
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_W_nrooms
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthlen    n_cell       n
-------------  -------------------------  -----------------------------  ---------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=0             37     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <-3              6     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         34     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         77     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          84     238
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=0              5      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          8      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           9      23
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=0            199     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <-3              1     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         21     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        160     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         253     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0            209     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3              5     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         46     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        177     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         283     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0           1865   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3           1910   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)       4082   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       6946   20045
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        5242   20045
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0            216    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3            130    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        326    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        609    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         526    1807
0-3 months     ki1119695-PROBIT           BELARUS                        >=0          11610   12745
0-3 months     ki1119695-PROBIT           BELARUS                        <-3              5   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-3--2)         26   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)        102   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)        1002   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0             43     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         <-3              7     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)         10     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)         45     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)          75     180
0-3 months     ki1114097-CMIN             BRAZIL                         >=0             42      81
0-3 months     ki1114097-CMIN             BRAZIL                         <-3              3      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-3--2)          1      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-2--1)          9      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-1-0)          26      81
0-3 months     ki1101329-Keneba           GAMBIA                         >=0            670    1251
0-3 months     ki1101329-Keneba           GAMBIA                         <-3             24    1251
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)         41    1251
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)        137    1251
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)         379    1251
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=0            415     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      <-3              6     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)         32     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)         69     728
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)         206     728
0-3 months     ki0047075b-MAL-ED          INDIA                          >=0             33     195
0-3 months     ki0047075b-MAL-ED          INDIA                          <-3              7     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-3--2)         23     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-2--1)         65     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-1-0)          67     195
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0             11      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         11      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         20      80
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          35      80
0-3 months     ki1000108-IRC              INDIA                          >=0            139     377
0-3 months     ki1000108-IRC              INDIA                          <-3             15     377
0-3 months     ki1000108-IRC              INDIA                          [-3--2)         26     377
0-3 months     ki1000108-IRC              INDIA                          [-2--1)         63     377
0-3 months     ki1000108-IRC              INDIA                          [-1-0)         134     377
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0            170    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3             57    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)        177    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)        364    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)         400    1168
0-3 months     ki1135781-COHORTS          INDIA                          >=0           1805    6465
0-3 months     ki1135781-COHORTS          INDIA                          <-3            197    6465
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)        560    6465
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)       1529    6465
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)        2374    6465
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=0             44     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          <-3              6     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-2--1)         45     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-1-0)          64     171
0-3 months     ki1000109-EE               PAKISTAN                       >=0              1       2
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)          1       2
0-3 months     ki1000109-ResPak           PAKISTAN                       >=0              2       5
0-3 months     ki1000109-ResPak           PAKISTAN                       [-3--2)          2       5
0-3 months     ki1000109-ResPak           PAKISTAN                       [-1-0)           1       5
0-3 months     ki0047075b-MAL-ED          PERU                           >=0             41     268
0-3 months     ki0047075b-MAL-ED          PERU                           <-3              7     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-3--2)         26     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-2--1)         88     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-1-0)         106     268
0-3 months     ki1114097-CMIN             PERU                           >=0              8       8
0-3 months     ki1114097-CONTENT          PERU                           >=0              1       2
0-3 months     ki1114097-CONTENT          PERU                           [-2--1)          1       2
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             51     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         23     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         60     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          94     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             24     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              4     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         11     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         29     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          48     116
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0           2635    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3            238    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)        536    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)       1453    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)        3002    7864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=0             34     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <-3              6     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         29     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         73     223
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          81     223
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=0              3      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          8      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           5      17
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=0            182     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <-3              1     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         20     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        145     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         226     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0            205     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3              5     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         45     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        169     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         271     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0           2036   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3           1006   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)       2265   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       3884   12360
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        3169   12360
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0            552    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3             93    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        218    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        418    1738
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         457    1738
3-6 months     ki1119695-PROBIT           BELARUS                        >=0          12104   13303
3-6 months     ki1119695-PROBIT           BELARUS                        <-3              6   13303
3-6 months     ki1119695-PROBIT           BELARUS                        [-3--2)         26   13303
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)        113   13303
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)        1054   13303
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0             40     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         <-3              7     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)         10     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)         40     172
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)          75     172
3-6 months     ki1114097-CMIN             BRAZIL                         >=0             41      77
3-6 months     ki1114097-CMIN             BRAZIL                         <-3              2      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-3--2)          1      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-2--1)          7      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-1-0)          26      77
3-6 months     ki1101329-Keneba           GAMBIA                         >=0            519     950
3-6 months     ki1101329-Keneba           GAMBIA                         <-3             16     950
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)         33     950
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)         95     950
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)         287     950
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0            353     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3              6     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)         27     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)         56     620
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)         178     620
3-6 months     ki0047075b-MAL-ED          INDIA                          >=0             33     187
3-6 months     ki0047075b-MAL-ED          INDIA                          <-3              5     187
3-6 months     ki0047075b-MAL-ED          INDIA                          [-3--2)         21     187
3-6 months     ki0047075b-MAL-ED          INDIA                          [-2--1)         63     187
3-6 months     ki0047075b-MAL-ED          INDIA                          [-1-0)          65     187
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0             11      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         10      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         19      74
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          31      74
3-6 months     ki1000108-IRC              INDIA                          >=0            139     376
3-6 months     ki1000108-IRC              INDIA                          <-3             14     376
3-6 months     ki1000108-IRC              INDIA                          [-3--2)         26     376
3-6 months     ki1000108-IRC              INDIA                          [-2--1)         63     376
3-6 months     ki1000108-IRC              INDIA                          [-1-0)         134     376
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0            202    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3             51    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)        153    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)        330    1113
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)         377    1113
3-6 months     ki1135781-COHORTS          INDIA                          >=0           1687    5975
3-6 months     ki1135781-COHORTS          INDIA                          <-3            161    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)        510    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)       1405    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)        2212    5975
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=0             44     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          <-3              6     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-2--1)         44     170
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-1-0)          64     170
3-6 months     ki1000109-EE               PAKISTAN                       >=0              1       2
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)          1       2
3-6 months     ki1000109-ResPak           PAKISTAN                       >=0              1       3
3-6 months     ki1000109-ResPak           PAKISTAN                       [-3--2)          1       3
3-6 months     ki1000109-ResPak           PAKISTAN                       [-1-0)           1       3
3-6 months     ki0047075b-MAL-ED          PERU                           >=0             39     255
3-6 months     ki0047075b-MAL-ED          PERU                           <-3              7     255
3-6 months     ki0047075b-MAL-ED          PERU                           [-3--2)         24     255
3-6 months     ki0047075b-MAL-ED          PERU                           [-2--1)         87     255
3-6 months     ki0047075b-MAL-ED          PERU                           [-1-0)          98     255
3-6 months     ki1114097-CMIN             PERU                           >=0              8       8
3-6 months     ki1114097-CONTENT          PERU                           >=0              1       2
3-6 months     ki1114097-CONTENT          PERU                           [-2--1)          1       2
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             45     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         19     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         53     204
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          86     204
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             22     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              4     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         11     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         29     113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          47     113
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0           1945    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3            182    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)        383    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)       1056    5796
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)        2230    5796
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=0             35     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <-3              6     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         29     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         66     213
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          77     213
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=0              3      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          8      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           5      17
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=0            177     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <-3              1     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         20     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        137     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         210     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0            204     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3              6     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         42     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        169     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         255     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0           1555    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3            793    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)       1791    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       3013    9640
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        2488    9640
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0            805    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3            151    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        360    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        695    2772
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         761    2772
6-12 months    ki1119695-PROBIT           BELARUS                        >=0          11745   12892
6-12 months    ki1119695-PROBIT           BELARUS                        <-3              4   12892
6-12 months    ki1119695-PROBIT           BELARUS                        [-3--2)         22   12892
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)        108   12892
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)        1013   12892
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0             36     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         <-3              7     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)          9     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)         39     160
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)          69     160
6-12 months    ki1114097-CMIN             BRAZIL                         >=0             50      90
6-12 months    ki1114097-CMIN             BRAZIL                         <-3              2      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-3--2)          2      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-2--1)          7      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-1-0)          29      90
6-12 months    ki1101329-Keneba           GAMBIA                         >=0            484     879
6-12 months    ki1101329-Keneba           GAMBIA                         <-3             14     879
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)         33     879
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)         83     879
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)         265     879
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0            349     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3              7     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)         27     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)         60     615
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)         172     615
6-12 months    ki0047075b-MAL-ED          INDIA                          >=0             32     182
6-12 months    ki0047075b-MAL-ED          INDIA                          <-3              4     182
6-12 months    ki0047075b-MAL-ED          INDIA                          [-3--2)         22     182
6-12 months    ki0047075b-MAL-ED          INDIA                          [-2--1)         60     182
6-12 months    ki0047075b-MAL-ED          INDIA                          [-1-0)          64     182
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0             13      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         12      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         19      81
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          34      81
6-12 months    ki1000108-IRC              INDIA                          >=0            140     379
6-12 months    ki1000108-IRC              INDIA                          <-3             14     379
6-12 months    ki1000108-IRC              INDIA                          [-3--2)         26     379
6-12 months    ki1000108-IRC              INDIA                          [-2--1)         65     379
6-12 months    ki1000108-IRC              INDIA                          [-1-0)         134     379
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0            201    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3             48    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)        162    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)        337    1126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)         378    1126
6-12 months    ki1135781-COHORTS          INDIA                          >=0           1328    4658
6-12 months    ki1135781-COHORTS          INDIA                          <-3            131    4658
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)        384    4658
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)       1095    4658
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)        1720    4658
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=0             44     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          <-3              5     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)         44     167
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)          62     167
6-12 months    ki1000109-ResPak           PAKISTAN                       >=0              1       4
6-12 months    ki1000109-ResPak           PAKISTAN                       [-3--2)          1       4
6-12 months    ki1000109-ResPak           PAKISTAN                       [-1-0)           2       4
6-12 months    ki0047075b-MAL-ED          PERU                           >=0             35     228
6-12 months    ki0047075b-MAL-ED          PERU                           <-3              6     228
6-12 months    ki0047075b-MAL-ED          PERU                           [-3--2)         22     228
6-12 months    ki0047075b-MAL-ED          PERU                           [-2--1)         79     228
6-12 months    ki0047075b-MAL-ED          PERU                           [-1-0)          86     228
6-12 months    ki1114097-CMIN             PERU                           >=0              8       8
6-12 months    ki1114097-CONTENT          PERU                           >=0              1       2
6-12 months    ki1114097-CONTENT          PERU                           [-2--1)          1       2
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0           1042    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3             31    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)        111    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)        348    2414
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)         882    2414
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             40     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         19     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         53     196
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          83     196
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             20     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              5     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         11     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         27     107
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          44     107
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0           1422    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3            144    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)        299    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)        875    4495
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)        1755    4495
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0             37     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3              6     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)         25     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)         60     200
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)          72     200
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0              3      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)          1      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)          7      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)           5      16
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0            143     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3              1     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)         19     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)        114     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)         181     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0            153     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3              6     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)         30     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)        128     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)         178     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0            728    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3            409    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)        844    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)       1381    4545
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        1183    4545
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0            908    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3            175    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)        416    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)        787    3074
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)         788    3074
12-24 months   ki1119695-PROBIT           BELARUS                        >=0           2318    2532
12-24 months   ki1119695-PROBIT           BELARUS                        [-3--2)          4    2532
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)         21    2532
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)         189    2532
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0             25     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         <-3              5     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)          8     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)         35     135
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)          62     135
12-24 months   ki1101329-Keneba           GAMBIA                         >=0            434     780
12-24 months   ki1101329-Keneba           GAMBIA                         <-3             10     780
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)         28     780
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)         74     780
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)         234     780
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0            289     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3              5     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)         24     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)         63     540
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)         159     540
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0             32     182
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3              6     182
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)         22     182
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)         59     182
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)          63     182
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0             13      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3              3      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         13      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)         20      85
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)          36      85
12-24 months   ki1000108-IRC              INDIA                          >=0            138     375
12-24 months   ki1000108-IRC              INDIA                          <-3             13     375
12-24 months   ki1000108-IRC              INDIA                          [-3--2)         26     375
12-24 months   ki1000108-IRC              INDIA                          [-2--1)         65     375
12-24 months   ki1000108-IRC              INDIA                          [-1-0)         133     375
12-24 months   ki1135781-COHORTS          INDIA                          >=0           1147    3954
12-24 months   ki1135781-COHORTS          INDIA                          <-3            114    3954
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)        334    3954
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)        917    3954
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)        1442    3954
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=0             41     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          <-3              5     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)         12     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)         44     164
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)          62     164
12-24 months   ki0047075b-MAL-ED          PERU                           >=0             29     181
12-24 months   ki0047075b-MAL-ED          PERU                           <-3              2     181
12-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)         21     181
12-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)         62     181
12-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)          67     181
12-24 months   ki1114097-CMIN             PERU                           >=0              3       3
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0            968    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3             29    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)         97    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)        332    2257
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)         831    2257
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0             40     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3              1     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         18     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)         54     193
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)          80     193
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0             19      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <-3              5      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)          9      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)         26      97
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)          38      97
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0             42     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3             21     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)         39     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)        101     296
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)          93     296


The following strata were considered:

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-3 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-3 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 12-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 12-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 3-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 3-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 3-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-12 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-12 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 3-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 12-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          y_rate_len
## birthlen  2.62212931034483 3.17110276595745 3.18314302325581
##   >=0                    1                1                1
##   <-3                    0                0                0
##   [-3--2)                0                0                0
##   [-2--1)                0                0                0
##   [-1-0)                 0                0                0
##          y_rate_len
## birthlen  3.20879472527473 3.35524422680412 3.447226 3.70017587628866
##   >=0                    1                1        1                1
##   <-3                    0                0        0                0
##   [-3--2)                0                0        0                0
##   [-2--1)                0                0        0                0
##   [-1-0)                 0                0        0                0
##          y_rate_len
## birthlen  4.21436204819277
##   >=0                    1
##   <-3                    0
##   [-3--2)                0
##   [-2--1)                0
##   [-1-0)                 0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          y_rate_len
## birthlen  1.457466875 1.59764484848485 1.68186458823529 1.786981125
##   >=0               1                1                1           1
##   <-3               0                0                0           0
##   [-3--2)           0                0                0           0
##   [-2--1)           0                0                0           0
##   [-1-0)            0                0                0           0
##          y_rate_len
## birthlen  1.9770855 2.00305097560975 2.14299477272727 2.2556204494382
##   >=0             1                1                1               1
##   <-3             0                0                0               0
##   [-3--2)         0                0                0               0
##   [-2--1)         0                0                0               0
##   [-1-0)          0                0                0               0
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
##          y_rate_len
## birthlen  0.83105737704918 0.841312978723405 1.04461393939394
##   >=0                    1                 1                1
##   <-3                    0                 0                0
##   [-3--2)                0                 0                0
##   [-2--1)                0                 0                0
##   [-1-0)                 0                 0                0
##          y_rate_len
## birthlen  1.07053189944134 1.07167647668394 1.26599237837838
##   >=0                    1                1                1
##   <-3                    0                0                0
##   [-3--2)                0                0                0
##   [-2--1)                0                0                0
##   [-1-0)                 0                0                0
##          y_rate_len
## birthlen  1.33649136363636 1.72138467032967
##   >=0                    1                1
##   <-3                    0                0
##   [-3--2)                0                0
##   [-2--1)                0                0
##   [-1-0)                 0                0
```




# Results Detail

## Results Plots
![](/tmp/f055e126-a6d2-4b43-98cf-4154fa393afc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/f055e126-a6d2-4b43-98cf-4154fa393afc/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                3.3104863   3.1557376   3.4652350
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                4.0379616   3.7416286   4.3342945
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                3.7377851   3.5313723   3.9441980
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                3.6531669   3.5623842   3.7439495
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                3.4792643   3.3814155   3.5771131
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
0-3 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                3.6380516   3.5099215   3.7661817
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                4.0218312   3.6274821   4.4161804
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                4.3001082   3.9883703   4.6118462
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                3.9402133   3.8071981   4.0732285
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                3.7766433   3.6624902   3.8907965
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                3.2699111   3.1552752   3.3845471
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                4.6852563   4.5433705   4.8271421
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                3.8302045   3.7123462   3.9480629
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                3.5566852   3.4675785   3.6457919
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                3.3221851   3.2349653   3.4094050
0-3 months     ki1000108-IRC             INDIA                          >=0                  NA                2.5850846   2.4278285   2.7423406
0-3 months     ki1000108-IRC             INDIA                          <-3                  NA                4.9718366   4.6025113   5.3411619
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              NA                3.9888444   3.7343107   4.2433780
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              NA                3.5879675   3.3825100   3.7934249
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               NA                3.3393021   3.2008040   3.4778002
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                3.4266274   3.3273510   3.5259039
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                3.9331868   3.7865933   4.0797803
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                3.8229256   3.7295209   3.9163303
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                3.6556807   3.6210547   3.6903067
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                3.5316762   3.4680798   3.5952726
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                3.1616913   3.0946394   3.2287432
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                3.0324858   2.7025916   3.3623799
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                3.5435378   3.3917949   3.6952808
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                3.4274181   3.3504463   3.5043898
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                3.2948729   3.2353987   3.3543471
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                2.8727887   2.8157082   2.9298692
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                5.4272657   5.0148544   5.8396771
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                3.7748764   3.5834258   3.9663270
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                3.4580249   3.3459871   3.5700627
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                3.2274017   3.1608110   3.2939923
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                2.7941523   2.6842568   2.9040477
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                5.3150823   5.2466550   5.3835096
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                3.8269718   3.7083531   3.9455905
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                3.4417710   3.2935545   3.5899874
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                3.2272220   3.1287589   3.3256851
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                2.9103905   2.8775709   2.9432102
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                4.4089449   4.3233762   4.4945136
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                3.9778565   3.9125259   4.0431870
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                3.7273401   3.6865223   3.7681580
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                3.4125994   3.3839297   3.4412691
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                2.4841805   2.4309014   2.5374597
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                5.1678695   5.1014632   5.2342759
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                2.9799059   2.8716638   3.0881480
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                2.6434854   2.5343548   2.7526160
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                2.6602934   2.5967005   2.7238863
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  NA                3.3609278   3.3374937   3.3843619
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  NA                3.8874299   3.8226546   3.9522052
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                3.8065256   3.7625858   3.8504653
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                3.6639247   3.6377015   3.6901478
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                3.5218812   3.5011083   3.5426540
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                3.3766880   3.3506029   3.4027732
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                3.9908928   3.9622741   4.0195115
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                3.8674769   3.8496189   3.8853350
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                3.7354038   3.7212226   3.7495849
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                3.6036122   3.5884958   3.6187286
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                3.3484875   3.2536913   3.4432838
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                3.9896176   3.8756797   4.1035555
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                3.8009339   3.7277468   3.8741209
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                3.6616015   3.6164752   3.7067279
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                3.5456340   3.4888674   3.6024005
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                1.9207269   1.8077190   2.0337348
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                2.1253370   1.6654573   2.5852168
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                1.9776479   1.8282061   2.1270896
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                1.9547234   1.8607781   2.0486687
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                1.8892822   1.8149770   1.9635875
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                1.9067701   1.7499933   2.0635469
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                1.7185822   1.5544242   1.8827401
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                1.8724940   1.5485206   2.1964674
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                1.9925609   1.8021857   2.1829362
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                2.1132098   1.9873471   2.2390726
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  NA                1.7500751   1.6215789   1.8785713
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  NA                1.9148727   1.8032459   2.0264996
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                2.1406124   2.0442193   2.2370055
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                1.8097311   1.7216315   1.8978307
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                1.9150678   1.8055370   2.0245986
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                1.8965884   1.7800138   2.0131629
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                2.8491667   2.7160751   2.9822583
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                2.4254863   2.2918524   2.5591202
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                1.9767270   1.8877943   2.0656598
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                1.9717730   1.8940039   2.0495422
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                1.7893160   1.6512158   1.9274163
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                2.1602552   2.0701057   2.2504047
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                2.1326365   1.9603650   2.3049081
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                1.9902461   1.8801416   2.1003506
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                2.0064064   1.9145543   2.0982585
3-6 months     ki1000108-IRC             INDIA                          >=0                  NA                1.8511398   1.7330741   1.9692056
3-6 months     ki1000108-IRC             INDIA                          <-3                  NA                2.1526536   1.8102249   2.4950824
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              NA                1.8711598   1.6774127   2.0649069
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              NA                1.8675408   1.7229885   2.0120930
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               NA                1.9440352   1.8411411   2.0469294
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                1.8594073   1.8186690   1.9001457
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                2.1231522   1.9184754   2.3278289
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                1.9722261   1.8918113   2.0526409
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                1.8904347   1.7956864   1.9851831
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                1.9759666   1.9065860   2.0453472
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                1.8882269   1.8283367   1.9481170
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                1.6455256   1.4794065   1.8116447
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                1.8391381   1.7367850   1.9414912
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                2.0213427   1.9435368   2.0991487
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                1.9611613   1.9088466   2.0134761
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                1.9003225   1.8424225   1.9582225
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                2.1744989   2.0810025   2.2679952
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                2.0754689   1.9844398   2.1664979
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                2.0003573   1.8962522   2.1044624
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                1.9878136   1.9126904   2.0629367
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                2.0819604   2.0398910   2.1240299
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                2.0157762   1.8774275   2.1541249
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                2.4072751   2.2772299   2.5373204
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                2.4378575   2.3346072   2.5411078
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                2.1974175   2.1516385   2.2431965
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                1.9363855   1.9046477   1.9681232
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                2.0877116   2.0110326   2.1643906
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                2.0666053   2.0041314   2.1290792
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                1.9804842   1.9332406   2.0277278
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                1.9751239   1.9436127   2.0066350
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                1.6637626   1.6221737   1.7053515
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                0.9383897   0.9109264   0.9658529
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                1.2351657   1.1604852   1.3098462
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                1.7865750   1.7066685   1.8664815
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                1.7429503   1.6904060   1.7954946
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  NA                1.8123463   1.7902405   1.8344520
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  NA                2.0826504   2.0178566   2.1474442
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                1.9594238   1.9236381   1.9952095
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                1.9082165   1.8837639   1.9326691
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                1.8675908   1.8477550   1.8874265
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                1.8369068   1.8125805   1.8612332
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                2.1349171   2.1057414   2.1640928
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                1.9679297   1.9462016   1.9896579
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                1.9044925   1.8886803   1.9203048
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                1.8673775   1.8499851   1.8847699
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                1.8687011   1.8200124   1.9173898
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                2.0569163   1.9385033   2.1753292
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                1.9619826   1.8836156   2.0403497
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                1.8636179   1.7932718   1.9339640
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                1.8905588   1.8389310   1.9421867
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                1.0730319   1.0146141   1.1314496
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                1.2001965   1.1158256   1.2845674
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                1.0955411   1.0318082   1.1592740
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                1.1554836   1.1087213   1.2022460
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                1.0987934   1.0566526   1.1409341
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                1.4358641   1.3454940   1.5262342
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                1.4724836   1.3420719   1.6028954
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                1.1751728   1.0536942   1.2966513
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                1.4706505   1.3520454   1.5892557
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                1.3588904   1.2917180   1.4260627
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  NA                1.2133093   1.1692797   1.2573390
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  NA                1.1132078   1.0700823   1.1563332
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                1.0457119   0.9579516   1.1334723
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                1.2190584   1.1698055   1.2683113
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                1.1801642   1.1414935   1.2188350
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  NA                1.1246433   1.0680015   1.1812851
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  NA                0.9618281   0.8523078   1.0713483
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              NA                1.1088734   1.0453095   1.1724373
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              NA                1.2128290   1.1634107   1.2622472
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               NA                1.1854269   1.1353744   1.2354793
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.9757539   0.8969183   1.0545895
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.8245113   0.7760203   0.8730023
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.8506623   0.7956198   0.9057047
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.9507054   0.8691772   1.0322337
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.9355060   0.8838429   0.9871692
6-12 months    ki1000108-IRC             INDIA                          >=0                  NA                1.2376857   1.1904536   1.2849178
6-12 months    ki1000108-IRC             INDIA                          <-3                  NA                1.3952470   1.1725445   1.6179495
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              NA                1.2711361   1.2055064   1.3367658
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              NA                1.3202319   1.2480397   1.3924242
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               NA                1.2193572   1.1689920   1.2697224
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                1.1219260   1.0807957   1.1630563
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                1.2565742   1.1971653   1.3159831
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                1.1162889   1.0762958   1.1562820
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                1.0950240   1.0833762   1.1066717
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                1.0873192   1.0559966   1.1186419
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                1.2155185   1.1840196   1.2470173
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                1.2399748   1.0823786   1.3975710
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                1.2393415   1.1634135   1.3152695
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                1.2283075   1.1945312   1.2620837
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                1.2359802   1.2077355   1.2642248
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  NA                1.2150926   1.1871471   1.2430380
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  NA                0.9949893   0.9706324   1.0193462
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              NA                1.2137067   1.1783699   1.2490436
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              NA                1.1689583   1.1400611   1.1978554
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               NA                1.1412289   1.1102293   1.1722285
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                1.1872879   1.1697658   1.2048101
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                1.2574797   1.2138204   1.3011390
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                1.2434714   1.2107420   1.2762008
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                1.1906771   1.1661762   1.2151781
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                1.1901391   1.1730000   1.2072781
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  NA                1.0302246   1.0062836   1.0541656
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  NA                1.4353304   1.3952648   1.4753960
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                1.1910635   1.1491098   1.2330172
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                1.0783209   1.0362505   1.1203914
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                1.0204216   0.9879478   1.0528955
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  NA                1.1196834   1.1043483   1.1350185
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  NA                1.0849301   1.0371568   1.1327034
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              NA                1.0839895   1.0568711   1.1111078
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              NA                1.0836062   1.0656174   1.1015950
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               NA                1.0806069   1.0672546   1.0939593
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                1.0841557   1.0671150   1.1011963
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                1.1576501   1.1173584   1.1979418
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                1.0845235   1.0454721   1.1235748
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                1.0651796   1.0393971   1.0909622
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                1.0492152   1.0301611   1.0682693
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                1.1138724   1.1005372   1.1272076
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                1.1635000   1.1480766   1.1789234
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                1.1105409   1.0968355   1.1242463
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                1.0968919   1.0866228   1.1071609
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                1.1017177   1.0903336   1.1131019
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                1.2017080   1.1826078   1.2208082
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                1.2513159   1.2056929   1.2969389
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                1.2085640   1.1719828   1.2451451
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                1.2004732   1.1802608   1.2206857
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                1.1856914   1.1669288   1.2044540
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                0.8864985   0.8591559   0.9138411
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                0.9650545   0.9013257   1.0287833
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                0.8869207   0.8493524   0.9244890
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                0.8465978   0.8185574   0.8746382
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                0.8698183   0.8429199   0.8967166
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                1.0438900   0.9996312   1.0881488
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                1.3133584   1.2794820   1.3472348
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                1.1064145   1.0508515   1.1619776
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                1.0389447   0.9867626   1.0911268
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                0.9777211   0.9436237   1.0118185
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  NA                0.9286947   0.8947828   0.9626066
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  NA                1.0422932   1.0046477   1.0799386
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                0.9256397   0.8769454   0.9743340
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                0.8634216   0.8344606   0.8923826
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                0.9362737   0.9065900   0.9659573
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  NA                0.8677014   0.8380591   0.8973436
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  NA                0.8156214   0.7933333   0.8379094
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                0.8670670   0.8060465   0.9280875
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                0.8662010   0.8301566   0.9022453
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                0.8671581   0.8377765   0.8965397
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                0.8884444   0.8412878   0.9356009
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                0.9868345   0.9409667   1.0327022
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                0.9015856   0.8570039   0.9461673
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                0.7539062   0.7029140   0.8048985
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                0.8383394   0.7912693   0.8854095
12-24 months   ki1000108-IRC             INDIA                          >=0                  NA                0.7927460   0.7588906   0.8266014
12-24 months   ki1000108-IRC             INDIA                          <-3                  NA                0.8300322   0.7443179   0.9157466
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              NA                0.8035536   0.7428849   0.8642224
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              NA                0.8190360   0.7874934   0.8505786
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               NA                0.8599198   0.8301331   0.8897065
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                0.8663797   0.8462651   0.8864944
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                1.0612426   1.0403150   1.0821703
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                0.9552963   0.9253445   0.9852481
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                0.8991549   0.8780242   0.9202857
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                0.8711662   0.8537163   0.8886161
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  NA                0.8374731   0.8208893   0.8540570
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  NA                0.6384931   0.6183564   0.6586298
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              NA                0.7669107   0.7419393   0.7918822
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              NA                0.8274033   0.8017153   0.8530913
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               NA                0.8510532   0.8313903   0.8707160
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                0.7319745   0.6908319   0.7731171
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                0.7415496   0.6854556   0.7976436
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                0.6966694   0.6390753   0.7542635
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                0.7054856   0.6691637   0.7418075
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                0.7055880   0.6629737   0.7482022
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  NA                0.7783068   0.7601205   0.7964931
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  NA                0.9488810   0.9345505   0.9632114
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                0.7692691   0.7251740   0.8133642
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                0.7725455   0.7394947   0.8055962
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                0.7716205   0.7489980   0.7942430
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  NA                0.8497570   0.8409709   0.8585431
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  NA                0.8253324   0.8014660   0.8491989
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              NA                0.8191325   0.8036894   0.8345756
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              NA                0.8057888   0.7958031   0.8157745
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               NA                0.8276449   0.8195707   0.8357191
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                0.7098615   0.6995315   0.7201914
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                0.6558790   0.6284336   0.6833244
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                0.7037935   0.6819965   0.7255906
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                0.7010027   0.6847292   0.7172761
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                0.7010902   0.6897878   0.7123926
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                0.7878018   0.7773340   0.7982695
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                0.7990097   0.7860938   0.8119257
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                0.7972469   0.7866438   0.8078500
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                0.7896296   0.7811811   0.7980780
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                0.7998428   0.7917271   0.8079586
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                0.8523104   0.8419039   0.8627168
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                0.8523725   0.8318299   0.8729151
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                0.8396956   0.8254438   0.8539474
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                0.8502452   0.8396525   0.8608379
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                0.8536659   0.8420389   0.8652929


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
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


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.7274752    0.3930318    1.0619187
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.4272988    0.1705729    0.6840247
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.3426805    0.1643482    0.5210129
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.1687780   -0.0136148    0.3511708
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
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.3837797   -0.0294503    0.7970097
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.6620566    0.3268974    0.9972159
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.3021617    0.1209568    0.4833666
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.1385918   -0.0287964    0.3059800
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                1.4153452    1.2325464    1.5981439
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.5602934    0.3963449    0.7242419
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.2867740    0.1411473    0.4324007
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0522740   -0.0920834    0.1966313
0-3 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC             INDIA                          <-3                  >=0                2.3867520    1.9881632    2.7853408
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                1.4037598    1.1084196    1.6991000
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                1.0028829    0.7494449    1.2563209
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.7542176    0.5494319    0.9590033
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.5065594    0.3465510    0.6665677
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.3962982    0.2403309    0.5522655
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.2290533    0.1274105    0.3306961
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.1050487   -0.0263108    0.2364082
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0               -0.1292055   -0.4658399    0.2074289
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.3818466    0.2159694    0.5477237
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.2657268    0.1636661    0.3677875
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.1331816    0.0435830    0.2227802
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                2.5544771    2.1381443    2.9708098
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.9020877    0.7023431    1.1018323
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.5852362    0.4595986    0.7108738
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.3546130    0.2670831    0.4421428
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0                2.5209300    2.3756032    2.6662569
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                1.0328196    0.8759779    1.1896612
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.6476187    0.4943879    0.8008495
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.4330697    0.3399892    0.5261502
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                1.4985544    1.4072157    1.5898931
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                1.0674660    0.9945405    1.1403914
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.8169496    0.7650268    0.8688724
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.5022088    0.4592299    0.5451878
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                2.6836890    2.5987605    2.7686175
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.4957254    0.3751389    0.6163118
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.1593048    0.0380802    0.2805295
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.1761128    0.0934508    0.2587748
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.5265021    0.4577960    0.5952082
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.4455978    0.3961234    0.4950721
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.3029969    0.2683432    0.3376506
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.1609534    0.1302038    0.1917029
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.6142048    0.5757109    0.6526987
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.4907889    0.4602436    0.5213342
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.3587157    0.3302156    0.3872159
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.2269242    0.1987108    0.2551375
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.6411301    0.4917537    0.7905064
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.4524463    0.3327821    0.5721106
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.3131140    0.2089324    0.4172956
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.1971464    0.0872743    0.3070185
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.2046101   -0.2688344    0.6780546
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0569209   -0.1305302    0.2443721
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0339965   -0.1130167    0.1810097
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0               -0.0314447   -0.1663250    0.1034356
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0               -0.1881879   -0.4152855    0.0389097
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0               -0.0342761   -0.3941235    0.3255713
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0857908   -0.1609480    0.3325296
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.2064397    0.0055140    0.4073654
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.1647977   -0.0045355    0.3341309
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.3905373    0.2315115    0.5495631
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.0596560   -0.0939771    0.2132892
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.1649928   -0.0027564    0.3327420
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.9525784    0.7773447    1.1278120
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.5288979    0.3546941    0.7031017
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0801387   -0.0602042    0.2204816
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0751847   -0.0594128    0.2097821
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.3709392    0.2061541    0.5357243
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.3433205    0.1231573    0.5634837
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.2009301    0.0250007    0.3768594
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.2170904    0.0514970    0.3826838
3-6 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC             INDIA                          <-3                  >=0                0.3015138   -0.0606899    0.6637174
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0200199   -0.2068537    0.2468936
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0164009   -0.1702330    0.2030348
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0928954   -0.0636935    0.2494843
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.2637448    0.0838627    0.4436269
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.1128188    0.0084335    0.2172040
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.0310274   -0.0716529    0.1337077
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.1165592    0.0490017    0.1841168
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0               -0.2427012   -0.4191540   -0.0662485
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0               -0.0490888   -0.1674624    0.0692849
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.1331159    0.0352348    0.2309969
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0729345   -0.0064328    0.1523017
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                0.2741764    0.1661621    0.3821906
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.1751464    0.0691607    0.2811320
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.1000348   -0.0169667    0.2170363
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0874911   -0.0048746    0.1798567
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0               -0.0661842   -0.1964940    0.0641255
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                0.3253147    0.1969653    0.4536642
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.3558971    0.2517078    0.4600863
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.1154571    0.0707855    0.1601286
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.1513261    0.0685431    0.2341091
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.1302198    0.0603418    0.2000979
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0440987   -0.0125321    0.1007296
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0387384   -0.0056302    0.0831070
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0               -0.7253729   -0.7744395   -0.6763064
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0               -0.4285969   -0.5133118   -0.3438819
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.1228124    0.0332583    0.2123665
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.0791877    0.0132468    0.1451285
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.2703041    0.2019703    0.3386380
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.1470776    0.1051744    0.1889807
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0958703    0.0631255    0.1286150
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.0552445    0.0258362    0.0846528
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.2980103    0.2605239    0.3354968
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.1310229    0.0988120    0.1632339
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0675857    0.0382604    0.0969111
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0304707    0.0004574    0.0604839
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.1882152    0.0617300    0.3147004
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0932816    0.0010620    0.1855011
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0               -0.0050832   -0.0903584    0.0801920
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0218577   -0.0476888    0.0914043
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.1271647    0.0244452    0.2298841
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0225092   -0.0638311    0.1088496
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0824518    0.0076778    0.1572258
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.0257615   -0.0462486    0.0977716
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.0366196   -0.1220965    0.1953356
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0               -0.2606913   -0.4117240   -0.1096587
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0347865   -0.1128086    0.1823815
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0               -0.0769737   -0.1881092    0.0341617
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  >=0               -0.1001015   -0.1616348   -0.0385683
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0               -0.1675974   -0.2656851   -0.0695098
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0057491   -0.0602242    0.0717224
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0               -0.0331451   -0.0916724    0.0253822
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  >=0               -0.1628152   -0.2857376   -0.0398929
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              >=0               -0.0157699   -0.1009844    0.0694445
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.0881857    0.0132647    0.1631066
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0607835   -0.0148279    0.1363950
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0               -0.1512426   -0.2318651   -0.0706200
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.1250916   -0.2073686   -0.0428147
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0250484   -0.1204503    0.0703534
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0402478   -0.1199582    0.0394625
6-12 months    ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC             INDIA                          <-3                  >=0                0.1575613   -0.0699356    0.3850581
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0334504   -0.0472076    0.1141083
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0825462   -0.0035811    0.1686735
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               >=0               -0.0183285   -0.0871238    0.0504668
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.1346482    0.0548625    0.2144339
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0               -0.0056371   -0.0584177    0.0471435
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0               -0.0269020   -0.0689540    0.0151499
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0               -0.0346067   -0.0965041    0.0272906
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.0244563   -0.1362028    0.1851154
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0238230   -0.0582536    0.1058997
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0127890   -0.0332442    0.0588222
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0204617   -0.0217008    0.0626242
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  >=0               -0.2201032   -0.2557410   -0.1844654
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              >=0               -0.0013858   -0.0454709    0.0426992
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              >=0               -0.0461343   -0.0851790   -0.0070895
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               >=0               -0.0738636   -0.1148074   -0.0329199
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.0701918    0.0232650    0.1171185
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.0561835    0.0192333    0.0931337
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0033892   -0.0265078    0.0332862
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0028512   -0.0213906    0.0270929
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.4051058    0.3593850    0.4508266
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.1608389    0.1137883    0.2078895
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.0480963    0.0010793    0.0951133
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0               -0.0098030   -0.0481178    0.0285119
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  >=0               -0.0347533   -0.0848538    0.0153472
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              >=0               -0.0356940   -0.0667125   -0.0046755
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              >=0               -0.0360772   -0.0595170   -0.0126374
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               >=0               -0.0390765   -0.0592237   -0.0189293
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0                0.0734945    0.0300280    0.1169609
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0                0.0003678   -0.0419884    0.0427241
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0               -0.0189760   -0.0495587    0.0116067
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0               -0.0349404   -0.0600618   -0.0098190
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0496276    0.0297280    0.0695273
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0               -0.0033315   -0.0218802    0.0152172
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0               -0.0169805   -0.0328937   -0.0010673
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0               -0.0121546   -0.0294001    0.0050908
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.0496079    0.0005043    0.0987115
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0068560   -0.0349463    0.0486583
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0               -0.0012347   -0.0285670    0.0260975
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0               -0.0160166   -0.0431755    0.0111423
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.0785560    0.0095164    0.1475955
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0004222   -0.0458340    0.0466784
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0               -0.0399007   -0.0786782   -0.0011232
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0               -0.0166803   -0.0548144    0.0214539
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.2694684    0.2176684    0.3212685
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.0625245   -0.0043644    0.1294135
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0               -0.0049453   -0.0684141    0.0585236
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0               -0.0661689   -0.1156695   -0.0166683
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.1135985    0.0635981    0.1635988
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0               -0.0030550   -0.0618741    0.0557641
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0               -0.0652731   -0.1092607   -0.0212854
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.0075790   -0.0368648    0.0520228
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  >=0               -0.0520800   -0.0890291   -0.0151309
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0               -0.0006343   -0.0684128    0.0671441
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0               -0.0015004   -0.0479525    0.0449517
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0               -0.0005432   -0.0420095    0.0409230
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.0983901    0.0322627    0.1645175
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0131413   -0.0515457    0.0778283
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.1345381   -0.2044192   -0.0646571
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0501049   -0.1171391    0.0169292
12-24 months   ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC             INDIA                          <-3                  >=0                0.0372863   -0.0539099    0.1284825
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0108077   -0.0583512    0.0799665
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0262900   -0.0193977    0.0719778
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0671739    0.0226820    0.1116658
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.1948629    0.1658382    0.2238876
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0889166    0.0528559    0.1249773
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0327752    0.0036086    0.0619418
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0047864   -0.0218300    0.0314029
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  >=0               -0.1989800   -0.2245518   -0.1734082
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              >=0               -0.0705624   -0.0999762   -0.0411486
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              >=0               -0.0100698   -0.0400453    0.0199057
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0135801   -0.0114396    0.0385997
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.0095751   -0.0573798    0.0765300
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0               -0.0353051   -0.1031294    0.0325192
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0               -0.0264889   -0.0784095    0.0254317
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0               -0.0263865   -0.0820828    0.0293097
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.1705742    0.1476589    0.1934895
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0               -0.0090377   -0.0564599    0.0383845
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0               -0.0057613   -0.0432745    0.0317518
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0               -0.0066863   -0.0352702    0.0218976
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  >=0               -0.0244246   -0.0497620    0.0009128
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              >=0               -0.0306245   -0.0482358   -0.0130133
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              >=0               -0.0439682   -0.0570821   -0.0308543
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               >=0               -0.0221121   -0.0338190   -0.0104053
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0               -0.0539825   -0.0831868   -0.0247782
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0               -0.0060680   -0.0299703    0.0178344
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0               -0.0088588   -0.0278035    0.0100858
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0               -0.0087713   -0.0236636    0.0061209
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0112080   -0.0050798    0.0274958
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0094452   -0.0050190    0.0239093
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0018278   -0.0113716    0.0150271
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0120411   -0.0010790    0.0251611
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.0000621   -0.0229039    0.0230281
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0               -0.0126148   -0.0302978    0.0050682
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0               -0.0020652   -0.0166914    0.0125610
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0013555   -0.0138240    0.0165351
