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
![](/tmp/14ac830a-d615-4410-89a2-6aa7722725bf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/14ac830a-d615-4410-89a2-6aa7722725bf/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                 0.2153302    0.1572141    0.2734462
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                 0.5247507    0.3870683    0.6624331
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                 0.1251768   -0.0526710    0.3030246
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                 0.1345165    0.0150763    0.2539566
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.1026578   -0.1785139   -0.0268016
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.0250857   -0.1200142    0.0698428
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                 0.0580349   -0.0377445    0.1538144
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0443629   -0.1276295    0.0389037
0-3 months     ki1000108-IRC              INDIA                          >=0                  NA                -0.1929805   -0.3548872   -0.0310739
0-3 months     ki1000108-IRC              INDIA                          <-3                  NA                -0.3503357   -0.5716393   -0.1290322
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              NA                -0.4595548   -0.6113067   -0.3078028
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              NA                -0.2873071   -0.3800689   -0.1945453
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               NA                -0.1955154   -0.2855565   -0.1054743
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  NA                -0.4899540   -0.6011445   -0.3787635
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  NA                -0.3502308   -0.4807832   -0.2196783
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                -0.3597839   -0.4504690   -0.2690988
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                -0.3824461   -0.4596227   -0.3052695
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                -0.4356385   -0.5184133   -0.3528636
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                -0.0610191   -0.1540734    0.0320351
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                 0.0810149    0.0023564    0.1596734
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                 0.0390207   -0.0128141    0.0908555
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                 0.0343828    0.0115597    0.0572060
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                -0.0175646   -0.0448657    0.0097365
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.1164467   -0.1593017   -0.0735917
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                -0.1140736   -0.2084222   -0.0197251
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                -0.1082947   -0.1572251   -0.0593643
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                -0.1183629   -0.1479014   -0.0888245
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.1365510   -0.1706949   -0.1024070
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.3702735   -0.4156101   -0.3249370
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                -0.0389561   -0.2490551    0.1711430
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                -0.2508125   -0.3560008   -0.1456241
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                -0.2351264   -0.2813299   -0.1889230
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.2897424   -0.3259562   -0.2535286
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                -0.4553430   -0.5172930   -0.3933930
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                -0.3882343   -0.4606212   -0.3158474
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                -0.4124834   -0.4686777   -0.3562890
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.1211069   -0.1425538   -0.0996599
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                -0.1933628   -0.2746893   -0.1120364
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                -0.1465851   -0.1843990   -0.1087713
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                -0.1706140   -0.1915057   -0.1497223
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.1355878   -0.1513999   -0.1197758
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  NA                -0.1416057   -0.1625409   -0.1206705
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  NA                 0.0226634   -0.0145684    0.0598953
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                 0.0150664   -0.0051662    0.0352989
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0493737   -0.0612032   -0.0375442
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0868394   -0.0975772   -0.0761016
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0606710   -0.0812592   -0.0400828
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                 0.1817741    0.1668882    0.1966600
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                 0.1150865    0.1060362    0.1241368
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                 0.0659039    0.0591910    0.0726167
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                 0.0023823   -0.0060202    0.0107849
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0364857   -0.1039972    0.0310258
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.2259128    0.1608643    0.2909614
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                 0.1310582    0.1013499    0.1607665
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                 0.0779846    0.0551415    0.1008277
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0177601   -0.0469282    0.0114081
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                 0.0387460   -0.0085785    0.0860705
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                 0.1999414    0.0953307    0.3045522
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                 0.1319522    0.0094980    0.2544065
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                 0.0600117   -0.0095978    0.1296213
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.1135671   -0.1785582   -0.0485760
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.0062749   -0.2377403    0.2251904
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.1016255   -0.2346849    0.0314340
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0290138   -0.1030722    0.0450446
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                -0.1174629   -0.2296673   -0.0052585
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                -0.0594441   -0.3146689    0.1957807
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                 0.1341950   -0.0039060    0.2722959
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                -0.1390258   -0.2296242   -0.0484275
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                -0.1151838   -0.1915439   -0.0388237
3-6 months     ki1000108-IRC              INDIA                          >=0                  NA                -0.1366625   -0.2047512   -0.0685739
3-6 months     ki1000108-IRC              INDIA                          <-3                  NA                 0.0541540   -0.1073399    0.2156478
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              NA                 0.1099201    0.0064822    0.2133580
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              NA                -0.0402420   -0.0939738    0.0134898
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               NA                -0.0734864   -0.1202104   -0.0267624
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  NA                -0.0295106   -0.1077737    0.0487525
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  NA                 0.1493514    0.0621085    0.2365942
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                 0.0919849    0.0355034    0.1484664
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                 0.0586064    0.0093847    0.1078282
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                 0.0597625    0.0026455    0.1168795
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                -0.0522679   -0.0919934   -0.0125425
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                 0.1128586    0.0061130    0.2196041
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                 0.0300920   -0.0113342    0.0715183
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                -0.0190735   -0.0652657    0.0271188
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                -0.0341368   -0.0764504    0.0081769
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.0667745   -0.1071622   -0.0263868
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                 0.1772587    0.0877702    0.2667473
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                 0.0650140    0.0216779    0.1083500
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                 0.0533027    0.0246446    0.0819608
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.0008427   -0.0283129    0.0266274
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.1134403   -0.1372424   -0.0896382
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                 0.0424954   -0.1861956    0.2711863
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                 0.0092225   -0.1070112    0.1254562
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.0881278   -0.1361504   -0.0401053
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0603012   -0.0875122   -0.0330901
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.0771457   -0.1218251   -0.0324662
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                 0.0310900   -0.1791482    0.2413282
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                 0.0782734    0.0079712    0.1485755
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                 0.0170413   -0.0151658    0.0492485
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.0430598   -0.0737148   -0.0124049
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                 0.0271491    0.0060009    0.0482973
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                 0.1110487    0.0787736    0.1433239
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                 0.0733733    0.0538119    0.0929346
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.0569820   -0.0751897   -0.0387743
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                 0.2128158    0.1568952    0.2687364
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                 0.0823401    0.0498179    0.1148622
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                 0.0244620    0.0048828    0.0440412
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.0114407   -0.0258105    0.0029292
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  NA                -0.1323495   -0.1589977   -0.1057012
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  NA                 0.1137470   -0.0038916    0.2313855
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                -0.0539223   -0.1038400   -0.0040046
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                -0.0856049   -0.1146295   -0.0565804
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                -0.1155592   -0.1410799   -0.0900384
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  NA                -0.1026367   -0.1195530   -0.0857204
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  NA                 0.0079498   -0.0243301    0.0402298
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                -0.0149879   -0.0314547    0.0014788
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0485357   -0.0584944   -0.0385771
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0679240   -0.0773985   -0.0584494
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0267987   -0.0405223   -0.0130751
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                 0.1277141    0.1118113    0.1436168
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                 0.0238966    0.0137485    0.0340446
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                -0.0170313   -0.0236663   -0.0103963
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                -0.0466439   -0.0560994   -0.0371884
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0341617   -0.0579419   -0.0103814
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.1007098    0.0330117    0.1684079
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                 0.0244502   -0.0074530    0.0563534
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                -0.0069402   -0.0360364    0.0221560
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0307521   -0.0563783   -0.0051260
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                -0.0092557   -0.0356990    0.0171875
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                 0.0935574    0.0066307    0.1804840
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                 0.0441219   -0.0093753    0.0976191
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                 0.0114295   -0.0232010    0.0460599
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                -0.1000972   -0.1621804   -0.0380139
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                 0.0062426   -0.1213073    0.1337925
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                -0.0979785   -0.1620807   -0.0338762
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                -0.1014088   -0.1365348   -0.0662828
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                -0.1013707   -0.1311552   -0.0715863
6-12 months    ki1000108-IRC              INDIA                          >=0                  NA                -0.0472309   -0.0723777   -0.0220841
6-12 months    ki1000108-IRC              INDIA                          <-3                  NA                -0.0180347   -0.1119074    0.0758379
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              NA                 0.0067941   -0.0325460    0.0461342
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              NA                -0.0123594   -0.0351110    0.0103921
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               NA                -0.0380551   -0.0603106   -0.0157997
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                -0.0938146   -0.1120685   -0.0755607
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                -0.0346522   -0.0733254    0.0040210
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                -0.0663606   -0.0903225   -0.0423987
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                -0.0864628   -0.1029934   -0.0699321
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                -0.0983446   -0.1117351   -0.0849540
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.0473662   -0.0666575   -0.0280749
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                -0.0381202   -0.0804491    0.0042087
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                -0.0165501   -0.0351550    0.0020549
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                -0.0331487   -0.0444906   -0.0218068
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.0300058   -0.0439047   -0.0161070
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.0627342   -0.0758575   -0.0496109
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                 0.0608863   -0.0713677    0.1931403
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.0410023   -0.1127871    0.0307825
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.0402302   -0.0666124   -0.0138481
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0638133   -0.0787278   -0.0488987
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.0626302   -0.0810215   -0.0442389
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                 0.0025560   -0.0624387    0.0675506
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                -0.0560565   -0.0840436   -0.0280693
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                -0.0601616   -0.0738601   -0.0464631
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.0638462   -0.0769582   -0.0507342
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                 0.0244998    0.0096577    0.0393420
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                 0.1067087    0.0774148    0.1360025
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                 0.0643604    0.0445749    0.0841459
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.0674641   -0.0776457   -0.0572824
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                 0.0332143    0.0041567    0.0622718
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                -0.0187723   -0.0348728   -0.0026717
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                -0.0425144   -0.0520252   -0.0330036
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.0565662   -0.0634416   -0.0496907
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  NA                -0.1189054   -0.1341116   -0.1036992
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  NA                -0.0454518   -0.1200814    0.0291779
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                -0.0785857   -0.1059497   -0.0512217
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                -0.1065471   -0.1206502   -0.0924441
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                -0.1143201   -0.1275879   -0.1010523
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  NA                -0.0961782   -0.1064885   -0.0858680
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  NA                -0.0504737   -0.0725062   -0.0284413
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                -0.0843483   -0.0951530   -0.0735437
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0895770   -0.0956100   -0.0835440
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0968130   -0.1027202   -0.0909057
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                -0.0998914   -0.1106264   -0.0891564
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                -0.0513320   -0.0874434   -0.0152205
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                -0.0825386   -0.1031227   -0.0619545
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                -0.1036313   -0.1145413   -0.0927213
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                -0.1023656   -0.1098916   -0.0948396
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0828822   -0.0919987   -0.0737657
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                -0.0332363   -0.0422143   -0.0242584
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                -0.0679905   -0.0736275   -0.0623535
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                -0.0789902   -0.0830849   -0.0748954
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                -0.0876533   -0.0934195   -0.0818872
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0411292   -0.0506206   -0.0316377
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.0097346   -0.0080288    0.0274979
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                -0.0210900   -0.0348424   -0.0073376
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                -0.0403363   -0.0479436   -0.0327290
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0525712   -0.0610002   -0.0441422
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                 0.0002976   -0.0130735    0.0136688
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                -0.0213948   -0.0768390    0.0340494
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                 0.0163458   -0.0248455    0.0575372
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                -0.0072287   -0.0265146    0.0120572
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  NA                -0.0107253   -0.0215991    0.0001485
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  NA                 0.0034263   -0.0320998    0.0389523
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              NA                -0.0118243   -0.0237932    0.0001447
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              NA                -0.0107357   -0.0203487   -0.0011227
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               NA                -0.0085285   -0.0174983    0.0004413
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                -0.0669119   -0.0896180   -0.0442059
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                 0.0098370   -0.0288130    0.0484870
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                -0.0081398   -0.0449723    0.0286927
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                -0.0396389   -0.0587794   -0.0204983
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                -0.0515923   -0.0674954   -0.0356892
12-24 months   ki1000108-IRC              INDIA                          >=0                  NA                -0.0241032   -0.0450621   -0.0031444
12-24 months   ki1000108-IRC              INDIA                          <-3                  NA                -0.0251992   -0.0728197    0.0224213
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              NA                -0.0482573   -0.0703990   -0.0261157
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              NA                -0.0236287   -0.0356344   -0.0116230
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               NA                -0.0375610   -0.0484200   -0.0267021
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.0213438   -0.0324681   -0.0102195
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                 0.0143666   -0.0056558    0.0343889
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                 0.0058261   -0.0037689    0.0154212
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                -0.0025287   -0.0090435    0.0039862
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.0122046   -0.0191914   -0.0052178
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.0298311   -0.0376081   -0.0220541
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                 0.0323884    0.0073591    0.0574176
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                -0.0129549   -0.0274607    0.0015508
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                -0.0123372   -0.0189901   -0.0056844
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.0227142   -0.0292374   -0.0161910
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                -0.0469167   -0.0681014   -0.0257319
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                -0.0380946   -0.0720255   -0.0041638
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                -0.0360305   -0.0569792   -0.0150818
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.0791792   -0.1105783   -0.0477800
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                -0.0415979   -0.0655946   -0.0176012
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                -0.0224455   -0.0456862    0.0007951
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                -0.0465337   -0.0620257   -0.0310416
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.0606898   -0.0754480   -0.0459315
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  NA                -0.0387104   -0.0470369   -0.0303838
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  NA                -0.0047083   -0.0410237    0.0316070
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                -0.0278023   -0.0437511   -0.0118536
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                -0.0278085   -0.0359215   -0.0196956
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                -0.0350081   -0.0418244   -0.0281918
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                -0.0379245   -0.0428685   -0.0329805
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                -0.0240440   -0.0338374   -0.0142506
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                -0.0288588   -0.0341041   -0.0236136
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0344027   -0.0373044   -0.0315011
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0370416   -0.0397218   -0.0343613
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                -0.0693975   -0.0748669   -0.0639281
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                -0.0464753   -0.0703739   -0.0225767
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                -0.0538795   -0.0636013   -0.0441577
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                -0.0479073   -0.0532734   -0.0425412
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                -0.0583716   -0.0619831   -0.0547601
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0263118   -0.0319775   -0.0206461
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                -0.0007084   -0.0066414    0.0052246
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                -0.0107796   -0.0145857   -0.0069734
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                -0.0209636   -0.0236310   -0.0182962
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                -0.0282221   -0.0320332   -0.0244110
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0189981   -0.0234062   -0.0145901
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.0034323   -0.0028231    0.0096876
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                -0.0084545   -0.0139710   -0.0029379
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                -0.0134714   -0.0169558   -0.0099870
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0186717   -0.0223140   -0.0150294


### Parameter: E(Y)


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.1928587    0.1409027    0.2448147
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0569256   -0.1060833   -0.0077680
0-3 months     ki1000108-IRC              INDIA                          NA                   NA                -0.2553695   -0.3111437   -0.1995952
0-3 months     ki1000109-EE               PAKISTAN                       NA                   NA                -0.3982116   -0.4408289   -0.3555943
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                 0.0123467   -0.0036133    0.0283068
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.1220821   -0.1402761   -0.1038881
0-3 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.2841893   -0.3081236   -0.2602550
0-3 months     ki1119695-PROBIT           BELARUS                        NA                   NA                -0.4375900   -0.4969173   -0.3782626
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.1428175   -0.1532252   -0.1324098
0-3 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0623308   -0.0693022   -0.0553593
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                 0.0704025    0.0654539    0.0753510
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                 0.0673143    0.0523756    0.0822531
3-6 months     ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0604904    0.0239698    0.0970111
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0757969   -0.1215239   -0.0300698
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0979485   -0.1465278   -0.0493691
3-6 months     ki1000108-IRC              INDIA                          NA                   NA                -0.0507703   -0.0811159   -0.0204248
3-6 months     ki1000109-EE               PAKISTAN                       NA                   NA                 0.0691547    0.0408245    0.0974850
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0134541   -0.0340772    0.0071691
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                 0.0267740    0.0099602    0.0435879
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0845789   -0.1013248   -0.0678330
3-6 months     ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0251449   -0.0446906   -0.0055991
3-6 months     ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0470780    0.0278572    0.0662989
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0008729   -0.0102096    0.0084638
3-6 months     ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1040917   -0.1191397   -0.0890438
3-6 months     ki1135781-COHORTS          INDIA                          NA                   NA                -0.0555469   -0.0614231   -0.0496706
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0036152   -0.0085070    0.0012766
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0090848   -0.0230936    0.0049240
6-12 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                 0.0065644   -0.0129183    0.0260472
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0974482   -0.1183152   -0.0765813
6-12 months    ki1000108-IRC              INDIA                          NA                   NA                -0.0260832   -0.0391642   -0.0130021
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                -0.0858264   -0.0904513   -0.0812015
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0315658   -0.0388594   -0.0242722
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                -0.0589729   -0.0682024   -0.0497434
6-12 months    ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0612381   -0.0693946   -0.0530815
6-12 months    ki1119695-PROBIT           BELARUS                        NA                   NA                 0.0422873    0.0257506    0.0588239
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0495489   -0.0542063   -0.0448916
6-12 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.1098308   -0.1176637   -0.1019979
6-12 months    ki1135781-COHORTS          INDIA                          NA                   NA                -0.0911438   -0.0947842   -0.0875035
6-12 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.1000548   -0.1052112   -0.0948984
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0749047   -0.0777434   -0.0720659
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0378466   -0.0423937   -0.0332995
12-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                -0.0013016   -0.0119070    0.0093038
12-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                -0.0096331   -0.0148638   -0.0044025
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                -0.0454830   -0.0557891   -0.0351769
12-24 months   ki1000108-IRC              INDIA                          NA                   NA                -0.0318696   -0.0390348   -0.0247044
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                -0.0057326   -0.0097260   -0.0017391
12-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                -0.0202558   -0.0242097   -0.0163019
12-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                -0.0430497   -0.0603171   -0.0257823
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                -0.0519598   -0.0611733   -0.0427464
12-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                -0.0329184   -0.0371906   -0.0286462
12-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                -0.0348323   -0.0365407   -0.0331239
12-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                -0.0577892   -0.0603412   -0.0552372
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                -0.0188556   -0.0207089   -0.0170024
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                -0.0141719   -0.0162374   -0.0121065


### Parameter: ATE


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.3094205    0.1599751    0.4588658
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0               -0.0901534   -0.2772558    0.0969490
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.0808137   -0.2136423    0.0520148
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0775721   -0.0439416    0.1990857
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.1606927    0.0385131    0.2828723
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0582949   -0.0543438    0.1709336
0-3 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <-3                  >=0               -0.1573552   -0.4315613    0.1168510
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.2665742   -0.4884805   -0.0446679
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              >=0               -0.0943265   -0.2809237    0.0922706
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0025348   -0.1877945    0.1827249
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.1397232   -0.0317622    0.3112087
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.1301701   -0.0133120    0.2736522
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.1075079   -0.0278418    0.2428577
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.0543155   -0.0843027    0.1929337
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.1420341    0.0718230    0.2122451
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.1000398   -0.0053976    0.2054773
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0954020   -0.0020899    0.1928938
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                0.0434546   -0.0554705    0.1423797
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.0023731   -0.1012522    0.1059984
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0081520   -0.0568921    0.0731961
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0               -0.0019162   -0.0539650    0.0501325
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0               -0.0201043   -0.0748981    0.0346896
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.3313175    0.1163825    0.5462524
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.1194611    0.0049185    0.2340036
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.1351471    0.0704156    0.1998786
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0805311    0.0225066    0.1385556
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.0671087    0.0242096    0.1100078
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0428596    0.0206009    0.0651183
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0               -0.0722559   -0.1563628    0.0118509
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0               -0.0254782   -0.0689508    0.0179943
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0               -0.0495071   -0.0794477   -0.0195666
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0               -0.0144810   -0.0411266    0.0121647
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1642691    0.1215550    0.2069832
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.1566721    0.1275578    0.1857863
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0922320    0.0681858    0.1162782
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0547663    0.0312380    0.0782947
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.2424451    0.2179245    0.2669656
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.1757575    0.1536112    0.1979038
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.1265749    0.1050992    0.1480505
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.0630533    0.0415491    0.0845575
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.2623985    0.1685802    0.3562167
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.1675439    0.0942173    0.2408705
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.1144703    0.0433251    0.1856154
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0187256   -0.0556801    0.0931313
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.1611954    0.0463781    0.2760127
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.0932062   -0.0380745    0.2244870
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0212657   -0.0629073    0.1054387
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.1072922   -0.1331243    0.3477086
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0119416   -0.1361417    0.1600250
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0845533   -0.0139784    0.1830849
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.0580188   -0.2207813    0.3368190
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.2516579    0.0737206    0.4295952
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0               -0.0215629   -0.1657776    0.1226518
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0022792   -0.1334437    0.1380020
3-6 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <-3                  >=0                0.1908165    0.0155558    0.3660772
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              >=0                0.2465826    0.1227462    0.3704190
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0964205    0.0096843    0.1831567
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               >=0                0.0631761   -0.0194023    0.1457546
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.1788619    0.0616594    0.2960644
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.1214955    0.0249798    0.2180111
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.0881170   -0.0043378    0.1805718
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.0892731   -0.0076159    0.1861620
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.1651265    0.0701498    0.2601032
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0823599    0.0138475    0.1508724
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0331944   -0.0395167    0.1059056
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                0.0181312   -0.0553492    0.0916115
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.2440332    0.1458529    0.3422135
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.1317885    0.0725501    0.1910268
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.1200772    0.0705550    0.1695995
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0659318    0.0170874    0.1147762
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.1559357   -0.0739906    0.3858619
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.1226628    0.0040170    0.2413085
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0253124   -0.0282851    0.0789100
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0531391    0.0169870    0.0892913
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.1082356   -0.1066977    0.3231690
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.1554190    0.0721205    0.2387175
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.0941870    0.0391093    0.1492647
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0340858   -0.0200989    0.0882705
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.0838996    0.0543702    0.1134291
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0462242    0.0311080    0.0613404
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.2697978    0.2109877    0.3286079
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.1393220    0.1020499    0.1765942
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0814440    0.0547070    0.1081810
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0455413    0.0223463    0.0687364
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.2460964    0.1254773    0.3667155
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0784272    0.0218417    0.1350126
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0467445    0.0073420    0.0861470
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0167903   -0.0201074    0.0536880
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1105865    0.0741426    0.1470304
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.0876488    0.0640413    0.1112563
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0541010    0.0344710    0.0737310
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0347127    0.0153239    0.0541016
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.1545127    0.1336184    0.1754071
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0506953    0.0336985    0.0676920
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.0097674   -0.0052505    0.0247854
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0198452   -0.0364406   -0.0032497
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.1348715    0.0631241    0.2066188
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0586119    0.0184046    0.0988191
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0272215   -0.0103878    0.0648308
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0034095   -0.0316396    0.0384587
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.1028131    0.0119534    0.1936728
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.0533777   -0.0062981    0.1130534
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0206852   -0.0228867    0.0642571
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.1063398   -0.0355169    0.2481964
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.0021187   -0.0871193    0.0913567
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0               -0.0013116   -0.0726430    0.0700197
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0               -0.0012736   -0.0701317    0.0675845
6-12 months    ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <-3                  >=0                0.0291961   -0.0679864    0.1263786
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              >=0                0.0540250    0.0073345    0.1007155
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0348714    0.0009599    0.0687830
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               >=0                0.0091757   -0.0244050    0.0427565
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.0591624    0.0131889    0.1051359
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0274540   -0.0036489    0.0585569
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0073518   -0.0184683    0.0331720
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0               -0.0045300   -0.0263164    0.0172564
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.0092460   -0.0372717    0.0557636
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0308161    0.0040150    0.0576172
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.0142175   -0.0081609    0.0365959
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0173603   -0.0064164    0.0411371
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.1236205   -0.0092830    0.2565240
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0217319   -0.0512426    0.0947064
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0225040   -0.0069619    0.0519698
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0010791   -0.0209453    0.0187871
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0651862   -0.0023604    0.1327328
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.0065737   -0.0269154    0.0400628
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.0024686   -0.0204637    0.0254008
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0               -0.0012160   -0.0238028    0.0213708
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.0822089    0.0597524    0.1046653
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0398606    0.0301033    0.0496179
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.1006783    0.0698886    0.1314680
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.0486918    0.0296420    0.0677415
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0249497    0.0110170    0.0388824
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0108979   -0.0013877    0.0231835
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.0734536   -0.0027094    0.1496167
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0403197    0.0090144    0.0716250
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0123583   -0.0083812    0.0330977
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0045853   -0.0155954    0.0247661
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                0.0457045    0.0213790    0.0700300
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.0118299   -0.0031047    0.0267645
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0066012   -0.0053444    0.0185469
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0               -0.0006347   -0.0125174    0.0112479
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                0.0485594    0.0108861    0.0862327
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                0.0173528   -0.0058624    0.0405679
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0               -0.0037399   -0.0190457    0.0115659
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0               -0.0024743   -0.0155846    0.0106361
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.0496459    0.0371999    0.0620919
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0148917    0.0043874    0.0253960
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.0038920   -0.0060567    0.0138408
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0047711   -0.0155044    0.0059622
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0508637    0.0306559    0.0710715
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0200392    0.0034787    0.0365996
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0007929   -0.0110513    0.0126371
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0               -0.0114420   -0.0238777    0.0009936
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0               -0.0216924   -0.0787262    0.0353413
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.0160482   -0.0272591    0.0593554
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.0075264   -0.0309941    0.0159413
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  >=0                0.0141516   -0.0230013    0.0513045
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              >=0               -0.0010989   -0.0172698    0.0150719
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              >=0               -0.0000104   -0.0145241    0.0145034
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               >=0                0.0021968   -0.0118991    0.0162928
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.0767490    0.0319228    0.1215752
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.0587721    0.0155032    0.1020410
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0                0.0272731   -0.0024241    0.0569703
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0153196   -0.0124017    0.0430410
12-24 months   ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <-3                  >=0               -0.0010960   -0.0531247    0.0509328
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.0241541   -0.0546422    0.0063340
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0004745   -0.0236794    0.0246284
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0134578   -0.0370627    0.0101471
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.0357104    0.0128052    0.0586155
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0271699    0.0124793    0.0418606
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.0188151    0.0059235    0.0317067
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0091392   -0.0039972    0.0222756
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0622195    0.0360099    0.0884291
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.0168762    0.0004172    0.0333351
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.0174939    0.0072595    0.0277283
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0071169   -0.0030337    0.0172674
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.0088220   -0.0224201    0.0400641
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0108862   -0.0139752    0.0357476
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.0375813   -0.0019377    0.0771002
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.0567336    0.0176692    0.0957981
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0326455   -0.0023675    0.0676584
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0184894   -0.0162051    0.0531839
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.0340020   -0.0032557    0.0712598
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0109080   -0.0070835    0.0288995
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0109018   -0.0007236    0.0225273
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0037023   -0.0070585    0.0144630
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                0.0138805    0.0029099    0.0248511
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.0090657    0.0018576    0.0162737
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0035218   -0.0022108    0.0092544
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0008829   -0.0047409    0.0065067
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                0.0229223   -0.0015942    0.0474387
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                0.0155180    0.0043633    0.0266728
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                0.0214902    0.0138281    0.0291524
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                0.0110259    0.0044717    0.0175801
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.0256034    0.0177330    0.0334737
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0155322    0.0086587    0.0224058
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.0053482   -0.0008572    0.0115535
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0019103   -0.0086620    0.0048414
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0224304    0.0148971    0.0299637
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0105437    0.0035393    0.0175481
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0055267    0.0000436    0.0110098
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0003264   -0.0053022    0.0059550
