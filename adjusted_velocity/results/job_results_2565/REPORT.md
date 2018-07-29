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

**Intervention Variable:** birthwt

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* W_mhtcm
* vagbrth
* single
* brthmon
* W_parity
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_W_mhtcm
* delta_vagbrth
* delta_single
* delta_brthmon
* delta_W_parity
* delta_impsan

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



```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack

## Warning in private$.train(subsetted_task, trained_sublearners): Lrnr_mean
## failed with message: level sets of factors are different. It will be
## removed from the stack
```

```
## Warning in private$.train(subsetted_task, trained_sublearners): The
## following learners failed for one or more folds and will be dropped from
## all folds: Lrnr_mean
```




# Results Detail

## Results Plots
![](/tmp/c131ae0e-a7ad-412e-8cc9-2e845e827eda/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/c131ae0e-a7ad-412e-8cc9-2e845e827eda/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                4.1198736   4.0291535   4.2105937
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                5.8427051   5.7835005   5.9019097
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                3.2626815   3.1685724   3.3567907
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                3.8319843   3.7313327   3.9326358
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                2.9961676   2.8695763   3.1227589
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                2.2209161   2.1679611   2.2738711
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                3.1271106   3.0395784   3.2146428
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                3.1090427   2.9855531   3.2325322
0-3 months     ki1000108-IRC              INDIA                          >=0                  NA                3.3791541   3.0827365   3.6755716
0-3 months     ki1000108-IRC              INDIA                          <-3                  NA                2.9483327   2.5943012   3.3023642
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              NA                2.7361964   2.4712565   3.0011364
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              NA                3.1043324   2.9249187   3.2837460
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               NA                3.3158859   3.1395362   3.4922357
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  NA                2.6010076   2.4158626   2.7861525
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  NA                2.6770219   2.4263836   2.9276601
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                2.6716909   2.5085460   2.8348358
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                2.7113148   2.5649596   2.8576700
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                2.6325956   2.4719645   2.7932266
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                3.5750169   3.4677565   3.6822773
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                3.6824308   3.5958623   3.7689994
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                3.6486608   3.5724064   3.7249153
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                3.6459733   3.6138464   3.6781002
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                3.5787731   3.5249876   3.6325586
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                3.4068070   3.3328541   3.4807600
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                3.2051985   3.1121095   3.2982874
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                3.3061020   3.2205159   3.3916882
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                3.2932794   3.2349344   3.3516245
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                3.3063586   3.2390713   3.3736459
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                3.0560292   2.9821673   3.1298910
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                3.4187043   3.3206238   3.5167849
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                3.3582259   3.2276658   3.4887859
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                3.2155830   3.1391577   3.2920082
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                3.1634222   3.0987935   3.2280509
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                2.7880878   2.6722579   2.9039178
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                2.9482022   2.8184495   3.0779548
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                2.9057853   2.7945229   3.0170478
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                3.4572878   3.4174804   3.4970953
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                3.0411501   2.9344807   3.1478194
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                3.3066496   3.2428845   3.3704148
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                3.2897033   3.2508159   3.3285907
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                3.3969977   3.3663592   3.4276362
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  NA                3.4717416   3.4334510   3.5100323
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  NA                3.6066342   3.5458456   3.6674228
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                3.6452219   3.6078755   3.6825683
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                3.5566839   3.5334750   3.5798928
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                3.5231040   3.5021274   3.5440807
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                3.5149576   3.4827655   3.5471497
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                3.8620518   3.8342667   3.8898368
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                3.7931043   3.7750524   3.8111561
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                3.7215763   3.7079252   3.7352273
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                3.6191473   3.6023417   3.6359530
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                3.4731716   3.3342144   3.6121289
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                3.8656335   3.7444352   3.9868318
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                3.7291597   3.6681442   3.7901752
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                3.6668553   3.6192470   3.7144636
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                3.5012201   3.4403949   3.5620453
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                2.1098536   2.0282925   2.1914148
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                3.2299446   3.1676459   3.2922433
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                2.2869622   2.1691457   2.4047787
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                1.9291639   1.8492165   2.0091113
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                2.0043827   1.9092994   2.0994660
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                2.9455899   2.8963075   2.9948723
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                2.6101737   2.5094867   2.7108607
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                2.4624703   2.3495668   2.5753738
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                1.7852249   1.5409386   2.0295111
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                1.8058966   1.2615623   2.3502308
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                2.2498043   1.9568003   2.5428084
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                1.7145893   1.5211982   1.9079804
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                1.7782554   1.6187529   1.9377580
3-6 months     ki1000108-IRC              INDIA                          >=0                  NA                1.7390046   1.5962071   1.8818022
3-6 months     ki1000108-IRC              INDIA                          <-3                  NA                2.0085517   1.6623649   2.3547385
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              NA                2.1780966   1.9468387   2.4093545
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              NA                1.8891718   1.7752026   2.0031411
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               NA                1.8517481   1.7522866   1.9512096
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  NA                1.8457534   1.6876365   2.0038702
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  NA                2.1782589   2.0041145   2.3524032
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                2.0427734   1.9221518   2.1633951
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                2.0089848   1.9045725   2.1133972
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                2.0186821   1.8996755   2.1376886
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                1.9370348   1.8732453   2.0008243
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                2.2110719   2.0647450   2.3573988
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                2.0311394   1.9556153   2.1066635
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                1.9335612   1.8421539   2.0249686
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                1.9269119   1.8413889   2.0124348
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                1.7764890   1.7067471   1.8462310
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                2.3098978   2.2108329   2.4089627
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                2.0090082   1.9305840   2.0874325
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                2.0339581   1.9769482   2.0909679
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                1.9427971   1.8873621   1.9982321
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                1.7398509   1.6914587   1.7882430
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                2.1720794   2.0383818   2.3057770
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                1.8017868   1.6639303   1.9396432
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                1.7295589   1.6413282   1.8177897
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                1.8365114   1.7812311   1.8917916
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                1.9029975   1.8227137   1.9832813
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                2.3890122   2.3092124   2.4688119
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                2.2758302   2.1862828   2.3653777
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                2.0853284   2.0279768   2.1426800
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                1.9559282   1.8959034   2.0159530
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                2.0513423   2.0072690   2.0954156
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                2.3052961   2.2447517   2.3658405
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                2.1579518   2.1178975   2.1980061
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                1.8770761   1.8405913   1.9135609
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                2.3611736   2.2841178   2.4382295
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                2.1281531   2.0692503   2.1870558
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                2.0099563   1.9703561   2.0495565
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                1.9573124   1.9275343   1.9870905
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  NA                1.7048821   1.6614279   1.7483363
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  NA                2.6009414   2.5572982   2.6445845
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                1.8137874   1.7604496   1.8671253
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                1.7828360   1.7356957   1.8299763
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                1.7174152   1.6742824   1.7605481
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  NA                1.8158591   1.7824365   1.8492817
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  NA                1.9466525   1.8896888   2.0036163
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                1.9328801   1.9008108   1.9649494
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                1.8801634   1.8593259   1.9010010
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                1.8623929   1.8425161   1.8822697
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                1.8623449   1.8349256   1.8897643
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                2.1684152   2.1404851   2.1963453
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                1.9609631   1.9405521   1.9813741
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                1.8936276   1.8795568   1.9076984
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                1.8406838   1.8218642   1.8595035
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                1.8687209   1.8163411   1.9211007
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                2.0754202   1.9395115   2.2113288
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                1.9409442   1.8721155   2.0097730
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                1.8985618   1.8358953   1.9612282
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                1.8657440   1.8106537   1.9208344
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                1.3796802   1.3303690   1.4289914
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                2.3272841   2.2835148   2.3710535
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                1.3634649   1.3284481   1.3984816
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                1.3976875   1.3546601   1.4407149
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                1.0648304   0.9391375   1.1905234
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                1.2884855   1.0661520   1.5108190
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                1.0220055   0.8928155   1.1511956
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                1.0525308   0.9742311   1.1308305
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                1.0652954   0.9984664   1.1321245
6-12 months    ki1000108-IRC              INDIA                          >=0                  NA                1.2233236   1.1713017   1.2753455
6-12 months    ki1000108-IRC              INDIA                          <-3                  NA                1.2308265   1.0302760   1.4313769
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              NA                1.3039361   1.2178366   1.3900355
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              NA                1.2578020   1.2073203   1.3082836
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               NA                1.2378616   1.1890801   1.2866430
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                1.1360680   1.1025688   1.1695671
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                1.1973421   1.1577780   1.2369062
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                1.1310114   1.0843779   1.1776449
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                1.0965658   1.0613255   1.1318060
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                1.0865780   1.0598634   1.1132926
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                1.1955086   1.1624793   1.2285379
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                1.1258588   1.0808841   1.1708336
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                1.2352589   1.2022338   1.2682840
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                1.2216573   1.1980805   1.2452342
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                1.2369223   1.2086697   1.2651749
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                1.1998897   1.1719944   1.2277850
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                1.6888535   1.6445669   1.7331401
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                1.0900120   1.0425940   1.1374301
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                1.2314484   1.1837162   1.2791806
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                1.1829387   1.1514685   1.2144089
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                1.1978954   1.1634352   1.2323555
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                1.2124661   1.1908577   1.2340744
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                1.0921191   1.0571192   1.1271190
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                1.1570823   1.1287221   1.1854425
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                1.1780584   1.1505446   1.2055721
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                1.4503099   1.4147053   1.4859145
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                1.5609887   1.5106612   1.6113163
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                1.4985972   1.4520692   1.5451253
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                1.1734898   1.1523535   1.1946261
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                1.3401500   1.2925689   1.3877311
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                1.2342871   1.2018106   1.2667637
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                1.1981110   1.1772944   1.2189275
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                1.1857999   1.1701974   1.2014025
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  NA                1.0241407   0.9935694   1.0547121
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  NA                1.3697497   1.3484627   1.3910367
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                1.0982201   1.0647806   1.1316596
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                1.0169810   0.9905913   1.0433708
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                1.0160206   0.9885664   1.0434748
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  NA                1.1187069   1.0968842   1.1405296
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  NA                1.1105729   1.0719084   1.1492374
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                1.0813933   1.0587906   1.1039960
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                1.0920116   1.0780800   1.1059433
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                1.0965511   1.0828385   1.1102636
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                1.0844467   1.0622100   1.1066833
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                1.1109213   1.0681425   1.1537002
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                1.0714106   1.0361771   1.1066441
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                1.0350061   1.0124985   1.0575138
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                1.0637453   1.0468615   1.0806291
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                1.1131069   1.0964080   1.1298059
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                1.1635170   1.1469037   1.1801302
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                1.1091827   1.0968400   1.1215254
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                1.1008248   1.0912424   1.1104071
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                1.0990303   1.0861184   1.1119422
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                1.2110401   1.1883054   1.2337747
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                1.2683415   1.2279710   1.3087121
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                1.2191513   1.1874833   1.2508194
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                1.1968046   1.1784255   1.2151836
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                1.1832190   1.1634905   1.2029474
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                1.0118354   0.9815307   1.0421401
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                1.0125688   0.9927462   1.0323913
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                1.3231901   1.2752298   1.3711503
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                1.0162487   0.9877217   1.0447757
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  NA                0.9264162   0.8956939   0.9571386
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  NA                0.9781852   0.9322035   1.0241668
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              NA                0.8857372   0.8484862   0.9229881
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              NA                0.8720945   0.8421994   0.9019897
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               NA                0.8994887   0.8724251   0.9265523
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                0.7062597   0.6486667   0.7638527
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                0.8719162   0.7769385   0.9668938
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                0.8002718   0.7062849   0.8942587
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                0.7430555   0.6934382   0.7926728
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                0.7302786   0.6890435   0.7715137
12-24 months   ki1000108-IRC              INDIA                          >=0                  NA                0.8944178   0.8387201   0.9501156
12-24 months   ki1000108-IRC              INDIA                          <-3                  NA                0.8152109   0.7240665   0.9063552
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              NA                0.7555801   0.7086630   0.8024971
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              NA                0.8373785   0.8057856   0.8689713
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               NA                0.8237478   0.7942103   0.8532853
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                0.8623970   0.8362593   0.8885347
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                0.9363116   0.9176097   0.9550135
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                0.8787317   0.8563509   0.9011126
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                0.8862711   0.8683269   0.9042153
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                0.8702435   0.8506953   0.8897917
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                0.8337472   0.8150385   0.8524560
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                0.8526233   0.8427026   0.8625440
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                0.8054290   0.7820881   0.8287699
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                0.8486096   0.8322394   0.8649799
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                0.8412633   0.8246361   0.8578905
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                0.8667530   0.8066684   0.9268375
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                0.9212969   0.8457857   0.9968082
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                0.8723406   0.8201859   0.9244953
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                0.6574252   0.5938402   0.7210101
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                0.8175751   0.7858338   0.8493164
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                0.7849975   0.7319912   0.8380038
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                0.7294663   0.6896369   0.7692957
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                0.6973490   0.6574316   0.7372663
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  NA                0.7744788   0.7532709   0.7956866
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  NA                1.1701260   1.1542958   1.1859562
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                0.7758176   0.7467962   0.8048390
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                0.7807475   0.7597294   0.8017656
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                0.7781076   0.7589987   0.7972165
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                0.8595915   0.8461938   0.8729892
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                0.7964323   0.7739402   0.8189245
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                0.8121236   0.7984247   0.8258225
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                0.8172494   0.8088601   0.8256387
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                0.8351125   0.8273573   0.8428676
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                0.6911592   0.6770163   0.7053021
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                0.5962064   0.5724212   0.6199916
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                0.6640394   0.6457189   0.6823598
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                0.7116260   0.6982222   0.7250298
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                0.7083219   0.6984108   0.7182331
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                0.8043193   0.7919983   0.8166404
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                0.7973205   0.7856491   0.8089919
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                0.8017613   0.7917899   0.8117326
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                0.7951877   0.7877601   0.8026152
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                0.7881611   0.7792632   0.7970591
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                0.8507634   0.8386531   0.8628738
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                0.8576620   0.8397575   0.8755665
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                0.8458395   0.8315987   0.8600804
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                0.8508885   0.8405267   0.8612503
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                0.8535207   0.8426758   0.8643655


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
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                1.7228315    1.6207800    1.8248831
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0               -0.8571920   -0.9804677   -0.7339164
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.2878893   -0.4085444   -0.1672342
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.7752515   -0.9181417   -0.6323613
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.1309431   -0.0140073    0.2758934
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.1128751   -0.0875515    0.3133017
0-3 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <-3                  >=0               -0.4308213   -0.8912897    0.0296471
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.6429576   -1.0388857   -0.2470295
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              >=0               -0.2748217   -0.6196177    0.0699743
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0632681   -0.4071169    0.2805806
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.0760143   -0.2353674    0.3873959
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.0706833   -0.1762615    0.3176281
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.1103073   -0.1254526    0.3460671
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.0315880   -0.2137377    0.2769137
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.1074139    0.0244593    0.1903686
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0736439   -0.0569815    0.2042693
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0709564   -0.0472282    0.1891409
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                0.0037562   -0.1333079    0.1408202
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0               -0.2016086   -0.3204778   -0.0827394
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0               -0.1007050   -0.2137788    0.0123688
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0               -0.1135276   -0.2077538   -0.0193014
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0               -0.1004485   -0.2004974   -0.0003996
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.3626751    0.2412244    0.4841258
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.3021967    0.1539309    0.4504625
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.1595538    0.0553555    0.2637521
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.1073930    0.0124234    0.2023626
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.1601144    0.0755337    0.2446950
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.1176975    0.0740826    0.1613125
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0               -0.4161378   -0.5298902   -0.3023854
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0               -0.1506382   -0.2255523   -0.0757241
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0               -0.1675845   -0.2228421   -0.1123270
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0               -0.0602901   -0.1100045   -0.0105758
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1348926    0.0632045    0.2065807
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.1734803    0.1203216    0.2266389
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0849423    0.0405011    0.1293836
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0513624    0.0080582    0.0946666
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.3470942    0.3058953    0.3882931
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.2781467    0.2421008    0.3141926
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.2066187    0.1720008    0.2412366
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.1041897    0.0686632    0.1397162
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.3924618    0.2078289    0.5770948
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.2559881    0.1055445    0.4064318
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.1936837    0.0482278    0.3391395
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0280485   -0.1245264    0.1806235
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                1.1200909    1.0196138    1.2205681
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.1771086    0.0362757    0.3179414
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.1806897   -0.2890641   -0.0723154
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.9412072    0.8316678    1.0507466
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.6057910    0.4641753    0.7474067
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.4580876    0.2975857    0.6185895
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.0206717   -0.5759652    0.6173086
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.4645795    0.0830993    0.8460597
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0               -0.0706356   -0.3822056    0.2409345
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0               -0.0069695   -0.2987173    0.2847784
3-6 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <-3                  >=0                0.2695471   -0.1050080    0.6441022
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              >=0                0.4390920    0.1672789    0.7109051
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              >=0                0.1501672   -0.0325221    0.3328564
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               >=0                0.1127434   -0.0612396    0.2867265
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.3325055    0.0974107    0.5676003
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.1970201   -0.0017115    0.3957517
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.1632315   -0.0262438    0.3527068
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.1729287   -0.0249019    0.3707593
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.2740371    0.1390557    0.4090185
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0941046   -0.0231874    0.2113966
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0               -0.0034736   -0.1350307    0.1280835
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0               -0.0101230   -0.1385775    0.1183316
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.5334088    0.4124633    0.6543543
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.2325192    0.1278986    0.3371398
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.2574690    0.1679052    0.3470328
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.1663081    0.0778140    0.2548021
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.4322286    0.2905699    0.5738872
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0619359   -0.0836441    0.2075160
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.0102919   -0.1096835    0.0890996
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0966605    0.0245642    0.1687568
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.4860147    0.3744962    0.5975332
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.3728327    0.2538028    0.4918627
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.1823310    0.0851962    0.2794657
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0529307   -0.0454658    0.1513273
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.2539538    0.1956756    0.3122320
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.1066095    0.0733812    0.1398378
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.4840975    0.3989307    0.5692644
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.2510769    0.1820565    0.3200974
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.1328802    0.0793782    0.1863823
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0802363    0.0335041    0.1269685
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.8960592    0.8354374    0.9566810
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.1089053    0.0423775    0.1754331
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0779539    0.0175174    0.1383904
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0125331   -0.0454260    0.0704922
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1307934    0.0648154    0.1967714
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.1170210    0.0708765    0.1631655
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0643043    0.0251257    0.1034830
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0465338    0.0078245    0.0852431
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.3060703    0.2679463    0.3441942
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0986181    0.0652006    0.1320357
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.0312827    0.0008151    0.0617503
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0216611   -0.0547481    0.0114259
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.2066993    0.0613926    0.3520059
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0722233   -0.0146011    0.1590478
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0298409   -0.0520052    0.1116869
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0               -0.0029769   -0.0787737    0.0728199
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.9476039    0.8798226    1.0153853
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0               -0.0162153   -0.0756524    0.0432217
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0180073   -0.0464492    0.0824638
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.2236551   -0.0293391    0.4766493
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0               -0.0428249   -0.2232371    0.1375873
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0               -0.0122997   -0.1596105    0.1350112
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0004650   -0.1408535    0.1417835
6-12 months    ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <-3                  >=0                0.0075029   -0.1994196    0.2144254
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              >=0                0.0806125   -0.0194997    0.1807247
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0344784   -0.0370779    0.1060347
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               >=0                0.0145380   -0.0560971    0.0851731
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.0612742    0.0011045    0.1214438
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0               -0.0050565   -0.0633954    0.0532823
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0               -0.0395022   -0.0913536    0.0123492
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0               -0.0494900   -0.0893661   -0.0096138
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0               -0.0696498   -0.1248190   -0.0144806
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0397503   -0.0060232    0.0855238
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.0261487   -0.0135445    0.0658419
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0414136   -0.0008754    0.0837027
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.4889638    0.4367678    0.5411598
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.1098777   -0.1641035   -0.0556518
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0315587   -0.0229933    0.0861106
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0169510   -0.0577588    0.0238568
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0145707   -0.0252005    0.0543420
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0               -0.1057762   -0.1540446   -0.0575079
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0               -0.0408131   -0.0843963    0.0027702
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0               -0.0198370   -0.0630490    0.0233750
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.1106788    0.0664782    0.1548795
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0482873    0.0255651    0.0710096
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.1666602    0.1146652    0.2186551
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.0607973    0.0221948    0.0993998
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0246211   -0.0048057    0.0540480
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0123101   -0.0137218    0.0383420
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.3456090    0.3097616    0.3814564
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0740793    0.0296246    0.1185341
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0               -0.0071597   -0.0458439    0.0315246
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0               -0.0081201   -0.0474767    0.0312364
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  >=0               -0.0081340   -0.0524431    0.0361752
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0               -0.0373136   -0.0686245   -0.0060026
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0               -0.0266953   -0.0524288   -0.0009618
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0               -0.0221558   -0.0477866    0.0034750
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                0.0264747   -0.0214608    0.0744101
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0               -0.0130361   -0.0544002    0.0283281
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0               -0.0494405   -0.0806894   -0.0181916
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0               -0.0207014   -0.0482019    0.0067992
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.0504100    0.0275659    0.0732542
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0               -0.0039242   -0.0241332    0.0162848
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0               -0.0122821   -0.0313734    0.0068091
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0140766   -0.0349860    0.0068328
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0573014    0.0114168    0.1031861
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0081113   -0.0303528    0.0465753
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0               -0.0142355   -0.0426874    0.0142163
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0               -0.0278211   -0.0571872    0.0015450
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.0007333   -0.0310920    0.0325586
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.3113547    0.2582859    0.3644235
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0044133   -0.0326551    0.0414817
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  >=0                0.0517689   -0.0032629    0.1068007
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              >=0               -0.0406791   -0.0887546    0.0073964
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              >=0               -0.0543217   -0.0967889   -0.0118545
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               >=0               -0.0269275   -0.0675646    0.0137096
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.1656565    0.0545853    0.2767277
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.0940121   -0.0161433    0.2041676
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0                0.0367958   -0.0391574    0.1127490
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0240189   -0.0467724    0.0948101
12-24 months   ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <-3                  >=0               -0.0792070   -0.1862304    0.0278164
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.1388378   -0.2115522   -0.0661233
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              >=0               -0.0570394   -0.1212230    0.0071443
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0706700   -0.1334851   -0.0078550
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.0739146    0.0417765    0.1060526
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0163347   -0.0180666    0.0507361
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.0238741   -0.0078214    0.0555696
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0078465   -0.0247851    0.0404782
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0188761   -0.0019449    0.0396971
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0               -0.0283182   -0.0577632    0.0011268
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.0148624   -0.0093765    0.0391013
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0075161   -0.0169609    0.0319930
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.0545440   -0.0139069    0.1229948
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0055876   -0.0562508    0.0674261
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.1601499    0.0892017    0.2310982
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.1275723    0.0450589    0.2100858
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0720412   -0.0026718    0.1467541
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0399238   -0.0348971    0.1147447
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.3956472    0.3692395    0.4220549
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0013389   -0.0345799    0.0372577
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0062687   -0.0235134    0.0360508
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0036288   -0.0248517    0.0321094
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0               -0.0631592   -0.0892523   -0.0370661
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0               -0.0474679   -0.0665127   -0.0284232
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0               -0.0423422   -0.0579982   -0.0266862
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0               -0.0244791   -0.0398266   -0.0091315
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0               -0.0949528   -0.1224324   -0.0674732
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0               -0.0271199   -0.0500521   -0.0041876
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                0.0204668    0.0013211    0.0396125
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                0.0171627    0.0003118    0.0340137
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0               -0.0069988   -0.0234904    0.0094928
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0               -0.0025581   -0.0184256    0.0133094
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0               -0.0091317   -0.0232438    0.0049805
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0161582   -0.0308892   -0.0014272
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0068986   -0.0143999    0.0281972
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0               -0.0049239   -0.0235019    0.0136541
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0001251   -0.0155318    0.0157819
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0027573   -0.0133298    0.0188443
