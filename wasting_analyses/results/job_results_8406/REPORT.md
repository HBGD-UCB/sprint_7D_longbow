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

unadjusted

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
![](/tmp/a1804137-7803-4cae-ae37-9b1cf9b02c4e/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a1804137-7803-4cae-ae37-9b1cf9b02c4e/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a1804137-7803-4cae-ae37-9b1cf9b02c4e/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a1804137-7803-4cae-ae37-9b1cf9b02c4e/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.0467290    0.0320565   0.0614015
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1247059    0.0798920   0.1695198
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.0909091    0.0558662   0.1259520
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.1891892    0.0998340   0.2785444
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1701031    0.1171617   0.2230445
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1682243    0.0972529   0.2391957
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.0927835    0.0349925   0.1505745
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.0830671    0.0524639   0.1136702
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.0967742    0.0446880   0.1488603
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0362319    0.0050300   0.0674337
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0143678    0.0018551   0.0268805
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0326797    0.0044851   0.0608744
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0215613    0.0137972   0.0293255
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0214724    0.0057337   0.0372111
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0454545    0.0264562   0.0644529
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0503637    0.0402217   0.0605058
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1428571    0.0646797   0.2210345
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0484429    0.0236839   0.0732019
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1096818    0.0822983   0.1370653
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2325581   -0.0375474   0.5026637
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1681416    0.0190819   0.3172013
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0167266    0.0135837   0.0198695
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0330579    0.0171288   0.0489869
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0152027    0.0082327   0.0221727
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0454545    0.0099029   0.0810062
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0340237    0.0203508   0.0476966
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0275229    0.0057950   0.0492509
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                0.0873181    0.0620821   0.1125541
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              NA                0.0929265    0.0717280   0.1141250
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         NA                0.0739030    0.0492542   0.0985518
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0445969    0.0278384   0.0613555
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0541491    0.0423843   0.0659138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0508685    0.0356964   0.0660406
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                0.0417994    0.0335422   0.0500565
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              NA                0.0597640    0.0542915   0.0652366
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         NA                0.0611591    0.0526717   0.0696464
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0242188    0.0157951   0.0326424
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0194805    0.0040419   0.0349191
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0317460    0.0153788   0.0481133
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                0.1176471    0.0897031   0.1455910
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              NA                0.1978610    0.1446797   0.2510422
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         NA                0.1698842    0.1221295   0.2176388
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                0.2031250    0.1044153   0.3018347
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              NA                0.1530055    0.1007729   0.2052380
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         NA                0.1782178    0.1034756   0.2529601
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                0.1111111    0.0461174   0.1761048
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              NA                0.1161972    0.0788888   0.1535055
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         NA                0.1016949    0.0471052   0.1562846
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                0.0393701    0.0055192   0.0732209
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              NA                0.0607903    0.0349492   0.0866314
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         NA                0.0902778    0.0434316   0.1371239
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                0.0378788    0.0052887   0.0704689
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              NA                0.0676692    0.0430057   0.0923326
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         NA                0.0602410    0.0240200   0.0964619
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                0.0426136    0.0304276   0.0547997
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              NA                0.0551181    0.0270446   0.0831916
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         NA                0.0648649    0.0397623   0.0899675
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                0.0865155    0.0730533   0.0999777
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              NA                0.1780822    0.0902975   0.2658669
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         NA                0.0792453    0.0467147   0.1117759
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                0.1096818    0.0822983   0.1370653
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              NA                0.2325581   -0.0375474   0.5026637
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         NA                0.1681416    0.0190819   0.3172013
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                0.0407240    0.0308723   0.0505757
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              NA                0.0814815    0.0353216   0.1276414
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         NA                0.0176056    0.0023065   0.0329048
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                0.0593220    0.0166763   0.1019677
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              NA                0.0467446    0.0298306   0.0636585
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         NA                0.0263158    0.0035424   0.0490892
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                0.0497238    0.0314370   0.0680105
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              NA                0.0844544    0.0695521   0.0993567
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         NA                0.0699208    0.0517632   0.0880785


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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          2.6687058   1.9289938   3.692076
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.9454545   1.3376574   2.829419
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.8991163   0.5106997   1.582946
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.8891856   0.4720158   1.675052
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
0-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.8365079   1.5832134   5.081929
0-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9618608   0.5553135   1.666043
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.1202986   0.5993847   7.500468
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5329946   0.5990806   3.922799
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          1.9763652   1.1782927   3.314982
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.9088943   0.5537691   1.491757
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7485207   0.3106798   1.803411
0-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.6055046   0.1992921   1.839690
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          <151 cm              >=155 cm          1.0642296   0.7364284   1.537942
0-24 months   ki1135781-COHORTS          INDIA                          [151-155) cm         >=155 cm          0.8463653   0.5443670   1.315903
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.2141891   0.7866355   1.874127
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.1406280   0.7059714   1.842896
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <151 cm              >=155 cm          1.4297832   1.1561182   1.768228
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [151-155) cm         >=155 cm          1.4631577   1.1426631   1.873545
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          0.8043569   0.3385130   1.911271
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.3108039   0.7037859   2.441377
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <151 cm              >=155 cm          1.6818182   1.0940212   2.585428
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [151-155) cm         >=155 cm          1.4440154   1.0022862   2.080424
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <151 cm              >=155 cm          0.7532577   0.4159352   1.364148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [151-155) cm         >=155 cm          0.8773800   0.4617567   1.667102
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <151 cm              >=155 cm          1.0457746   0.5365946   2.038121
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [151-155) cm         >=155 cm          0.9152542   0.4137577   2.024591
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <151 cm              >=155 cm          1.5440727   0.5917156   4.029234
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [151-155) cm         >=155 cm          2.2930551   0.8399791   6.259801
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <151 cm              >=155 cm          1.7864656   0.7017669   4.547749
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [151-155) cm         >=155 cm          1.5903610   0.5567196   4.543127
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <151 cm              >=155 cm          1.2934382   0.7212158   2.319670
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [151-155) cm         >=155 cm          1.5221621   0.9407680   2.462857
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         <151 cm              >=155 cm          2.0583845   1.2275253   3.451617
6-24 months   ki1101329-Keneba           GAMBIA                         [151-155) cm         >=155 cm          0.9159662   0.5905017   1.420816
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <151 cm              >=155 cm          2.1202986   0.5993847   7.500468
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [151-155) cm         >=155 cm          1.5329946   0.5990806   3.922799
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <151 cm              >=155 cm          2.0008230   1.0806476   3.704531
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [151-155) cm         >=155 cm          0.4323161   0.1754089   1.065495
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      <151 cm              >=155 cm          0.7879800   0.3523628   1.762139
6-24 months   ki1135781-COHORTS          GUATEMALA                      [151-155) cm         >=155 cm          0.4436090   0.1440143   1.366454
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             >=155 cm          1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <151 cm              >=155 cm          1.6984720   1.1295519   2.553939
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [151-155) cm         >=155 cm          1.4061859   0.8964335   2.205806


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0368032    0.0198664   0.0537401
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0158559   -0.0952596   0.0635479
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0047685   -0.0567779   0.0472409
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.0127577   -0.0390460   0.0135306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0051616   -0.0004171   0.0107402
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0030501   -0.0016791   0.0077793
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0072809   -0.0066286   0.0211903
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0007564   -0.0007899   0.0023026
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0113415   -0.0439327   0.0212497
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0010796   -0.0222314   0.0200723
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0066304   -0.0085616   0.0218224
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.0154403    0.0075819   0.0232988
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0009168   -0.0043601   0.0061936
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.0392510    0.0130728   0.0654293
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0335848   -0.1214394   0.0542698
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0006775   -0.0581067   0.0594617
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.0239632   -0.0083049   0.0562314
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.0223795   -0.0088033   0.0535622
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0067911   -0.0015314   0.0151137
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0023623   -0.0034800   0.0082047
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0072809   -0.0066286   0.0211903
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0005409   -0.0049808   0.0038991
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.0152206   -0.0542615   0.0238203
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.0234100    0.0062199   0.0406001


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.4405874    0.2984837   0.5539057
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.0914761   -0.6603265   0.2824784
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                -0.0541785   -0.8462698   0.3980878
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                -0.5434783   -2.1252205   0.2377097
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1931520   -0.0377679   0.3726886
0-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0571032   -0.0351526   0.1411370
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0622494   -0.0641458   0.1736319
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                 0.0432627   -0.0490968   0.1274912
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3324675   -1.7178844   0.3467457
0-24 months   ki1135781-COHORTS          INDIA                          >=155 cm             NA                -0.0125182   -0.2900402   0.2053013
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.1294311   -0.2229893   0.3802969
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=155 cm             NA                 0.2697487    0.1208592   0.3934226
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.0364737   -0.1978128   0.2249348
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=155 cm             NA                 0.2501690    0.0665540   0.3976658
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=155 cm             NA                -0.1980932   -0.8447985   0.2219056
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=155 cm             NA                 0.0060606   -0.6870427   0.4144099
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=155 cm             NA                 0.3783671   -0.3831031   0.7206083
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=155 cm             NA                 0.3713923   -0.4077958   0.7193147
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=155 cm             NA                 0.1374589   -0.0458261   0.2886225
6-24 months   ki1101329-Keneba           GAMBIA                         >=155 cm             NA                 0.0265796   -0.0413336   0.0900638
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=155 cm             NA                 0.0622494   -0.0641458   0.1736319
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=155 cm             NA                -0.0134601   -0.1301617   0.0911907
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=155 cm             NA                -0.3451271   -1.5871771   0.3006405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=155 cm             NA                 0.3200985    0.0444012   0.5162550
