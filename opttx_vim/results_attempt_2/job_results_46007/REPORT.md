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
![](/tmp/eb6f2584-4163-4da9-9e3e-0a1479ea7f65/b86845bf-381c-44fe-8740-c679e7e3781a/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/eb6f2584-4163-4da9-9e3e-0a1479ea7f65/b86845bf-381c-44fe-8740-c679e7e3781a/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2800125   0.0823640   0.4776611
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2606933   0.1650935   0.3562931
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3259364   0.2082681   0.4436047
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.5706324   0.4367653   0.7044995
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.6832433   0.6203159   0.7461707
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5845687   0.5506357   0.6185016
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.7158162   0.6144595   0.8171730
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.5191445   0.4288483   0.6094408
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2560479   0.1819975   0.3300984
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2861276   0.2097333   0.3625219
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2892220   0.2661549   0.3122891
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.5144015   0.4925541   0.5362490
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.4428405   0.2826661   0.6030150
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3289879   0.2761246   0.3818512
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1731587   0.1538515   0.1924659
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.4125041   0.4014691   0.4235391
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.5940767   0.5203928   0.6677605
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.2064963   0.1734624   0.2395303
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5423670   0.5032778   0.5814561
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5571266   0.5141157   0.6001374
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.3046942   0.2890680   0.3203204
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3661119   0.2090642   0.5231596
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                0.2215160   0.1287287   0.3143033
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3107091   0.1928264   0.4285918
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                0.3445352   0.2201960   0.4688745
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3474698   0.2819982   0.4129414
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.3429473   0.2274469   0.4584476
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3067832   0.2664786   0.3470879
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2512721   0.1525190   0.3500253
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.1987179   0.1259055   0.2715303
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1425203   0.0833166   0.2017241
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1803687   0.1155758   0.2451617
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1487233   0.1306197   0.1668270
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2914412   0.2704082   0.3124742
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.2131609   0.0672400   0.3590817
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.1053739   0.0813520   0.1293957
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2659686   0.2557279   0.2762093
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2278386   0.1570731   0.2986041
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.0921810   0.0680738   0.1162882
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1328036   0.1064462   0.1591610
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                0.2477096   0.1805454   0.3148738
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2477665   0.2330259   0.2625071
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.2152660   0.0855706   0.3449613
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                0.4540985   0.2575435   0.6506536
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.3536639   0.1034701   0.6038577
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4225632   0.3680002   0.4771261
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.6636892   0.5397044   0.7876741
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3696122   0.2581149   0.4811095
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1465313   0.0790065   0.2140562
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1312087   0.0673797   0.1950377
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2119216   0.1838201   0.2400231
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3578252   0.3329521   0.3826983
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                0.3235455   0.1611366   0.4859543
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3292433   0.2765082   0.3819785
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0792740   0.0638270   0.0947209
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2225352   0.2104476   0.2346227
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.5936663   0.5077564   0.6795763
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1335470   0.1039882   0.1631059
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5138320   0.4698270   0.5578369
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.5255252   0.4800612   0.5709891
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1128621   0.0982764   0.1274478


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           2.1793175   1.0993775   4.3201038
0-24 months   ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.8812261   0.6580813   1.1800357
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.8636705   1.3412207   2.5896317
0-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           1.1239798   0.9136787   1.3826859
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.8619022   0.8014709   0.9268901
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1744851   1.1388291   1.2112575
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1715727   1.0347064   1.3265432
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.2800807   1.0948202   1.4966901
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.7630294   1.3498959   2.3026019
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.6757215   1.3081027   2.1466530
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1945336   1.1337580   1.2585671
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0536036   1.0354685   1.0720564
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.2587981   0.9069629   1.7471194
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0820951   1.0438816   1.1217075
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9772255   0.9256781   1.0316434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0639789   1.0501214   1.0780193
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2898232   1.1497888   1.4469126
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.7429658   1.5112862   2.0101619
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2655571   1.1871809   1.3491076
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1408599   1.0887407   1.1954741
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.6215015   1.5466940   1.6999272
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.9463137   0.6337033   1.4131369
0-6 months    ki0047075b-MAL-ED          BRAZIL                         observed             optimal           0.8540656   0.6057447   1.2041841
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1038466   0.7893604   1.5436262
0-6 months    ki0047075b-MAL-ED          PERU                           observed             optimal           1.2810861   0.9246374   1.7749462
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0978838   0.9937215   1.2129643
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2187552   0.9079980   1.6358672
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.3906828   1.2394884   1.5603201
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.5547422   1.0813322   2.2354123
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.7600910   1.2494528   2.4794217
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.7305376   1.1760006   2.5465636
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.6816177   1.2016937   2.3532104
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3025941   1.1962576   1.4183830
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0780212   1.0435105   1.1136733
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.4994998   0.7865524   2.8586775
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           0.9203950   0.7817164   1.0836755
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0752232   1.0525345   1.0984010
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.4315758   1.0688069   1.9174738
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.8601923   1.4669285   2.3588848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.7999894   1.4958576   2.1659562
0-6 months    ki1148112-LCNI-5           MALAWI                         observed             optimal           1.4449727   1.1870912   1.7588760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.6584126   1.5687530   1.7531965
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.9181074   1.1084869   3.3190614
6-24 months   ki0047075b-MAL-ED          PERU                           observed             optimal           0.8630107   0.5901871   1.2619514
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           1.0150155   0.5186861   1.9862815
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1689222   1.0651401   1.2828164
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.1408979   0.9712579   1.3401672
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.5527437   1.1885849   2.0284736
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           2.0458502   1.3331819   3.1394839
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           2.0032658   1.2726199   3.1533954
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0705349   0.9767178   1.1733634
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0636022   1.0333600   1.0947294
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      observed             optimal           1.2008669   0.7705940   1.8713892
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           1.0812556   1.0435986   1.1202716
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0096468   0.9339907   1.0914312
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0960175   1.0631978   1.1298504
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.2823410   1.1229830   1.4643127
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.7863526   1.4660260   2.1766706
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2552328   1.1648459   1.3526333
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.1385742   1.0816706   1.1984713
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.9269387   1.7090072   2.1726607


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3302237    0.1407739    0.5196735
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0309636   -0.1069689    0.0450418
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2815016    0.1755336    0.3874696
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0707469   -0.0468154    0.1883093
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0943544   -0.1403877   -0.0483211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1019985    0.0806005    0.1233965
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1228146    0.0351306    0.2104985
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1454024    0.0651126    0.2256921
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1953721    0.1270155    0.2637287
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1933426    0.1227439    0.2639413
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0562634    0.0411325    0.0713942
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0275738    0.0187177    0.0364299
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1146063   -0.0293401    0.2585526
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0270083    0.0164561    0.0375605
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0039436   -0.0132264    0.0053392
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0263916    0.0209972    0.0317860
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1721772    0.1046586    0.2396958
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1534197    0.1234339    0.1834056
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1440294    0.1097867    0.1782721
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0784768    0.0530779    0.1038757
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1893679    0.1749543    0.2037815
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0196552   -0.1663682    0.1270577
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.0323268   -0.1081365    0.0434829
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0322661   -0.0720313    0.1365635
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.0968441   -0.0151427    0.2088309
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0340117   -0.0006001    0.0686234
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0750215   -0.0257669    0.1758099
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1198549    0.0820990    0.1576109
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1393913    0.0480853    0.2306972
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1510437    0.0822549    0.2198324
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1041165    0.0481139    0.1601190
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1229425    0.0616885    0.1841966
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0450028    0.0320072    0.0579984
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0227386    0.0132417    0.0322355
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1064738   -0.0313884    0.2443361
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0083883   -0.0258196    0.0090430
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0200070    0.0143250    0.0256890
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0983296    0.0318220    0.1648372
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0792934    0.0563447    0.1022420
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1062415    0.0810763    0.1314067
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1102240    0.0609689    0.1594791
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1631326    0.1492204    0.1770448
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1976373    0.0785715    0.3167030
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.0622067   -0.2354096    0.1109963
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0053105   -0.2321064    0.2427273
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0713803    0.0315964    0.1111642
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0935124   -0.0124007    0.1994255
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2043008    0.1081122    0.3004894
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1532498    0.0885094    0.2179903
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1316372    0.0704016    0.1928728
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0149479   -0.0044655    0.0343612
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0227585    0.0124513    0.0330657
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.0649896   -0.0779147    0.2078938
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0267529    0.0163176    0.0371881
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0007647   -0.0054098    0.0069392
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0213673    0.0145729    0.0281617
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1676163    0.0897879    0.2454448
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1050151    0.0774820    0.1325481
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1311468    0.0931860    0.1691076
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0728242    0.0464632    0.0991853
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1046162    0.0905215    0.1187110


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.5411407    0.0903943    0.7685241
0-24 months   ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.1347826   -0.5195691    0.1525680
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.4634245    0.2544106    0.6138447
0-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                 0.1103043   -0.0944766    0.2767699
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.1602245   -0.2477060   -0.0788766
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1485630    0.1219051    0.1744117
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1464465    0.0335422    0.2461610
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.2187992    0.0866080    0.3318590
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4327945    0.2592021    0.5657087
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4032421    0.2355340    0.5341585
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1628532    0.1179775    0.2054456
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0508765    0.0342536    0.0672132
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.2055914   -0.1025809    0.4276293
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0758668    0.0420369    0.1085020
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0233053   -0.0802892    0.0306728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0601317    0.0477292    0.0723728
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2247000    0.1302751    0.3088733
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.4262653    0.3383120    0.5025276
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2098341    0.1576684    0.2587693
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1234682    0.0815077    0.1635117
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3832877    0.3534597    0.4117395
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0567321   -0.5780255    0.2923545
0-6 months    ki0047075b-MAL-ED          BRAZIL                         optimal              NA                -0.1708702   -0.6508606    0.1695622
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0940770   -0.2668485    0.3521748
0-6 months    ki0047075b-MAL-ED          PERU                           optimal              NA                 0.2194123   -0.0815050    0.4366026
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0891568   -0.0063181    0.1755734
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1794907   -0.1013240    0.3887034
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2809288    0.1932155    0.3591059
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3568065    0.0752148    0.5526552
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.4318476    0.1996496    0.5966801
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.4221449    0.1496603    0.6073139
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4053345    0.1678412    0.5750486
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2323012    0.1640597    0.2949718
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0723745    0.0416963    0.1020706
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.3331110   -0.2713711    0.6501879
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0864901   -0.2792363    0.0772145
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0699606    0.0499124    0.0895857
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3014690    0.0643773    0.4784805
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.4624212    0.3183035    0.5760709
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.4444412    0.3314872    0.5383101
0-6 months    ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.3079454    0.1576047    0.4314551
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.3970137    0.3625510    0.4296133
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.4786528    0.0978693    0.6987100
6-24 months   ki0047075b-MAL-ED          PERU                           optimal              NA                -0.1587342   -0.6943779    0.2075764
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                 0.0147934   -0.9279484    0.4965467
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1445111    0.0611564    0.2204652
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1234974   -0.0295927    0.2538245
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.3559787    0.1586634    0.5070185
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.5112057    0.2499148    0.6814763
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.5008151    0.2142194    0.6828815
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0658875   -0.0238372    0.1477491
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0597989    0.0322831    0.0865323
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      optimal              NA                 0.1672682   -0.2977003    0.4656376
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                 0.0751493    0.0417771    0.1073593
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0095546   -0.0706745    0.0837719
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0876058    0.0594412    0.1149271
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2201762    0.1095146    0.3170858
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.4402001    0.3178839    0.5405828
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.2033350    0.1415174    0.2607013
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1217085    0.0755041    0.1656037
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.4810421    0.4148649    0.5397349
