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
![](/tmp/3d7ee2ec-0fd5-480b-aeaf-2d0ff608c2d5/535aa57c-280e-4bf0-9fd9-578e565cf95e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/3d7ee2ec-0fd5-480b-aeaf-2d0ff608c2d5/535aa57c-280e-4bf0-9fd9-578e565cf95e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2458418   0.0611400   0.4305436
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3585607   0.2294030   0.4877184
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1687993   0.0508210   0.2867775
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0909205   0.0451634   0.1366776
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.2943775   0.2179395   0.3708156
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3537962   0.1173275   0.5902650
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.4221190   0.3416179   0.5026201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3014942   0.2298266   0.3731618
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3474922   0.2695817   0.4254027
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2140304   0.1777430   0.2503179
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4288597   0.3384577   0.5192617
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3724463   0.1575682   0.5873245
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2762374   0.1975603   0.3549145
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2433398   0.2231957   0.2634838
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3084329   0.2266425   0.3902233
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3703733   0.3318790   0.4088676
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3965194   0.3622435   0.4307953
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0608017   0.0195711   0.1020323
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2667300   0.2484115   0.2850485
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2937410   0.1654445   0.4220375
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3249637   0.2101706   0.4397568
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1872293   0.1206957   0.2537629
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3681978   0.2886291   0.4477665
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2800172   0.2104726   0.3495618
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2990485   0.2247818   0.3733153
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1354529   0.1056841   0.1652218
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1380196   0.0999578   0.1760813
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2597697   0.1830543   0.3364850
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1869079   0.1724562   0.2013595
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1732372   0.0962808   0.2501936
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2469302   0.2144655   0.2793950
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2232752   0.1954700   0.2510804
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1788690   0.1651470   0.1925911
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1784036   0.0748944   0.2819128
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.1885787   0.0784734   0.2986840
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0760855   0.0329713   0.1191997
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1860607   0.1416751   0.2304463
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2985560   0.0738815   0.5232305
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                0.3198639   0.2305151   0.4092127
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1011753   0.0488271   0.1535234
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1222120   0.0673723   0.1770517
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1431531   0.1127088   0.1735973
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                0.2811711   0.1886585   0.3736837
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                0.3724463   0.1575682   0.5873245
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0997933   0.0826954   0.1168912
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1678889   0.1022369   0.2335409
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1337717   0.1057147   0.1618287
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2354187   0.2029171   0.2679204
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0609277   0.0192882   0.1025672
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1436138   0.1246619   0.1625656


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3612238   0.6613414   2.8017755
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.3253170   0.9663445   1.8176388
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.7175193   0.8898652   3.3149653
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3748271   0.9473527   1.9951909
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2262337   1.1294033   1.3313659
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.4269637   0.7676758   2.6524549
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           1.1313494   0.9565294   1.3381203
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1948462   0.9649290   1.4795465
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.9529014   0.7807440   1.1630202
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1071548   0.9516700   1.2880429
0-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           0.9229303   0.7521416   1.1324999
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.6066127   0.3451603   1.0661103
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0412581   0.8544467   1.2689128
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0058403   0.9333288   1.0839853
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0877386   0.8553672   1.3832367
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           0.9014102   0.8284397   0.9808081
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0178885   0.9443341   1.0971719
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2968888   0.6872337   2.4473779
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9905069   0.9344137   1.0499674
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           0.7639704   0.5203616   1.1216254
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.9664144   0.7199447   1.2972618
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.1099968   0.9946669   1.2386989
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9693518   0.8008071   1.1733698
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9395110   0.7524007   1.1731526
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           0.8636663   0.6939220   1.0749327
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0296261   0.8460263   1.2530696
0-6 months    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1752886   0.9119260   1.5147099
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0871455   0.8839275   1.3370840
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9748555   0.9136958   1.0401089
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.4460001   0.9586816   2.1810329
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0238440   0.9186151   1.1411270
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0549553   0.9487648   1.1730312
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0186809   0.9581899   1.0829907
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.5330647   0.9042775   2.5990776
6-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           0.8123478   0.4903897   1.3456826
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.3947784   0.9114711   2.1343593
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4069608   1.3170294   1.5030330
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3135119   0.6537916   2.6389349
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     observed             optimal           0.9188289   0.7225893   1.1683630
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.5936481   0.9860177   2.5757289
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0760550   0.7180622   1.6125267
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1296499   0.9388413   1.3592382
6-24 months   ki1101329-Keneba           GAMBIA                         observed             optimal           1.1697176   0.8467688   1.6158358
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   observed             optimal           0.6066127   0.3451603   1.0661103
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           0.9663582   0.8237547   1.1336483
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0704416   0.7647614   1.4983042
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           0.8964017   0.7513635   1.0694372
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.1326326   1.0031761   1.2787950
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2563938   0.6637386   2.3782335
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1470495   1.0178458   1.2926540


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0888039   -0.0885221    0.2661299
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1166459    0.0046138    0.2286780
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1211167    0.0090131    0.2332203
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0340795   -0.0011436    0.0693025
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0665981    0.0518967    0.0812995
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1510582   -0.0670885    0.3692048
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.0554451   -0.0153167    0.1262068
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0587450   -0.0058783    0.1233682
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0163664   -0.0856402    0.0529074
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0229344   -0.0094522    0.0553210
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0330521   -0.1208364    0.0547323
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.1465157   -0.3565556    0.0635242
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0113970   -0.0457080    0.0685020
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0014212   -0.0167854    0.0196277
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0270615   -0.0471118    0.1012347
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0365150   -0.0677908   -0.0052392
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0070931   -0.0226505    0.0368367
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0180513   -0.0207459    0.0568486
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0025321   -0.0180850    0.0130208
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.0693316   -0.1824195    0.0437563
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0109141   -0.1066719    0.0848437
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0205946    0.0027142    0.0384751
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0112846   -0.0815958    0.0590266
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0169380   -0.0790211    0.0451452
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0407704   -0.1063176    0.0247768
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0040129   -0.0225964    0.0306223
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0241933   -0.0107882    0.0591748
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0226378   -0.0362552    0.0815307
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0046997   -0.0168121    0.0074126
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0772638    0.0055995    0.1489282
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0058878   -0.0209118    0.0326875
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0122702   -0.0114217    0.0359621
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0033414   -0.0076038    0.0142866
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0951007    0.0001007    0.1901007
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.0353872   -0.1310031    0.0602287
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0300369   -0.0038788    0.0639526
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0757194    0.0680005    0.0834383
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0936009   -0.1145500    0.3017517
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0259637   -0.1030620    0.0511346
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0600625    0.0105735    0.1095515
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0092948   -0.0401367    0.0587264
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0185598   -0.0079430    0.0450626
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0477197   -0.0431292    0.1385686
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.1465157   -0.3565556    0.0635242
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0033572   -0.0192884    0.0125740
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0118264   -0.0445160    0.0681687
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0138585   -0.0374344    0.0097174
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0312242    0.0026592    0.0597892
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0156215   -0.0233910    0.0546340
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0211183    0.0039212    0.0383154


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2653669   -0.5120783    0.6430835
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2454636   -0.0348277    0.4498357
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.4177649   -0.1237657    0.6983377
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2726358   -0.0555730    0.4987948
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1844947    0.1145767    0.2488917
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2992113   -0.3026331    0.6229908
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                 0.1160997   -0.0454462    0.2526830
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1630722   -0.0363457    0.3241172
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.0494266   -0.2808296    0.1401697
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0967840   -0.0507844    0.2236283
0-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0835054   -0.3295368    0.1169977
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.6484983   -1.8972043    0.0620107
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0396233   -0.1703480    0.2119238
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0058064   -0.0714337    0.0774783
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0806615   -0.1690886    0.2770579
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.1093728   -0.2070884   -0.0195674
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0175741   -0.0589472    0.0885658
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2289238   -0.4551092    0.5913994
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0095841   -0.0701898    0.0475894
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                -0.3089512   -0.9217405    0.1084367
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0347528   -0.3889955    0.2291456
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0990965   -0.0053617    0.1927013
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0316172   -0.2487402    0.1477538
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0643835   -0.3290790    0.1475960
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                -0.1578546   -0.4410841    0.0697092
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0287737   -0.1819963    0.2019598
0-6 months    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1491452   -0.0965802    0.3398076
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0801599   -0.1313145    0.2521038
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0257931   -0.0944561    0.0385622
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.3084371   -0.0430992    0.5415016
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0232887   -0.0885952    0.1236734
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0520926   -0.0540020    0.1475078
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0183383   -0.0436345    0.0766310
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3477118   -0.1058552    0.6152481
6-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                -0.2309999   -1.0391946    0.2568827
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.2830402   -0.0971275    0.5314753
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2892481    0.2407155    0.3346786
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2386822   -0.5295394    0.6210592
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     optimal              NA                -0.0883419   -0.3839120    0.1441016
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.3725089   -0.0141806    0.6117604
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0706795   -0.3926370    0.3798552
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1147700   -0.0651428    0.2642938
6-24 months   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1450928   -0.1809599    0.3811253
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   optimal              NA                -0.6484983   -1.8972043    0.0620107
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                -0.0348130   -0.2139537    0.1178922
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0658062   -0.3075973    0.3325788
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                -0.1155712   -0.3309137    0.0649288
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1171012    0.0031660    0.2180139
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2040712   -0.5066171    0.5795198
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1281980    0.0175329    0.2263978
