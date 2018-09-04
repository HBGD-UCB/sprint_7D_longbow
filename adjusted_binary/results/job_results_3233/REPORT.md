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

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_impfloor
* delta_impsan
* delta_safeh20

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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/2c5edc19-d7f7-4711-acd8-03a3663d9b3e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/2c5edc19-d7f7-4711-acd8-03a3663d9b3e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/2c5edc19-d7f7-4711-acd8-03a3663d9b3e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/2c5edc19-d7f7-4711-acd8-03a3663d9b3e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3945653   0.2661731   0.5229575
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.7403331   0.6601278   0.8205384
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.5566250   0.4431164   0.6701336
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.5490100   0.4258091   0.6722109
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.6869893   0.6176555   0.7563230
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.6074532   0.4890199   0.7258864
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.5539216   0.4855826   0.6222605
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.7878788   0.6481395   0.9276181
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.6060606   0.4390402   0.7730810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.5862703   0.5528344   0.6197063
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.7915337   0.7335205   0.8495469
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.7076361   0.6370168   0.7782553
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.7152638   0.6155388   0.8149887
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.8732632   0.8291850   0.9173413
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8558224   0.7904971   0.9211476
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.5005207   0.4136587   0.5873826
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.7476544   0.7032204   0.7920883
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.6135570   0.5365714   0.6905426
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2807620   0.2103098   0.3512142
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.5375653   0.4873810   0.5877496
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.4489736   0.3749119   0.5230354
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2855854   0.2138789   0.3572919
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.5530463   0.5070856   0.5990071
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.4428249   0.3737909   0.5118588
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2896172   0.2666196   0.3126148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.4903340   0.4395927   0.5410753
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.4037524   0.3615658   0.4459390
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.5143800   0.4925416   0.5362183
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.8267209   0.7537919   0.8996498
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.6336871   0.5822643   0.6851099
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.4606181   0.3185024   0.6027338
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.6100291   0.5300325   0.6900257
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.5170314   0.3968377   0.6372250
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3292168   0.2764596   0.3819741
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6398811   0.5203149   0.7594474
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5745686   0.4055732   0.7435640
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.1650231   0.1460935   0.1839527
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.3363427   0.2333720   0.4393134
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2462081   0.1995192   0.2928970
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.4125695   0.4016841   0.4234549
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.6219299   0.5835090   0.6603507
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.5099714   0.4843361   0.5356066
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6194133   0.5490112   0.6898153
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8106288   0.7848953   0.8363623
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7162031   0.6688222   0.7635839
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2029751   0.1704197   0.2355305
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.4602163   0.4268864   0.4935462
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3471332   0.3067662   0.3875002
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5465068   0.5090335   0.5839800
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7634717   0.7425080   0.7844353
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6493402   0.6183146   0.6803659
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5607699   0.5180046   0.6035353
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8688824   0.8095929   0.9281720
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.7278631   0.6641466   0.7915796
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3074739   0.2920239   0.3229239
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.5759834   0.5666906   0.5852762
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.4156796   0.4026593   0.4287000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2000000   0.0428933   0.3571067
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.4294479   0.3533077   0.5055880
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.1969697   0.1008310   0.2931084
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1692308   0.1046302   0.2338314
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              NA                0.2452830   0.1291873   0.3613788
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         NA                0.1794872   0.0587738   0.3002006
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2019615   0.0995880   0.3043350
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3968503   0.3094414   0.4842591
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3000898   0.1954404   0.4047392
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3336601   0.2141637   0.4531565
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4732661   0.3978717   0.5486605
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.4589526   0.3336916   0.5842137
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3475621   0.2825882   0.4125360
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5249729   0.3651600   0.6847858
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.4549244   0.2891884   0.6206604
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.3596637   0.2836946   0.4356327
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.6662003   0.5381717   0.7942289
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.3463327   0.2166346   0.4760307
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3115579   0.2736172   0.3494985
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.5548828   0.4952493   0.6145163
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4350634   0.3793833   0.4907435
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2440840   0.1487181   0.3394499
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4816186   0.4155125   0.5477248
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3118636   0.2247858   0.3989415
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1973938   0.1277415   0.2670461
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.4304005   0.3798451   0.4809560
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2706254   0.2007748   0.3404760
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1440188   0.0854961   0.2025415
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2973300   0.2509453   0.3437147
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2167701   0.1527550   0.2807852
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1736458   0.1132573   0.2340344
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3567376   0.3120699   0.4014054
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2611951   0.1987581   0.3236322
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1491117   0.1310529   0.1671704
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2922884   0.2457575   0.3388192
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2547121   0.2171575   0.2922666
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.2912163   0.2702135   0.3122190
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.5056914   0.4041182   0.6072645
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4017075   0.3468486   0.4565665
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.2058824   0.0696581   0.3421066
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.3712121   0.2886049   0.4538194
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.2641509   0.1451845   0.3831174
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0949325   0.0818345   0.1080305
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2041033   0.1270281   0.2811786
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1293557   0.0898852   0.1688262
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2646741   0.2549129   0.2744353
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.4307826   0.3912378   0.4703274
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.3450998   0.3207547   0.3694448
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1943409   0.1298804   0.2588013
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.3822938   0.3464627   0.4181248
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2323359   0.1787006   0.2859711
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0940101   0.0701440   0.1178763
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2364513   0.2075801   0.2653225
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1545589   0.1233654   0.1857524
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1289418   0.1032023   0.1546814
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3079225   0.2851206   0.3307244
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.1801656   0.1550907   0.2052404
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.2468633   0.1802512   0.3134754
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.5176682   0.3712990   0.6640374
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.4913618   0.3792121   0.6035115
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2490793   0.2346555   0.2635030
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.4834958   0.4744404   0.4925511
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.3380590   0.3255214   0.3505967
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2142857   0.0897890   0.3387824
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5671642   0.4481408   0.6861875
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3695652   0.2296257   0.5095047
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.3333333   0.1848828   0.4817839
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              NA                0.4500000   0.3406137   0.5593863
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         NA                0.3103448   0.1413943   0.4792953
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.3387097   0.2551410   0.4222784
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              NA                0.5625000   0.3186432   0.8063568
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         NA                0.3125000   0.0846516   0.5403484
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.4197273   0.3671709   0.4722838
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.6106717   0.5420118   0.6793316
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.5204918   0.4503988   0.5905847
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.6637434   0.5439688   0.7835180
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.7915782   0.7159466   0.8672097
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.8105656   0.7217393   0.8993920
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4369686   0.3324109   0.5415263
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.6654245   0.5959812   0.7348677
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.5326544   0.4342686   0.6310403
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1386848   0.0740507   0.2033188
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3759210   0.3138364   0.4380056
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2694192   0.1897977   0.3490408
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1312515   0.0686969   0.1938061
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3263341   0.2706234   0.3820449
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2471864   0.1721583   0.3222145
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1994552   0.1753150   0.2235955
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.3429486   0.2782772   0.4076201
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2420486   0.1949587   0.2891385
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3578281   0.3329720   0.3826841
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.7183106   0.6021860   0.8344353
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.4536491   0.3857783   0.5215200
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3458824   0.1905311   0.5012338
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              NA                0.4308497   0.3277301   0.5339693
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         NA                0.3676162   0.2286495   0.5065828
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.3292091   0.2764587   0.3819596
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.6384881   0.5187668   0.7582095
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.5729734   0.4000346   0.7459123
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0774995   0.0635634   0.0914356
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.1968984   0.1351575   0.2586394
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.1346319   0.0916315   0.1776322
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2294655   0.2178993   0.2410317
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.3928258   0.3407404   0.4449113
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2886151   0.2585084   0.3187217
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.6090749   0.5247352   0.6934146
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.8058005   0.7722612   0.8393398
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.7352775   0.6779639   0.7925912
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1295532   0.1007189   0.1583875
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3058535   0.2703514   0.3413557
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2403946   0.2003609   0.2804282
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.5159351   0.4727819   0.5590882
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.7239507   0.6960586   0.7518428
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.6263015   0.5893557   0.6632474
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.5247132   0.4793610   0.5700654
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.8257217   0.7545089   0.8969344
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.6606036   0.5852494   0.7359579
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1142316   0.0999675   0.1284957
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2788839   0.2650267   0.2927410
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1786287   0.1636082   0.1936492


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
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.8763260   1.3318229   2.643444
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.4107297   0.9617724   2.069261
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.2513237   0.9791035   1.599229
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.1064519   0.8229220   1.487669
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.4223652   1.1459916   1.765391
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.0941271   0.8089790   1.479784
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.3501173   1.2622420   1.444110
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2070133   1.1231356   1.297155
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.2208967   1.0526951   1.415974
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.1965130   1.0207515   1.402539
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.4937533   1.2438453   1.793872
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2258375   0.9894331   1.518726
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.9146654   1.4649656   2.502409
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5991252   1.1845793   2.158742
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.9365358   1.4869396   2.522073
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5505865   1.1551927   2.081314
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.6930418   1.4860551   1.928859
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3940897   1.2226327   1.589591
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.6072182   1.4572453   1.772626
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2319436   1.1243131   1.349878
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.3243707   0.9486522   1.848895
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.1224730   0.7648092   1.647399
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9436464   1.5290099   2.470724
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7452589   1.2905229   2.360228
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.0381551   1.4954867   2.777742
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.4919613   1.2378172   1.798285
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.5074547   1.4095706   1.612136
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2360860   1.1678918   1.308262
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3087043   1.1640351   1.471353
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1562604   1.0151856   1.316940
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.2673534   1.9028404   2.701694
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.7102255   1.4034914   2.083997
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3970031   1.2976528   1.503960
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1881650   1.0930429   1.291565
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5494454   1.3986667   1.716478
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2979709   1.1559520   1.457438
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.8732759   1.7799913   1.971449
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3519185   1.2753804   1.433050
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          2.1472393   0.9597232   4.804131
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.9848485   0.3905933   2.483213
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm              >=155 cm          1.4493997   0.7890572   2.662366
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm         >=155 cm          1.0606061   0.4894427   2.298298
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.9649796   1.1304757   3.415505
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.4858760   0.8062206   2.738490
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm              >=155 cm          1.4184079   0.9584633   2.099069
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm         >=155 cm          1.3755096   0.8768155   2.157839
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm              >=155 cm          1.5104435   1.0559833   2.160488
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm         >=155 cm          1.3089012   0.8698982   1.969451
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.8522869   1.3925077   2.463876
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9629348   0.6263832   1.480313
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.7809945   1.4865148   2.133811
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.3964129   1.1254791   1.732568
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.9731676   1.3041230   2.985447
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2776899   0.7904424   2.065288
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          2.1804156   1.5039013   3.161253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.3709923   0.8860870   2.121259
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.0645218   1.3365303   3.189041
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.5051517   0.9111978   2.486268
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.0543980   1.4199268   2.972372
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5041832   0.9869704   2.292437
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9601979   1.6048970   2.394157
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7081971   1.4114982   2.067263
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.7364805   1.4027765   2.149569
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.3794131   1.1820262   1.609762
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.8030303   0.8970788   3.623894
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.2830189   0.5762704   2.856536
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.1499844   1.4668400   3.151286
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.3626076   0.9995111   1.857608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.6275963   1.4743042   1.796827
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.3038668   1.2041395   1.411853
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.9671300   1.3937282   2.776438
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.1955069   0.7990426   1.788686
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.5151679   1.8983856   3.332342
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.6440665   1.1893434   2.272644
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          2.3880731   1.9299779   2.954901
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.3972625   1.0955685   1.782036
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          2.0969832   1.4205898   3.095432
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.9904208   1.3980839   2.833718
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.9411321   1.8288208   2.060341
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.3572348   1.2684522   1.452231
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
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4549248   1.2331579   1.716573
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.2400711   1.0899184   1.410910
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1925967   0.9721222   1.463074
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2212033   0.9891993   1.507621
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.5228198   1.1748015   1.973934
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.2189764   0.9006127   1.649881
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          2.7106154   1.6533302   4.444022
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.9426736   1.1181561   3.375182
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          2.4863261   1.4988027   4.124504
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.8833029   1.0703760   3.313630
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.7194265   1.3742731   2.151266
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.2135485   0.9650577   1.526023
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0074184   1.6833235   2.393912
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.2677853   1.0752920   1.494738
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm              >=155 cm          1.2456534   0.7522538   2.062671
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm         >=155 cm          1.0628356   0.5930963   1.904614
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.9394605   1.5247165   2.467021
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.7404542   1.2778684   2.370495
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          2.5406414   1.8850901   3.424165
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          1.7371964   1.2932727   2.333500
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.7119168   1.4856909   1.972590
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.2577710   1.1202351   1.412193
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.3229909   1.1456064   1.527841
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.2072038   1.0305841   1.414092
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          2.3608338   1.8391800   3.030446
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.8555666   1.4063392   2.448291
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.4031818   1.2799369   1.538294
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.2139154   1.0960376   1.344471
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          1.5736630   1.3928301   1.777974
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2589805   1.0911839   1.452580
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          2.4413899   2.1395529   2.785809
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.5637418   1.3460364   1.816658


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.3302362    0.1611525   0.4993200
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0297297   -0.0178401   0.0772996
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.2128727    0.1001916   0.3255538
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0923693   -0.0159141   0.2006527
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0349673    0.0022519   0.0676827
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1002968    0.0801501   0.1204436
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1233671    0.0372550   0.2094791
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1640262    0.0866137   0.2414388
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1706580    0.1055613   0.2357547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1938848    0.1274823   0.2602873
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0558682    0.0407770   0.0709594
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0275953    0.0187485   0.0364422
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0968287   -0.0345169   0.2281744
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0267794    0.0163575   0.0372013
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0041920    0.0025833   0.0058006
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0263261    0.0212548   0.0313975
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1468406    0.0829288   0.2107525
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1569410    0.1274455   0.1864364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1398896    0.1071294   0.1726497
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0748334    0.0497176   0.0999492
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1867756    0.1725071   0.2010441
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.1464567   -0.0060612   0.2989745
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.0199584   -0.0242233   0.0641402
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1410137    0.0467663   0.2352611
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1077192   -0.0002017   0.2156402
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0339194   -0.0002383   0.0680771
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0583051    0.0081113   0.1084989
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1150803    0.0777170   0.1524436
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1465794    0.0579220   0.2352368
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1523677    0.0863480   0.2183874
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1026180    0.0472005   0.1580354
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1296654    0.0721704   0.1871604
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0446145    0.0316579   0.0575711
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0229635    0.0134638   0.0324633
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1137524   -0.0151939   0.2426986
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0020531    0.0009742   0.0031320
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0213015    0.0164879   0.0261151
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1318273    0.0698554   0.1937993
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0774642    0.0547562   0.1001723
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1101033    0.0854208   0.1347858
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1110703    0.0620123   0.1601283
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1618199    0.1482182   0.1754215
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1986175    0.0839587   0.3132763
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.0585586   -0.0704796   0.1875967
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0202647   -0.0195397   0.0600691
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0742161    0.0356413   0.1127909
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.0934582   -0.0080451   0.1949616
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1369444    0.0452636   0.2286252
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1610964    0.0985588   0.2236340
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1315943    0.0714070   0.1917817
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0274142    0.0121761   0.0426524
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0227556    0.0124751   0.0330361
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.0426526   -0.0987022   0.1840074
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0267871    0.0163717   0.0372024
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0025392    0.0012144   0.0038640
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0144369    0.0090384   0.0198355
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1522078    0.0762825   0.2281330
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1090089    0.0820812   0.1359366
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.1290437    0.0918813   0.1662062
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0736362    0.0473583   0.0999141
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1029520    0.0890186   0.1168853


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.5411613    0.1566110   0.7503727
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1294118   -0.1029168   0.3128005
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3504435    0.1312781   0.5143168
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1440166   -0.0436662   0.2979484
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0593785    0.0015845   0.1138270
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1460845    0.1214936   0.1699871
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1471053    0.0363394   0.2451395
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2468242    0.1193795   0.3558248
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.3780471    0.2170545   0.5059357
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4043730    0.2486561   0.5278174
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1617092    0.1169954   0.2041588
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0509162    0.0343115   0.0672354
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1737004   -0.0983141   0.3783463
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0752238    0.0418566   0.1074289
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0247730    0.0149630   0.0344853
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0599827    0.0483226   0.0714999
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1916344    0.1028192   0.2716575
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4360488    0.3495704   0.5110294
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2038029    0.1540620   0.2506191
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1177360    0.0763348   0.1572815
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3778974    0.3484421   0.4060211
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.4227273   -0.2327309   0.7296703
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm             NA                0.1054945   -0.1600130   0.3102318
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4111483    0.0662458   0.6286536
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.2440514   -0.0451794   0.4532438
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0889149   -0.0051155   0.1741486
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1394962    0.0102474   0.2518669
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2697375    0.1846553   0.3459413
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3752064    0.1029192   0.5648474
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4356332    0.2153484   0.5940747
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.4160692    0.1481001   0.5997474
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.4274996    0.2075161   0.5864184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2302967    0.1623290   0.2927497
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0730904    0.0424162   0.1027820
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.3558824   -0.2005949   0.6544317
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0211693    0.0095220   0.0326796
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0744872    0.0575472   0.0911227
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.4041698    0.1825326   0.5657152
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4517540    0.3099347   0.5644271
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.4605963    0.3501421   0.5522770
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.3103098    0.1611190   0.4329677
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.3938190    0.3601978   0.4256734
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4810268    0.1206505   0.6937132
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm             NA                0.1494253   -0.2528576   0.4225383
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm             NA                0.0564516   -0.0612510   0.1610999
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1502523    0.0701140   0.2234842
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1234258   -0.0228019   0.2487477
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2386153    0.0596247   0.3835369
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.5373800    0.2863317   0.7001167
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.5006520    0.2213752   0.6797580
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1208370    0.0515121   0.1850949
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0597914    0.0323499   0.0864546
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm             NA                0.1097780   -0.3380430   0.4077206
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.0752454    0.0418991   0.1074310
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.0317250    0.0155565   0.0476279
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0591914    0.0368650   0.0810004
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.1999359    0.0923858   0.2947416
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.4569414    0.3377900   0.5546540
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2000744    0.1396644   0.2562426
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.1230656    0.0770074   0.1668255
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.4740320    0.4091226   0.5318109
