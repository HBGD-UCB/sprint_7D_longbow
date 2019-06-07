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
        value: TRUE        
      baseline_level:
        input: 'character'
        value: "[1,2)"
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
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
* single
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single

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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     2918   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1     1237   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     6767   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     9336   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4033   27114
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     2823   27114
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     3148   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      997   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     8235   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     7830   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     4551   27048
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1     2287   27048
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   0     1895   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                   1      240   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    0     3842   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                    1     1506   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               0     2474   10493
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm               1      536   10493


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
![](/tmp/53983f6e-a300-4d29-95c7-46f1832cfe93/528caa37-461d-45d8-827f-1bac4849bd33/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/53983f6e-a300-4d29-95c7-46f1832cfe93/528caa37-461d-45d8-827f-1bac4849bd33/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2905775   0.0970875   0.4840675
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2059377   0.1232972   0.2885783
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3703507   0.2421851   0.4985164
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.6229547   0.4958078   0.7501016
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.5546834   0.4862053   0.6231614
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5845687   0.5506357   0.6185016
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7161751   0.6149886   0.8173616
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4776911   0.3828971   0.5724852
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2605141   0.1860149   0.3350133
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2851479   0.2087954   0.3615004
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2890278   0.2659724   0.3120832
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.5142206   0.4923720   0.5360693
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3871940   0.2230142   0.5513739
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3292964   0.2764078   0.3821849
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1773509   0.1566870   0.1980149
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.4149011   0.4025521   0.4272502
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.6003053   0.5280076   0.6726031
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2067712   0.1737279   0.2398146
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5420826   0.5031008   0.5810643
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5564372   0.5134317   0.5994428
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3040158   0.2884428   0.3195888
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3033626   0.1407750   0.4659503
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2280179   0.1326876   0.3233482
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2754981   0.1535546   0.3974416
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.4274820   0.3016407   0.5533233
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3610835   0.2789628   0.4432043
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3433914   0.2265565   0.4602263
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3067832   0.2664786   0.3470879
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2426430   0.1447230   0.3405631
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1948163   0.1227702   0.2668625
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1455365   0.0864313   0.2046418
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1821899   0.1177855   0.2465942
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1488228   0.1306950   0.1669507
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2911798   0.2701466   0.3122130
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2109515   0.0680480   0.3538551
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.1019646   0.0788195   0.1251098
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2678610   0.2558633   0.2798586
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2191274   0.1508423   0.2874124
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.0924603   0.0683720   0.1165485
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1320545   0.1056473   0.1584617
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2474986   0.1802502   0.3147469
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2490840   0.2344103   0.2637577
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2116764   0.0842770   0.3390759
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.4112663   0.2276718   0.5948608
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.4403605   0.2261828   0.6545383
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4225632   0.3680002   0.4771261
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6616949   0.5383302   0.7850597
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3767565   0.2644326   0.4890804
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1420711   0.0753743   0.2087679
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1296852   0.0664461   0.1929243
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2088892   0.1807861   0.2369923
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3579638   0.3330887   0.3828389
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3568943   0.1795357   0.5342530
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3292109   0.2765585   0.3818634
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0794261   0.0641538   0.0946984
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2239336   0.2116417   0.2362256
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.5971153   0.5113800   0.6828506
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1329922   0.1034389   0.1625456
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5118240   0.4682770   0.5553710
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5242636   0.4787297   0.5697974
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1115541   0.0970383   0.1260699


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.6102362   0.5501413   0.6703311
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.2297297   0.1742694   0.2851900
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.6074380   0.5457864   0.6690897
0-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.6413793   0.5860858   0.6966728
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.5888889   0.5300901   0.6476877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.6865672   0.6433613   0.7297731
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.8386308   0.8029353   0.8743263
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.6645469   0.6276196   0.7014742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.4514200   0.4136828   0.4891573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.4794702   0.4438115   0.5151289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.3454854   0.3262920   0.3646787
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.5419753   0.5221615   0.5617891
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.5574468   0.4938076   0.6210860
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.1692151   0.1502685   0.1881616
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.4388957   0.4290960   0.4486953
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7662539   0.7431681   0.7893396
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3599161   0.3383625   0.3814696
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6863963   0.6699497   0.7028430
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.6356033   0.6029802   0.6682264
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4940621   0.4862037   0.5019205
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3464567   0.2878227   0.4050907
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             NA                0.1891892   0.1375523   0.2408261
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3429752   0.2830428   0.4029076
0-6 months    ki0047075b-MAL-ED          PERU                           observed             NA                0.4413793   0.3841309   0.4986278
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3814815   0.3234338   0.4395292
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.4179688   0.3574314   0.4785061
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4266382   0.3925570   0.4607194
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3906634   0.3432048   0.4381220
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3497615   0.3124631   0.3870600
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2466368   0.2139486   0.2793250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3033113   0.2704998   0.3361228
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1937262   0.1777743   0.2096780
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.3141798   0.2945906   0.3337690
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3196347   0.2577308   0.3815386
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.0969856   0.0839703   0.1100009
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2859756   0.2770468   0.2949044
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3261682   0.2980650   0.3542714
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.1714744   0.1543953   0.1885534
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2390451   0.2239262   0.2541640
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             NA                0.3579336   0.3007518   0.4151153
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.4108991   0.4034353   0.4183630
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4129032   0.3351414   0.4906651
6-24 months   ki0047075b-MAL-ED          PERU                           observed             NA                0.3918919   0.3129763   0.4708075
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.3589744   0.2834562   0.4344926
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.4939435   0.4498186   0.5380683
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.7572016   0.7031798   0.8112234
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.5739130   0.5216565   0.6261696
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2997812   0.2577294   0.3418330
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2268695   0.2061992   0.2475397
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3805837   0.3573526   0.4038147
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             NA                0.3885350   0.3120482   0.4650219
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.3559962   0.3060347   0.4059578
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0800387   0.0658162   0.0942612
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2439024   0.2332045   0.2546004
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7612827   0.7324712   0.7900941
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.2385621   0.2171991   0.2599251
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6449788   0.6246093   0.6653483
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.5983494   0.5626894   0.6340094
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2174783   0.2081017   0.2268550


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           2.1000807   1.1025505   4.000124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           1.1155300   0.8200112   1.517549
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.6401696   1.2013776   2.239226
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.0295761   0.8597631   1.232929
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0616667   1.0001793   1.126934
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1744851   1.1388291   1.211258
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1709857   1.0344102   1.325594
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.3911644   1.1646229   1.661773
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.7328047   1.3308906   2.256092
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.6814792   1.3116077   2.155654
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1953360   1.1344870   1.259449
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0539742   1.0358153   1.072452
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.4397091   0.9779764   2.119440
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0810815   1.0431020   1.120444
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9541257   0.9049349   1.005990
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0578320   1.0385338   1.077489
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2764402   1.1416931   1.427091
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.7406487   1.5095329   2.007149
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2662210   1.1879923   1.349601
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1422732   1.0899925   1.197062
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.6251199   1.5500891   1.703782
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1420546   0.6944243   1.878230
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.8297120   0.5946867   1.157621
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2449278   0.8423867   1.839826
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.0325098   0.7942565   1.342232
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0564910   0.9020227   1.237412
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2171789   0.9048246   1.637361
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.3906828   1.2394884   1.560320
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.6100334   1.1076417   2.340294
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.7953398   1.2704354   2.537118
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.6946727   1.1616351   2.472304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.6648085   1.1963170   2.316767
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3017234   1.1953458   1.417568
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0789889   1.0443234   1.114805
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.5152043   0.8005652   2.867779
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9511689   0.8066961   1.121516
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0676271   1.0349763   1.101308
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.4884870   1.1085037   1.998724
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.8545737   1.4638566   2.349577
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.8102005   1.5020396   2.181584
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.4462047   1.1874773   1.761304
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.6496407   1.5613951   1.742874
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.9506338   1.1284340   3.371905
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.9528909   0.6430373   1.412050
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8151829   0.5141723   1.292413
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1689222   1.0651401   1.282816
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1443365   0.9744815   1.343798
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.5232998   1.1708161   1.981902
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           2.1100787   1.3635270   3.265379
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           2.0267990   1.2858604   3.194681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0860756   0.9879312   1.193970
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0631905   1.0329485   1.094318
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.0886557   0.6963158   1.702060
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0813622   1.0434574   1.120644
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0077130   0.9319402   1.089647
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0891728   1.0555594   1.123857
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2749341   1.1176402   1.454365
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.7938047   1.4709785   2.187479
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2601573   1.1698837   1.357397
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1413141   1.0838638   1.201809
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.9495322   1.7284741   2.198862


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3196587    0.1343812   0.5049363
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.0237920   -0.0395387   0.0871226
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2370873    0.1240696   0.3501049
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0184246   -0.0937826   0.1306318
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0342055    0.0014288   0.0669822
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1019985    0.0806005   0.1233965
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1224557    0.0348631   0.2100483
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1868558    0.1038043   0.2699072
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1909059    0.1221689   0.2596430
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1943223    0.1237542   0.2648904
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0564575    0.0413266   0.0715885
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0277547    0.0188938   0.0366156
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1702528    0.0230712   0.3174343
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0266998    0.0161953   0.0372044
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0081358   -0.0174317   0.0011600
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0239945    0.0163683   0.0316208
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1659485    0.0996494   0.2322477
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1531448    0.1231568   0.1831329
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1443138    0.1101736   0.1784539
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0791661    0.0537556   0.1045766
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1900463    0.1756324   0.2044602
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0430940   -0.1075246   0.1937127
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0388287   -0.1148890   0.0372316
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0674771   -0.0396681   0.1746224
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0138973   -0.0982365   0.1260312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0203980   -0.0365310   0.0773269
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0745774   -0.0269674   0.1761222
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1198549    0.0820990   0.1576109
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1480204    0.0571093   0.2389314
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1549452    0.0868458   0.2230446
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1011003    0.0451468   0.1570537
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1211214    0.0602357   0.1820070
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0449033    0.0318888   0.0579178
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0230000    0.0134762   0.0325237
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1086832   -0.0263230   0.2436893
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0049790   -0.0218865   0.0119284
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0181147    0.0097951   0.0264342
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1070409    0.0423048   0.1717769
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0790141    0.0560809   0.1019473
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1069906    0.0817591   0.1322222
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1104350    0.0611111   0.1597590
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1618151    0.1479799   0.1756504
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2012268    0.0841800   0.3182735
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0193744   -0.1812712   0.1425225
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0813862   -0.2832738   0.1205015
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0713803    0.0315964   0.1111642
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0955067   -0.0098802   0.2008937
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1971566    0.1006572   0.2936560
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1577101    0.0935808   0.2218394
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1331606    0.0723482   0.1939731
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0179803   -0.0017935   0.0377540
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0226199    0.0123038   0.0329360
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0316407   -0.1276748   0.1909562
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0267853    0.0162274   0.0373432
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0006126   -0.0055999   0.0068251
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0199688    0.0129283   0.0270093
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1641674    0.0864523   0.2418824
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1055699    0.0780446   0.1330951
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1331548    0.0955211   0.1707884
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0740858    0.0476049   0.1005668
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1059242    0.0919906   0.1198578


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.5238278    0.0930121   0.7500078
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                 0.1035651   -0.2194955   0.3410426
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3903070    0.1676222   0.5534172
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0287265   -0.1631111   0.1889234
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0580848    0.0001793   0.1126367
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1485630    0.1219051   0.1744117
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1460186    0.0332655   0.2456210
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2811777    0.1413530   0.3982329
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4229009    0.2486235   0.5567557
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4052855    0.2375769   0.5361036
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1634152    0.1185443   0.2060018
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0512102    0.0345769   0.0675570
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3054153   -0.0225196   0.5281773
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0750003    0.0413210   0.1074965
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0480799   -0.1050518   0.0059547
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0546703    0.0371040   0.0719160
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2165712    0.1241079   0.2992737
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.4255016    0.3375434   0.5017810
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2102484    0.1582437   0.2590403
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1245527    0.0825625   0.1646210
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3846608    0.3548758   0.4130706
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1243851   -0.4400418   0.4675839
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.2052375   -0.6815578   0.1361597
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1967406   -0.1871033   0.4564704
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0314861   -0.2590392   0.2549723
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0534704   -0.1086196   0.1918614
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1784281   -0.1051866   0.3892612
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2809288    0.1932155   0.3591059
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3788949    0.0971809   0.5727033
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.4430024    0.2128683   0.6058520
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4099156    0.1391444   0.5955191
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3993303    0.1641011   0.5683640
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2317877    0.1634220   0.2945664
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0732064    0.0424422   0.1029822
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3400230   -0.2491175   0.6512981
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0513380   -0.2396243   0.1083495
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0633434    0.0337943   0.0919887
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3281768    0.0978830   0.4996809
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.4607925    0.3168730   0.5743915
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.4475750    0.3342386   0.5416175
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3085349    0.1578786   0.4322387
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3938074    0.3595471   0.4262350
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.4873461    0.1138161   0.7034317
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0494381   -0.5551198   0.2918100
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2267186   -0.9448734   0.2262537
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1445111    0.0611564   0.2204652
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1261311   -0.0261868   0.2558404
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3435304    0.1458949   0.4954341
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.5260840    0.2666078   0.6937568
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.5066112    0.2223106   0.6869797
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0792538   -0.0122162   0.1624580
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0594348    0.0318975   0.0861887
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0814359   -0.4361300   0.4124766
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0752404    0.0416475   0.1076558
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0076540   -0.0730302   0.0822712
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0818721    0.0526350   0.1102068
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2156457    0.1052577   0.3124147
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.4425257    0.3201804   0.5428528
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2064483    0.1452142   0.2632958
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1238170    0.0773749   0.1679213
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.4870564    0.4214550   0.5452193
