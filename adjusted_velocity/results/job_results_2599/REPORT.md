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

**Outcome Variable:** y_rate_haz

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
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
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
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
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
![](/tmp/9b4d26b2-d0dc-4cf4-818b-01f40f581deb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/9b4d26b2-d0dc-4cf4-818b-01f40f581deb/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.1838500   -0.2561876   -0.1115124
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                 0.2836395    0.1518376    0.4154415
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                 0.0898906    0.0058743    0.1739069
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                 0.0090455   -0.0329585    0.0510494
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0871512   -0.1318516   -0.0424508
0-3 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                 0.0400293   -0.0311336    0.1111923
0-3 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                 0.6651503    0.4903815    0.8399190
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                 0.6338168    0.5193207    0.7483130
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.2170276    0.1227709    0.3112843
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                 0.1575003    0.1002689    0.2147317
0-3 months     ki0047075b-MAL-ED         INDIA                          >=0                  NA                -0.1562234   -0.2236011   -0.0888456
0-3 months     ki0047075b-MAL-ED         INDIA                          <-3                  NA                 0.2235803   -0.0390754    0.4862359
0-3 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                 0.0934606   -0.0417824    0.2287035
0-3 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                 0.0151363   -0.0395194    0.0697920
0-3 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                -0.0387481   -0.1115672    0.0340709
0-3 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0330049   -0.0880624    0.0220525
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                 0.4797170    0.3488866    0.6105474
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                 0.4908392    0.3686156    0.6130627
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                 0.1853229    0.1268068    0.2438389
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                 0.0607012    0.0117007    0.1097016
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                -0.2418585   -0.2892880   -0.1944290
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                 0.7379325    0.6860623    0.7898028
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                 0.1352721    0.0827491    0.1877951
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                -0.0092596   -0.0474366    0.0289175
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                -0.1734233   -0.2127274   -0.1341192
0-3 months     ki1000108-IRC             INDIA                          >=0                  NA                -0.5952472   -0.6732904   -0.5172040
0-3 months     ki1000108-IRC             INDIA                          <-3                  NA                 0.7036668    0.5045304    0.9028033
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              NA                 0.1626731    0.0252747    0.3000714
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              NA                 0.0000889   -0.0998915    0.1000693
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               NA                -0.1795286   -0.2467165   -0.1123407
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                -0.1125569   -0.1671710   -0.0579428
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                 0.2557434    0.1751229    0.3363638
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                 0.1364297    0.0938998    0.1789597
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                 0.0498887    0.0343509    0.0654265
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                -0.0358732   -0.0708806   -0.0008658
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.1969594   -0.2255402   -0.1683786
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                 0.2575249    0.2204760    0.2945737
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                 0.0971922    0.0483550    0.1460293
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                -0.0283323   -0.0611305    0.0044659
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                -0.1308243   -0.1564197   -0.1052288
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.4469132   -0.4745842   -0.4192423
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                 0.8973814    0.6493524    1.1454104
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                 0.1027531   -0.0002401    0.2057463
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0840423   -0.1382179   -0.0298667
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.2271061   -0.2583801   -0.1958322
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                -0.4626594   -0.5194959   -0.4058230
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                 0.9238805    0.8869492    0.9608118
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                 0.1134555    0.0599419    0.1669691
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                -0.0527559   -0.1263775    0.0208657
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                -0.1972646   -0.2452759   -0.1492532
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.4035350   -0.4196400   -0.3874299
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                 0.4715630    0.4312792    0.5118469
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                 0.2114863    0.1805374    0.2424351
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                 0.0635863    0.0439204    0.0832521
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                -0.1215695   -0.1353173   -0.1078216
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.6358545   -0.6618305   -0.6098786
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                 0.7679876    0.7385710    0.7974042
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                -0.2579489   -0.3158244   -0.2000734
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                -0.4347754   -0.4848284   -0.3847224
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.4993387   -0.5307751   -0.4679024
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  NA                -0.1937916   -0.2051673   -0.1824159
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  NA                 0.1950672    0.1628882    0.2272461
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                 0.1154848    0.0940650    0.1369046
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                 0.0184429    0.0058938    0.0309919
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0786514   -0.0885763   -0.0687265
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.1431201   -0.1560610   -0.1301793
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                 0.2712799    0.2574733    0.2850864
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                 0.1684804    0.1599761    0.1769847
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                 0.0777444    0.0711638    0.0843251
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0098213   -0.0170972   -0.0025455
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0915794   -0.1363649   -0.0467940
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.2947586    0.2357023    0.3538150
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                 0.1669390    0.1323011    0.2015769
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                 0.0772169    0.0563919    0.0980419
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                 0.0054790   -0.0209338    0.0318917
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.0349586   -0.0793829    0.0094657
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                 0.1261769   -0.0397820    0.2921358
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                 0.0208652   -0.0386369    0.0803673
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                -0.0086423   -0.0477664    0.0304818
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0460837   -0.0780361   -0.0141314
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                -0.0011043   -0.0759144    0.0737057
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                 0.1688965    0.0762929    0.2615001
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                 0.1673398   -0.0095414    0.3442209
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.0535523   -0.0407745    0.1478791
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                 0.0622739    0.0030963    0.1214515
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  NA                -0.1222437   -0.1980794   -0.0464079
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  NA                -0.0518984   -0.1703701    0.0665733
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                 0.0589242   -0.0028507    0.1206991
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                -0.0699193   -0.1131885   -0.0266500
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                -0.0415523   -0.0988883    0.0157838
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0738931   -0.1204767   -0.0273095
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  NA                 0.3291288    0.2795813    0.3786762
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                 0.1509257    0.1064171    0.1954343
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                -0.0193710   -0.0561257    0.0173836
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                -0.0279262   -0.0599969    0.0041446
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  NA                -0.1574647   -0.2075704   -0.1073591
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  NA                 0.1100005    0.0837249    0.1362761
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              NA                 0.0876109    0.0263756    0.1488462
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              NA                 0.0072981   -0.0396498    0.0542459
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               NA                 0.0025020   -0.0376895    0.0426935
3-6 months     ki1000108-IRC             INDIA                          >=0                  NA                -0.0701387   -0.1224702   -0.0178072
3-6 months     ki1000108-IRC             INDIA                          <-3                  NA                 0.0998959   -0.0270230    0.2268147
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              NA                -0.0324363   -0.1144268    0.0495541
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              NA                -0.0449315   -0.1047108    0.0148477
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               NA                -0.0302566   -0.0757172    0.0152040
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                -0.0699183   -0.0867425   -0.0530941
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                 0.1086007    0.0040988    0.2131027
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                 0.0144649   -0.0253534    0.0542831
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                -0.0293438   -0.0708193    0.0121318
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                -0.0048215   -0.0370886    0.0274455
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.0319306   -0.0581916   -0.0056696
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                -0.1152702   -0.1991413   -0.0313990
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                -0.0007980   -0.0434313    0.0418352
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                 0.0593948    0.0271212    0.0916685
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                 0.0098421   -0.0127758    0.0324600
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.0690210   -0.0964477   -0.0415944
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  NA                 0.0476478   -0.0256157    0.1209114
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              NA                 0.0462427   -0.0073980    0.0998833
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0058244   -0.0589425    0.0472937
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.0143404   -0.0509369    0.0222562
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  NA                 0.0409729    0.0212826    0.0606631
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  NA                 0.0317406   -0.0354340    0.0989153
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              NA                 0.2166798    0.1541186    0.2792410
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              NA                 0.2340812    0.1899040    0.2782583
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               NA                 0.1136042    0.0917689    0.1354396
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.0266053   -0.0415217   -0.0116889
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                 0.0811327    0.0447398    0.1175257
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                 0.0559367    0.0258950    0.0859784
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                 0.0094951   -0.0128364    0.0318265
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                -0.0014002   -0.0161507    0.0133502
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.1563406   -0.1760938   -0.1365874
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  NA                -0.3192858   -0.3348896   -0.3036821
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                -0.3221521   -0.3602568   -0.2840474
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                -0.0569798   -0.0959323   -0.0180274
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.0986946   -0.1230419   -0.0743473
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  NA                -0.1012005   -0.1114336   -0.0909674
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  NA                 0.0773265    0.0475733    0.1070798
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              NA                 0.0036688   -0.0127835    0.0201211
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              NA                -0.0301032   -0.0414319   -0.0187744
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0605722   -0.0697066   -0.0514379
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.0560925   -0.0672445   -0.0449406
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                 0.1260999    0.1125420    0.1396578
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                 0.0314551    0.0211470    0.0417632
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                -0.0094108   -0.0167442   -0.0020775
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0377755   -0.0456750   -0.0298760
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0335708   -0.0558010   -0.0113406
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.0917696    0.0379015    0.1456377
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                 0.0356924    0.0006458    0.0707389
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                -0.0195397   -0.0516395    0.0125601
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                -0.0184887   -0.0425932    0.0056158
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.1139720   -0.1357467   -0.0921974
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                -0.0321240   -0.0587544   -0.0054935
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                -0.0731046   -0.0969064   -0.0493028
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                -0.0607843   -0.0785585   -0.0430100
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0883888   -0.1040250   -0.0727526
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                 0.0092018   -0.0294803    0.0478840
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                 0.0456127   -0.0078998    0.0991252
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                -0.0892080   -0.1405494   -0.0378667
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.0473642   -0.0069404    0.1016688
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                -0.0063514   -0.0360846    0.0233819
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0627516   -0.0771910   -0.0483122
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  NA                -0.0331834   -0.0554554   -0.0109113
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                -0.0788289   -0.1106157   -0.0470422
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                -0.0453499   -0.0602634   -0.0304364
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                -0.0643224   -0.0778306   -0.0508142
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  NA                -0.1044740   -0.1251818   -0.0837662
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  NA                -0.1688611   -0.2031233   -0.1345989
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              NA                -0.0685315   -0.0928598   -0.0442031
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              NA                -0.0331453   -0.0530770   -0.0132136
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               NA                -0.0565399   -0.0775540   -0.0355258
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.1367161   -0.1709274   -0.1025048
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                -0.1429272   -0.1664365   -0.1194178
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.1614171   -0.1844812   -0.1383531
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.1365819   -0.1722242   -0.1009395
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.1574694   -0.1796538   -0.1352851
6-12 months    ki1000108-IRC             INDIA                          >=0                  NA                -0.0394151   -0.0594424   -0.0193877
6-12 months    ki1000108-IRC             INDIA                          <-3                  NA                 0.0443480   -0.0435249    0.1322208
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              NA                -0.0059818   -0.0311378    0.0191742
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              NA                 0.0109415   -0.0196779    0.0415608
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               NA                -0.0398173   -0.0616949   -0.0179398
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  NA                -0.0899115   -0.1071794   -0.0726437
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  NA                 0.0056966   -0.0182018    0.0295950
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              NA                -0.0665853   -0.0845185   -0.0486521
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              NA                -0.0816731   -0.0878612   -0.0754851
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               NA                -0.0968482   -0.1090900   -0.0846065
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.0470346   -0.0587833   -0.0352859
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                 0.0329970    0.0034978    0.0624962
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                -0.0039512   -0.0290028    0.0211005
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                -0.0223082   -0.0345121   -0.0101044
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                -0.0289085   -0.0397748   -0.0180421
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.0545262   -0.0673140   -0.0417384
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  NA                -0.1446987   -0.1594281   -0.1299693
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              NA                -0.0427546   -0.0614719   -0.0240373
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0610047   -0.0763471   -0.0456622
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.0746864   -0.0891327   -0.0602401
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.0598079   -0.0673131   -0.0523027
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                -0.0092651   -0.0266650    0.0081347
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                -0.0202881   -0.0338892   -0.0066869
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                -0.0489663   -0.0593483   -0.0385844
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                -0.0537743   -0.0611040   -0.0464446
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.1134528   -0.1231413   -0.1037642
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  NA                 0.1298013    0.1165522    0.1430503
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                 0.0049272   -0.0097228    0.0195772
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                -0.0687545   -0.0837160   -0.0537930
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.1013912   -0.1144676   -0.0883149
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  NA                -0.0951011   -0.1015263   -0.0886758
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  NA                -0.0732114   -0.0935335   -0.0528893
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              NA                -0.0815383   -0.0930218   -0.0700547
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              NA                -0.0890730   -0.0966600   -0.0814860
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0993912   -0.1049425   -0.0938400
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                -0.1011322   -0.1083496   -0.0939148
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                -0.0354575   -0.0496938   -0.0212212
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                -0.0724786   -0.0889128   -0.0560443
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                -0.0916476   -0.1024207   -0.0808745
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                -0.1058881   -0.1139815   -0.0977947
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.0848772   -0.0905842   -0.0791701
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                -0.0279379   -0.0346970   -0.0211788
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                -0.0631595   -0.0688690   -0.0574500
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                -0.0777804   -0.0821006   -0.0734601
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0852837   -0.0901261   -0.0804413
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0470044   -0.0550000   -0.0390088
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.0043839   -0.0138655    0.0226333
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                -0.0244552   -0.0406657   -0.0082447
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                -0.0352526   -0.0435661   -0.0269391
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                -0.0504646   -0.0582693   -0.0426599
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  NA                -0.0205437   -0.0310448   -0.0100425
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  NA                 0.0345255    0.0071864    0.0618646
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              NA                 0.0080334   -0.0049729    0.0210397
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              NA                -0.0148676   -0.0231519   -0.0065833
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               NA                -0.0128688   -0.0226417   -0.0030959
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  NA                -0.0132194   -0.0266068    0.0001679
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  NA                 0.0287207    0.0112462    0.0461952
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              NA                 0.0053562   -0.0155349    0.0262472
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              NA                 0.0171746    0.0014226    0.0329266
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               NA                -0.0074023   -0.0181045    0.0032999
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  NA                -0.0159343   -0.0247992   -0.0070693
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  NA                 0.0226729    0.0129673    0.0323785
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              NA                -0.0029602   -0.0136983    0.0077778
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              NA                -0.0144458   -0.0219999   -0.0068917
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               NA                -0.0010246   -0.0084614    0.0064122
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  NA                -0.0319584   -0.0398785   -0.0240384
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  NA                 0.0392013    0.0337133    0.0446893
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              NA                 0.0094677   -0.0003105    0.0192459
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              NA                -0.0154656   -0.0247797   -0.0061515
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               NA                -0.0227692   -0.0301223   -0.0154160
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.0431493   -0.0635348   -0.0227637
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  NA                -0.0015167   -0.0235308    0.0204974
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.0196145   -0.0430720    0.0038430
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.0508436   -0.0684618   -0.0332254
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0271268   -0.0438920   -0.0103616
12-24 months   ki1000108-IRC             INDIA                          >=0                  NA                -0.0506196   -0.0635200   -0.0377193
12-24 months   ki1000108-IRC             INDIA                          <-3                  NA                -0.0158359   -0.0613551    0.0296833
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              NA                -0.0291657   -0.0562607   -0.0020708
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              NA                -0.0308202   -0.0431572   -0.0184833
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               NA                -0.0247087   -0.0359565   -0.0134610
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  NA                -0.0220164   -0.0286076   -0.0154252
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  NA                 0.0917843    0.0869543    0.0966142
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              NA                 0.0344570    0.0239729    0.0449411
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              NA                 0.0079518    0.0009775    0.0149260
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               NA                -0.0088751   -0.0142937   -0.0034566
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  NA                -0.0282966   -0.0342552   -0.0223380
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  NA                -0.0825336   -0.0906996   -0.0743677
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              NA                -0.0334121   -0.0447957   -0.0220284
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              NA                -0.0205428   -0.0291044   -0.0119813
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               NA                -0.0123112   -0.0187771   -0.0058454
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  NA                -0.0466059   -0.0595886   -0.0336233
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  NA                -0.0138615   -0.0264241   -0.0012989
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              NA                -0.0474513   -0.0648478   -0.0300549
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              NA                -0.0507160   -0.0633436   -0.0380884
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               NA                -0.0555211   -0.0698189   -0.0412233
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  NA                -0.0376926   -0.0435535   -0.0318318
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  NA                 0.0584759    0.0554563    0.0614954
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              NA                -0.0081257   -0.0179175    0.0016661
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              NA                -0.0216902   -0.0306481   -0.0127322
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               NA                -0.0281921   -0.0348667   -0.0215175
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  NA                -0.0392686   -0.0422257   -0.0363116
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  NA                -0.0138882   -0.0216541   -0.0061223
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              NA                -0.0237737   -0.0290571   -0.0184904
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              NA                -0.0348672   -0.0382440   -0.0314903
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               NA                -0.0352002   -0.0379232   -0.0324773
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  NA                -0.0639375   -0.0675123   -0.0603626
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  NA                -0.0561639   -0.0661774   -0.0461504
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              NA                -0.0428844   -0.0500720   -0.0356967
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              NA                -0.0514577   -0.0568724   -0.0460430
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               NA                -0.0573686   -0.0612707   -0.0534665
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  NA                -0.0334509   -0.0373054   -0.0295965
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  NA                 0.0000440   -0.0042998    0.0043878
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              NA                -0.0104788   -0.0140187   -0.0069389
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              NA                -0.0199146   -0.0228220   -0.0170072
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               NA                -0.0248383   -0.0276200   -0.0220566
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  NA                -0.0199235   -0.0235120   -0.0163349
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  NA                 0.0039771   -0.0030445    0.0109987
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              NA                -0.0092420   -0.0146876   -0.0037964
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              NA                -0.0118137   -0.0154924   -0.0081350
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               NA                -0.0175050   -0.0214659   -0.0135441


### Parameter: E(Y)


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
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


agecat         studyid                   country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  ------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.4674895    0.3179915    0.6169875
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.2737406    0.1640666    0.3834145
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.1928955    0.1112081    0.2745829
0-3 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.0966989    0.0138295    0.1795682
0-3 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.6251209    0.4368816    0.8133603
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.5937875    0.4603548    0.7272202
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.1769983    0.0635065    0.2904901
0-3 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.1174710    0.0319225    0.2030195
0-3 months     ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.3798036    0.1088861    0.6507212
0-3 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.2496839    0.0987292    0.4006386
0-3 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.1713597    0.0846550    0.2580643
0-3 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.1174752    0.0183771    0.2165734
0-3 months     ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.5127219    0.3712068    0.6542371
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.5238441    0.3902171    0.6574711
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.2183278    0.1388290    0.2978266
0-3 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0937061    0.0207294    0.1666828
0-3 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.9797910    0.9094889    1.0500932
0-3 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.3771306    0.3079201    0.4463411
0-3 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.2325990    0.1727605    0.2924374
0-3 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0684352    0.0088057    0.1280647
0-3 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC             INDIA                          <-3                  >=0                1.2989140    1.0861770    1.5116510
0-3 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                0.7579202    0.6009331    0.9149074
0-3 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                0.5953361    0.4700452    0.7206269
0-3 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.4157186    0.3139046    0.5175325
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.3683003    0.2877875    0.4488131
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.2489867    0.1687650    0.3292083
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.1624456    0.1099321    0.2149591
0-3 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.0766837    0.0095985    0.1437689
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.4544842    0.4081084    0.5008601
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.2941515    0.2379306    0.3503725
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.1686271    0.1255012    0.2117530
0-3 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0661351    0.0285545    0.1037157
0-3 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                1.3442946    1.0947314    1.5938578
0-3 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.5496664    0.4430297    0.6563031
0-3 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.3628710    0.3020548    0.4236872
0-3 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.2198071    0.1780738    0.2615404
0-3 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0                1.3865400    1.3102849    1.4627950
0-3 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                0.5761149    0.4999395    0.6522904
0-3 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.4099035    0.3327267    0.4870804
0-3 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.2653949    0.2180427    0.3127470
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.8750980    0.8318422    0.9183539
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.6150212    0.5801997    0.6498428
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.4671212    0.4418332    0.4924093
0-3 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.2819655    0.2609835    0.3029475
0-3 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                1.4038421    1.3647301    1.4429542
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.3779056    0.3144852    0.4413260
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.2010791    0.1447649    0.2573933
0-3 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.1365158    0.0958563    0.1771753
0-3 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.3888588    0.3547804    0.4229373
0-3 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.3092764    0.2850858    0.3334671
0-3 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.2122345    0.1954075    0.2290615
0-3 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.1151403    0.1001699    0.1301106
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.4144000    0.3955393    0.4332607
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.3116005    0.2964858    0.3267152
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.2208645    0.2068362    0.2348928
0-3 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.1332988    0.1193530    0.1472445
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.3863381    0.3119655    0.4607107
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.2585184    0.2017768    0.3152601
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.1687963    0.1194062    0.2181864
0-3 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0970584    0.0449897    0.1491271
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.1611356   -0.0097364    0.3320075
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0558238   -0.0171613    0.1288090
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0263163   -0.0308699    0.0835024
3-6 months     ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0               -0.0111251   -0.0645725    0.0423222
3-6 months     ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.1700008    0.0511939    0.2888078
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.1684441   -0.0233095    0.3601977
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0546567   -0.0655920    0.1749053
3-6 months     ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.0633782   -0.0317553    0.1585118
3-6 months     ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.0703453   -0.0702357    0.2109263
3-6 months     ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.1811679    0.0837704    0.2785653
3-6 months     ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.0523244   -0.0345038    0.1391526
3-6 months     ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.0806914   -0.0141606    0.1755434
3-6 months     ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.4030219    0.3368061    0.4692377
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.2248188    0.1637411    0.2858965
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0545220    0.0022587    0.1067854
3-6 months     ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0459669   -0.0050811    0.0970150
3-6 months     ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED         PERU                           <-3                  >=0                0.2674653    0.2108784    0.3240522
3-6 months     ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.2450756    0.1663585    0.3237928
3-6 months     ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.1647628    0.0962674    0.2332583
3-6 months     ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.1599667    0.0956422    0.2242912
3-6 months     ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC             INDIA                          <-3                  >=0                0.1700345    0.0337479    0.3063212
3-6 months     ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0377024   -0.0587678    0.1341726
3-6 months     ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0252072   -0.0529373    0.1033516
3-6 months     ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0398821   -0.0281928    0.1079569
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.1785191    0.0840383    0.2729998
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.0843832    0.0361517    0.1326147
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.0405746   -0.0046015    0.0857507
3-6 months     ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0                0.0650968    0.0321548    0.0980388
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0               -0.0833396   -0.1704304    0.0037512
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0311326   -0.0181622    0.0804273
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0913254    0.0511687    0.1314821
3-6 months     ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0417727    0.0083853    0.0751602
3-6 months     ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba          GAMBIA                         <-3                  >=0                0.1166689    0.0389927    0.1943450
3-6 months     ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.1152637    0.0556558    0.1748716
3-6 months     ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.0631967    0.0042762    0.1221171
3-6 months     ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0546807    0.0098703    0.0994911
3-6 months     ki1119695-PROBIT          BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT          BELARUS                        <-3                  >=0               -0.0092322   -0.0729166    0.0544521
3-6 months     ki1119695-PROBIT          BELARUS                        [-3--2)              >=0                0.1757069    0.1142386    0.2371753
3-6 months     ki1119695-PROBIT          BELARUS                        [-2--1)              >=0                0.1931083    0.1485940    0.2376225
3-6 months     ki1119695-PROBIT          BELARUS                        [-1-0)               >=0                0.0726314    0.0508640    0.0943987
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.1077380    0.0684713    0.1470047
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.0825419    0.0490866    0.1159973
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0361003    0.0093733    0.0628273
3-6 months     ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0252050    0.0043740    0.0460361
3-6 months     ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         GUATEMALA                      <-3                  >=0               -0.1629452   -0.1878046   -0.1380858
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0               -0.1658114   -0.2084343   -0.1231885
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.0993608    0.0558457    0.1428759
3-6 months     ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.0576460    0.0266054    0.0886866
3-6 months     ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS         INDIA                          <-3                  >=0                0.1785270    0.1471069    0.2099472
3-6 months     ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.1048693    0.0855462    0.1241925
3-6 months     ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0710974    0.0558990    0.0862957
3-6 months     ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.0406283    0.0270031    0.0542534
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.1821924    0.1647313    0.1996535
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0875476    0.0725195    0.1025758
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0466817    0.0331419    0.0602215
3-6 months     kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0183170    0.0045942    0.0320398
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.1253404    0.0676752    0.1830056
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0692632    0.0277862    0.1107402
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.0140310   -0.0248420    0.0529041
3-6 months     kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0150821   -0.0171101    0.0472743
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.0818481    0.0477364    0.1159598
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0408674    0.0091244    0.0726105
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0531878    0.0254066    0.0809690
6-12 months    ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.0255832   -0.0005857    0.0517522
6-12 months    ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.0364108   -0.0297245    0.1025461
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0               -0.0984098   -0.1626640   -0.0341557
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0381624   -0.0284437    0.1047684
6-12 months    ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0               -0.0155532   -0.0641842    0.0330778
6-12 months    ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.0295682    0.0050289    0.0541075
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0               -0.0160773   -0.0485015    0.0163468
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0174017   -0.0014329    0.0362363
6-12 months    ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0               -0.0015708   -0.0179957    0.0148540
6-12 months    ki0047075b-MAL-ED         PERU                           >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         PERU                           <-3                  >=0               -0.0643871   -0.1042924   -0.0244819
6-12 months    ki0047075b-MAL-ED         PERU                           [-3--2)              >=0                0.0359425    0.0038581    0.0680269
6-12 months    ki0047075b-MAL-ED         PERU                           [-2--1)              >=0                0.0713287    0.0426258    0.1000315
6-12 months    ki0047075b-MAL-ED         PERU                           [-1-0)               >=0                0.0479341    0.0183204    0.0775477
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0               -0.0062111   -0.0434067    0.0309845
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.0247010   -0.0613830    0.0119809
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0001342   -0.0441538    0.0444223
6-12 months    ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0207533   -0.0580044    0.0164977
6-12 months    ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC             INDIA                          <-3                  >=0                0.0837630   -0.0062001    0.1737262
6-12 months    ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0334333    0.0014736    0.0653930
6-12 months    ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0503565    0.0139317    0.0867813
6-12 months    ki1000108-IRC             INDIA                          [-1-0)               >=0               -0.0004023   -0.0297526    0.0289480
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          <-3                  >=0                0.0956081    0.0624464    0.1287698
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-3--2)              >=0                0.0233262    0.0002989    0.0463536
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-2--1)              >=0                0.0082384   -0.0085198    0.0249966
6-12 months    ki1000304b-SAS-CompFeed   INDIA                          [-1-0)               >=0               -0.0069367   -0.0321295    0.0182561
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.0800315    0.0485345    0.1115286
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0430834    0.0158214    0.0703453
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0247263    0.0082751    0.0411776
6-12 months    ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0181261    0.0026460    0.0336063
6-12 months    ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba          GAMBIA                         <-3                  >=0               -0.0901725   -0.1096315   -0.0707135
6-12 months    ki1101329-Keneba          GAMBIA                         [-3--2)              >=0                0.0117716   -0.0108599    0.0344030
6-12 months    ki1101329-Keneba          GAMBIA                         [-2--1)              >=0               -0.0064785   -0.0263941    0.0134372
6-12 months    ki1101329-Keneba          GAMBIA                         [-1-0)               >=0               -0.0201602   -0.0394037   -0.0009167
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.0505428    0.0316326    0.0694530
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0                0.0395199    0.0240439    0.0549958
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0                0.0108416   -0.0018863    0.0235695
6-12 months    ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0                0.0060336   -0.0043542    0.0164215
6-12 months    ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.2432540    0.2272168    0.2592913
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.1183800    0.1012553    0.1355046
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.0446982    0.0274225    0.0619740
6-12 months    ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.0120615   -0.0034325    0.0275556
6-12 months    ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         INDIA                          <-3                  >=0                0.0218897    0.0006005    0.0431789
6-12 months    ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.0135628    0.0004425    0.0266831
6-12 months    ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0060281   -0.0038439    0.0159000
6-12 months    ki1135781-COHORTS         INDIA                          [-1-0)               >=0               -0.0042902   -0.0127119    0.0041316
6-12 months    ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0                0.0656748    0.0498009    0.0815486
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0                0.0286537    0.0107850    0.0465223
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0                0.0094846   -0.0033821    0.0223513
6-12 months    ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0               -0.0047559   -0.0154594    0.0059476
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0569392    0.0482905    0.0655880
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0217177    0.0138625    0.0295729
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0070968    0.0003160    0.0138775
6-12 months    kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0               -0.0004066   -0.0078144    0.0070012
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.0513883    0.0315457    0.0712309
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0225492    0.0042630    0.0408353
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.0117518    0.0004105    0.0230930
6-12 months    kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0               -0.0034602   -0.0147682    0.0078479
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     <-3                  >=0                0.0550691    0.0259137    0.0842246
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-3--2)              >=0                0.0285771    0.0119625    0.0451916
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-2--1)              >=0                0.0056761   -0.0074906    0.0188427
12-24 months   ki0047075b-MAL-ED         BANGLADESH                     [-1-0)               >=0                0.0076749   -0.0065174    0.0218671
12-24 months   ki0047075b-MAL-ED         BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         BRAZIL                         <-3                  >=0                0.0419401    0.0222292    0.0616510
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-3--2)              >=0                0.0185756   -0.0033453    0.0404966
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-2--1)              >=0                0.0303940    0.0129100    0.0478781
12-24 months   ki0047075b-MAL-ED         BRAZIL                         [-1-0)               >=0                0.0058171   -0.0074717    0.0191059
12-24 months   ki0047075b-MAL-ED         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         INDIA                          <-3                  >=0                0.0386072    0.0259974    0.0512170
12-24 months   ki0047075b-MAL-ED         INDIA                          [-3--2)              >=0                0.0129740   -0.0003158    0.0262639
12-24 months   ki0047075b-MAL-ED         INDIA                          [-2--1)              >=0                0.0014885   -0.0093463    0.0123233
12-24 months   ki0047075b-MAL-ED         INDIA                          [-1-0)               >=0                0.0149097    0.0042422    0.0255772
12-24 months   ki0047075b-MAL-ED         NEPAL                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         NEPAL                          <-3                  >=0                0.0711597    0.0616725    0.0806468
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-3--2)              >=0                0.0414261    0.0290769    0.0537753
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-2--1)              >=0                0.0164928    0.0046139    0.0283717
12-24 months   ki0047075b-MAL-ED         NEPAL                          [-1-0)               >=0                0.0091892   -0.0012243    0.0196028
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.0416326    0.0116224    0.0716428
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0235348   -0.0075370    0.0546065
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0076943   -0.0346427    0.0192541
12-24 months   ki0047075b-MAL-ED         TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0160224   -0.0103801    0.0424250
12-24 months   ki1000108-IRC             INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC             INDIA                          <-3                  >=0                0.0347837   -0.0124729    0.0820403
12-24 months   ki1000108-IRC             INDIA                          [-3--2)              >=0                0.0214539   -0.0085529    0.0514607
12-24 months   ki1000108-IRC             INDIA                          [-2--1)              >=0                0.0197994    0.0019795    0.0376193
12-24 months   ki1000108-IRC             INDIA                          [-1-0)               >=0                0.0259109    0.0088520    0.0429698
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     <-3                  >=0                0.1138007    0.1056400    0.1219614
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-3--2)              >=0                0.0564734    0.0440974    0.0688495
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-2--1)              >=0                0.0299682    0.0203800    0.0395564
12-24 months   ki1017093c-NIH-Crypto     BANGLADESH                     [-1-0)               >=0                0.0131413    0.0046121    0.0216704
12-24 months   ki1101329-Keneba          GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba          GAMBIA                         <-3                  >=0               -0.0542370   -0.0640592   -0.0444149
12-24 months   ki1101329-Keneba          GAMBIA                         [-3--2)              >=0               -0.0051155   -0.0177531    0.0075221
12-24 months   ki1101329-Keneba          GAMBIA                         [-2--1)              >=0                0.0077538   -0.0023849    0.0178924
12-24 months   ki1101329-Keneba          GAMBIA                         [-1-0)               >=0                0.0159854    0.0074767    0.0244940
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       <-3                  >=0                0.0327444    0.0154134    0.0500754
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-3--2)              >=0               -0.0008454   -0.0214989    0.0198081
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-2--1)              >=0               -0.0041101   -0.0210163    0.0127962
12-24 months   ki1126311-ZVITAMBO        ZIMBABWE                       [-1-0)               >=0               -0.0089152   -0.0270020    0.0091717
12-24 months   ki1135781-COHORTS         GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         GUATEMALA                      <-3                  >=0                0.0961685    0.0899438    0.1023932
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-3--2)              >=0                0.0295669    0.0184265    0.0407073
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-2--1)              >=0                0.0160025    0.0055646    0.0264403
12-24 months   ki1135781-COHORTS         GUATEMALA                      [-1-0)               >=0                0.0095005    0.0010809    0.0179202
12-24 months   ki1135781-COHORTS         INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         INDIA                          <-3                  >=0                0.0253804    0.0170858    0.0336750
12-24 months   ki1135781-COHORTS         INDIA                          [-3--2)              >=0                0.0154949    0.0094670    0.0215228
12-24 months   ki1135781-COHORTS         INDIA                          [-2--1)              >=0                0.0044015   -0.0000441    0.0088470
12-24 months   ki1135781-COHORTS         INDIA                          [-1-0)               >=0                0.0040684    0.0000948    0.0080420
12-24 months   ki1135781-COHORTS         PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS         PHILIPPINES                    <-3                  >=0                0.0077735   -0.0028171    0.0183642
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-3--2)              >=0                0.0210531    0.0130770    0.0290291
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-2--1)              >=0                0.0124798    0.0060607    0.0188989
12-24 months   ki1135781-COHORTS         PHILIPPINES                    [-1-0)               >=0                0.0065689    0.0013728    0.0117649
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     <-3                  >=0                0.0334949    0.0278445    0.0391453
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-3--2)              >=0                0.0229721    0.0178348    0.0281094
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-2--1)              >=0                0.0135363    0.0088071    0.0182655
12-24 months   kiGH5241-JiVitA-3         BANGLADESH                     [-1-0)               >=0                0.0086126    0.0038317    0.0133935
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     <-3                  >=0                0.0239006    0.0161047    0.0316965
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-3--2)              >=0                0.0106815    0.0042012    0.0171617
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-2--1)              >=0                0.0081098    0.0030322    0.0131873
12-24 months   kiGH5241-JiVitA-4         BANGLADESH                     [-1-0)               >=0                0.0024185   -0.0027628    0.0075998
