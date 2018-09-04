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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
  output_directory:
    value: ''
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** mhtcm

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mhtcm           ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  -------------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       18     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        7     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1      118     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       36     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       30     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      104     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1       26     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       38     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1       15     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       29     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1       10     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       33     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1       22     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0       30     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       85     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       32     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       40     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        3     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0       75     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       58     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       43     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       21     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       27     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1       33     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0       53     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1      116     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       24     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1       37     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0       91     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1      113     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0        7     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1       26     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       13     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1       20     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       29     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      124     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       48     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       48     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      238    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1      334    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      103    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1      391    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0      100    1407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1      241    1407
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       22     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       56     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0       28     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1      192     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       16     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       95     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       60     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       57     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0       93     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1      273     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0       58     629
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       88     629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      102     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1       36     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      174     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1      199     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0       91     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       67     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      100     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       40     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      192     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1      243     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      101     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       79     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1058    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      432    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      182    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      176    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      304    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      207    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0      979    2430
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1     1032    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       16    2430
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1       77    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      118    2430
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1      208    2430
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1       17     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0       56     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1       87     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       29     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1       27     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1921    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      942    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       30    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       59    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       95    3177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3177
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11031   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1     2180   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       80   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1       45   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      299   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       99   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     4606    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     3233    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      217    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      357    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      705    9852
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      734    9852
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0       65    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1      101    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      160    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1      685    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0       77    1292
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1      204    1292
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      454    1906
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1      117    1906
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      437    1906
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1      387    1906
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      329    1906
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1      182    1906
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      290    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1      342    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0      361    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1     1188    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      308    3058
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      569    3058
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      229     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1      285     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0       20     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1      111     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       56     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1      136     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     5827   54169
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1     2473   54169
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0    13514   54169
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1    18659   54169
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     8055   54169
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     5641   54169
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       20     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        5     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       93     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       70     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       53     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       13     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0      108     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1       22     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       40     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1       13     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       32     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        7     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       42     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                   1       13     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    0       68     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                    1       47     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       49     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       23     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        3     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    0      106     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       27     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       53     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       11     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   0       40     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                   1       20     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    0       89     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                    1       80     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               0       33     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm               1       28     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0      133     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1       71     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0       16     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       18     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1       15     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       98     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       55     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0       17     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       34     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0       34     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       18     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      393    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1      178    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0      220    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1      272    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0      192    1404
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1      149    1404
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       59     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       19     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0      114     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1      106     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       75     407
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       34     407
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       94     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       23     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0      209     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1      157     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0      106     629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       40     629
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0      118     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1       20     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      262     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1      111     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0      124     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       34     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0      115     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       25     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      279     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1      156     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0      132     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       48     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0     1268    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      222    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      253    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1      105    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      381    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1      130    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   0     1272    2158
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                   1      523    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    0       38    2158
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                    1       38    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               0      170    2158
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm               1      117    2158
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       27     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1        7     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0       83     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1       49     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       39     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1       14     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11957   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                   1     1254   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    0       99   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                    1       26   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               0      346   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm               1       52   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     5760    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     2072    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      326    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      246    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      940    9840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      496    9840
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0      111    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1       27    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      434    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                    1      269    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0      176    1070
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1       53    1070
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   0      507    1872
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                   1       52    1872
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    0      619    1872
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                    1      191    1872
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               0      425    1872
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm               1       78    1872
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      546    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1       86    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0     1066    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      483    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      715    3058
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      162    3058
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      121     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                   1       40     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    0       17     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                    1       21     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       36     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm               1       36     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     6296   54096
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1     1994   54096
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0    16470   54096
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1    15660   54096
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     9102   54096
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     4574   54096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   0       17     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                   1        2     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    0       43     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                    1       48     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               0       32     159
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm               1       17     159
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   0       96     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                   1        4     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    0       36     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                    1        2     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               0       27     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm               1        3     168
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   0       33     155
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                   1        9     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    0       29     155
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                    1       38     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               0       29     155
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm               1       17     155
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   0       38     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                   1        0     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    0       73     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                    1       31     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               0       43     195
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm               1       10     195
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   0       26     148
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                   1       13     148
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    0       44     148
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                    1       36     148
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               0       20     148
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm               1        9     148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   0       82     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                   1       42     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    0        7     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                    1        9     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               0       11     156
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm               1        5     156
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0       27     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1       69     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    0        1     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       14     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0        4     145
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       30     145
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   0      216     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                   1      156     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    0       75     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                    1      119     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               0       85     743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm               1       92     743
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   0       20     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                   1       37     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    0       24     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                    1       86     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               0       15     243
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm               1       61     243
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   0       45     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                   1       34     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    0       58     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                    1      116     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               0       44     345
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm               1       48     345
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   0       93     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                   1       16     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    0      143     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                    1       88     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               0       84     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm               1       33     457
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   0       98     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                   1       15     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    0      181     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                    1       87     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               0       94     506
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm               1       31     506
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   0      843    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                   1      210    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    0      136    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                    1       71    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               0      241    1578
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm               1       77    1578
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   0      917    1679
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                   1      509    1679
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    0       15    1679
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                    1       39    1679
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               0      108    1679
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm               1       91    1679
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   0       19     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                   1       10     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    0       50     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                    1       38     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               0       27     157
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm               1       13     157
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   0     1921    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                   1      942    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    0       30    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                    1       59    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               0       95    3177
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm               1      130    3177
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   0    11023   12394
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                   1      926   12394
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    0       80   12394
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                    1       19   12394
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               0      299   12394
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm               1       47   12394
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   0     3901    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                   1     1161    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    0      183    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                    1      111    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               0      597    6191
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm               1      238    6191
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   0       48     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                   1       74     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    0      102     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                    1      416     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               0       51     842
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm               1      151     842
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   0      432    1530
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                   1       65    1530
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    0      418    1530
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                    1      196    1530
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               0      315    1530
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm               1      104    1530
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   0      245    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                   1      256    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    0      264    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                    1      705    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               0      244    2121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm               1      407    2121
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   0      221     727
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                   1      245     727
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    0       19     727
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                    1       90     727
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               0       52     727
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm               1      100     727
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3781   20927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      479   20927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     7664   20927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     2999   20927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4937   20927
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     1067   20927


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/3e310d4d-c904-49dd-b18c-1fa912ff8921/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3e310d4d-c904-49dd-b18c-1fa912ff8921/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/3e310d4d-c904-49dd-b18c-1fa912ff8921/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/3e310d4d-c904-49dd-b18c-1fa912ff8921/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2800000   0.1036482   0.4563518
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.7239264   0.6551609   0.7926919
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.4545455   0.3341803   0.5749106
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.2000000   0.1310845   0.2689155
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2830189   0.1614697   0.4045681
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.2564103   0.1190597   0.3937608
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4000000   0.2702607   0.5297393
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.7391304   0.6587092   0.8195516
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.5555556   0.4405408   0.6705703
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.5500000   0.4239014   0.6760986
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.6863905   0.6163201   0.7564610
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.6065574   0.4837541   0.7293606
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.5539216   0.4855826   0.6222605
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.7878788   0.6481395   0.9276181
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.6060606   0.4390402   0.7730810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5839161   0.5502379   0.6175943
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.7914980   0.7333544   0.8496416
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7067449   0.6359440   0.7775458
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.7179487   0.6179618   0.8179356
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.8727273   0.8286337   0.9168208
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8558559   0.7904349   0.9212768
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4871795   0.3965378   0.5778211
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7459016   0.7012647   0.7905386
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.6027397   0.5233033   0.6821761
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2608696   0.1875524   0.3341867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5335121   0.4828467   0.5841774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.4240506   0.3469345   0.5011668
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2857143   0.2108329   0.3605957
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.5586207   0.5119273   0.6053141
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.4388889   0.3663449   0.5114329
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2899329   0.2668895   0.3129762
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4916201   0.4398227   0.5434175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4050881   0.3625154   0.4476607
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5131775   0.4913276   0.5350275
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8279570   0.7512353   0.9046787
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.6380368   0.5858593   0.6902144
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.4722222   0.3087961   0.6356484
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.6083916   0.5282194   0.6885638
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.4821429   0.3509915   0.6132943
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3290255   0.2763447   0.3817063
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6629213   0.5415103   0.7843324
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5777778   0.3984092   0.7571464
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.1650140   0.1460815   0.1839465
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3600000   0.2557391   0.4642609
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2487437   0.2019503   0.2955372
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4124251   0.4015271   0.4233230
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6219512   0.5822808   0.6616216
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.5100764   0.4842466   0.5359063
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6084337   0.5341538   0.6827137
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8106509   0.7842246   0.8370772
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7259786   0.6738091   0.7781482
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2049037   0.1717884   0.2380190
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.4696602   0.4355749   0.5037455
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3561644   0.3146342   0.3976946
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5411392   0.5022835   0.5799950
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7669464   0.7458891   0.7880038
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6488027   0.6172053   0.6804001
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5544747   0.5114812   0.5974682
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8473282   0.7857004   0.9089561
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7083333   0.6440025   0.7726642
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2979518   0.2822317   0.3136719
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5799584   0.5706288   0.5892879
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4118721   0.3987689   0.4249753
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2000000   0.0428933   0.3571067
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.4294479   0.3533077   0.5055880
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1969697   0.1008310   0.2931084
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1692308   0.1046302   0.2338314
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2452830   0.1291873   0.3613788
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1794872   0.0587738   0.3002006
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2363636   0.1238515   0.3488758
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.4086957   0.3186622   0.4987291
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3194444   0.2115223   0.4273666
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3333333   0.2138475   0.4528191
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4733728   0.3979664   0.5487792
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.4590164   0.3337486   0.5842842
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3480392   0.2825509   0.4135275
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5151515   0.3443202   0.6859828
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4545455   0.2843434   0.6247475
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3594771   0.2832946   0.4356596
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6666667   0.5370363   0.7962970
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3461538   0.2165945   0.4757132
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3117338   0.2729017   0.3505659
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5528455   0.4908877   0.6148033
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4369501   0.3828531   0.4910472
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2435897   0.1482128   0.3389666
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4818182   0.4157102   0.5479261
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3119266   0.2248478   0.3990054
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1965812   0.1245132   0.2686492
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.4289617   0.3782166   0.4797069
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2739726   0.2015712   0.3463740
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1449275   0.0861501   0.2037049
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2975871   0.2511547   0.3440196
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2151899   0.1510634   0.2793164
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1785714   0.1150877   0.2420552
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3586207   0.3135217   0.4037196
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2666667   0.2020217   0.3313116
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1489933   0.1309092   0.1670774
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2932961   0.2461256   0.3404666
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2544031   0.2166335   0.2921728
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2913649   0.2703394   0.3123904
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.5000000   0.3875623   0.6124377
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4076655   0.3508007   0.4645303
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2058824   0.0696581   0.3421066
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3712121   0.2886049   0.4538194
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2641509   0.1451845   0.3831174
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0949209   0.0818242   0.1080176
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2080000   0.1290532   0.2869468
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1306533   0.0912695   0.1700371
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2645557   0.2547863   0.2743251
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4300699   0.3894955   0.4706444
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.3454039   0.3208091   0.3699987
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1956522   0.1294342   0.2618701
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.3826458   0.3467007   0.4185909
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2314410   0.1767908   0.2860913
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0930233   0.0689380   0.1171086
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2358025   0.2065610   0.2650439
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1550696   0.1234283   0.1867109
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1360759   0.1093404   0.1628115
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3118141   0.2887416   0.3348865
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1847206   0.1590326   0.2104086
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2484472   0.1815767   0.3153177
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5526316   0.3942482   0.7110149
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.5000000   0.3842943   0.6157057
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2405308   0.2258649   0.2551966
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4873950   0.4783122   0.4964778
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3344545   0.3218172   0.3470918
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2142857   0.0897890   0.3387824
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5671642   0.4481408   0.6861875
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3695652   0.2296257   0.5095047
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3333333   0.1848828   0.4817839
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4500000   0.3406137   0.5593863
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3103448   0.1413943   0.4792953
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3387097   0.2551410   0.4222784
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5625000   0.3186432   0.8063568
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.3125000   0.0846516   0.5403484
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4193548   0.3662871   0.4724226
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.6134021   0.5438322   0.6829719
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.5197740   0.4480012   0.5915468
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.6491228   0.5249727   0.7732729
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.7818182   0.7044773   0.8591591
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8026316   0.7129644   0.8922988
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4303797   0.3210386   0.5397209
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6666667   0.5965215   0.7368118
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5217391   0.4195173   0.6239610
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1467890   0.0802792   0.2132988
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3809524   0.3182599   0.4436448
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2820513   0.2004228   0.3636797
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1327434   0.0701226   0.1953642
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3246269   0.2685125   0.3807413
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2480000   0.1722195   0.3237805
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1994302   0.1752886   0.2235718
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.3429952   0.2783064   0.4076839
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2421384   0.1950407   0.2892360
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3569425   0.3320687   0.3818163
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7222222   0.6027231   0.8417214
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4572864   0.3880507   0.5265222
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3448276   0.1712813   0.5183739
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.4318182   0.3279964   0.5356399
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.3250000   0.1793873   0.4706127
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3290255   0.2763447   0.3817063
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6629213   0.5415103   0.7843324
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5777778   0.3984092   0.7571464
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0774960   0.0635663   0.0914257
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1919192   0.1167046   0.2671338
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1358382   0.0930881   0.1785882
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2293560   0.2177734   0.2409385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3775510   0.3221332   0.4329688
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2850299   0.2544083   0.3156516
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6065574   0.5198207   0.6932941
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8030888   0.7688232   0.8373544
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7475248   0.6875798   0.8074697
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1307847   0.1011327   0.1604367
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3192182   0.2823329   0.3561036
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2482100   0.2068347   0.2895853
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5109780   0.4671959   0.5547602
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7275542   0.6995153   0.7555931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6251920   0.5879982   0.6623859
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5257511   0.4803833   0.5711188
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8256881   0.7544183   0.8969578
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.6578947   0.5824232   0.7333663
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1124413   0.0979817   0.1269010
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2812529   0.2673121   0.2951938
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1777149   0.1626204   0.1928093


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.2297297   0.1742694   0.2851900
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.6074380   0.5457864   0.6690897
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.5888889   0.5300901   0.6476877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.6865672   0.6433613   0.7297731
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.8386308   0.8029353   0.8743263
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.3454854   0.3262920   0.3646787
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5419753   0.5221615   0.5617891
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.5574468   0.4938076   0.6210860
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1692151   0.1502685   0.1881616
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.4388957   0.4290960   0.4486953
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7662539   0.7431681   0.7893396
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3599161   0.3383625   0.3814696
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.6356033   0.6029802   0.6682264
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4942495   0.4863870   0.5021120
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          BRAZIL                         NA                   NA                0.1891892   0.1375523   0.2408261
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          PERU                           NA                   NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3814815   0.3234338   0.4395292
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.4179687   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4266382   0.3925570   0.4607194
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3906634   0.3432048   0.4381220
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1937262   0.1777743   0.2096780
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.3141798   0.2945906   0.3337690
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3196347   0.2577308   0.3815386
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0969856   0.0839703   0.1100009
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2859756   0.2770468   0.2949044
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3261682   0.2980650   0.3542714
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1714744   0.1543953   0.1885534
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         NA                   NA                0.3579336   0.3007518   0.4151153
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4108991   0.4034353   0.4183630
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.3589744   0.2834562   0.4344926
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4939435   0.4498186   0.5380683
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2268695   0.2061992   0.2475397
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3805837   0.3573526   0.4038147
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.3885350   0.3120482   0.4650219
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0800387   0.0658162   0.0942612
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2439024   0.2332045   0.2546004
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7612827   0.7324712   0.7900941
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2385621   0.2171991   0.2599251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.5983494   0.5626894   0.6340094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2171835   0.2078204   0.2265466


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          2.5854514   1.3674523   4.888331
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          1.6233766   0.8197776   3.214716
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.4150943   0.8159332   2.454235
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.2820513   0.6780981   2.423920
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.8478261   1.3124535   2.601586
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3888889   0.9452708   2.040698
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.2479828   0.9709871   1.603998
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.1028316   0.8122185   1.497427
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.4223652   1.1459916   1.765391
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.0941271   0.8089790   1.479784
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.3554995   1.2666059   1.450632
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2103535   1.1239397   1.303411
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.2155844   1.0482018   1.409696
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.1920849   1.0169804   1.397339
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5310613   1.2592546   1.861537
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2372026   0.9849643   1.554036
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.0451296   1.5201382   2.751431
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.6255274   1.1630878   2.271831
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.9551724   1.4849588   2.574280
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5361111   1.1268209   2.094066
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.6956342   1.4859896   1.934856
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3971787   1.2246942   1.593956
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.6133929   1.4569739   1.786605
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2433062   1.1338010   1.363388
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.2883587   0.8896301   1.865796
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.0210084   0.6574439   1.585623
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0148024   1.5910024   2.551491
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7560274   1.2823192   2.404731
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.1816330   1.6229992   2.932548
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.5074098   1.2525278   1.814159
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.5080345   1.4074318   1.615828
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2367737   1.1681103   1.309473
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3323569   1.1742014   1.511815
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1931926   1.0355880   1.374783
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2921023   1.9199672   2.736366
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7382040   1.4241350   2.121535
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4172811   1.3124116   1.530530
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1989571   1.0993187   1.307626
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5281639   1.3740393   1.699577
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2774854   1.1336877   1.439522
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9464837   1.8447282   2.053852
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3823446   1.3008301   1.468967
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          2.1472393   0.9597232   4.804131
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.9848485   0.3905933   2.483213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.4493997   0.7890572   2.662366
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.0606061   0.4894427   2.298298
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.7290970   1.0233507   2.921556
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.3514957   0.7538922   2.422814
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4201183   0.9593316   2.102231
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.3770492   0.8775884   2.160767
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.4801536   1.0109269   2.167174
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.3060179   0.8589189   1.985848
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8545455   1.3910042   2.472558
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9629371   0.6263265   1.480454
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.7734539   1.4690341   2.140957
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4016772   1.1342491   1.732158
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.9779904   1.3062892   2.995084
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2805408   0.7916833   2.071264
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.1821098   1.4844903   3.207568
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3936867   0.8869443   2.189949
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.0533512   1.3296695   3.170902
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.4848101   0.8976381   2.456069
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.0082759   1.3773763   2.928156
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.4933333   0.9711407   2.296315
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9685188   1.6092885   2.407938
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7074805   1.4095279   2.068416
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.7160612   1.3550814   2.173202
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3991579   1.1958069   1.637089
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.8030303   0.8970788   3.623894
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2830189   0.5762704   2.856536
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.1912982   1.4923656   3.217568
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.3764436   1.0127486   1.870748
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6256311   1.4690013   1.798961
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3056001   1.2049656   1.414639
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.9557452   1.3764795   2.778784
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1829209   0.7829452   1.787228
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.5348764   1.9022987   3.377807
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6669979   1.1988575   2.317942
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.2914709   1.8575290   2.826787
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3574819   1.0670752   1.726923
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          2.2243421   1.5012400   3.295741
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          2.0125000   1.4111712   2.870067
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.0263311   1.9029918   2.157664
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3904854   1.2953873   1.492565
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          2.6467662   1.4270572   4.908963
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.7246377   0.8620245   3.450453
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.3500000   0.8128024   2.242242
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          0.9310345   0.4607905   1.881170
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.6607143   1.0084685   2.734812
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          0.9226190   0.4273006   1.992101
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4627280   1.2395728   1.726057
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2394611   1.0860115   1.414593
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.2044226   0.9710990   1.493806
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2364865   0.9908206   1.543063
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5490196   1.1766116   2.039298
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2122762   0.8795630   1.670845
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.5952381   1.6025883   4.202739
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.9214744   1.1223825   3.289488
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.4455224   1.4797051   4.041738
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.8682667   1.0649735   3.277471
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7198758   1.3745765   2.151916
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2141509   0.9655523   1.526756
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0233573   1.6908343   2.421275
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2811207   1.0844388   1.513474
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.2522727   0.7169103   2.187424
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          0.9425000   0.4804463   1.848919
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.0148024   1.5910024   2.551491
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7560274   1.2823192   2.404731
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.4765037   1.7209919   3.563683
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7528402   1.3113268   2.343008
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6461355   1.4094559   1.922559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2427404   1.1036341   1.399380
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3240113   1.1404671   1.537095
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2324057   1.0460482   1.451963
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.4407918   1.8924116   3.148081
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.8978520   1.4323467   2.514644
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4238463   1.2961661   1.564104
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2235203   1.1023242   1.358041
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5704924   1.3900472   1.774362
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2513426   1.0840118   1.444503
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.5013309   2.1835919   2.865305
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.5805121   1.3564966   1.841522


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.3302362    0.1611525   0.4993200
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0297297   -0.0178401   0.0772996
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2074380    0.0934987   0.3213773
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0913793   -0.0198797   0.2026383
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0349673    0.0022519   0.0676827
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1026511    0.0818388   0.1234634
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1206821    0.0343202   0.2070439
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1773674    0.0966020   0.2581329
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1905505    0.1228611   0.2582398
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1937559    0.1244792   0.2630327
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0555525    0.0404329   0.0706721
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0287978    0.0198642   0.0377314
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0852246   -0.0650257   0.2354749
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0269707    0.0165874   0.0373540
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0042011    0.0025992   0.0058030
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0264706    0.0213911   0.0315501
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1578201    0.0897566   0.2258837
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1550124    0.1249437   0.1850811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1452571    0.1112540   0.1792602
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0811286    0.0557819   0.1064754
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1962977    0.1817616   0.2108338
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1464567   -0.0060612   0.2989745
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0199584   -0.0242233   0.0641402
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1066116    0.0041577   0.2090655
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1080460    0.0001267   0.2159653
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0334423   -0.0008728   0.0677574
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0584916    0.0081804   0.1088028
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1149044    0.0770443   0.1527644
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1470736    0.0584037   0.2357436
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1531803    0.0849690   0.2213916
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1017092    0.0460495   0.1573690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1247398    0.0646387   0.1848409
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0447329    0.0317571   0.0577087
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0228149    0.0133076   0.0323222
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1137524   -0.0151939   0.2426986
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0020647    0.0009860   0.0031434
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0214199    0.0165997   0.0262402
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1305161    0.0669270   0.1941051
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0784511    0.0555307   0.1013715
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1029692    0.0775150   0.1284234
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1094864    0.0602094   0.1587634
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1703684    0.1564871   0.1842497
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1986175    0.0839587   0.3132763
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0585586   -0.0704796   0.1875967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0202647   -0.0195397   0.0600691
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0745886    0.0359773   0.1131999
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1080788    0.0027190   0.2134387
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1435333    0.0475595   0.2395071
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1529922    0.0891035   0.2168809
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1301025    0.0697385   0.1904665
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0274393    0.0121995   0.0426790
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0236412    0.0132761   0.0340063
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0437074   -0.1139062   0.2013210
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0269707    0.0165874   0.0373540
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0025427    0.0012160   0.0038694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0145465    0.0091409   0.0199520
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1547253    0.0761555   0.2332951
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1077774    0.0801296   0.1354252
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1340007    0.0962354   0.1717661
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0725983    0.0463066   0.0988900
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1047422    0.0906448   0.1188397


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.5411613    0.1566110   0.7503727
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1294118   -0.1029168   0.3128005
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3414966    0.1200885   0.5071928
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1424731   -0.0508842   0.3002537
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0593785    0.0015845   0.1138270
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1495135    0.1238821   0.1743951
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1439037    0.0328617   0.2421965
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2668998    0.1326881   0.3803429
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4221134    0.2511777   0.5540292
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4041042    0.2402064   0.5326470
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1607955    0.1159807   0.2033384
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0531349    0.0363633   0.0696146
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1528838   -0.1653428   0.3842105
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0757613    0.0425255   0.1078433
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0248269    0.0150490   0.0345077
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0603118    0.0486297   0.0718505
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2059632    0.1109630   0.2908120
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4306904    0.3423767   0.5071442
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2116228    0.1598213   0.2602304
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1276404    0.0857003   0.1676566
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3971631    0.3670654   0.4258297
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.4227273   -0.2327309   0.7296703
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1054945   -0.1600130   0.3102318
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3108434   -0.0609421   0.5523442
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2447917   -0.0444849   0.4539513
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0876642   -0.0070086   0.1734365
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1399426    0.0102803   0.2526179
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2693251    0.1825100   0.3469207
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3764715    0.1040153   0.5660777
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4379565    0.2079608   0.6011651
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4123847    0.1432627   0.5969690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4112601    0.1791089   0.5777581
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2309077    0.1628026   0.2934726
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0726173    0.0419101   0.1023403
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3558824   -0.2005949   0.6544317
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0212886    0.0096420   0.0327981
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0749013    0.0579341   0.0915629
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4001495    0.1715526   0.5656687
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4575092    0.3137783   0.5711353
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4307520    0.3163815   0.5259882
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3058846    0.1560168   0.4291401
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4146234    0.3802421   0.4470973
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4810268    0.1206505   0.6937132
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1494253   -0.2528576   0.4225383
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0564516   -0.0612510   0.1610999
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1510064    0.0705583   0.2244913
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1427346   -0.0102341   0.2725409
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2500959    0.0607867   0.4012476
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5103462    0.2542142   0.6785125
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4949764    0.2157767   0.6747752
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1209473    0.0516138   0.1852121
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0621182    0.0344428   0.0890004
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1124929   -0.4018990   0.4381415
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0757613    0.0425255   0.1078433
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0317684    0.0156029   0.0476684
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0596405    0.0372768   0.0814847
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2032429    0.0917278   0.3010665
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4517792    0.3285461   0.5523951
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2077599    0.1462494   0.2648388
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1213310    0.0752716   0.1650962
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4822752    0.4163097   0.5407856
