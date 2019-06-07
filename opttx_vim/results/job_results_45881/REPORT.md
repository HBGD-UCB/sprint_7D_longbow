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

**Outcome Variable:** ever_wasted

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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      127     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       53     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0       74     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       59     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       61     410
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       36     410
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       11     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        6     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       27     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1       30     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       13     103
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       16     103
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
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      550     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      161     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       20     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        6     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       33     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        9     779
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0     4584    6696
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1     1861    6696
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0       43    6696
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1       16    6696
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      143    6696
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1       49    6696
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     5915    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1904    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      412    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      162    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1097    9830
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      340    9830
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       49     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       27     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      271     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1      144     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       90     617
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       36     617
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     1520   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      531   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     5778   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     2099   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     2458   13259
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      873   13259
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
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      147     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       32     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0      101     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       32     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       76     409
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       21     409
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       15     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        2     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       47     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1       10     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       24     103
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1        5     103
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
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  0     4616    6696
0-6 months    ki1119695-PROBIT           BELARUS                        >=155 cm                  1     1829    6696
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   0       44    6696
0-6 months    ki1119695-PROBIT           BELARUS                        <151 cm                   1       15    6696
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              0      145    6696
0-6 months    ki1119695-PROBIT           BELARUS                        [151-155) cm              1       47    6696
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6392    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1     1396    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      448    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1      122    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1167    9791
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      266    9791
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       45     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       16     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      246     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      <151 cm                   1       93     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       83     499
0-6 months    ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       16     499
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     1653   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      391   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     6451   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1     1401   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     2699   13210
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      615   13210
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
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  0      141     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                  1       32     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   0       80     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                   1       40     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              0       61     382
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm              1       28     382
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  0       12     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                  1        5     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   0       35     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                   1       22     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              0       15     102
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm              1       13     102
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
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  0      550     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                  1      161     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   0       20     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                   1        6     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              0       33     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm              1        9     779
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  0     6394    6694
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                  1       49    6694
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   0       58    6694
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                   1        1    6694
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              0      189    6694
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm              1        3    6694
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  0     6149    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                  1      665    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   0      465    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                   1       53    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              0     1144    8586
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm              1      110    8586
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  0       54     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                  1       14     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   0      317     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                   1       64     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              0       90     562
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm              1       23     562
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  0     1166    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                  1      183    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   0     4106    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                   1      893    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              0     1852    8529
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm              1      329    8529


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
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
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

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0d541f9f-7281-4906-ae89-c831f44f379b/48c788c2-2761-427e-9048-471208413996/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0d541f9f-7281-4906-ae89-c831f44f379b/48c788c2-2761-427e-9048-471208413996/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3200972   0.1500420   0.4901524
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3776716   0.2479078   0.5074354
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1627420   0.0458726   0.2796115
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0904735   0.0447246   0.1362224
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2943775   0.2179395   0.3708156
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3467334   0.1013491   0.5921177
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4194530   0.3389979   0.4999081
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2966302   0.2252761   0.3679843
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3578568   0.2801942   0.4355194
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2118300   0.1749657   0.2486943
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3457553   0.2752224   0.4162883
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3724463   0.1575682   0.5873245
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.3037693   0.2203441   0.3871945
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2445739   0.2248858   0.2642621
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2994407   0.2145096   0.3843718
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3546164   0.3160735   0.3931592
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3960562   0.3623386   0.4297738
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0597386   0.0185886   0.1008886
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2612789   0.2434933   0.2790645
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.3067394   0.1949595   0.4185192
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3467143   0.2327574   0.4606712
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1872293   0.1206957   0.2537629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3090960   0.2342082   0.3839837
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2361970   0.1685573   0.3038367
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2866483   0.2145845   0.3587122
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1429660   0.1118080   0.1741241
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1504527   0.1030199   0.1978854
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2564932   0.1881641   0.3248223
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1860805   0.1715564   0.2006046
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1604893   0.0863592   0.2346194
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2378760   0.2045372   0.2712148
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2175745   0.1900814   0.2450676
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1756028   0.1617713   0.1894343
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1818977   0.0775953   0.2862001
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1950853   0.0888456   0.3013250
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0755767   0.0326127   0.1185407
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1860607   0.1416751   0.2304463
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2906572   0.0660989   0.5152154
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3200264   0.2308140   0.4092388
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1163625   0.0609654   0.1717597
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1180638   0.0654082   0.1707193
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1514242   0.1197151   0.1831334
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2847955   0.1871113   0.3824797
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3724463   0.1575682   0.5873245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1077535   0.0878899   0.1276170
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1659238   0.1036077   0.2282399
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1388147   0.1097158   0.1679136
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2391685   0.2070409   0.2712962
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0614014   0.0197366   0.1030662
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1509017   0.1308393   0.1709641


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4752066   0.4121581   0.5382551
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2899160   0.2321510   0.3476810
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1250000   0.0844083   0.1655917
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3609756   0.2943508   0.4276005
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.5048544   0.4078263   0.6018825
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2369648   0.2198019   0.2541277
0-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3958076   0.3763721   0.4152432
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2876344   0.1859286   0.3893402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2447609   0.2362612   0.2532607
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3354943   0.2982080   0.3727807
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3338583   0.3126757   0.3550409
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0788530   0.0605839   0.0971222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2641979   0.2551066   0.2732892
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2078240   0.1493922   0.2662557
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1394659   0.1254831   0.1534487
0-6 months    ki1101329-Keneba           GAMBIA                         observed             NA                0.1622128   0.1465647   0.1778610
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2824074   0.1800545   0.3847603
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1822082   0.1745617   0.1898546
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2505010   0.2124450   0.2885570
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.2528180   0.2330767   0.2725593
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1822104   0.1742135   0.1902074
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.2735043   0.2162683   0.3307402
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.1531915   0.1070438   0.1993392
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1061224   0.0674772   0.1447677
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2617801   0.2144185   0.3091417
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3921569   0.2969402   0.4873736
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1617128   0.1455117   0.1779140
6-24 months   ki1101329-Keneba           GAMBIA                         observed             NA                0.3288908   0.3097941   0.3479875
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             NA                0.2259307   0.1907517   0.2611097
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0964361   0.0901919   0.1026803
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1797153   0.1479435   0.2114871
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.1199132   0.1050778   0.1347486
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0765492   0.0583736   0.0947248
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1647321   0.1555996   0.1738646


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.0454501   0.6298128   1.7353823
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2582534   0.9315518   1.6995314
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.7814450   0.9062056   3.5020158
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3816202   0.9502069   2.0089039
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2262337   1.1294033   1.3313659
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.4560304   0.7542557   2.8107504
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1385402   0.9617259   1.3478620
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.2144386   0.9785653   1.5071668
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9253026   0.7633472   1.1216194
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1186556   0.9568045   1.3078851
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1447622   0.9400446   1.3940620
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.6066127   0.3451603   1.0661103
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           0.9468845   0.7929861   1.1306506
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0007646   0.9307414   1.0760559
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1204032   0.8682022   1.4458650
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           0.9414632   0.8615906   1.0287404
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0190788   0.9470488   1.0965872
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3199685   0.6925509   2.5157961
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0111718   0.9537264   1.0720774
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.7315965   0.5364921   0.9976539
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9057878   0.6930672   1.1837981
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1099968   0.9946669   1.2386989
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1547003   0.9317594   1.4309839
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1138127   0.8622639   1.4387462
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9010279   0.7213284   1.1254947
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9755177   0.8017643   1.1869258
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.0781654   0.8016199   1.4501144
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.1010329   0.8442464   1.4359238
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9791900   0.9171648   1.0454099
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.5608579   1.0167255   2.3961997
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0628143   0.9472889   1.1924284
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0825962   0.9717286   1.2061131
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0376285   0.9721574   1.1075087
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.5036157   0.8929409   2.5319260
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.7852538   0.4892667   1.2603015
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.4041689   0.9167476   2.1507450
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4069608   1.3170294   1.5030330
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3492075   0.6589819   2.7623838
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9183624   0.7196827   1.1718906
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.3856503   0.8950173   2.1452399
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1138630   0.7429657   1.6699168
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0679457   0.8902341   1.2811328
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1548315   0.8245161   1.6174769
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.6066127   0.3451603   1.0661103
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.8949695   0.7527933   1.0639978
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0831196   0.7789295   1.5061032
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           0.8638363   0.7252665   1.0288815
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1148746   0.9906667   1.2546554
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2467010   0.6617986   2.3485443
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0916518   0.9690621   1.2297497


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0145485   -0.1477587   0.1768556
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0975350   -0.0151035   0.2101735
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1271739    0.0160627   0.2382851
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0345265   -0.0007026   0.0697556
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0665981    0.0518967   0.0812995
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1581210   -0.0681959   0.3844378
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0581111   -0.0125731   0.1287953
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0636090   -0.0006208   0.1278387
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0267310   -0.0956240   0.0421620
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0251348   -0.0079714   0.0582410
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0500523   -0.0180656   0.1181702
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.1465157   -0.3565556   0.0635242
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0161349   -0.0665162   0.0342464
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0001870   -0.0175539   0.0179279
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0360536   -0.0401982   0.1123054
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0207581   -0.0522158   0.0106996
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0075563   -0.0214775   0.0365900
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0191145   -0.0195986   0.0578275
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0029190   -0.0123624   0.0182004
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0823299   -0.1772337   0.0125738
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0326647   -0.1257675   0.0604381
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0205946    0.0027142   0.0384751
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0478172   -0.0185116   0.1141461
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0268822   -0.0336569   0.0874213
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0283702   -0.0921671   0.0354267
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0035001   -0.0315364   0.0245362
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0117602   -0.0328011   0.0563215
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0259143   -0.0489048   0.1007333
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0038723   -0.0160517   0.0083070
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0900117    0.0205483   0.1594751
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0149420   -0.0124359   0.0423199
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0179708   -0.0055478   0.0414895
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0066077   -0.0048395   0.0180548
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0916066   -0.0039346   0.1871477
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0418938   -0.1342543   0.0504667
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0305458   -0.0032454   0.0643369
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0757194    0.0680005   0.0834383
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1014997   -0.1065042   0.3095035
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0261262   -0.1042811   0.0520287
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0448752   -0.0064734   0.0962239
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0134431   -0.0344291   0.0613153
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0102886   -0.0172716   0.0378489
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0440953   -0.0518401   0.1400307
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.1465157   -0.3565556   0.0635242
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0113174   -0.0299685   0.0073337
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0137915   -0.0409414   0.0685244
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0189015   -0.0431806   0.0053775
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0274744   -0.0007879   0.0557366
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0151478   -0.0238675   0.0541631
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0138304   -0.0041372   0.0317980


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0434742   -0.5877734    0.4237581
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2052475   -0.0734776    0.4116025
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.4386579   -0.1035024    0.7144502
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2762121   -0.0524024    0.5022161
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1844947    0.1145767    0.2488917
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3132012   -0.3258103    0.6442231
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1216823   -0.0397973    0.2580843
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1765742   -0.0219043    0.3365034
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0807275   -0.3100199    0.1084319
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1060698   -0.0451456    0.2354068
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1264561   -0.0637793    0.2826718
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.6484983   -1.8972043    0.0620107
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0560950   -0.2610561    0.1155535
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0007640   -0.0744123    0.0706802
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1074641   -0.1518054    0.3083725
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0621764   -0.1606440    0.0279374
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0187216   -0.0559118    0.0880798
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2424062   -0.4439372    0.6025115
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0110484   -0.0485188    0.0672315
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.3668737   -0.8639605   -0.0023516
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1040113   -0.4428615    0.1552613
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0990965   -0.0053617    0.1927013
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1339744   -0.0732384    0.3011801
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1021830   -0.1597378    0.3049504
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.1098436   -0.3863311    0.1115018
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0250967   -0.2472493    0.1574874
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0724985   -0.2474741    0.3103992
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0917619   -0.1844884    0.3035842
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0212522   -0.0903166    0.0434374
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3593267    0.0164503    0.5826725
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0591018   -0.0556442    0.1613752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0762946   -0.0290939    0.1708904
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0362639   -0.0286400    0.0970726
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3349365   -0.1198950    0.6050437
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.2734736   -1.0438749    0.2065390
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2878350   -0.0908127    0.5350448
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2892481    0.2407155    0.3346786
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2588242   -0.5174924    0.6379938
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0888948   -0.3895012    0.1466780
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2783172   -0.1172968    0.5338517
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1022235   -0.3459572    0.4011678
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0636228   -0.1233001    0.2194408
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1340728   -0.2128326    0.3817531
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.6484983   -1.8972043    0.0620107
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.1173565   -0.3283859    0.0601484
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0767410   -0.2838133    0.3360349
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.1576267   -0.3788036    0.0280708
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1030381   -0.0094212    0.2029684
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1978830   -0.5110337    0.5742043
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0839570   -0.0319257    0.1868264
