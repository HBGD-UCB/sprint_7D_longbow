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
![](/tmp/99ad0d12-9bd8-4b83-8d84-b48d70a0313b/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->



![](/tmp/99ad0d12-9bd8-4b83-8d84-b48d70a0313b/REPORT_files/figure-html/plot_ate-1.png)<!-- -->





## Results Table

### Parameter: TSM


agecat         studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
-------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-3 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                 0.1613074    0.1124585    0.2101562
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                 1.2610404    1.2360981    1.2859826
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                -0.3629811   -0.4181712   -0.3077909
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                -0.1219836   -0.1830613   -0.0609059
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.4054016   -0.4773118   -0.3334913
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.7403224   -0.7693077   -0.7113372
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.5830213   -0.6386185   -0.5274242
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.4451412   -0.5179347   -0.3723476
0-3 months     ki1000108-IRC              INDIA                          >=0                  NA                -0.1906891   -0.3492681   -0.0321101
0-3 months     ki1000108-IRC              INDIA                          <-3                  NA                -0.3225173   -0.5227737   -0.1222610
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              NA                -0.4529254   -0.5980001   -0.3078507
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              NA                -0.2845400   -0.3760558   -0.1930242
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               NA                -0.1969309   -0.2868777   -0.1069841
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  NA                -0.4814386   -0.5816131   -0.3812640
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  NA                -0.3413079   -0.4659949   -0.2166209
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                -0.3543718   -0.4375047   -0.2712389
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                -0.3792056   -0.4547701   -0.3036411
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                -0.4285026   -0.5089465   -0.3480586
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                -0.0452791   -0.1067454    0.0161871
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                 0.1131083    0.0740414    0.1521751
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                 0.0551347    0.0189359    0.0913334
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                 0.0385581    0.0172357    0.0598805
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                -0.0170817   -0.0419887    0.0078254
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.1129296   -0.1471541   -0.0787050
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                -0.0955535   -0.1392212   -0.0518857
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                -0.1030655   -0.1430398   -0.0630911
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                -0.1132002   -0.1405199   -0.0858804
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.1363463   -0.1672466   -0.1054459
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.3619068   -0.4000817   -0.3237319
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                 0.1073680    0.0594357    0.1553004
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                -0.1473684   -0.2163894   -0.0783474
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                -0.2396475   -0.2789963   -0.2002988
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.2848011   -0.3178061   -0.2517962
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                -0.4736642   -0.5343190   -0.4130093
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                -0.3334997   -0.4006963   -0.2663030
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                -0.3823662   -0.4397411   -0.3249914
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.1231778   -0.1433177   -0.1030379
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                -0.2333037   -0.2900992   -0.1765081
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                -0.1362917   -0.1688896   -0.1036937
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                -0.1664456   -0.1859674   -0.1469239
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.1353087   -0.1506109   -0.1200065
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  NA                -0.1416374   -0.1608229   -0.1224519
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  NA                 0.0339183    0.0030008    0.0648357
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                 0.0110741   -0.0071970    0.0293451
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0491594   -0.0605927   -0.0377261
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0881160   -0.0984520   -0.0777799
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0722073   -0.0879361   -0.0564785
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                 0.1999988    0.1866419    0.2133556
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                 0.1253545    0.1166577    0.1340513
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                 0.0659681    0.0594460    0.0724901
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                -0.0043289   -0.0124522    0.0037944
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0331976   -0.0992834    0.0328883
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.2301788    0.1697470    0.2906107
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                 0.1301236    0.1008309    0.1594163
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                 0.0773461    0.0546351    0.1000571
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0171258   -0.0459583    0.0117066
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                 0.0326642   -0.0057570    0.0710855
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                 0.5933006    0.5669064    0.6196948
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                 0.2145806    0.1597033    0.2694580
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                -0.0369001   -0.0742540    0.0004538
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.0043212   -0.0495086    0.0408661
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                 0.4487115    0.4264458    0.4709771
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                 0.3226233    0.2761283    0.3691184
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                 0.2252934    0.1719814    0.2786054
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                -0.1174008   -0.2295829   -0.0052188
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                -0.0607268   -0.3159456    0.1944921
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                 0.1345592   -0.0034801    0.2725985
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                -0.1393222   -0.2298902   -0.0487543
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                -0.1149658   -0.1912481   -0.0386836
3-6 months     ki1000108-IRC              INDIA                          >=0                  NA                -0.1408679   -0.2075427   -0.0741930
3-6 months     ki1000108-IRC              INDIA                          <-3                  NA                 0.0252995   -0.1179753    0.1685744
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              NA                 0.1075426    0.0076727    0.2074126
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              NA                -0.0415474   -0.0944962    0.0114014
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               NA                -0.0742967   -0.1206374   -0.0279559
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  NA                -0.0428238   -0.1126715    0.0270238
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  NA                 0.1521855    0.0691513    0.2352197
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              NA                 0.0919963    0.0368611    0.1471316
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              NA                 0.0590013    0.0105779    0.1074248
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               NA                 0.0583045    0.0035887    0.1130202
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                -0.0435721   -0.0725709   -0.0145732
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                 0.1358564    0.0730778    0.1986351
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                 0.0317245   -0.0039256    0.0673746
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                -0.0211010   -0.0615310    0.0193289
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                -0.0323505   -0.0715296    0.0068286
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.0889802   -0.1224717   -0.0554886
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                 0.1887580    0.1373664    0.2401496
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                 0.0475649    0.0111450    0.0839848
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                 0.0459303    0.0193252    0.0725354
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.0063146   -0.0320343    0.0194051
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.1195925   -0.1419298   -0.0972551
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                 0.1496615    0.1023919    0.1969310
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.0828706   -0.1401131   -0.0256280
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.1043146   -0.1443004   -0.0643288
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0633756   -0.0887479   -0.0380033
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.0772504   -0.1139768   -0.0405241
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  NA                 0.2032073    0.1680214    0.2383932
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              NA                 0.1298173    0.0888722    0.1707625
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              NA                 0.0313340    0.0049549    0.0577131
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.0408331   -0.0689469   -0.0127194
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  NA                 0.0227957    0.0020427    0.0435486
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              NA                 0.1702460    0.1434236    0.1970683
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               NA                 0.0867692    0.0683012    0.1052372
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.0588930   -0.0761341   -0.0416519
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                 0.2188556    0.1814698    0.2562414
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                 0.0937599    0.0674879    0.1200320
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                 0.0263352    0.0077854    0.0448850
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.0114389   -0.0253944    0.0025166
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  NA                -0.1417362   -0.1635848   -0.1198876
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  NA                 0.3492176    0.3238082    0.3746270
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                -0.0536873   -0.0812595   -0.0261150
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                -0.0871471   -0.1110371   -0.0632571
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                -0.1230260   -0.1446071   -0.1014450
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  NA                -0.1026893   -0.1182570   -0.0871216
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  NA                 0.0109645   -0.0150684    0.0369974
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              NA                -0.0145940   -0.0294405    0.0002525
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0480872   -0.0577075   -0.0384670
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0681704   -0.0773330   -0.0590079
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0433861   -0.0561852   -0.0305870
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                 0.1381665    0.1252575    0.1510755
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                 0.0252234    0.0155003    0.0349464
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                -0.0173594   -0.0238485   -0.0108702
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                -0.0513000   -0.0601452   -0.0424548
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0334460   -0.0570956   -0.0097963
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.0997797    0.0366000    0.1629594
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                 0.0241126   -0.0070666    0.0552918
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                -0.0072763   -0.0361791    0.0216264
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0305690   -0.0559494   -0.0051886
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                -0.0453573   -0.0697312   -0.0209835
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                 0.4075297    0.3906955    0.4243639
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                 0.0512974    0.0342533    0.0683415
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                -0.0330210   -0.0521629   -0.0138790
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                -0.1062034   -0.1646957   -0.0477112
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                 0.0047984   -0.1024437    0.1120406
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                -0.1012499   -0.1612159   -0.0412838
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                -0.1011028   -0.1352313   -0.0669744
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                -0.1025470   -0.1317876   -0.0733064
6-12 months    ki1000108-IRC              INDIA                          >=0                  NA                -0.0475294   -0.0722768   -0.0227820
6-12 months    ki1000108-IRC              INDIA                          <-3                  NA                -0.0150400   -0.1094562    0.0793762
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              NA                 0.0082932   -0.0308025    0.0473888
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              NA                -0.0127286   -0.0353111    0.0098540
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               NA                -0.0382281   -0.0604758   -0.0159804
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  NA                -0.0845075   -0.0996110   -0.0694041
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  NA                -0.0142368   -0.0321608    0.0036872
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              NA                -0.0586927   -0.0787195   -0.0386658
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              NA                -0.0836035   -0.0985943   -0.0686126
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               NA                -0.0990367   -0.1105062   -0.0875672
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.0619155   -0.0763534   -0.0474775
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                -0.0691989   -0.0881276   -0.0502702
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                -0.0160823   -0.0304735   -0.0016910
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                -0.0337591   -0.0440550   -0.0234631
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.0320397   -0.0444652   -0.0196142
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  NA                -0.0645635   -0.0765231   -0.0526038
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  NA                 0.1580510    0.1372655    0.1788366
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              NA                -0.0865502   -0.1055161   -0.0675842
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              NA                -0.0342688   -0.0541302   -0.0144074
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               NA                -0.0649109   -0.0782638   -0.0515581
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.0647399   -0.0798026   -0.0496772
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  NA                -0.0178989   -0.0287217   -0.0070760
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              NA                -0.0789406   -0.0957019   -0.0621792
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              NA                -0.0644715   -0.0763432   -0.0525998
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.0654929   -0.0772826   -0.0537032
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  NA                 0.0292751    0.0140323    0.0445179
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              NA                 0.0979821    0.0763027    0.1196615
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               NA                 0.0599646    0.0399821    0.0799471
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.0702009   -0.0792803   -0.0611216
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                 0.0303769    0.0113587    0.0493950
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                -0.0231800   -0.0363678   -0.0099922
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                -0.0431728   -0.0520356   -0.0343101
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.0572516   -0.0638677   -0.0506354
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  NA                -0.1155519   -0.1278869   -0.1032168
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  NA                 0.1171631    0.1072418    0.1270844
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                -0.0618260   -0.0766266   -0.0470255
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                -0.1055399   -0.1166225   -0.0944573
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                -0.1139575   -0.1250941   -0.1028210
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  NA                -0.0987389   -0.1080154   -0.0894623
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  NA                -0.0566774   -0.0727455   -0.0406093
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              NA                -0.0863630   -0.0960448   -0.0766812
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0897297   -0.0955286   -0.0839307
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0966930   -0.1024028   -0.0909833
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                -0.1025634   -0.1119790   -0.0931477
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                -0.0669545   -0.0831523   -0.0507568
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                -0.0859819   -0.1004936   -0.0714703
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                -0.1070472   -0.1167464   -0.0973481
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                -0.1032713   -0.1104292   -0.0961134
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0840628   -0.0913241   -0.0768016
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                -0.0310681   -0.0381435   -0.0239928
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                -0.0663686   -0.0715619   -0.0611752
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                -0.0787924   -0.0828000   -0.0747847
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                -0.0868293   -0.0922264   -0.0814322
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0422085   -0.0515935   -0.0328235
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.0079231   -0.0089381    0.0247842
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                -0.0229878   -0.0364874   -0.0094881
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                -0.0404831   -0.0480790   -0.0328871
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0529001   -0.0612890   -0.0445113
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  NA                 0.0072898   -0.0036831    0.0182627
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              NA                -0.0766805   -0.0849664   -0.0683946
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              NA                 0.1455590    0.1278538    0.1632642
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               NA                 0.0265948    0.0150694    0.0381203
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  NA                -0.0043695   -0.0133082    0.0045692
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  NA                 0.0518242    0.0391360    0.0645125
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              NA                -0.0049187   -0.0148126    0.0049751
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              NA                -0.0087876   -0.0178457    0.0002704
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               NA                -0.0068076   -0.0152964    0.0016812
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  NA                -0.0644385   -0.0861090   -0.0427681
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  NA                 0.0220113   -0.0096277    0.0536504
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              NA                -0.0064701   -0.0406892    0.0277490
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              NA                -0.0396197   -0.0581405   -0.0210989
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               NA                -0.0507635   -0.0663135   -0.0352134
12-24 months   ki1000108-IRC              INDIA                          >=0                  NA                -0.0234104   -0.0438316   -0.0029893
12-24 months   ki1000108-IRC              INDIA                          <-3                  NA                -0.0245852   -0.0608035    0.0116331
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              NA                -0.0496861   -0.0666348   -0.0327374
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              NA                -0.0233650   -0.0350118   -0.0117183
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               NA                -0.0374011   -0.0479771   -0.0268250
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  NA                -0.0272179   -0.0345501   -0.0198857
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  NA                 0.0582350    0.0520727    0.0643974
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              NA                 0.0088673    0.0018364    0.0158982
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              NA                -0.0024298   -0.0082671    0.0034075
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               NA                -0.0117126   -0.0177115   -0.0057138
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  NA                -0.0336501   -0.0404692   -0.0268311
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  NA                 0.0168846    0.0136960    0.0200732
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              NA                -0.0157625   -0.0245814   -0.0069436
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              NA                -0.0128629   -0.0186967   -0.0070290
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               NA                -0.0230170   -0.0290893   -0.0169446
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  NA                -0.0439265   -0.0634485   -0.0244046
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              NA                -0.0134800   -0.0385895    0.0116295
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               NA                -0.0352837   -0.0597435   -0.0108239
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  NA                -0.0754315   -0.0930495   -0.0578136
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  NA                -0.0100447   -0.0166232   -0.0034662
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              NA                -0.0164789   -0.0296759   -0.0032818
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              NA                -0.0449188   -0.0567048   -0.0331329
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               NA                -0.0593652   -0.0713898   -0.0473407
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  NA                -0.0438259   -0.0503237   -0.0373281
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  NA                 0.0867826    0.0829799    0.0905853
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              NA                -0.0184181   -0.0265163   -0.0103199
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              NA                -0.0264549   -0.0325762   -0.0203335
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               NA                -0.0343431   -0.0400805   -0.0286057
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  NA                -0.0378541   -0.0423599   -0.0333483
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  NA                -0.0190801   -0.0263456   -0.0118146
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              NA                -0.0293298   -0.0340499   -0.0246097
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              NA                -0.0342922   -0.0370684   -0.0315161
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               NA                -0.0369508   -0.0395261   -0.0343755
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  NA                -0.0719988   -0.0767808   -0.0672167
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  NA                -0.0839173   -0.0925496   -0.0752850
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              NA                -0.0637802   -0.0699297   -0.0576307
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              NA                -0.0498437   -0.0544467   -0.0452408
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               NA                -0.0588267   -0.0622232   -0.0554302
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  NA                -0.0262100   -0.0305778   -0.0218421
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  NA                -0.0016993   -0.0057423    0.0023437
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              NA                -0.0101932   -0.0135612   -0.0068253
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              NA                -0.0208258   -0.0233300   -0.0183215
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               NA                -0.0286507   -0.0317771   -0.0255242
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  NA                -0.0189604   -0.0233557   -0.0145651
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  NA                 0.0030390   -0.0030644    0.0091423
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              NA                -0.0082158   -0.0135968   -0.0028349
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              NA                -0.0135374   -0.0169896   -0.0100852
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               NA                -0.0186902   -0.0223062   -0.0150742


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
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                1.0997330    1.0459797    1.1534864
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0               -0.5242884   -0.5979801   -0.4505968
0-3 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.2832909   -0.3629817   -0.2036002
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.3349209   -0.4159594   -0.2538824
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0               -0.1776197   -0.2736919   -0.0815475
0-3 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0397396   -0.1623968    0.0829176
0-3 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000108-IRC              INDIA                          <-3                  >=0               -0.1318283   -0.3871910    0.1235345
0-3 months     ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.2622363   -0.4770241   -0.0474485
0-3 months     ki1000108-IRC              INDIA                          [-2--1)              >=0               -0.0938509   -0.2768217    0.0891199
0-3 months     ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0062418   -0.1885493    0.1760656
0-3 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.1401307   -0.0198008    0.3000621
0-3 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.1270668   -0.0031398    0.2572734
0-3 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.1022330   -0.0231640    0.2276300
0-3 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.0529360   -0.0756219    0.1814939
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.1583874    0.1116749    0.2050999
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.1004138    0.0333421    0.1674855
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0838372    0.0200288    0.1476456
0-3 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                0.0281975   -0.0393015    0.0956964
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.0173761   -0.0380548    0.0728069
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0098641   -0.0426843    0.0624125
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0               -0.0002706   -0.0439376    0.0433963
0-3 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0               -0.0234167   -0.0694243    0.0225909
0-3 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.4692748    0.4084902    0.5300594
0-3 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.2145383    0.1361958    0.2928809
0-3 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.1222592    0.0680329    0.1764856
0-3 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0771057    0.0276398    0.1265715
0-3 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.1401645    0.0973350    0.1829940
0-3 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0912979    0.0686151    0.1139807
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0               -0.1101259   -0.1703248   -0.0499269
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0               -0.0131139   -0.0513144    0.0250866
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0               -0.0432678   -0.0711639   -0.0153717
0-3 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0               -0.0121309   -0.0372611    0.0129992
0-3 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1755557    0.1392089    0.2119025
0-3 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.1527115    0.1262852    0.1791378
0-3 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0924781    0.0702108    0.1147453
0-3 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0535215    0.0318095    0.0752335
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.2722061    0.2522383    0.2921738
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.1975618    0.1798918    0.2152318
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.1381754    0.1212097    0.1551410
0-3 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0                0.0678784    0.0505209    0.0852359
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.2633764    0.1735196    0.3532333
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.1633212    0.0912752    0.2353672
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.1105436    0.0408271    0.1802602
0-3 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0160718   -0.0569154    0.0890590
3-6 months     ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.5606364    0.5141240    0.6071488
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.1819164    0.1151274    0.2487054
3-6 months     ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0               -0.0695644   -0.1218320   -0.0172967
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.4530327    0.4015992    0.5044662
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.3269446    0.2591827    0.3947065
3-6 months     ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.2296146    0.1531433    0.3060860
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.0566741   -0.2221093    0.3354575
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.2519600    0.0740925    0.4298276
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0               -0.0219214   -0.1660881    0.1222453
3-6 months     ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0024350   -0.1331918    0.1380618
3-6 months     ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000108-IRC              INDIA                          <-3                  >=0                0.1661674    0.0081531    0.3241817
3-6 months     ki1000108-IRC              INDIA                          [-3--2)              >=0                0.2484105    0.1283718    0.3684492
3-6 months     ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0993204    0.0142619    0.1843789
3-6 months     ki1000108-IRC              INDIA                          [-1-0)               >=0                0.0665712   -0.0145634    0.1477058
3-6 months     ki1000109-EE               PAKISTAN                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000109-EE               PAKISTAN                       <-3                  >=0                0.1950093    0.0865951    0.3034236
3-6 months     ki1000109-EE               PAKISTAN                       [-3--2)              >=0                0.1348202    0.0458974    0.2237430
3-6 months     ki1000109-EE               PAKISTAN                       [-2--1)              >=0                0.1018252    0.0168167    0.1868336
3-6 months     ki1000109-EE               PAKISTAN                       [-1-0)               >=0                0.1011283    0.0123621    0.1898945
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.1794285    0.1198126    0.2390444
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0752966    0.0227269    0.1278662
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0224710   -0.0375529    0.0824949
3-6 months     ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0                0.0112216   -0.0472536    0.0696967
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.2777382    0.2164304    0.3390460
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.1365451    0.0871551    0.1859351
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.1349105    0.0922589    0.1775621
3-6 months     ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0826656    0.0405674    0.1247638
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.2692539    0.2171385    0.3213694
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0                0.0367219   -0.0243696    0.0978134
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0152779   -0.0299528    0.0605085
3-6 months     ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0                0.0562169    0.0230109    0.0894229
3-6 months     ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.2804577    0.2303108    0.3306047
3-6 months     ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.2070678    0.1525598    0.2615757
3-6 months     ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.1085845    0.0641682    0.1530008
3-6 months     ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0364173   -0.0090652    0.0818998
3-6 months     ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.1474503    0.1210893    0.1738112
3-6 months     ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0639735    0.0488175    0.0791296
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.2777486    0.2366018    0.3188955
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.1526530    0.1212975    0.1840084
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0852282    0.0600069    0.1104496
3-6 months     ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0474541    0.0253872    0.0695210
3-6 months     ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.4909538    0.4576341    0.5242735
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0880490    0.0533638    0.1227341
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0545891    0.0230859    0.0860924
3-6 months     ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0187102   -0.0111795    0.0485998
3-6 months     ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     ki1135781-COHORTS          INDIA                          <-3                  >=0                0.1136538    0.0833446    0.1439630
3-6 months     ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.0880953    0.0666337    0.1095568
3-6 months     ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0546021    0.0363601    0.0728440
3-6 months     ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0345189    0.0165155    0.0525222
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.1815527    0.1637623    0.1993430
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0686095    0.0528929    0.0843261
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.0260268    0.0118012    0.0402524
3-6 months     kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0079139   -0.0234152    0.0075875
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.1332257    0.0658294    0.2006219
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0575586    0.0181244    0.0969928
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0261696   -0.0111636    0.0635028
3-6 months     kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0028770   -0.0317523    0.0375062
6-12 months    ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0                0.4528870    0.4235727    0.4822013
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.0966547    0.0665976    0.1267119
6-12 months    ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0123363   -0.0195292    0.0442019
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.1110019   -0.0108529    0.2328567
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.0049536   -0.0788410    0.0887482
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0                0.0051006   -0.0624102    0.0726114
6-12 months    ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0036564   -0.0615287    0.0688416
6-12 months    ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000108-IRC              INDIA                          <-3                  >=0                0.0324894   -0.0651126    0.1300913
6-12 months    ki1000108-IRC              INDIA                          [-3--2)              >=0                0.0558226    0.0096145    0.1020307
6-12 months    ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0348008    0.0014063    0.0681954
6-12 months    ki1000108-IRC              INDIA                          [-1-0)               >=0                0.0093013   -0.0239192    0.0425219
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          <-3                  >=0                0.0702707    0.0431827    0.0973587
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-3--2)              >=0                0.0258148    0.0007608    0.0508689
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-2--1)              >=0                0.0009041   -0.0228111    0.0246193
6-12 months    ki1000304b-SAS-CompFeed    INDIA                          [-1-0)               >=0               -0.0145292   -0.0315571    0.0024988
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0               -0.0072835   -0.0310840    0.0165171
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0458332    0.0254450    0.0662214
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.0281564    0.0104388    0.0458740
6-12 months    ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0298757    0.0108436    0.0489078
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <-3                  >=0                0.2226145    0.1988319    0.2463971
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-3--2)              >=0               -0.0219867   -0.0440095    0.0000361
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-2--1)              >=0                0.0302947    0.0074401    0.0531493
6-12 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [-1-0)               >=0               -0.0003474   -0.0176079    0.0169130
6-12 months    ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0468410    0.0286761    0.0650059
6-12 months    ki1101329-Keneba           GAMBIA                         [-3--2)              >=0               -0.0142007   -0.0363818    0.0079805
6-12 months    ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.0002684   -0.0184748    0.0190116
6-12 months    ki1101329-Keneba           GAMBIA                         [-1-0)               >=0               -0.0007530   -0.0194565    0.0179505
6-12 months    ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.0687070    0.0504242    0.0869898
6-12 months    ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0306895    0.0208445    0.0405346
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.1005778    0.0795281    0.1216275
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.0470209    0.0310595    0.0629823
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0270281    0.0144261    0.0396300
6-12 months    ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0129493    0.0018094    0.0240893
6-12 months    ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.2327149    0.2173493    0.2480805
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0537258    0.0347320    0.0727196
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0100120   -0.0059049    0.0259289
6-12 months    ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0015943   -0.0143839    0.0175726
6-12 months    ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          INDIA                          <-3                  >=0                0.0420615    0.0235365    0.0605864
6-12 months    ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.0123759   -0.0009945    0.0257463
6-12 months    ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0090092   -0.0018819    0.0199003
6-12 months    ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0020458   -0.0088003    0.0128920
6-12 months    ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0                0.0356088    0.0169521    0.0542655
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                0.0165814   -0.0006342    0.0337970
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0               -0.0044839   -0.0178624    0.0088946
6-12 months    ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0               -0.0007079   -0.0123788    0.0109630
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.0529947    0.0431681    0.0628213
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0176943    0.0089848    0.0264038
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.0052705   -0.0029549    0.0134959
6-12 months    kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0027665   -0.0117469    0.0062140
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0501316    0.0308280    0.0694352
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0192207    0.0029728    0.0354687
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0017254   -0.0100686    0.0135195
6-12 months    kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0               -0.0106916   -0.0230222    0.0016390
12-24 months   ki0047075b-MAL-ED          BRAZIL                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-3--2)              >=0               -0.0839703   -0.0975197   -0.0704210
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-2--1)              >=0                0.1382692    0.1185620    0.1579763
12-24 months   ki0047075b-MAL-ED          BRAZIL                         [-1-0)               >=0                0.0193050    0.0035461    0.0350640
12-24 months   ki0047075b-MAL-ED          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki0047075b-MAL-ED          INDIA                          <-3                  >=0                0.0561938    0.0406708    0.0717167
12-24 months   ki0047075b-MAL-ED          INDIA                          [-3--2)              >=0               -0.0005492   -0.0138872    0.0127888
12-24 months   ki0047075b-MAL-ED          INDIA                          [-2--1)              >=0               -0.0044181   -0.0171461    0.0083099
12-24 months   ki0047075b-MAL-ED          INDIA                          [-1-0)               >=0               -0.0024381   -0.0147745    0.0098984
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <-3                  >=0                0.0864499    0.0480329    0.1248668
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-3--2)              >=0                0.0579684    0.0174886    0.0984482
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-2--1)              >=0                0.0248188   -0.0036518    0.0532893
12-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [-1-0)               >=0                0.0136750   -0.0129583    0.0403083
12-24 months   ki1000108-IRC              INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1000108-IRC              INDIA                          <-3                  >=0               -0.0011747   -0.0427458    0.0403963
12-24 months   ki1000108-IRC              INDIA                          [-3--2)              >=0               -0.0262757   -0.0528066    0.0002553
12-24 months   ki1000108-IRC              INDIA                          [-2--1)              >=0                0.0000454   -0.0234602    0.0235510
12-24 months   ki1000108-IRC              INDIA                          [-1-0)               >=0               -0.0139906   -0.0369261    0.0089448
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <-3                  >=0                0.0854529    0.0759103    0.0949955
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-3--2)              >=0                0.0360852    0.0259997    0.0461706
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-2--1)              >=0                0.0247881    0.0155383    0.0340379
12-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [-1-0)               >=0                0.0155052    0.0061249    0.0248856
12-24 months   ki1101329-Keneba           GAMBIA                         >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1101329-Keneba           GAMBIA                         <-3                  >=0                0.0505348    0.0430779    0.0579917
12-24 months   ki1101329-Keneba           GAMBIA                         [-3--2)              >=0                0.0178876    0.0068281    0.0289472
12-24 months   ki1101329-Keneba           GAMBIA                         [-2--1)              >=0                0.0207873    0.0119422    0.0296323
12-24 months   ki1101329-Keneba           GAMBIA                         [-1-0)               >=0                0.0106332    0.0016515    0.0196149
12-24 months   ki1119695-PROBIT           BELARUS                        >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1119695-PROBIT           BELARUS                        [-2--1)              >=0                0.0304465    0.0064996    0.0543934
12-24 months   ki1119695-PROBIT           BELARUS                        [-1-0)               >=0                0.0086428   -0.0176990    0.0349846
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <-3                  >=0                0.0653869    0.0473051    0.0834687
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-3--2)              >=0                0.0589527    0.0375674    0.0803380
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-2--1)              >=0                0.0305127    0.0104667    0.0505587
12-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [-1-0)               >=0                0.0160663   -0.0040116    0.0361442
12-24 months   ki1135781-COHORTS          GUATEMALA                      >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          GUATEMALA                      <-3                  >=0                0.1306085    0.1231966    0.1380204
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-3--2)              >=0                0.0254078    0.0152848    0.0355308
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-2--1)              >=0                0.0173711    0.0086886    0.0260535
12-24 months   ki1135781-COHORTS          GUATEMALA                      [-1-0)               >=0                0.0094828    0.0011037    0.0178619
12-24 months   ki1135781-COHORTS          INDIA                          >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          INDIA                          <-3                  >=0                0.0187740    0.0102456    0.0273024
12-24 months   ki1135781-COHORTS          INDIA                          [-3--2)              >=0                0.0085244    0.0020247    0.0150240
12-24 months   ki1135781-COHORTS          INDIA                          [-2--1)              >=0                0.0035619   -0.0016925    0.0088163
12-24 months   ki1135781-COHORTS          INDIA                          [-1-0)               >=0                0.0009033   -0.0042527    0.0060594
12-24 months   ki1135781-COHORTS          PHILIPPINES                    >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   ki1135781-COHORTS          PHILIPPINES                    <-3                  >=0               -0.0119185   -0.0217456   -0.0020915
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-3--2)              >=0                0.0082185    0.0004806    0.0159565
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-2--1)              >=0                0.0221550    0.0155892    0.0287208
12-24 months   ki1135781-COHORTS          PHILIPPINES                    [-1-0)               >=0                0.0131720    0.0074018    0.0189422
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <-3                  >=0                0.0245106    0.0187796    0.0302417
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-3--2)              >=0                0.0160167    0.0104675    0.0215659
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-2--1)              >=0                0.0053842    0.0004884    0.0102800
12-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [-1-0)               >=0               -0.0024407   -0.0076977    0.0028162
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     >=0                  >=0                0.0000000    0.0000000    0.0000000
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     <-3                  >=0                0.0219994    0.0145854    0.0294134
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-3--2)              >=0                0.0107446    0.0038630    0.0176262
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-2--1)              >=0                0.0054230   -0.0000291    0.0108752
12-24 months   kiGH5241-JiVitA-4          BANGLADESH                     [-1-0)               >=0                0.0002702   -0.0053291    0.0058696
