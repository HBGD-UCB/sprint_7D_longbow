---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
```




# Results Detail

## Results Plots
![](/tmp/b71ea00c-fbd9-4caa-8e0a-8ae1d0d11e11/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b71ea00c-fbd9-4caa-8e0a-8ae1d0d11e11/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2689157   0.0925155   0.4453160
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2313560   0.0982975   0.3644144
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4071570   0.2810706   0.5332434
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6364598   0.5159272   0.7569925
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5542985   0.4859595   0.6226374
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5833855   0.5501403   0.6166306
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7146801   0.6149734   0.8143868
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4949801   0.4076137   0.5823464
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2596720   0.1878507   0.3314932
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2867041   0.2167972   0.3566109
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2900363   0.2670473   0.3130254
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.5143557   0.4925147   0.5361966
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3721591   0.2212818   0.5230365
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3297595   0.2769263   0.3825927
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1647575   0.1458232   0.1836918
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.4038207   0.3925952   0.4150462
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.5983839   0.5305018   0.6662660
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1995446   0.1674156   0.2316735
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5458481   0.5083171   0.5833790
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5558194   0.5130546   0.5985843
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3053923   0.2899204   0.3208643
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2053342   0.1091797   0.3014887
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.1840900   0.0702404   0.2979395
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1445241   0.0621139   0.2269344
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.1996127   0.1089856   0.2902398
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2996060   0.2368794   0.3623327
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3477057   0.2175530   0.4778583
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3051202   0.2679890   0.3422514
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2431348   0.1477682   0.3385014
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.2013719   0.1310933   0.2716504
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1426962   0.0844653   0.2009272
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1787935   0.1182663   0.2393207
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1491293   0.1310942   0.1671645
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2604522   0.2365197   0.2843847
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2060067   0.0697825   0.3422310
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0809264   0.0651651   0.0966877
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2545269   0.2444025   0.2646512
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1955645   0.1300967   0.2610323
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.0926352   0.0687462   0.1165241
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1338327   0.1082198   0.1594457
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2472897   0.1806837   0.3138956
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2462093   0.2318263   0.2605924
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2156493   0.0911521   0.3401465
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.3111849   0.1422341   0.4801356
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3217730   0.0938837   0.5496622
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4226508   0.3702328   0.4750689
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6419508   0.5201823   0.7637193
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3474971   0.2436459   0.4513484
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1443479   0.0789019   0.2097939
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1319739   0.0690997   0.1948482
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1994347   0.1753292   0.2235402
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3576653   0.3328030   0.3825276
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2554515   0.1107158   0.4001872
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3287446   0.2759320   0.3815573
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0772780   0.0633418   0.0912142
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2180489   0.2062723   0.2298255
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6133105   0.5298749   0.6967462
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1349573   0.1059546   0.1639599
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5168502   0.4739546   0.5597458
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5242089   0.4788568   0.5695611
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1138156   0.0995510   0.1280802


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6098155   0.5497206   0.6699104
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2295335   0.1740732   0.2849938
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6078347   0.5461830   0.6694863
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6389329   0.5836393   0.6942264
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5896083   0.5308096   0.6484071
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6851468   0.6419409   0.7283527
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8388753   0.8031798   0.8745708
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6645979   0.6276706   0.7015251
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4510865   0.4133493   0.4888238
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4823532   0.4466944   0.5180119
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3454766   0.3262833   0.3646700
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5419004   0.5220866   0.5617143
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5559851   0.4923459   0.6196243
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3570019   0.3070404   0.4069634
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1689922   0.1500457   0.1879388
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.4391205   0.4293208   0.4489201
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7671374   0.7440517   0.7902231
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3602602   0.3387066   0.3818137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6860781   0.6696314   0.7025247
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6353724   0.6027493   0.6679955
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4943672   0.4865046   0.5022297
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3476723   0.2890383   0.4063063
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1888005   0.1371636   0.2404373
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3426878   0.2827554   0.4026203
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4420660   0.3848176   0.4993144
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3825980   0.3245503   0.4406457
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4181327   0.3575954   0.4786700
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4246396   0.3905584   0.4587208
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3917157   0.3442571   0.4391744
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3518542   0.3145558   0.3891527
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2469354   0.2142472   0.2796236
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3045158   0.2717043   0.3373273
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1941031   0.1781512   0.2100549
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3149693   0.2953800   0.3345585
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3203303   0.2584264   0.3822341
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0964315   0.0834162   0.1094468
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2861292   0.2772004   0.2950580
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3268004   0.2986972   0.3549036
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1715103   0.1544312   0.1885893
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2390078   0.2238889   0.2541267
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3564796   0.2992978   0.4136613
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4110348   0.4035710   0.4184987
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4127012   0.3349394   0.4904631
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3922564   0.3133408   0.4711721
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3597150   0.2841968   0.4352332
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4940935   0.4499686   0.5382183
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7566575   0.7026357   0.8106793
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5760524   0.5237959   0.6283090
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3006273   0.2585755   0.3426791
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2625307   0.2241395   0.3009220
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2268475   0.2061772   0.2475178
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3799494   0.3567184   0.4031804
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3908195   0.3143326   0.4673063
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3558378   0.3058763   0.4057993
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0798049   0.0655824   0.0940274
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2441265   0.2334285   0.2548244
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7618319   0.7330205   0.7906434
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2391620   0.2177990   0.2605250
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6447455   0.6243761   0.6651150
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5983061   0.5626461   0.6339661
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2170722   0.2077091   0.2264353


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.4409788   0.2336670   0.8322200
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              observed          1.0079399   0.6280744   1.6175518
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.6698483   0.5087436   0.8819703
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.9961294   0.8493808   1.1682320
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.9401130   0.8857315   0.9978333
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8514751   0.8276635   0.8759718
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8519503   0.7539542   0.9626836
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.7447813   0.6353606   0.8730463
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.5756588   0.4462139   0.7426553
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.5943862   0.4743919   0.7447323
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8395253   0.7971031   0.8842051
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9491700   0.9328490   0.9657767
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.6693689   0.4632432   0.9672126
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.9236911   0.8912767   0.9572844
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.9749414   0.9652427   0.9847374
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.9196126   0.9062255   0.9331974
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.7800218   0.7029224   0.8655777
0-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.5538902   0.4797702   0.6394611
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.7956064   0.7487055   0.8454452
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8747932   0.8350548   0.9164227
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.6177439   0.5896258   0.6472030
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              observed          0.5905969   0.3864371   0.9026172
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              observed          0.9750504   0.5796156   1.6402649
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              observed          0.4217370   0.2495848   0.7126319
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              observed          0.4515450   0.2959045   0.6890498
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.7830830   0.6891173   0.8898616
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8315678   0.5934539   1.1652210
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.7185391   0.6429855   0.8029706
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.6206920   0.4316405   0.8925449
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.5723162   0.4131850   0.7927339
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.5778686   0.3954825   0.8443664
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.5871402   0.4280027   0.8054473
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.7682997   0.7060836   0.8359980
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              observed          0.8269130   0.7744300   0.8829528
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.6431072   0.3451525   1.1982729
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              observed          0.8392112   0.7293904   0.9655672
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8895521   0.8692309   0.9103483
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.5984219   0.4348677   0.8234891
0-6 months    ki1135781-COHORTS          INDIA                          optimal              observed          0.5401143   0.4274972   0.6823985
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.5599514   0.4684769   0.6692872
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              observed          0.6936994   0.5707395   0.8431496
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.5989987   0.5672650   0.6325077
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              observed          0.5225313   0.3095083   0.8821700
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              observed          0.7933200   0.4842956   1.2995300
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              observed          0.8945219   0.4561783   1.7540715
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.8554066   0.7825400   0.9350583
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              observed          0.8484034   0.7209756   0.9983532
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              observed          0.6032387   0.4622388   0.7872487
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              observed          0.4801556   0.3151375   0.7315834
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.5026989   0.3224833   0.7836256
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.8791574   0.8149781   0.9483907
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9413499   0.9146156   0.9688658
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              observed          0.6536305   0.3954421   1.0803930
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              observed          0.9238609   0.8914297   0.9574719
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              observed          0.9683363   0.9523823   0.9845575
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              observed          0.8931800   0.8670463   0.9201015
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8050470   0.7113714   0.9110582
6-24 months   ki1135781-COHORTS          INDIA                          optimal              observed          0.5642922   0.4661596   0.6830830
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8016344   0.7457951   0.8616546
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              observed          0.8761551   0.8323740   0.9222390
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.5243213   0.4665171   0.5892878
