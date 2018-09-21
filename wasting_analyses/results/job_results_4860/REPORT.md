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
![](/tmp/0cacc81d-c25a-4157-87bd-05cefe562464/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0cacc81d-c25a-4157-87bd-05cefe562464/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0cacc81d-c25a-4157-87bd-05cefe562464/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0cacc81d-c25a-4157-87bd-05cefe562464/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.3619632   0.2880425   0.4358839
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.3030303   0.1919383   0.4141223
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.4217648   0.2966065   0.5469232
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.4993359   0.4094553   0.5892165
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.4517580   0.3397150   0.5638010
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1707317   0.0553133   0.2861501
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.3308271   0.2506950   0.4109591
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.2812500   0.1708656   0.3916344
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0915033   0.0457279   0.1372787
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1764706   0.0716399   0.2813013
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1730769   0.0700505   0.2761033
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.3877623   0.3110640   0.4644606
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.4517888   0.3985907   0.5049869
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.4118712   0.3259614   0.4977810
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.4096526   0.3014847   0.5178205
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.4862640   0.4202232   0.5523049
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.4961320   0.4036798   0.5885842
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.4536962   0.3659498   0.5414425
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.5033748   0.4519365   0.5548131
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.4153436   0.3371385   0.4935488
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2952724   0.2231743   0.3673706
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.3830309   0.3348225   0.4312392
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.3631026   0.2909641   0.4352411
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2913622   0.2172747   0.3654497
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.3414704   0.2970657   0.3858750
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.3068557   0.2401934   0.3735179
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.2358807   0.2144117   0.2573498
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.2140167   0.1731046   0.2549289
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.2549013   0.2183417   0.2914610
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3993902   0.3780458   0.4207347
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.3828933   0.2871537   0.4786328
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3867115   0.3339496   0.4394734
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2190310   0.1903419   0.2477201
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3553010   0.2287108   0.4818911
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.3003460   0.2401727   0.3605194
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2820335   0.2197658   0.3443012
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2601941   0.1748735   0.3455147
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2661075   0.1957858   0.3364291
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.2435031   0.2339983   0.2530079
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2828194   0.2464895   0.3191493
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.2372438   0.2154699   0.2590177
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2703758   0.2037860   0.3369655
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2739218   0.2437510   0.3040925
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.2238985   0.1752757   0.2725213
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.3368822   0.2984278   0.3753365
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.3361465   0.3040075   0.3682855
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.3336377   0.2929204   0.3743550
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.3869743   0.3499224   0.4240263
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.4300806   0.4055177   0.4546434
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.3745540   0.3429385   0.4061695
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0778210   0.0546480   0.1009940
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0610687   0.0200390   0.1020984
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0937500   0.0524959   0.1350041
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.2514204   0.2373422   0.2654987
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.2614326   0.2536195   0.2692457
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.2571255   0.2455834   0.2686677
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                0.2400000   0.0722560   0.4077440
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              NA                0.2269939   0.1625607   0.2914270
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         NA                0.2121212   0.1132990   0.3109434
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.3025471   0.1849201   0.4201742
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.2997891   0.2173367   0.3822416
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.3280048   0.2225921   0.4334175
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2321693   0.1705757   0.2937629
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.2266963   0.1770614   0.2763312
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1904995   0.1410169   0.2399821
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1404714   0.0632017   0.2177412
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1911591   0.1391685   0.2431496
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1982019   0.1240576   0.2723462
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.3290680   0.2446123   0.4135237
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3828902   0.3326836   0.4330968
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.3040457   0.2300738   0.3780176
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.2403662   0.1722915   0.3084409
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.2710176   0.2263106   0.3157246
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.2686125   0.2017129   0.3355120
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.2114465   0.1442934   0.2785996
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.2685827   0.2270346   0.3101307
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.2246395   0.1638889   0.2853901
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1416875   0.1240349   0.1593401
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1314564   0.0973341   0.1655787
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1420739   0.1122849   0.1718629
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.1648799   0.1476537   0.1821061
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1993081   0.1139297   0.2846865
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.1408912   0.1004524   0.1813300
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                0.2751348   0.2121090   0.3381607
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              NA                0.2564288   0.1813776   0.3314800
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         NA                0.2549080   0.1834553   0.3263608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.1793650   0.1708520   0.1878779
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.2142103   0.1809754   0.2474453
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.1853191   0.1653053   0.2053328
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.2463815   0.1754795   0.3172835
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.2068763   0.1766731   0.2370796
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1594173   0.1119615   0.2068731
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.2763861   0.2395275   0.3132446
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              NA                0.2348094   0.2057879   0.2638309
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.2567458   0.2188830   0.2946085
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2451721   0.2123964   0.2779478
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.2405676   0.2193701   0.2617651
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2206266   0.1935324   0.2477209
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1816906   0.1690142   0.1943671
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1742038   0.1673330   0.1810746
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1798730   0.1699459   0.1898002
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                0.1734918   0.0759363   0.2710473
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              NA                0.3202876   0.2348416   0.4057337
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         NA                0.2615257   0.1594853   0.3635660
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                0.1219512   0.0215741   0.2223283
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              NA                0.1832061   0.1168219   0.2495903
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         NA                0.1111111   0.0333421   0.1888801
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0748299   0.0322087   0.1174512
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1739130   0.0641550   0.2836711
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1346154   0.0416574   0.2275733
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.2486429   0.1856630   0.3116227
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.3675957   0.3095340   0.4256575
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.3490232   0.2710234   0.4270231
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.3157895   0.2111544   0.4204245
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.3534884   0.2895080   0.4174687
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.3909091   0.2996086   0.4822095
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.2819189   0.1970717   0.3667661
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.3108524   0.2606374   0.3610675
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.2581644   0.1852635   0.3310653
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0984357   0.0471248   0.1497466
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.1784422   0.1376978   0.2191866
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.1639772   0.1048035   0.2231509
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.1086957   0.0567289   0.1606624
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.1360382   0.1031896   0.1688868
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.1387283   0.0871847   0.1902720
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.1571700   0.1370570   0.1772830
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.1576687   0.1183661   0.1969713
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.1785028   0.1437465   0.2132591
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.3305876   0.3095941   0.3515811
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.2932540   0.2038875   0.3826204
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.3395149   0.2875328   0.3914971
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.2190331   0.1903452   0.2477209
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.3556637   0.2292616   0.4820657
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.3004109   0.2402856   0.3605362
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0974749   0.0904369   0.1045129
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0993911   0.0739174   0.1248648
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0858022   0.0704034   0.1012009
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0886752   0.0421724   0.1351780
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.1355279   0.1112420   0.1598137
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.1204961   0.0797560   0.1612362
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.1037122   0.0790739   0.1283505
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.1427138   0.1187125   0.1667151
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.1018526   0.0756155   0.1280896
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.2307653   0.1972256   0.2643049
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.3019221   0.2782072   0.3256369
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.2305060   0.2017810   0.2592311
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                0.0750988   0.0521214   0.0980762
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              NA                0.0615385   0.0202031   0.1028738
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         NA                0.0909091   0.0496805   0.1321377
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.1339297   0.1207358   0.1471236
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.1744921   0.1667735   0.1822108
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.1570362   0.1456741   0.1683983


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


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          1.5081800   0.7281453   3.123836
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          1.2626263   0.5734697   2.779964
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.1839203   0.8369108   1.674811
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0711134   0.7276731   1.576647
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.9377014   0.9449693   3.973343
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          1.6473214   0.7538643   3.599677
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.9285714   0.8870586   4.192945
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.8914835   0.8691862   4.116161
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.1651180   0.9642732   1.407796
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.0621744   0.9326924   1.209632
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1870155   0.8825919   1.596441
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2111043   0.8773436   1.671835
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1094976   0.8916389   1.380587
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9154665   0.6988687   1.199194
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.2972118   0.9878646   1.703430
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.2297207   0.8997408   1.680721
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.1719790   0.8807927   1.559430
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0531759   0.7536342   1.471774
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9073091   0.7342575   1.121146
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0806364   0.9123569   1.279954
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.9586946   0.7424208   1.237971
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9682547   0.8363923   1.120906
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.6221495   1.0887537   2.416863
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3712490   1.1021263   1.706087
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9225646   0.6892186   1.234913
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9435314   0.8086670   1.100888
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1614611   1.0155758   1.328302
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9742947   0.8818836   1.076389
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.0131151   0.7742155   1.325732
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.8281012   0.5967822   1.149082
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.9978163   0.8599576   1.157775
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9903691   0.8380957   1.170309
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.1113931   0.9941572   1.242454
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9679040   0.8519286   1.099667
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.7847328   0.3763243   1.636370
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2046875   0.7081457   2.049397
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.0398225   0.9810218   1.102148
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.0226916   0.9533251   1.097105
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm              >=155 cm          0.9458078   0.4448177   2.011054
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm         >=155 cm          0.8838384   0.3815740   2.047231
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          0.9908841   0.6158236   1.594371
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.0841444   0.6546798   1.795334
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          0.9764266   0.7609971   1.252842
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          0.8205196   0.6622943   1.016546
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.3608397   0.7368087   2.513386
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.4109766   0.7256154   2.743678
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1635596   0.8723170   1.552040
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9239601   0.6486952   1.316030
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.1275196   0.8124293   1.564814
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.1175135   0.7664161   1.629450
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.2702155   0.8920755   1.808644
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.0623940   0.6999479   1.612521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9277908   0.6957024   1.237305
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.0027271   0.7860115   1.279194
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.2088077   0.7777895   1.878678
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8545079   0.6295680   1.159817
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm              >=155 cm          0.9320114   0.7184501   1.209054
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm         >=155 cm          0.9264841   0.7824462   1.097038
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.1942707   1.0153942   1.404659
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          1.0331954   0.9182755   1.162497
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.8396585   0.6085419   1.158550
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6470344   0.4278002   0.978619
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          0.8495703   0.7086314   1.018540
0-6 months    ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9289389   0.7616896   1.132912
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          0.9812194   0.8361072   1.151517
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.8998849   0.7505292   1.078962
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          0.9587937   0.8900836   1.032808
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          0.9899961   0.9067603   1.080872
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm              >=155 cm          1.8461255   0.9907065   3.440151
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm         >=155 cm          1.5074238   0.7615544   2.983800
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm              >=155 cm          1.5022901   0.6112012   3.692525
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm         >=155 cm          0.9111111   0.3092704   2.684134
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          2.3241107   0.9932349   5.438281
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.7989510   0.7349656   4.403233
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.4784086   1.0758573   2.031582
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4037131   1.1827485   1.665959
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          1.1193798   0.7673734   1.632857
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          1.2378788   0.8253166   1.856674
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.1026309   0.7843853   1.549997
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9157400   0.6066510   1.382310
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.8127792   1.0263633   3.201759
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          1.6658304   0.8836118   3.140509
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.2515513   0.7325472   2.138266
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.2763006   0.6966134   2.338375
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.0031728   0.7581965   1.327302
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.1357308   0.8999887   1.433223
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          0.8870688   0.6498068   1.210962
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          1.0270044   0.8702529   1.211990
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          1.6237897   1.0907229   2.417381
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.3715323   1.1026710   1.705949
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.0196582   0.7813375   1.330671
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8802487   0.7255437   1.067941
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          1.5283627   0.8774766   2.662057
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          1.3588475   0.7289259   2.533133
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.3760556   1.0300908   1.838215
6-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.9820690   0.6931350   1.391445
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.3083514   1.1091724   1.543298
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          0.9988767   0.8248874   1.209565
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm              >=155 cm          0.8194332   0.3917059   1.714222
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm         >=155 cm          1.2105263   0.7004604   2.092015
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.3028633   1.1727764   1.447380
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.1725269   1.0409022   1.320796


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.0946457   -0.0665369   0.2558283
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0534418   -0.0569249   0.1638085
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.1191843    0.0093276   0.2290409
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0334967   -0.0016946   0.0686881
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0230291   -0.0095163   0.0555745
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0646750   -0.0328981   0.1622481
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0238679   -0.0553761   0.1031120
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0649667    0.0000335   0.1298999
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0397636   -0.0275391   0.1070664
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0010841   -0.0119045   0.0140727
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0035826   -0.0124319   0.0052667
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0081559    0.0014984   0.0148134
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0003967   -0.0018314   0.0010380
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0012578   -0.0030616   0.0055772
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0076307   -0.0696089   0.0543476
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0030239   -0.0351745   0.0291267
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0166382   -0.0164912   0.0497675
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0010320   -0.0135015   0.0155656
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0068691   -0.0053496   0.0190878
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0155906   -0.1744672   0.1432861
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0115024   -0.0922449   0.1152498
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0166957   -0.0450076   0.0116161
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0429027   -0.0285105   0.1143159
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0278452   -0.0485803   0.1042708
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0227130   -0.0385408   0.0839669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0468316   -0.0144240   0.1080872
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0022216   -0.0127996   0.0083564
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0026671   -0.0096068   0.0042726
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0004880   -0.0019832   0.0010073
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0028432   -0.0011015   0.0067879
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0444677   -0.1098615   0.0209262
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0235680   -0.0540419   0.0069059
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0096267   -0.0387341   0.0194806
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0053454   -0.0164741   0.0057832
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.1000125    0.0099698   0.1900552
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.0312403   -0.0619769   0.1244574
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0312925   -0.0023250   0.0649101
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0591097    0.0262662   0.0919532
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.0408190   -0.0540593   0.1356973
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0119813   -0.0648259   0.0887885
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0628021    0.0141882   0.1114159
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0228112   -0.0249524   0.0705748
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0045428   -0.0079376   0.0170233
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0016968   -0.0104143   0.0070206
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0081538    0.0014962   0.0148114
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0010388   -0.0041623   0.0020846
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.0402175   -0.0042474   0.0846825
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0162010   -0.0050962   0.0374981
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0358777    0.0055366   0.0662188
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0014504   -0.0130102   0.0159110
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0299104    0.0179553   0.0418656


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                 0.2828235   -0.4024019   0.6332420
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.1124601   -0.1529488   0.3167719
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.4110993   -0.1119288   0.6881059
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.2679739   -0.0595422   0.4942511
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0560603   -0.0298864   0.1348344
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1363509   -0.0962067   0.3195719
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0499785   -0.1312957   0.2022061
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.1803434   -0.0207602   0.3418268
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1200862   -0.1084462   0.3015012
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0045748   -0.0517739   0.0579046
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0090514   -0.0316635   0.0130651
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0358997    0.0051075   0.0657388
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0014085   -0.0064561   0.0036138
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0051389   -0.0126656   0.0226303
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0290421   -0.2941646   0.1817675
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0090574   -0.1101060   0.0827931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0412231   -0.0444483   0.1198672
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0130881   -0.1895327   0.1811952
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0265946   -0.0219164   0.0728027
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm             NA                -0.0694737   -1.0731908   0.4483026
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.0366262   -0.3572517   0.3161998
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                -0.0774838   -0.2122494   0.0422998
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.2339625   -0.2705016   0.5381246
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0780168   -0.1629893   0.2690793
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0863353   -0.1783833   0.2915861
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1813225   -0.0934529   0.3870491
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                -0.0159295   -0.0946726   0.0571494
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0164419   -0.0601388   0.0254539
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm             NA                -0.0017767   -0.0071568   0.0035746
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0156041   -0.0062781   0.0370104
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.2202308   -0.5908543   0.0640480
0-6 months    ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0932213   -0.2206285   0.0208873
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                -0.0408700   -0.1721110   0.0756760
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                -0.0303123   -0.0953566   0.0308695
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm             NA                 0.3656706   -0.0575235   0.6195132
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm             NA                 0.2039295   -0.7049484   0.6283007
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.2948718   -0.0809587   0.5400326
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.1920689    0.0677157   0.2998352
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                 0.1144645   -0.1958729   0.3442671
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0407666   -0.2594987   0.2694485
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.3894997    0.0097585   0.6236165
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.1734601   -0.2809579   0.4666740
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0280920   -0.0521840   0.1022433
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                -0.0051592   -0.0320190   0.0210016
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0358905    0.0050990   0.0657289
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0107724   -0.0436794   0.0210970
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                 0.3120232   -0.1326922   0.5821354
6-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.1351058   -0.0608488   0.2948647
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1345532    0.0132027   0.2409808
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm             NA                 0.0189472   -0.1893171   0.1907419
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.1825586    0.1062071   0.2523879
