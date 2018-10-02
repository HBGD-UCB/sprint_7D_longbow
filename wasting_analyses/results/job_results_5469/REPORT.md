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

**Outcome Variable:** ever_wasted

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

agecat        studyid                    country                        mhtcm           ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       19     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        6     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      104     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       59     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0       46     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       20     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      116     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       14     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       49     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        4     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       38     222
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     222
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       31     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       24     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       57     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       58     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       39     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       33     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       34     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        7     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0       89     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       44     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       46     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       18     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0      150     290
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       19     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0       57     290
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        4     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      162     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       42     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       23     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1       10     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        3     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      139     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       14     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       42     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        9     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       43     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        9     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      350    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      218    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      270    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      217    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      199    1390
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1      136    1390
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       46     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1       32     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      113     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1      107     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       56     409
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       55     409
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       62     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       54     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      180     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1      182     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       84     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       62     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0       98     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       40     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0      229     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      144     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0      101     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       57     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0       97     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       43     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0      285     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      150     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0      123     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       57     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1138    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      352    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      282    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       76    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      380    2359
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1      131    2359
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1214    2433
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      800    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       57    2433
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       36    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0      199    2433
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1      127    2433
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0       33     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        3     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0      127     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       16     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0       49     235
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        7     235
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2237    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      627    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       60    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      159    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       66    3178
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0     9485   13734
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3726   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0       90   13734
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       35   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      291   13734
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1      107   13734
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     5915    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1904    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      412    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      162    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1097    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      340    9830
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0      121    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       44    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      605    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      230    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0      214    1275
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       61    1275
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0      381    1905
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1      190    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      547    1905
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1      276    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0      341    1905
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1      170    1905
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      389    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      240    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      878    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      662    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      549    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      327    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0      474     837
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1       40     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0      123     837
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        8     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0      174     837
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1       18     837
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     6176   53622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1     2066   53622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0    23490   53622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     8316   53622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0    10106   53622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     3468   53622
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       19     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        6     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      126     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       37     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0       52     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1       14     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      119     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1       11     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       51     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       38     222
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        1     222
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       38     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       17     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   0       80     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                   1       35     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       48     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       24     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       37     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        4     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   0      109     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       24     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       49     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1       15     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  0       59     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                  1        1     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   0      160     290
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                   1        9     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              0       60     290
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm              1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      186     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       18     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        6     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       31     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      147     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1        6     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       50     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       48     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        4     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      436    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      129    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      377    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      107    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      272    1383
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       62    1383
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       67     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1       11     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      178     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1       42     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       89     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       22     409
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       77     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       39     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      222     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1      138     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0      101     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       45     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0      105     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       33     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0      272     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1      101     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0      116     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       42     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0      107     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       33     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0      316     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1      119     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0      137     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       43     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1279    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      211    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      312    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       46    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      439    2359
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       72    2359
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1483    2133
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                  1      291    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   0       61    2133
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                   1       15    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              0      243    2133
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm              1       40    2133
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0       34     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        0     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0      127     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1        5     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0       51     219
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        2     219
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  0     9576   13734
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  1     3635   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   0       91   13734
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   1       34   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              0      295   13734
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              1      103   13734
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6392    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1396    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      448    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      122    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1167    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      266    9791
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0      103    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       33    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      543    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      143    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0      188    1045
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       35    1045
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  0      402    1863
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm                  1      153    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   0      618    1863
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm                   1      189    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              0      372    1863
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm              1      129    1863
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      475    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      154    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0     1169    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      370    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      683    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      193    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  0      159     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=155 cm                  1        2     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   0       38     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <151 cm                   1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [151-155) cm              1        2     271
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     6734   53486
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1     1490   53486
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0    26204   53486
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     5518   53486
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0    11116   53486
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     2424   53486
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                  1        2     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   0      124     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                   1       33     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              0       50     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm              1        9     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  0      116     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                  1        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   0       48     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                   1        2     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              0       37     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm              1        0     207
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  0       45     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                  1       10     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   0       75     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                   1       36     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              0       50     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm              1       18     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  0       36     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                  1        5     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   0      107     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                   1       24     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              0       56     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm              1        7     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  0       56     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                  1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   0      143     269
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                   1       12     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              0       53     269
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm              1        3     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  0      164     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                  1       27     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   0       25     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                   1        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm              1        2     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0      136     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1       11     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   0       38     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                   1        8     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0       45     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1        7     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      407    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1      132    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      276    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1      156    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0      201    1277
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1      105    1277
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       52     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1       24     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0      139     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1       76     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       67     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       43     401
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  0       70     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                  1       28     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   0      219     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                   1       97     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              0       93     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm              1       34     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  0      116     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                  1       13     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   0      275     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                   1       61     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              0      124     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm              1       25     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  0      123     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                  1       15     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   0      362     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                   1       57     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              0      149     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm              1       24     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  0     1050    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                  1      196    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   0      256    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                   1       47    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              0      358    1985
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm              1       78    1985
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  0     1290    2326
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                  1      633    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   0       64    2326
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                   1       26    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              0      207    2326
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm              1      106    2326
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  0       33     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                  1        3     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   0      124     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                   1       12     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              0       47     225
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm              1        6     225
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0     2237    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      627    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       60    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1       29    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0      159    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1       66    3178
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0    13069   13726
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1      134   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0      123   13726
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        2   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      393   13726
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        5   13726
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6149    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1      665    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      465    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1       53    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1144    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      110    8586
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0      132    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       14    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      658    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      104    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0      217    1156
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       31    1156
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  0      493    1843
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                  1       55    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   0      684    1843
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm                   1      115    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              0      445    1843
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm              1       51    1843
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  0      449    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                  1      132    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   0      991    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                   1      431    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              0      620    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm              1      186    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  0      468     823
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                  1       38     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   0      122     823
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                   1        8     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              0      170     823
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm              1       17     823
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     4694   34436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      726   34436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0    16650   34436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     3538   34436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     7450   34436
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1     1378   34436


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
![](/tmp/73a8c765-b2e7-4780-9d3e-978e33284b7e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73a8c765-b2e7-4780-9d3e-978e33284b7e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/73a8c765-b2e7-4780-9d3e-978e33284b7e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/73a8c765-b2e7-4780-9d3e-978e33284b7e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.3619632   0.2880425   0.4358839
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.3030303   0.1919383   0.4141223
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4363636   0.3050259   0.5677014
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.5043478   0.4127781   0.5959176
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.4583333   0.3430045   0.5736621
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1707317   0.0553133   0.2861501
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.3308271   0.2506950   0.4109591
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2812500   0.1708656   0.3916344
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0915033   0.0457279   0.1372787
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1764706   0.0716399   0.2813013
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1730769   0.0700505   0.2761033
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3838028   0.3072646   0.4603410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4455852   0.3941372   0.4970332
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4059701   0.3193613   0.4925790
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.4102564   0.3009636   0.5195492
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4863636   0.4202370   0.5524903
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4954955   0.4023696   0.5886214
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4655172   0.3746720   0.5563625
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5027624   0.4512152   0.5543097
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4246575   0.3444154   0.5048997
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2898551   0.2141025   0.3656076
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3860590   0.3366155   0.4355024
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3607595   0.2858244   0.4356946
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.3071429   0.2306776   0.3836081
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3448276   0.3001314   0.3895237
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.3166667   0.2486654   0.3846680
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2362416   0.2146690   0.2578142
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2122905   0.1699216   0.2546594
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2563601   0.2184952   0.2942249
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3972195   0.3758446   0.4185943
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3870968   0.2880816   0.4861119
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3895706   0.3366238   0.4425173
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2189246   0.1901869   0.2476623
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3258427   0.1933800   0.4583054
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2933333   0.2317106   0.3549561
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2820377   0.2197703   0.3443051
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2800000   0.1964853   0.3635147
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2688442   0.1985836   0.3391049
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2435094   0.2339956   0.2530232
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2822300   0.2454079   0.3190521
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2366040   0.2146291   0.2585790
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2666667   0.1991655   0.3341679
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2754491   0.2451360   0.3057622
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2218182   0.1726945   0.2709419
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3327496   0.2940909   0.3714083
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3353584   0.3030950   0.3676219
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3326810   0.2918178   0.3735442
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.3815580   0.3435895   0.4195266
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4298701   0.4051407   0.4545996
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.3732877   0.3412528   0.4053226
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0778210   0.0546480   0.1009940
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0610687   0.0200390   0.1020984
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0937500   0.0524959   0.1350041
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2506673   0.2361089   0.2652257
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2614601   0.2536208   0.2692994
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2554884   0.2438975   0.2670793
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.2269939   0.1625607   0.2914270
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.2121212   0.1132990   0.3109434
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3090909   0.1867084   0.4314735
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3043478   0.2200766   0.3886191
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3333333   0.2242208   0.4424459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2283186   0.1664993   0.2901379
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2210744   0.1725014   0.2696474
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1856287   0.1358855   0.2353720
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1410256   0.0636915   0.2183598
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1909091   0.1389119   0.2429063
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1981982   0.1239473   0.2724491
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3362069   0.2501693   0.4222445
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3833333   0.3330690   0.4335976
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.3082192   0.2332582   0.3831801
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2391304   0.1679098   0.3103511
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2707775   0.2256486   0.3159064
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2658228   0.1968876   0.3347580
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2357143   0.1653597   0.3060689
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2735632   0.2316434   0.3154830
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2388889   0.1765554   0.3012224
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1416107   0.1239041   0.1593174
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1284916   0.0938202   0.1631631
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1409002   0.1107280   0.1710724
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1640361   0.1468001   0.1812721
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1973684   0.1078649   0.2868719
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1413428   0.1007449   0.1819406
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2751495   0.2121635   0.3381355
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2720000   0.1861050   0.3578950
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2587940   0.1865796   0.3310083
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1792501   0.1707311   0.1877692
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2140351   0.1803625   0.2477077
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1856246   0.1654930   0.2057561
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2426471   0.1705657   0.3147285
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2084548   0.1780433   0.2388663
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1569507   0.1091855   0.2047159
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2756757   0.2384893   0.3128621
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2342007   0.2049741   0.2634274
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2574850   0.2191872   0.2957829
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2448331   0.2112245   0.2784417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2404159   0.2190623   0.2617694
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2203196   0.1928690   0.2477703
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1811770   0.1681093   0.1942448
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1739487   0.1670486   0.1808488
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1790251   0.1690085   0.1890417
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1818182   0.0796677   0.2839686
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3243243   0.2370522   0.4115964
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.2647059   0.1596220   0.3697897
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1219512   0.0215741   0.2223283
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1832061   0.1168219   0.2495903
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1111111   0.0333421   0.1888801
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0748299   0.0322087   0.1174512
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1739130   0.0641550   0.2836711
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2448980   0.1827005   0.3070954
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3611111   0.3041635   0.4180587
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3431373   0.2646156   0.4216589
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3157895   0.2111544   0.4204245
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3534884   0.2895080   0.4174687
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3909091   0.2996086   0.4822095
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2857143   0.1961904   0.3752381
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3069620   0.2560609   0.3578631
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2677165   0.1906395   0.3447936
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.1007752   0.0487854   0.1527650
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1815476   0.1402976   0.2227977
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1677852   0.1077366   0.2278339
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1086957   0.0567289   0.1606624
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1360382   0.1031896   0.1688868
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1387283   0.0871847   0.1902720
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1573034   0.1370823   0.1775244
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1551155   0.1143435   0.1958876
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1788991   0.1429145   0.2148837
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3291732   0.3081659   0.3501804
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2888889   0.1952288   0.3825489
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3386581   0.2862181   0.3910982
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2189246   0.1901869   0.2476623
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3258427   0.1933800   0.4583054
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.2933333   0.2317106   0.3549561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0975932   0.0905465   0.1046398
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.1023166   0.0762164   0.1284168
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0877193   0.0720613   0.1033773
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0958904   0.0481091   0.1436717
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1364829   0.1120974   0.1608685
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1250000   0.0838216   0.1661784
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1003650   0.0751998   0.1255301
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1439299   0.1195842   0.1682756
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1028226   0.0760858   0.1295593
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2271945   0.1931167   0.2612723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3030942   0.2792023   0.3269862
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2307692   0.2016771   0.2598613
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0750988   0.0521214   0.0980762
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0615385   0.0202031   0.1028738
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0909091   0.0496805   0.1321377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1339483   0.1203260   0.1475707
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1752526   0.1674729   0.1830324
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1560942   0.1447291   0.1674594


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2899160   0.2321510   0.3476810
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1250000   0.0844083   0.1655917
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4107914   0.3512139   0.4703688
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4743276   0.4258753   0.5227800
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369648   0.2198019   0.2541277
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3958076   0.3763721   0.4152432
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816368   0.2197012   0.3435724
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2447609   0.2362612   0.2532607
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2627451   0.2385772   0.2869130
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3338583   0.3126757   0.3550409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0788530   0.0605839   0.0971222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2582895   0.2518235   0.2647555
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2154736   0.1691818   0.2617655
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1833741   0.1458251   0.2209231
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1394659   0.1254831   0.1534487
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1622128   0.1465647   0.1778610
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746469   0.2119817   0.3373120
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1822082   0.1745617   0.1898546
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2019139   0.1775635   0.2262643
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2528180   0.2330767   0.2725593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763452   0.1707264   0.1819640
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1061224   0.0674772   0.1447677
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3077525   0.2591695   0.3563356
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3566085   0.3096676   0.4035494
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1617128   0.1455117   0.1779140
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3288908   0.3097941   0.3479875
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0964361   0.0901919   0.1026803
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1288927   0.1095683   0.1482172
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1199132   0.1050778   0.1347486
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0765492   0.0583736   0.0947248
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1638402   0.1577200   0.1699603


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          1.5081800   0.7281453   3.1238365
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          1.2626263   0.5734697   2.7799639
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.1557971   0.8132528   1.6426219
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0503472   0.7095047   1.5549288
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.9377014   0.9449693   3.9733425
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          1.6473214   0.7538643   3.5996769
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9285714   0.8870586   4.1929446
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8914835   0.8691862   4.1161606
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.1609743   0.9616976   1.4015439
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0577571   0.9259195   1.2083664
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1855114   0.8790475   1.5988182
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2077703   0.8717522   1.6733070
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0800082   0.8663430   1.3463694
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9122273   0.6952349   1.1969461
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.3319035   0.9955787   1.7818450
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.2446203   0.8913600   1.7378832
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1226945   0.8479387   1.4864787
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0310078   0.7421245   1.4323432
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8986160   0.7215327   1.1191604
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0851606   0.9121760   1.2909499
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.9745161   0.7503600   1.2656348
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9807439   0.8473685   1.1351124
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.4883788   0.9530696   2.3243542
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3398830   1.0654777   1.6849594
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9927751   0.7573525   1.3013786
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9532209   0.8185602   1.1100345
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1590106   1.0114390   1.3281132
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9716423   0.8785109   1.0746467
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0329341   0.7837903   1.3612735
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8318182   0.5942395   1.1643815
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0078404   0.8667263   1.1719296
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9997940   0.8442753   1.1839599
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1266180   1.0042880   1.2638487
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9783248   0.8578577   1.1157087
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.7847328   0.3763243   1.6363695
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2046875   0.7081457   2.0493974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0430562   0.9824032   1.1074539
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0192331   0.9485759   1.0951535
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          0.9458078   0.4448177   2.0110537
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.8838384   0.3815740   2.0472313
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.9846547   0.6073679   1.5963059
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0784314   0.6451805   1.8026183
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9682715   0.7512646   1.2479621
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.8130251   0.6520580   1.0137286
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.3537190   0.7338657   2.4971261
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.4054054   0.7233985   2.7303959
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1401709   0.8552459   1.5200187
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9167545   0.6440646   1.3048982
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.1323422   0.8049263   1.5929393
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.1116226   0.7489447   1.6499278
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1605712   0.8297760   1.6232400
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0134680   0.6817646   1.5065574
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9073579   0.6739393   1.2216209
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          0.9949824   0.7764664   1.2749940
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.2032013   0.7553964   1.9164686
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8616565   0.6346101   1.1699341
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9885535   0.7440379   1.3134251
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9405577   0.7962806   1.1109761
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1940582   1.0130979   1.4073417
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0355617   0.9199228   1.1657369
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8590865   0.6170291   1.1961018
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6468270   0.4227568   0.9896592
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8495517   0.7069394   1.0209335
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9340143   0.7640982   1.1417156
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9819583   0.8338459   1.1563792
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8998769   0.7476043   1.0831646
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9601033   0.8893915   1.0364371
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9881225   0.9029874   1.0812842
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.7837838   0.9567559   3.3257016
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.4558824   0.7317498   2.8966094
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.5022901   0.6112012   3.6925245
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          0.9111111   0.3092704   2.6841345
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.3241107   0.9932349   5.4382807
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7989510   0.7349656   4.4032331
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4745370   1.0746824   2.0231646
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4011438   1.1782860   1.6661523
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1193798   0.7673734   1.6328574
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2378788   0.8253166   1.8566740
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0743671   0.7536895   1.5314856
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9370079   0.6122688   1.4339841
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.8015110   1.0252210   3.1656021
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.6649458   0.8886158   3.1195084
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.2515513   0.7325472   2.1382657
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.2763006   0.6966134   2.3383747
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9860915   0.7359408   1.3212699
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1372871   0.8957741   1.4439152
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.8776198   0.6306709   1.2212653
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0288146   0.8701630   1.2163922
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.4883788   0.9530696   2.3243542
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3398830   1.0654777   1.6849594
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0483990   0.8042462   1.3666716
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8988260   0.7413981   1.0896820
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.4233220   0.8383149   2.4165687
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3035714   0.7173204   2.3689529
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.4340653   1.0597741   1.9405487
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          1.0244868   0.7138853   1.4702268
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3340739   1.1261353   1.5804079
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.0157343   0.8349998   1.2355885
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.8194332   0.3917059   1.7142216
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2105263   0.7004604   2.0920153
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.3083598   1.1743091   1.4577128
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.1653317   1.0319375   1.3159692


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0946457   -0.0665369   0.2558283
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0388430   -0.0768463   0.1545322
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.1191843    0.0093276   0.2290409
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0334967   -0.0016946   0.0686881
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0269886   -0.0054013   0.0593784
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0640712   -0.0346027   0.1627451
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0120469   -0.0699464   0.0940401
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0703841    0.0018541   0.1389141
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0239830   -0.0453491   0.0933150
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0007232   -0.0123938   0.0138402
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0014118   -0.0102561   0.0074324
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082623    0.0015948   0.0149299
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0004009   -0.0018356   0.0010338
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0012515   -0.0030806   0.0055836
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0039216   -0.0668596   0.0590165
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0011087   -0.0312531   0.0334705
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0220545   -0.0118542   0.0559631
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0010320   -0.0135015   0.0155656
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0076222   -0.0049356   0.0201800
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0155906   -0.1744672   0.1432861
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0049587   -0.1027599   0.1126773
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0128450   -0.0412955   0.0156055
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0423484   -0.0291317   0.1138285
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0207063   -0.0571477   0.0985603
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0239488   -0.0400404   0.0879380
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0225639   -0.0413901   0.0865178
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0021449   -0.0127742   0.0084845
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0018232   -0.0087361   0.0050896
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0005026   -0.0019858   0.0009805
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0029580   -0.0009902   0.0069062
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0407332   -0.1073387   0.0258723
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0228576   -0.0536576   0.0079423
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0092877   -0.0391213   0.0205459
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0048318   -0.0162688   0.0066051
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0916861   -0.0021513   0.1855235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0312403   -0.0619769   0.1244574
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0312925   -0.0023250   0.0649101
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0628546    0.0303973   0.0953119
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0408190   -0.0540593   0.1356973
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0081859   -0.0729757   0.0893475
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0604626    0.0113232   0.1096020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0228112   -0.0249524   0.0705748
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0044095   -0.0081619   0.0169809
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0002824   -0.0090174   0.0084526
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0082623    0.0015948   0.0149299
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0011571   -0.0042925   0.0019783
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0330023   -0.0126025   0.0786071
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0195482   -0.0022869   0.0413833
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0394484    0.0086521   0.0702448
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0014504   -0.0130102   0.0159110
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0298918    0.0175988   0.0421849


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.2828235   -0.4024019   0.6332420
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0817391   -0.1972434   0.2957129
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.4110993   -0.1119288   0.6881059
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.2679739   -0.0595422   0.4942511
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0656989   -0.0204991   0.1446161
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1350780   -0.1004270   0.3201820
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0252256   -0.1625251   0.1826542
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1953816   -0.0191020   0.3647242
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0724286   -0.1624564   0.2598529
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0030520   -0.0538676   0.0568972
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0035669   -0.0261626   0.0185312
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0363680    0.0054822   0.0662945
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0014234   -0.0064706   0.0035985
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0051133   -0.0127441   0.0226558
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0149254   -0.2850937   0.1984448
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0033209   -0.0984820   0.0956891
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0546426   -0.0332266   0.1350392
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0130881   -0.1895327   0.1811952
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0295103   -0.0204125   0.0769906
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0694737   -1.0731908   0.4483026
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0157895   -0.3945680   0.3053975
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0596128   -0.1960950   0.0612960
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2309402   -0.2735712   0.5355948
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0580149   -0.1874452   0.2527353
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0910326   -0.1877243   0.3043657
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0873626   -0.1969935   0.3041675
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0153791   -0.0945161   0.0580360
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0112397   -0.0547576   0.0304826
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0018301   -0.0071746   0.0034860
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0162343   -0.0056685   0.0376601
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2017354   -0.5808603   0.0864670
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0904114   -0.2192444   0.0248083
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0394308   -0.1741181   0.0798061
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0273998   -0.0942918   0.0354031
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.3352273   -0.1078028   0.6010817
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.2039295   -0.7049484   0.6283007
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.2948718   -0.0809587   0.5400326
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.2042374    0.0809245   0.3110053
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1144645   -0.1958729   0.3442671
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0278527   -0.2915111   0.2682444
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.3749902   -0.0084326   0.6126293
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1734601   -0.2809579   0.4666740
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0272673   -0.0536301   0.1019535
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0008585   -0.0277731   0.0253512
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0363680    0.0054822   0.0662945
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0119990   -0.0450320   0.0199900
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.2560448   -0.1943837   0.5366068
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.1630198   -0.0393230   0.3259690
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1479448    0.0244098   0.2558371
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0189472   -0.1893171   0.1907419
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1824451    0.1036739   0.2542937
