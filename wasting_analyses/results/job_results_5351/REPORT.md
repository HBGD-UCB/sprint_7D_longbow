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

**Outcome Variable:** pers_wast

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

agecat        studyid                    country                        mhtcm           pers_wast   n_cell       n
------------  -------------------------  -----------------------------  -------------  ----------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       21     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        3     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      154     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        7     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       60     248
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        3     248
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      124     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        2     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39     217
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0     217
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                0       53     240
0-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                1        2     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 0      102     240
0-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 1       13     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       64     240
0-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        6     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      131     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        2     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                0       58     283
0-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 0      165     283
0-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 1        0     283
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            0       59     283
0-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            1        1     283
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      199     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     265
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     265
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                0      510    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                1       25    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 0      372    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 1       53    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            0      270    1257
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            1       27    1257
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                0       60     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                1       14     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 0      161     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 1       33     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            0       89     375
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            1       18     375
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       88     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1        9     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      287     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1       26     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0      112     534
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1       12     534
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      133     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      343     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        5     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      148     639
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        5     639
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0      135     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        3     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      401     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1       18     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0      168     730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1        5     730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1316    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       29    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      319    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        7    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      441    2133
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       21    2133
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1697    2153
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1       90    2153
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       66    2153
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       11    2153
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      275    2153
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       14    2153
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       35     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      124     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        3     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       51     214
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     214
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1315    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      162    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       33    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       94    1633
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1633
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0    13092   13720
0-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1      105   13720
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0      125   13720
0-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0   13720
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      393   13720
0-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        5   13720
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     6290    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1      107    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      468    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       16    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0     1166    8065
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1       18    8065
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                0      126    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                1        6    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 0      653    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 1       23    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            0      212    1026
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            1        6    1026
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                0      439    1635
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm                1       42    1635
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 0      654    1635
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm                 1       67    1635
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            0      401    1635
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm            1       32    1635
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      557    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       26    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0     1345    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1       77    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      765    2811
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       41    2811
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                0      435     716
0-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                1        5     716
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 0      114     716
0-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 1        0     716
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            0      161     716
0-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            1        1     716
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                0     4814   31272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm                1      210   31272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 0    17054   31272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm                 1     1084   31272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            0     7614   31272
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm            1      496   31272
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       22     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        2     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      157     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        4     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       62     248
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        1     248
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      125     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        1     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       52     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       39     217
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0     217
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                0       49     239
0-6 months    ki0047075b-MAL-ED          INDIA                          >=155 cm                1        6     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                 0      105     239
0-6 months    ki0047075b-MAL-ED          INDIA                          <151 cm                 1        9     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       66     239
0-6 months    ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        4     239
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       41     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      129     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        3     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       62     237
0-6 months    ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        2     237
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                0       58     283
0-6 months    ki0047075b-MAL-ED          PERU                           >=155 cm                1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 0      165     283
0-6 months    ki0047075b-MAL-ED          PERU                           <151 cm                 1        0     283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            0       60     283
0-6 months    ki0047075b-MAL-ED          PERU                           [151-155) cm            1        0     283
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      198     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       30     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       33     263
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     263
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      151     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       50     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     253
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     253
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      134     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        4     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      338     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1        7     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      150     636
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1        3     636
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1249    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       31    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      302    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        6    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      427    2029
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       14    2029
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                0     1514    1845
0-6 months    ki1101329-Keneba           GAMBIA                         >=155 cm                1       36    1845
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 0       60    1845
0-6 months    ki1101329-Keneba           GAMBIA                         <151 cm                 1        7    1845
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            0      224    1845
0-6 months    ki1101329-Keneba           GAMBIA                         [151-155) cm            1        4    1845
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                0       20     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=155 cm                1        3     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 0      145     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <151 cm                 1        9     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            0       52     234
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [151-155) cm            1        5     234
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                0      109     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=155 cm                1        2     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 0       49     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <151 cm                 1        0     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            0       37     197
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [151-155) cm            1        0     197
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                0       51     230
6-24 months   ki0047075b-MAL-ED          INDIA                          >=155 cm                1        4     230
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 0       95     230
6-24 months   ki0047075b-MAL-ED          INDIA                          <151 cm                 1       16     230
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            0       57     230
6-24 months   ki0047075b-MAL-ED          INDIA                          [151-155) cm            1        7     230
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                0       39     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=155 cm                1        0     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 0      129     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          <151 cm                 1        1     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            0       61     231
6-24 months   ki0047075b-MAL-ED          NEPAL                          [151-155) cm            1        1     231
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                0       53     250
6-24 months   ki0047075b-MAL-ED          PERU                           >=155 cm                1        0     250
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 0      145     250
6-24 months   ki0047075b-MAL-ED          PERU                           <151 cm                 1        0     250
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            0       50     250
6-24 months   ki0047075b-MAL-ED          PERU                           [151-155) cm            1        2     250
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                0      188     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=155 cm                1        1     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 0       31     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <151 cm                 1        1     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            0       30     251
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [151-155) cm            1        0     251
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                0      140     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=155 cm                1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 0       46     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <151 cm                 1        0     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0       52     238
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1        0     238
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                0      420    1109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm                1       56    1109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 0      300    1109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm                 1       74    1109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            0      215    1109
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm            1       44    1109
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                0       51     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm                1       13     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 0      155     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm                 1       28     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            0       83     348
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm            1       18     348
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                0       80     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm                1       10     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 0      251     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm                 1       33     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            0      106     492
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm            1       12     492
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                0      122     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm                1        5     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 0      309     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm                 1       20     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            0      131     600
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm            1       13     600
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                0      127     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm                1        5     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 0      372     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm                 1       27     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            0      156     697
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm            1       10     697
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                0     1011    1680
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm                1       45    1680
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 0      240    1680
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm                 1       14    1680
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            0      346    1680
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm            1       24    1680
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                0     1531    2014
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm                1      145    2014
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 0       60    2014
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm                 1       13    2014
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            0      244    2014
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm            1       21    2014
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                0       32     187
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=155 cm                1        0     187
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 0      109     187
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <151 cm                 1        2     187
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            0       43     187
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [151-155) cm            1        1     187
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                0     1315    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm                1      162    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 0       33    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm                 1       10    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            0       94    1633
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm            1       19    1633
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                0     6791    7041
6-24 months   ki1119695-PROBIT           BELARUS                        >=155 cm                1        2    7041
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 0       52    7041
6-24 months   ki1119695-PROBIT           BELARUS                        <151 cm                 1        0    7041
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            0      196    7041
6-24 months   ki1119695-PROBIT           BELARUS                        [151-155) cm            1        0    7041
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                0     1484    1966
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm                1       63    1966
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 0      124    1966
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm                 1       11    1966
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            0      279    1966
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm            1        5    1966
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                0      111     907
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm                1        7     907
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 0      571     907
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm                 1       28     907
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            0      185     907
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm            1        5     907
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                0      516    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm                1       27    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 0     1225    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm                 1      113    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            0      705    2639
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm            1       53    2639
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                0      420     692
6-24 months   ki1148112-LCNI-5           MALAWI                         >=155 cm                1        4     692
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 0      109     692
6-24 months   ki1148112-LCNI-5           MALAWI                         <151 cm                 1        0     692
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            0      157     692
6-24 months   ki1148112-LCNI-5           MALAWI                         [151-155) cm            1        2     692


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
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
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
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/27386536-f149-465e-a6c0-7806f23238f5/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/27386536-f149-465e-a6c0-7806f23238f5/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/27386536-f149-465e-a6c0-7806f23238f5/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/27386536-f149-465e-a6c0-7806f23238f5/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0478522    0.0333299   0.0623744
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1287540    0.0837373   0.1737706
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0947631    0.0603520   0.1291742
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1837299    0.0963302   0.2711296
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1715076    0.1186448   0.2243704
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1692396    0.0988085   0.2396708
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319    0.0050300   0.0674337
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0326797    0.0044851   0.0608744
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0506456    0.0405110   0.0607803
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1325076    0.0553043   0.2097109
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0466504    0.0222247   0.0710760
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1096095    0.0822728   0.1369461
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2394694   -0.0315075   0.5104463
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1674937    0.0184741   0.3165134
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0167426    0.0135962   0.0198890
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0338473    0.0184535   0.0492412
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0149583    0.0081103   0.0218064
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0845453    0.0596257   0.1094648
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0917153    0.0706082   0.1128224
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0717104    0.0475021   0.0959186
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0448021    0.0283704   0.0612338
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0543222    0.0425859   0.0660586
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0512940    0.0361915   0.0663966
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0406495    0.0325958   0.0487032
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0595935    0.0541322   0.0650547
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0607056    0.0523413   0.0690699
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0242188    0.0157951   0.0326424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0194805    0.0040419   0.0349191
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0317460    0.0153788   0.0481133
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1187335    0.0905446   0.1469224
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1995573    0.1456334   0.2534812
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1713286    0.1239626   0.2186947
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2028399    0.1042471   0.3014327
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1530754    0.1008477   0.2053032
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1782382    0.1035143   0.2529622
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1102113    0.0454831   0.1749395
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1160980    0.0788034   0.1533925
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1011409    0.0466726   0.1556091
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0393701    0.0055192   0.0732209
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0607903    0.0349492   0.0866314
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0902778    0.0434316   0.1371239
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0378788    0.0052887   0.0704689
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0676692    0.0430057   0.0923326
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0602410    0.0240200   0.0964619
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0415812    0.0296263   0.0535360
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0518803    0.0243424   0.0794181
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0622014    0.0376225   0.0867803
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0866798    0.0732211   0.1001385
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1595536    0.0741479   0.2449593
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0742074    0.0424165   0.1059982
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1096115    0.0822733   0.1369497
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2392548   -0.0316912   0.5102009
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1675157    0.0184929   0.3165384
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0407240    0.0308723   0.0505757
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0814815    0.0353216   0.1276414
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0176056    0.0023065   0.0329048
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0593220    0.0166763   0.1019677
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0467446    0.0298306   0.0636585
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0263158    0.0035424   0.0490892
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0504127    0.0324585   0.0683668
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0849793    0.0701195   0.0998391
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0710035    0.0528659   0.0891411


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0835322   0.0594080   0.1076564
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1733333   0.1349698   0.2116969
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.0880150   0.0639627   0.1120673
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0234742   0.0117259   0.0352225
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0267229   0.0198773   0.0335686
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0534138   0.0439136   0.0629141
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0174830   0.0146224   0.0203435
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0341131   0.0230006   0.0452255
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0862385   0.0726276   0.0998495
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512273   0.0430760   0.0593786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0572397   0.0531274   0.0613520
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0251355   0.0183227   0.0319484
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1568981   0.1413796   0.1724166
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1695402   0.1300601   0.2090204
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1117886   0.0839169   0.1396604
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0633333   0.0438285   0.0828382
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0602583   0.0425793   0.0779372
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0494048   0.0390389   0.0597706
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0888779   0.0764467   0.1013090
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.1169626   0.0922087   0.1417166
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0401831   0.0314999   0.0488664
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0441014   0.0307319   0.0574710
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0731338   0.0631985   0.0830690


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.6906610   1.9740827   3.667352
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.9803299   1.3818754   2.837960
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.9334765   0.5309205   1.641260
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.9211327   0.4910282   1.727977
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          0.8952787   0.4341874   1.846032
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          1.0430108   0.4579132   2.375716
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          0.3965517   0.1165172   1.349614
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          0.9019608   0.2665520   3.052062
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.9958748   0.4400867   2.253571
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          2.1081505   1.2142426   3.660140
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.6163681   1.4128936   4.844938
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9211136   0.5259787   1.613089
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.1847514   0.6361916   7.502675
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5280957   0.5958589   3.918842
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.0216261   1.2359781   3.306670
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.8934271   0.5447472   1.465289
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.803411
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.839690
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0848072   0.7464579   1.576521
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8481888   0.5417939   1.327856
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2124929   0.7921717   1.855834
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1449029   0.7153136   1.832486
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.4660318   1.1857871   1.812509
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4933915   1.1662596   1.912283
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8043569   0.3385130   1.911271
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3108039   0.7037859   2.441377
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.6807156   1.0909123   2.589397
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4429679   1.0073352   2.066994
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.7546613   0.4167736   1.366482
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.8787138   0.4625262   1.669393
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0534126   0.5393545   2.057419
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9176998   0.4136526   2.035943
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.5440727   0.5917156   4.029234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.2930551   0.8399791   6.259801
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.7864656   0.7017669   4.547749
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5903610   0.5567196   4.543127
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2476867   0.6821733   2.282004
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.4959037   0.9175069   2.438922
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          1.8407238   1.0541834   3.214113
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.8561089   0.5428339   1.350178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.1827528   0.6350506   7.502410
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5282671   0.5959636   3.919032
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.0008230   1.0806476   3.704531
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.4323161   0.1754089   1.065495
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7879800   0.3523628   1.762139
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.4436090   0.1440143   1.366454
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.6856726   1.1336636   2.506469
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.4084449   0.9086240   2.183210


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0356801    0.0188844   0.0524757
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0103966   -0.0879417   0.0671486
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127577   -0.0390460   0.0135306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0027682   -0.0019585   0.0074950
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0073532   -0.0066185   0.0213249
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0007403   -0.0008069   0.0022876
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327   0.0212497
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0016933   -0.0191943   0.0225809
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0064252   -0.0084861   0.0213365
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0165902    0.0089333   0.0242471
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0009168   -0.0043601   0.0061936
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0381646    0.0119143   0.0644148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0332997   -0.1210427   0.0544434
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0015773   -0.0569670   0.0601217
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0239632   -0.0083049   0.0562314
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0223795   -0.0088033   0.0535622
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0078236   -0.0003875   0.0160348
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0021980   -0.0036421   0.0080381
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0073511   -0.0066188   0.0213211
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0005409   -0.0049808   0.0038991
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0152206   -0.0542615   0.0238203
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0227211    0.0058064   0.0396358


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.4271412    0.2872757   0.5395594
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0599803   -0.6163542   0.3048811
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5434783   -2.1252205   0.2377097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0518258   -0.0403396   0.1358261
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0628678   -0.0640492   0.1746466
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0423452   -0.0500898   0.1266435
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844   0.3467457
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                 0.0196346   -0.2551378   0.2342543
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1254258   -0.2187491   0.3724056
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2898374    0.1449591   0.4101675
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0364737   -0.1978128   0.2249348
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.2432444    0.0588411   0.3915172
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1964117   -0.8423342   0.2230503
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0141100   -0.6769666   0.4203945
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.3783671   -0.3831031   0.7206083
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.3713923   -0.4077958   0.7193147
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1583573   -0.0218122   0.3067588
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0247308   -0.0431488   0.0881934
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0628503   -0.0640522   0.1746179
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0134601   -0.1301617   0.0911907
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3451271   -1.5871771   0.3006405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3106783    0.0414811   0.5042722
