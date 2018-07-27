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

**Outcome Variable:** y_rate_len

## Predictor Variables

**Intervention Variable:** birthwt

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat         studyid                    country                        birthwt    n_cell       n
-------------  -------------------------  -----------------------------  --------  -------  ------
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     >=0            33     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     <-3             4     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-3--2)        35     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-2--1)        89     238
0-3 months     ki0047075b-MAL-ED          BANGLADESH                     [-1-0)         77     238
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     >=0             1      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-3--2)         3      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-2--1)        12      23
0-3 months     ki1017093-NIH-Birth        BANGLADESH                     [-1-0)          7      23
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     >=0            58     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     <-3             4     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-3--2)       103     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-2--1)       267     634
0-3 months     ki1017093b-PROVIDE         BANGLADESH                     [-1-0)        202     634
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0            95     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3            23     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)       109     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)       270     720
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)        223     720
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0           811   20031
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3          1953   20031
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)      4930   20031
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)      7992   20031
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)       4345   20031
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0           109    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3           133    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)       358    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)       732    1807
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)        475    1807
0-3 months     ki1119695-PROBIT           BELARUS                        >=0          7966   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)       884   12745
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)       3895   12745
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0           108     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)         5     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)        19     180
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)         48     180
0-3 months     ki1114097-CMIN             BRAZIL                         >=0            36      81
0-3 months     ki1114097-CMIN             BRAZIL                         <-3             1      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-3--2)         2      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-2--1)        13      81
0-3 months     ki1114097-CMIN             BRAZIL                         [-1-0)         29      81
0-3 months     ki1101329-Keneba           GAMBIA                         >=0           241    1260
0-3 months     ki1101329-Keneba           GAMBIA                         <-3            15    1260
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)        85    1260
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)       354    1260
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)        565    1260
0-3 months     ki1135781-COHORTS          GUATEMALA                      >=0           199     683
0-3 months     ki1135781-COHORTS          GUATEMALA                      <-3             4     683
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)        48     683
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)       198     683
0-3 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)        234     683
0-3 months     ki0047075b-MAL-ED          INDIA                          >=0            39     195
0-3 months     ki0047075b-MAL-ED          INDIA                          <-3             2     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-3--2)        19     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-2--1)        63     195
0-3 months     ki0047075b-MAL-ED          INDIA                          [-1-0)         72     195
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0            10      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3             3      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)         8      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)        28      87
0-3 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)         38      87
0-3 months     ki1000108-IRC              INDIA                          >=0            57     373
0-3 months     ki1000108-IRC              INDIA                          <-3            12     373
0-3 months     ki1000108-IRC              INDIA                          [-3--2)        36     373
0-3 months     ki1000108-IRC              INDIA                          [-2--1)       121     373
0-3 months     ki1000108-IRC              INDIA                          [-1-0)        147     373
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0            79    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3            73    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)       169    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)       416    1168
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)        431    1168
0-3 months     ki1135781-COHORTS          INDIA                          >=0           728    6462
0-3 months     ki1135781-COHORTS          INDIA                          <-3           272    6462
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)       845    6462
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)      2198    6462
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)       2419    6462
0-3 months     ki0047075b-MAL-ED          NEPAL                          >=0            31     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          <-3             4     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-3--2)        12     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-2--1)        40     171
0-3 months     ki0047075b-MAL-ED          NEPAL                          [-1-0)         84     171
0-3 months     ki1000109-EE               PAKISTAN                       >=0            24     294
0-3 months     ki1000109-EE               PAKISTAN                       <-3            32     294
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)        61     294
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)        93     294
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)         84     294
0-3 months     ki1000109-ResPak           PAKISTAN                       >=0             3       5
0-3 months     ki1000109-ResPak           PAKISTAN                       <-3             1       5
0-3 months     ki1000109-ResPak           PAKISTAN                       [-2--1)         1       5
0-3 months     ki0047075b-MAL-ED          PERU                           >=0            84     268
0-3 months     ki0047075b-MAL-ED          PERU                           <-3             3     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-3--2)         9     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-2--1)        40     268
0-3 months     ki0047075b-MAL-ED          PERU                           [-1-0)        132     268
0-3 months     ki1114097-CMIN             PERU                           >=0             7       8
0-3 months     ki1114097-CMIN             PERU                           [-1-0)          1       8
0-3 months     ki1114097-CONTENT          PERU                           >=0             1       2
0-3 months     ki1114097-CONTENT          PERU                           [-1-0)          1       2
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=0            84     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <-3             3     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         8     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)        32     229
0-3 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)        102     229
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0            53     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         5     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)        15     116
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)         43     116
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0          1869    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3           209    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)       612    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)      1859    7864
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)       3315    7864
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     >=0            33     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     <-3             4     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-3--2)        33     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-2--1)        81     224
3-6 months     ki0047075b-MAL-ED          BANGLADESH                     [-1-0)         73     224
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     >=0             1      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-3--2)         3      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-2--1)         9      17
3-6 months     ki1017093-NIH-Birth        BANGLADESH                     [-1-0)          4      17
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     >=0            51     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     <-3             4     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-3--2)        91     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-2--1)       242     574
3-6 months     ki1017093b-PROVIDE         BANGLADESH                     [-1-0)        186     574
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0            91     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3            22     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)       106     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)       264     695
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)        212     695
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0          1385   12559
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3          1043   12559
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)      2752   12559
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)      4624   12559
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)       2755   12559
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0           431    1755
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3           100    1755
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)       250    1755
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)       527    1755
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)        447    1755
3-6 months     ki1119695-PROBIT           BELARUS                        >=0          8307   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)       903   13309
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)       4099   13309
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0           119     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)         8     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)        21     208
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)         60     208
3-6 months     ki1114097-CMIN             BRAZIL                         >=0            35      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-3--2)         1      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-2--1)        12      77
3-6 months     ki1114097-CMIN             BRAZIL                         [-1-0)         29      77
3-6 months     ki1101329-Keneba           GAMBIA                         >=0           255    1197
3-6 months     ki1101329-Keneba           GAMBIA                         <-3            17    1197
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)        77    1197
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)       325    1197
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)        523    1197
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0           194     680
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3             8     680
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)        49     680
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)       207     680
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)        222     680
3-6 months     ki0047075b-MAL-ED          INDIA                          >=0            41     224
3-6 months     ki0047075b-MAL-ED          INDIA                          <-3             4     224
3-6 months     ki0047075b-MAL-ED          INDIA                          [-3--2)        20     224
3-6 months     ki0047075b-MAL-ED          INDIA                          [-2--1)        72     224
3-6 months     ki0047075b-MAL-ED          INDIA                          [-1-0)         87     224
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0            55     300
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3            11     300
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)        27     300
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)        86     300
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        121     300
3-6 months     ki1000108-IRC              INDIA                          >=0            60     392
3-6 months     ki1000108-IRC              INDIA                          <-3            11     392
3-6 months     ki1000108-IRC              INDIA                          [-3--2)        38     392
3-6 months     ki1000108-IRC              INDIA                          [-2--1)       130     392
3-6 months     ki1000108-IRC              INDIA                          [-1-0)        153     392
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0           115    1115
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3            68    1115
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)       147    1115
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)       379    1115
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)        406    1115
3-6 months     ki1135781-COHORTS          INDIA                          >=0           681    5975
3-6 months     ki1135781-COHORTS          INDIA                          <-3           220    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)       780    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)      2043    5975
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)       2251    5975
3-6 months     ki0047075b-MAL-ED          NEPAL                          >=0            47     226
3-6 months     ki0047075b-MAL-ED          NEPAL                          <-3             4     226
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-3--2)        15     226
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-2--1)        52     226
3-6 months     ki0047075b-MAL-ED          NEPAL                          [-1-0)        108     226
3-6 months     ki1000109-EE               PAKISTAN                       >=0            27     328
3-6 months     ki1000109-EE               PAKISTAN                       <-3            40     328
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)        63     328
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)       106     328
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)         92     328
3-6 months     ki1000109-ResPak           PAKISTAN                       >=0             2       3
3-6 months     ki1000109-ResPak           PAKISTAN                       [-2--1)         1       3
3-6 months     ki0047075b-MAL-ED          PERU                           >=0            82     264
3-6 months     ki0047075b-MAL-ED          PERU                           <-3             4     264
3-6 months     ki0047075b-MAL-ED          PERU                           [-3--2)         9     264
3-6 months     ki0047075b-MAL-ED          PERU                           [-2--1)        40     264
3-6 months     ki0047075b-MAL-ED          PERU                           [-1-0)        129     264
3-6 months     ki1114097-CMIN             PERU                           >=0             7       8
3-6 months     ki1114097-CMIN             PERU                           [-1-0)          1       8
3-6 months     ki1114097-CONTENT          PERU                           >=0             1       2
3-6 months     ki1114097-CONTENT          PERU                           [-1-0)          1       2
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   >=0            95     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   <-3             3     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         9     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)        36     241
3-6 months     ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)         98     241
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0            54     120
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         5     120
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)        16     120
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)         45     120
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0           705    1644
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3            13    1644
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)        32    1644
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)       216    1644
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)        678    1644
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0          1407    5871
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3           155    5871
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)       452    5871
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)      1364    5871
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)       2493    5871
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     >=0            33     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     <-3             4     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-3--2)        32     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-2--1)        76     214
6-12 months    ki0047075b-MAL-ED          BANGLADESH                     [-1-0)         69     214
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     >=0             1      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-3--2)         3      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-2--1)         9      17
6-12 months    ki1017093-NIH-Birth        BANGLADESH                     [-1-0)          4      17
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     >=0            48     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     <-3             4     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-3--2)        86     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-2--1)       226     545
6-12 months    ki1017093b-PROVIDE         BANGLADESH                     [-1-0)        181     545
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0            84     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3            22     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)       104     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)       260     676
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)        206     676
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0          1011    9806
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3           835    9806
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)      2216    9806
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)      3599    9806
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)       2145    9806
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0           588    2801
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3           168    2801
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)       425    2801
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)       872    2801
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)        748    2801
6-12 months    ki1119695-PROBIT           BELARUS                        >=0          8073   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)       877   12896
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)       3946   12896
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0           109     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)         8     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)        20     194
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)         57     194
6-12 months    ki1114097-CMIN             BRAZIL                         >=0            43      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-3--2)         1      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-2--1)        14      90
6-12 months    ki1114097-CMIN             BRAZIL                         [-1-0)         32      90
6-12 months    ki1101329-Keneba           GAMBIA                         >=0           239    1124
6-12 months    ki1101329-Keneba           GAMBIA                         <-3            15    1124
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)        65    1124
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)       309    1124
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)        496    1124
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0           193     694
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3             7     694
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)        53     694
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)       209     694
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)        232     694
6-12 months    ki0047075b-MAL-ED          INDIA                          >=0            38     219
6-12 months    ki0047075b-MAL-ED          INDIA                          <-3             4     219
6-12 months    ki0047075b-MAL-ED          INDIA                          [-3--2)        21     219
6-12 months    ki0047075b-MAL-ED          INDIA                          [-2--1)        69     219
6-12 months    ki0047075b-MAL-ED          INDIA                          [-1-0)         87     219
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0            59     316
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3            10     316
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)        27     316
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)        88     316
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        132     316
6-12 months    ki1000108-IRC              INDIA                          >=0            61     394
6-12 months    ki1000108-IRC              INDIA                          <-3            10     394
6-12 months    ki1000108-IRC              INDIA                          [-3--2)        41     394
6-12 months    ki1000108-IRC              INDIA                          [-2--1)       126     394
6-12 months    ki1000108-IRC              INDIA                          [-1-0)        156     394
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0           108    1128
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3            67    1128
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)       149    1128
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)       387    1128
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)        417    1128
6-12 months    ki1135781-COHORTS          INDIA                          >=0           574    4765
6-12 months    ki1135781-COHORTS          INDIA                          <-3           164    4765
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)       589    4765
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)      1618    4765
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)       1820    4765
6-12 months    ki0047075b-MAL-ED          NEPAL                          >=0            46     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          <-3             3     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-3--2)        15     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-2--1)        52     224
6-12 months    ki0047075b-MAL-ED          NEPAL                          [-1-0)        108     224
6-12 months    ki1000109-EE               PAKISTAN                       <-3             3       4
6-12 months    ki1000109-EE               PAKISTAN                       [-3--2)         1       4
6-12 months    ki1000109-ResPak           PAKISTAN                       >=0             2       4
6-12 months    ki1000109-ResPak           PAKISTAN                       [-2--1)         1       4
6-12 months    ki1000109-ResPak           PAKISTAN                       [-1-0)          1       4
6-12 months    ki0047075b-MAL-ED          PERU                           >=0            69     234
6-12 months    ki0047075b-MAL-ED          PERU                           <-3             3     234
6-12 months    ki0047075b-MAL-ED          PERU                           [-3--2)         8     234
6-12 months    ki0047075b-MAL-ED          PERU                           [-2--1)        38     234
6-12 months    ki0047075b-MAL-ED          PERU                           [-1-0)        116     234
6-12 months    ki1114097-CMIN             PERU                           >=0             7       8
6-12 months    ki1114097-CMIN             PERU                           [-1-0)          1       8
6-12 months    ki1114097-CONTENT          PERU                           >=0             1       2
6-12 months    ki1114097-CONTENT          PERU                           [-1-0)          1       2
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0           528    2381
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3            44    2381
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)       135    2381
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)       574    2381
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)       1100    2381
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=0            89     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <-3             3     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         9     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)        35     232
6-12 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)         96     232
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0            53     113
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         4     113
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)        17     113
6-12 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)         39     113
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0           464    1073
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3             9    1073
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)        18    1073
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)       134    1073
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)        448    1073
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0           917    4559
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3           134    4559
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)       365    4559
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)      1150    4559
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)       1993    4559
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=0            31     201
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     <-3             4     201
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-3--2)        29     201
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-2--1)        70     201
12-24 months   ki0047075b-MAL-ED          BANGLADESH                     [-1-0)         67     201
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=0             1      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-3--2)         3      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-2--1)         8      16
12-24 months   ki1017093-NIH-Birth        BANGLADESH                     [-1-0)          4      16
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=0            40     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     <-3             3     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-3--2)        75     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-2--1)       202     458
12-24 months   ki1017093b-PROVIDE         BANGLADESH                     [-1-0)        138     458
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0            58     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3            16     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)        81     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)       191     495
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)        149     495
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0           477    4631
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3           414    4631
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)      1072    4631
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)      1705    4631
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)        963    4631
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0           687    3106
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3           198    3106
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)       479    3106
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)       948    3106
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)        794    3106
12-24 months   ki1119695-PROBIT           BELARUS                        >=0          1601    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)       170    2533
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)        762    2533
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0            93     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)         7     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)        16     165
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)         49     165
12-24 months   ki1101329-Keneba           GAMBIA                         >=0           212    1026
12-24 months   ki1101329-Keneba           GAMBIA                         <-3            10    1026
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)        61    1026
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)       278    1026
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)        465    1026
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0           162     627
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3             6     627
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)        51     627
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)       189     627
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)        219     627
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0            37     220
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3             5     220
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)        21     220
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)        69     220
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)         88     220
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0            60     316
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3             9     316
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)        27     316
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)        94     316
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)        126     316
12-24 months   ki1000108-IRC              INDIA                          >=0            61     390
12-24 months   ki1000108-IRC              INDIA                          <-3            10     390
12-24 months   ki1000108-IRC              INDIA                          [-3--2)        41     390
12-24 months   ki1000108-IRC              INDIA                          [-2--1)       123     390
12-24 months   ki1000108-IRC              INDIA                          [-1-0)        155     390
12-24 months   ki1135781-COHORTS          INDIA                          >=0           511    4045
12-24 months   ki1135781-COHORTS          INDIA                          <-3           132    4045
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)       499    4045
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)      1360    4045
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)       1543    4045
12-24 months   ki0047075b-MAL-ED          NEPAL                          >=0            45     220
12-24 months   ki0047075b-MAL-ED          NEPAL                          <-3             3     220
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-3--2)        15     220
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-2--1)        52     220
12-24 months   ki0047075b-MAL-ED          NEPAL                          [-1-0)        105     220
12-24 months   ki0047075b-MAL-ED          PERU                           >=0            54     188
12-24 months   ki0047075b-MAL-ED          PERU                           <-3             2     188
12-24 months   ki0047075b-MAL-ED          PERU                           [-3--2)         6     188
12-24 months   ki0047075b-MAL-ED          PERU                           [-2--1)        34     188
12-24 months   ki0047075b-MAL-ED          PERU                           [-1-0)         92     188
12-24 months   ki1114097-CMIN             PERU                           >=0             2       3
12-24 months   ki1114097-CMIN             PERU                           [-1-0)          1       3
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0           486    2224
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3            37    2224
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)       123    2224
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)       541    2224
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)       1037    2224
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=0            84     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <-3             3     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-3--2)         8     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-2--1)        33     230
12-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [-1-0)        102     230
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0            48     102
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)         4     102
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)        15     102
12-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)         35     102
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0             1       2
12-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)         1       2
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0            29     301
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3             9     301
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)        39     301
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)       106     301
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)        118     301


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
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 3-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
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

* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 0-3 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-3 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-3 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 0-3 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 0-3 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 3-6 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 3-6 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 3-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: BRAZIL
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-12 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-12 months, studyid: ki1000109-ResPak, country: PAKISTAN
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 6-12 months, studyid: ki1114097-CONTENT, country: PERU
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-12 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 12-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 12-24 months, studyid: ki1114097-CMIN, country: PERU
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 12-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 12-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b081d7b6-d08b-485c-ad6e-2680c639551a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/b081d7b6-d08b-485c-ad6e-2680c639551a/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                4.1166526   4.0023141   4.2309910
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                4.5331346   4.2218001   4.8444690
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                3.8304545   3.5006224   4.1602866
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                3.9402514   3.7036547   4.1768480
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                3.4543467   3.3113647   3.5973288
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                3.4802239   3.3351725   3.6252753
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                3.6791765   3.4830215   3.8753315
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                3.6025313   3.4430709   3.7619917
0-3 months     ki1000108-IRC              INDIA                          >=0                  NA                3.3697391   3.0543063   3.6851718
0-3 months     ki1000108-IRC              INDIA                          <-3                  NA                2.8324413   2.3777950   3.2870877
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              NA                2.6976539   2.3951741   3.0001338
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              NA                3.0934915   2.9073009   3.2796822
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               NA                3.3249252   3.1455725   3.5042779
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  NA                2.5653645   2.3530988   2.7776303
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  NA                2.6677284   2.4028833   2.9325736
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                2.6504338   2.4704555   2.8304120
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                2.7027482   2.5535331   2.8519634
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                2.6127165   2.4468458   2.7785873
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                3.5401206   3.3945911   3.6856502
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                3.5637230   3.4178964   3.7095496
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                3.6207227   3.5218585   3.7195870
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                3.6364621   3.6040979   3.6688262
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                3.5791913   3.5232466   3.6351359
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                3.3720006   3.2832933   3.4607078
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                3.2258741   3.0352697   3.4164784
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                3.3044166   3.2026968   3.4061364
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                3.2877702   3.2260320   3.3495084
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                3.2988731   3.2261935   3.3715527
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                3.0408238   2.9507562   3.1308914
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                3.3771618   2.9769455   3.7773780
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                3.1408023   2.9277333   3.3538714
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                3.2221835   3.1313086   3.3130584
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                3.1443955   3.0721003   3.2166906
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                2.8069231   2.6886881   2.9251581
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                2.9143586   2.7774339   3.0512832
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                2.8762894   2.7673747   2.9852040
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                3.4660442   3.4232685   3.5088198
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                3.1256110   2.9695358   3.2816862
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                3.2918973   3.2174022   3.3663923
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                3.2803654   3.2383778   3.3223530
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                3.3975955   3.3657166   3.4294744
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  NA                3.4689522   3.4267282   3.5111762
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  NA                3.5735895   3.4991173   3.6480616
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                3.6678021   3.6252802   3.7103239
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                3.5550883   3.5306586   3.5795179
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                3.5204351   3.4982873   3.5425829
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                3.5348591   3.4918445   3.5778738
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                3.8238038   3.7926386   3.8549691
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                3.7702143   3.7511702   3.7892585
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                3.7232990   3.7089920   3.7376061
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                3.6370552   3.6192125   3.6548978
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                3.4779519   3.3283247   3.6275791
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                3.8638462   3.7370364   3.9906560
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                3.7276872   3.6632797   3.7920948
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                3.6656629   3.6175589   3.7137669
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                3.5017078   3.4389640   3.5644517
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                2.1181341   2.0150899   2.2211783
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                2.4014244   2.1612474   2.6416014
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                2.2532513   1.9826646   2.5238381
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                2.1359668   1.9854367   2.2864970
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                1.7538905   1.6182474   1.8895336
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                1.9068517   1.4241582   2.3895452
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                1.7312256   1.4398863   2.0225649
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                1.9357336   1.7751657   2.0963015
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                1.7852249   1.5409386   2.0295111
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                1.8058966   1.2615623   2.3502308
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                2.2498043   1.9568003   2.5428084
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                1.7145893   1.5211982   1.9079804
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                1.7782554   1.6187529   1.9377580
3-6 months     ki1000108-IRC              INDIA                          >=0                  NA                1.7393709   1.5967431   1.8819986
3-6 months     ki1000108-IRC              INDIA                          <-3                  NA                2.0125481   1.6687884   2.3563078
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              NA                2.1816721   1.9504588   2.4128854
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              NA                1.8880267   1.7739404   2.0021130
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               NA                1.8514036   1.7517682   1.9510391
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  NA                1.8575738   1.6837103   2.0314374
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  NA                2.1672171   1.9857335   2.3487008
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                2.0391466   1.9157182   2.1625749
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                2.0064667   1.9003921   2.1125412
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                2.0160407   1.8922643   2.1398172
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                1.9018540   1.8164263   1.9872818
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                2.1299985   1.8889634   2.3710336
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                2.0181982   1.9277279   2.1086685
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                1.9293369   1.8264693   2.0322045
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                1.9192654   1.8252174   2.0133133
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                1.8488429   1.7612577   1.9364282
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                2.2750528   2.0827707   2.4673349
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                2.0587716   1.9630623   2.1544809
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                2.0518421   1.9892259   2.1144582
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                1.9614016   1.9011032   2.0217000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                1.7495208   1.6982786   1.8007631
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                1.9943052   1.5083454   2.4802651
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                1.9785847   1.7324360   2.2247335
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                1.7624836   1.6593655   1.8656017
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                1.8420914   1.7831341   1.9010487
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                1.9006030   1.8041117   1.9970942
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                2.0113917   1.5572917   2.4654916
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                2.1590380   2.0071936   2.3108824
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                2.0517572   1.9833157   2.1201987
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                1.9424550   1.8770553   2.0078547
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                2.0600339   2.0150017   2.1050661
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                2.1935286   2.1230256   2.2640316
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                2.1327476   2.0906742   2.1748210
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                1.8857461   1.8468470   1.9246453
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                2.3580796   2.2376155   2.4785436
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                2.1131488   2.0428514   2.1834462
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                2.0072946   1.9650790   2.0495101
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                1.9588350   1.9280465   1.9896236
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  NA                1.7068610   1.6510394   1.7626826
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  NA                2.1482365   1.8738264   2.4226465
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                1.8064657   1.6974288   1.9155026
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                1.7781764   1.7164169   1.8399360
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                1.7259655   1.6720695   1.7798614
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  NA                1.8161564   1.7797697   1.8525431
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  NA                1.9389143   1.8692501   2.0085786
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                1.9394461   1.9034371   1.9754551
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                1.8788651   1.8571437   1.9005865
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                1.8611304   1.8405073   1.8817535
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                1.8958120   1.8657628   1.9258612
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                2.1432331   2.1089696   2.1774965
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                1.9583965   1.9368038   1.9799892
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                1.8948513   1.8803276   1.9093750
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                1.8511535   1.8309047   1.8714023
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                1.8716549   1.8188633   1.9244465
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                2.0813621   1.9369771   2.2257471
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                1.9369577   1.8660575   2.0078578
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                1.8981208   1.8349683   1.9612733
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                1.8641423   1.8083164   1.9199682
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                1.3660330   1.3030597   1.4290063
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                1.5823308   1.3606599   1.8040017
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                1.4314380   1.3141430   1.5487331
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                1.3818631   1.2967906   1.4669356
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                1.0781951   0.9352147   1.2211755
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                1.2685664   0.9633406   1.5737923
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                1.0286365   0.8827670   1.1745061
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                1.0484705   0.9665886   1.1303523
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                1.0681023   0.9985232   1.1376814
6-12 months    ki1000108-IRC              INDIA                          >=0                  NA                1.2242376   1.1667693   1.2817058
6-12 months    ki1000108-IRC              INDIA                          <-3                  NA                1.2385476   1.0118929   1.4652023
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              NA                1.3067907   1.2163895   1.3971918
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              NA                1.2638373   1.2116073   1.3160674
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               NA                1.2326064   1.1825629   1.2826500
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                1.1106054   1.0676814   1.1535295
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                1.1655348   1.0756775   1.2553921
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                1.1192423   1.0642964   1.1741883
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                1.0891204   1.0492475   1.1289933
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                1.0875833   1.0539308   1.1212359
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                1.2217671   1.1771305   1.2664037
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                1.1670915   1.0656307   1.2685523
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                1.2354500   1.1910780   1.2798220
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                1.2206220   1.1931709   1.2480732
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                1.2430279   1.2096658   1.2763901
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                1.2033917   1.1729070   1.2338764
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                1.4327743   1.1391966   1.7263519
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                1.2062225   1.0270988   1.3853461
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                1.2163140   1.1537575   1.2788706
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                1.1828153   1.1476525   1.2179782
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                1.2016857   1.1590209   1.2443504
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                1.2646424   1.1133839   1.4159010
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                1.1454887   1.0785546   1.2124229
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                1.1661481   1.1331209   1.1991752
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                1.1817481   1.1508796   1.2126167
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                1.4475457   1.4127337   1.4823578
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                1.5659439   1.4989465   1.6329413
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                1.4976294   1.4519369   1.5433219
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                1.1787523   1.1549231   1.2025814
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                1.3435240   1.2747473   1.4123007
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                1.2416187   1.2028051   1.2804324
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                1.1991352   1.1768203   1.2214502
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                1.1872435   1.1710532   1.2034339
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  NA                1.0150694   0.9774422   1.0526967
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  NA                1.1031299   0.9279273   1.2783324
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                1.0589331   0.9963686   1.1214975
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                1.0136760   0.9794999   1.0478520
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                1.0135090   0.9806542   1.0463638
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  NA                1.1249183   1.1003920   1.1494445
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  NA                1.1311491   1.0793754   1.1829227
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                1.0873038   1.0618305   1.1127771
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                1.0918058   1.0772535   1.1063580
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                1.0965310   1.0822321   1.1108300
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                1.0899801   1.0641567   1.1158036
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                1.1273501   1.0378370   1.2168632
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                1.0728037   1.0232050   1.1224024
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                1.0426752   1.0167323   1.0686181
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                1.0663916   1.0484855   1.0842977
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                1.1157449   1.0945804   1.1369095
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                1.1582236   1.1372425   1.1792048
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                1.1027926   1.0894159   1.1161693
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                1.1001899   1.0903901   1.1099897
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                1.0979884   1.0842457   1.1117310
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                1.2116390   1.1887569   1.2345212
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                1.2691285   1.2267188   1.3115381
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                1.2211342   1.1889733   1.2532951
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                1.1966456   1.1782512   1.2150400
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                1.1834017   1.1635481   1.2032553
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                0.9967839   0.9585977   1.0349702
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                0.9442255   0.7774598   1.1109912
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                1.0006490   0.8780225   1.1232756
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                0.9519830   0.8956982   1.0082679
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  NA                0.9013943   0.8640868   0.9387019
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  NA                0.8476871   0.7272879   0.9680862
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              NA                0.8594176   0.8128196   0.9060155
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              NA                0.8624461   0.8297802   0.8951120
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               NA                0.8935931   0.8645360   0.9226502
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                0.7061753   0.6461307   0.7662199
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                0.8681330   0.7533489   0.9829172
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                0.8011222   0.7010323   0.9012120
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                0.7476016   0.6964134   0.7987899
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                0.7292180   0.6873380   0.7710980
12-24 months   ki1000108-IRC              INDIA                          >=0                  NA                0.8898043   0.8325587   0.9470499
12-24 months   ki1000108-IRC              INDIA                          <-3                  NA                0.8143460   0.6929593   0.9357327
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              NA                0.7604727   0.7024453   0.8185001
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              NA                0.8345589   0.8018850   0.8672329
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               NA                0.8228382   0.7924611   0.8532152
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.8674501   0.8321436   0.9027566
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                0.8620985   0.8104746   0.9137224
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                0.8750421   0.8470469   0.9030373
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                0.8847563   0.8654851   0.9040274
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                0.8686984   0.8470958   0.8903009
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.8488216   0.8258016   0.8718416
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.9082912   0.8347637   0.9818188
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.8178429   0.7747470   0.8609388
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.8465959   0.8276349   0.8655569
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.8428377   0.8247481   0.8609273
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.8640287   0.7987767   0.9292807
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.8303349   0.7235135   0.9371563
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.8586478   0.8099116   0.9073840
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.6553419   0.5700650   0.7406188
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.7358433   0.6672630   0.8044237
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.7651360   0.6959591   0.8343130
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.7173559   0.6738138   0.7608979
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.6964859   0.6536436   0.7393282
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  NA                0.7733861   0.7486539   0.7981183
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  NA                0.8049371   0.7159597   0.8939144
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                0.7467384   0.7003253   0.7931515
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                0.7725432   0.7483620   0.7967243
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                0.7746262   0.7538479   0.7954044
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.8601688   0.8454067   0.8749309
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.7872380   0.7574804   0.8169955
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.8112885   0.7959078   0.8266693
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.8157439   0.8068918   0.8245961
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.8355170   0.8274006   0.8436334
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.6964245   0.6800605   0.7127885
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.6937812   0.6270276   0.7605347
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.6821801   0.6541479   0.7102123
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.7159149   0.7006010   0.7312288
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.7095945   0.6989888   0.7202002
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.8056812   0.7904045   0.8209580
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.8003575   0.7839021   0.8168129
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.7989417   0.7875444   0.8103390
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.7945633   0.7865300   0.8025966
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.7911756   0.7802245   0.8021267
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.8507731   0.8384743   0.8630719
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.8585680   0.8403466   0.8767894
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.8448993   0.8303829   0.8594157
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.8510590   0.8405950   0.8615230
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.8534712   0.8426556   0.8642868


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                4.0509714   3.9492443   4.1526985
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                3.5394654   3.4462268   3.6327040
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                3.1803122   3.0686281   3.2919963
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.6511439   2.5673321   2.7349556
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                3.6019890   3.5739652   3.6300127
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                3.3028656   3.2646714   3.3410598
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                3.1489687   3.1016166   3.1963208
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.8355739   2.7218468   2.9493011
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                3.3706967   3.3498056   3.3915878
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                3.5479299   3.5336860   3.5621738
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                3.7183080   3.7079652   3.7286507
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                3.6381167   3.6070177   3.6692156
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                2.1478156   2.0686357   2.2269955
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.8254330   1.7277928   1.9230732
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.8047351   1.7018994   1.9075708
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                1.8829389   1.8185938   1.9472840
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                2.0227763   1.9619881   2.0835645
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.9467880   1.9003915   1.9931846
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                2.0057973   1.9693775   2.0422170
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.7957952   1.7597099   1.8318805
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                1.9781273   1.9364282   2.0198265
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                2.0914863   2.0503474   2.1326251
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.9749984   1.9550384   1.9949585
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.7471774   1.7154586   1.7788961
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                1.8751561   1.8624222   1.8878899
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.9199235   1.9094098   1.9304372
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.8989403   1.8684895   1.9293910
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                1.3863464   1.3400121   1.4326807
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                1.0674913   1.0190695   1.1159132
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                1.2491688   1.2195305   1.2788070
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                1.0991269   1.0873510   1.1109028
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                1.2281313   1.2106849   1.2455776
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                1.1983859   1.1767608   1.2200110
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                1.1807083   1.1614616   1.1999550
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                1.4709224   1.4326640   1.5091808
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                1.1974821   1.1865618   1.2084024
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                1.0183662   0.9993083   1.0374241
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                1.0983970   1.0896685   1.1071255
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                1.0673951   1.0550859   1.0797043
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                1.1068419   1.1001025   1.1135812
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                1.2043195   1.1935320   1.2151070
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.9816245   0.9508764   1.0123725
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.8808308   0.8631630   0.8984986
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.7404115   0.7132539   0.7675691
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.8302348   0.8104892   0.8499804
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.8755729   0.8637860   0.8873598
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.8442444   0.8331248   0.8553639
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8601486   0.8069287   0.9133686
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7099431   0.6838778   0.7360083
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7716995   0.7589711   0.7844280
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.8274188   0.8222476   0.8325900
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7064747   0.6990652   0.7138842
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.7965355   0.7912174   0.8018536
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.8511412   0.8452619   0.8570204


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.4164820    0.0848159    0.7481481
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0               -0.2861981   -0.6352862    0.0628900
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.1764012   -0.4391773    0.0863749
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0258772   -0.1777985    0.2295529
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.2248298   -0.0179060    0.4675656
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.1481846   -0.0659917    0.3623609
0-3 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <-3                  >=0               -0.5372977   -1.0906522    0.0160567
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.6720851   -1.1091113   -0.2350590
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              >=0               -0.2762475   -0.6425326    0.0900376
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0448138   -0.4076708    0.3180432
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.1023639   -0.2370470    0.4417747
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.0850692   -0.1932273    0.3633657
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.1373837   -0.1220810    0.3968484
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.0473520   -0.2220359    0.3167399
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.0236024   -0.1179228    0.1651276
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0806021   -0.1080974    0.2693015
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0963414   -0.0553030    0.2479859
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                0.0390706   -0.1410138    0.2191550
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0               -0.1461265   -0.3563621    0.0641091
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0               -0.0675839   -0.2025502    0.0673823
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0               -0.0842303   -0.1923071    0.0238464
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0               -0.0731275   -0.1878066    0.0415516
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.3363380   -0.0738878    0.7465637
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.0999785   -0.1313451    0.3313021
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.1813597    0.0534128    0.3093066
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.1035716   -0.0119219    0.2190652
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.1074355    0.0260074    0.1888636
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0693663    0.0280417    0.1106908
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0               -0.3404332   -0.5022640   -0.1786024
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0               -0.1741469   -0.2600496   -0.0882442
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0               -0.1856788   -0.2456180   -0.1257395
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0               -0.0684486   -0.1217968   -0.0151005
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1046373    0.0190279    0.1902467
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.1988499    0.1389251    0.2587746
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0861361    0.0373542    0.1349179
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0514829    0.0038028    0.0991630
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.2889447    0.2368501    0.3410393
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.2353552    0.1890768    0.2816336
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.1884399    0.1433699    0.2335099
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.1021960    0.0569185    0.1474736
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.3858943    0.1897901    0.5819985
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.2497353    0.0871013    0.4123693
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.1877110    0.0313847    0.3440372
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0237559   -0.1395778    0.1870896
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.2832903    0.0219417    0.5446390
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.1351173   -0.1544260    0.4246605
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0178327   -0.1645883    0.2002538
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.1529613   -0.3484289    0.6543514
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0226649   -0.3440332    0.2987035
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.1818431   -0.0283499    0.3920362
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.0206717   -0.5759652    0.6173086
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.4645795    0.0830993    0.8460597
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0               -0.0706356   -0.3822056    0.2409345
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0               -0.0069695   -0.2987173    0.2847784
3-6 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <-3                  >=0                0.2731773   -0.0989966    0.6453511
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              >=0                0.4423013    0.1706356    0.7139670
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              >=0                0.1486559   -0.0339868    0.3312985
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               >=0                0.1120328   -0.0619497    0.2860152
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.3096433    0.0583171    0.5609695
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.1815727   -0.0316481    0.3947935
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.1488929   -0.0547744    0.3525601
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.1584669   -0.0549556    0.3718894
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.2281445    0.0203502    0.4359388
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.1163441   -0.0318100    0.2644983
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0274829   -0.1276614    0.1826272
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                0.0174113   -0.1426981    0.1775207
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.4262099    0.2149196    0.6375002
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.2099287    0.0801926    0.3396647
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.2029991    0.0953331    0.3106651
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.1125587    0.0062239    0.2188934
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.2447844   -0.2438697    0.7334384
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.2290639   -0.0223620    0.4804898
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0129628   -0.1021855    0.1281110
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0925705    0.0144569    0.1706842
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.1107887   -0.3534498    0.5750272
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.2584350    0.0785259    0.4383442
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.1511543    0.0328546    0.2694539
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0418521   -0.0747142    0.1584183
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.1334947    0.0705356    0.1964538
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0727137    0.0397908    0.1056366
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.4723334    0.3457446    0.5989222
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.2274026    0.1470605    0.3077448
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.1215484    0.0641438    0.1789531
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0730889    0.0234796    0.1226981
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.4413755    0.1613453    0.7214057
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0996047   -0.0228906    0.2221000
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0713154   -0.0119329    0.1545638
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0191045   -0.0584895    0.0966984
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1227579    0.0441634    0.2013524
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.1232897    0.0720975    0.1744819
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0627087    0.0203317    0.1050857
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0449740    0.0031493    0.0867986
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.2474210    0.2023802    0.2924619
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0625845    0.0259302    0.0992388
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0               -0.0009607   -0.0338714    0.0319500
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0446585   -0.0807166   -0.0086005
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.2097072    0.0563821    0.3630323
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0653027   -0.0237369    0.1543424
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0264658   -0.0562611    0.1091927
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0               -0.0075126   -0.0844482    0.0694229
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.2162978   -0.0141445    0.4467400
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.0654050   -0.0677256    0.1985357
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0158301   -0.0900140    0.1216742
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.1903713   -0.1466839    0.5274266
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0               -0.0495586   -0.2538165    0.1546994
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0               -0.0297246   -0.1944912    0.1350420
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0               -0.0100928   -0.1691043    0.1489186
6-12 months    ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <-3                  >=0                0.0143101   -0.2195167    0.2481368
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              >=0                0.0825531   -0.0245681    0.1896743
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0395998   -0.0380570    0.1172565
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               >=0                0.0083689   -0.0678345    0.0845723
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.0549294   -0.0545858    0.1644445
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0086369   -0.0643657    0.0816395
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0               -0.0214850   -0.0798048    0.0368347
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0               -0.0230221   -0.0780089    0.0319646
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0               -0.0546756   -0.1655211    0.0561698
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0136829   -0.0492560    0.0766217
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0               -0.0011451   -0.0535473    0.0512571
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0212608   -0.0344658    0.0769875
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.2293826   -0.0657736    0.5245387
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0028308   -0.1788684    0.1845300
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0129223   -0.0566668    0.0825114
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0205764   -0.0671139    0.0259611
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0629567   -0.0942038    0.2201173
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0               -0.0561969   -0.1355724    0.0231785
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0               -0.0355376   -0.0894920    0.0184168
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0               -0.0199375   -0.0725982    0.0327232
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.1183982    0.0664950    0.1703014
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0500837    0.0278305    0.0723368
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.1647717    0.0919839    0.2375595
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.0628665    0.0173217    0.1084113
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0203830   -0.0122634    0.0530293
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0084913   -0.0203177    0.0373002
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.0880604   -0.0911370    0.2672579
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0438636   -0.0291440    0.1168713
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0               -0.0013935   -0.0522247    0.0494377
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0               -0.0015604   -0.0515129    0.0483920
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                0.0062308   -0.0510584    0.0635200
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0               -0.0376145   -0.0729758   -0.0022531
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0               -0.0331125   -0.0616310   -0.0045940
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0               -0.0283872   -0.0567773    0.0000028
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                0.0373700   -0.0557935    0.1305335
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0               -0.0171764   -0.0730950    0.0387421
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0               -0.0473049   -0.0839094   -0.0107005
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0               -0.0235886   -0.0550128    0.0078356
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.0424787    0.0135606    0.0713969
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0               -0.0129523   -0.0374349    0.0115303
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0               -0.0155550   -0.0387750    0.0076649
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0177565   -0.0427911    0.0072780
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0574894    0.0096451    0.1053337
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0094952   -0.0295401    0.0485304
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0               -0.0149934   -0.0435442    0.0135573
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0               -0.0282374   -0.0578455    0.0013708
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0               -0.0525584   -0.2236402    0.1185234
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.0038651   -0.1245695    0.1322997
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.0448009   -0.1128169    0.0232151
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  >=0               -0.0537073   -0.1797542    0.0723396
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              >=0               -0.0419768   -0.1016695    0.0177160
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              >=0               -0.0389483   -0.0885357    0.0106392
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               >=0               -0.0078012   -0.0550894    0.0394869
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.1619577    0.0324172    0.2914983
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.0949468   -0.0217722    0.2116659
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0                0.0414263   -0.0374761    0.1203287
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0230427   -0.0501644    0.0962498
12-24 months   ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <-3                  >=0               -0.0754583   -0.2096663    0.0587497
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.1293316   -0.2108438   -0.0478194
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              >=0               -0.0552454   -0.1211593    0.0106685
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0669661   -0.1317721   -0.0021601
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0               -0.0053516   -0.0678942    0.0571910
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0075920   -0.0374666    0.0526507
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.0173061   -0.0229173    0.0575296
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0012482   -0.0401428    0.0426393
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0594696   -0.0175773    0.1365165
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0               -0.0309787   -0.0798375    0.0178800
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0               -0.0022257   -0.0320492    0.0275978
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0               -0.0059839   -0.0352611    0.0232933
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0               -0.0336938   -0.1267037    0.0593161
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0               -0.0053809   -0.0672772    0.0565155
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.0805014   -0.0289308    0.1899337
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.1097941   -0.0000129    0.2196012
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0620140   -0.0337360    0.1577639
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0411440   -0.0542898    0.1365778
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.0315510   -0.0607997    0.1239017
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0               -0.0266477   -0.0792392    0.0259438
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0               -0.0008429   -0.0354321    0.0337462
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0012400   -0.0310620    0.0335421
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0               -0.0729308   -0.1061487   -0.0397129
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0               -0.0488802   -0.0701989   -0.0275616
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0               -0.0444249   -0.0616376   -0.0272121
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0               -0.0246518   -0.0414980   -0.0078056
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0               -0.0026433   -0.0713733    0.0660866
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0               -0.0142444   -0.0467034    0.0182145
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                0.0194904   -0.0029215    0.0419024
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                0.0131700   -0.0063303    0.0326703
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0               -0.0053237   -0.0269997    0.0163523
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0               -0.0067395   -0.0258940    0.0124150
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0               -0.0111179   -0.0283710    0.0061351
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0145057   -0.0329930    0.0039817
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0077948   -0.0139176    0.0295072
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0               -0.0058739   -0.0248289    0.0130812
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0002859   -0.0155674    0.0161392
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0026980   -0.0135018    0.0188979
