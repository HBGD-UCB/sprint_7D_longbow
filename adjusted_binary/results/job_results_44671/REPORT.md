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

**Outcome Variable:** wast_rec90d

## Predictor Variables

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       wast_rec90d   n_cell      n
------------  -------------------------  -----------------------------  --------  ------------  -------  -----
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0       24    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       46    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0        8    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1       17    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       13    124
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       16    124
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1       11     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0        0     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        4     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        3     23
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        2     23
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0       58    177
0-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       84    177
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0       12    177
0-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1       16    177
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        1    177
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        6    177
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0       18     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       59     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        2     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1     93
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1       12     93
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0        3     34
0-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1       14     34
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  0        2     34
0-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        9     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1     34
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        5     34
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0       11     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       34     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        2     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1       13     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        4     83
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       19     83
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        4     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       13     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        1     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        2     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     45
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       22     45
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       98    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      155    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        8    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       27    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       14    326
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       24    326
0-24 months   ki1000108-IRC              INDIA                          [20-30)              0      132    395
0-24 months   ki1000108-IRC              INDIA                          [20-30)              1      203    395
0-24 months   ki1000108-IRC              INDIA                          <20                  0       14    395
0-24 months   ki1000108-IRC              INDIA                          <20                  1       16    395
0-24 months   ki1000108-IRC              INDIA                          >=30                 0       16    395
0-24 months   ki1000108-IRC              INDIA                          >=30                 1       14    395
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       64    254
0-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       40    254
0-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0    254
0-24 months   ki1000109-EE               PAKISTAN                       <20                  1        1    254
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 0       83    254
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       66    254
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0      131    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1       59    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0       20    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1        9    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       12    243
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       12    243
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       41     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1        3     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0        4     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        0     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       13     62
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        1     62
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0      133    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      154    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       16    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1       19    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       52    419
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       45    419
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       84    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1      120    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       20    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1       26    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       24    307
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       33    307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       72    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      127    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       25    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       36    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       20    311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       31    311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0      165    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      297    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0       19    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       29    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       81    710
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      119    710
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      291   1514
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      380   1514
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  0       71   1514
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  1      100   1514
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      332   1514
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      340   1514
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        9     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       11     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        6     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        3     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        5     37
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3     37
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0       99    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1        0    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       18    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1        0    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0       59    176
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1        0    176
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      165    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      198    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       53    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       49    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       50    561
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       46    561
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0      222   2197
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1     1388   2197
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  0       22   2197
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  1      203   2197
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0       60   2197
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1      302   2197
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0     1067   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1299   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      280   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      328   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      277   3563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      312   3563
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0       72    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1       42    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0       18    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1       18    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0       55    238
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1       33    238
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0      936   1940
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1      302   1940
0-24 months   ki1135781-COHORTS          INDIA                          <20                  0      136   1940
0-24 months   ki1135781-COHORTS          INDIA                          <20                  1       34   1940
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      411   1940
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      121   1940
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0      379   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      575   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0       98   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1      152   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      187   1689
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      298   1689
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0       25     63
0-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1        6     63
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       10     63
0-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        3     63
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0       17     63
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1        2     63
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0      997   3835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1      737   3835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0     1022   3835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1      735   3835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0      187   3835
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      157   3835
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0        8     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       26     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  0        3     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <20                  1       12     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 0        2     62
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       11     62
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        8     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  0        0     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <20                  1        3     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 0        1     14
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 1        2     14
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              0       22     82
0-6 months    ki0047075b-MAL-ED          INDIA                          [20-30)              1       42     82
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  0        3     82
0-6 months    ki0047075b-MAL-ED          INDIA                          <20                  1       10     82
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 0        1     82
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 1        4     82
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              0        8     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          [20-30)              1       26     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  0        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          <20                  1        1     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 0        0     43
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 1        7     43
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           [20-30)              1        5     11
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           <20                  1        3     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 0        0     11
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 1        3     11
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0        6     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       12     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        7     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        1     33
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1        6     33
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        0     12
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       10     12
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       56    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1      107    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        4    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       16    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0        6    203
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       14    203
0-6 months    ki1000108-IRC              INDIA                          [20-30)              0       70    240
0-6 months    ki1000108-IRC              INDIA                          [20-30)              1      131    240
0-6 months    ki1000108-IRC              INDIA                          <20                  0        9    240
0-6 months    ki1000108-IRC              INDIA                          <20                  1       11    240
0-6 months    ki1000108-IRC              INDIA                          >=30                 0        8    240
0-6 months    ki1000108-IRC              INDIA                          >=30                 1       11    240
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              0       17    108
0-6 months    ki1000109-EE               PAKISTAN                       [20-30)              1       18    108
0-6 months    ki1000109-EE               PAKISTAN                       <20                  0        0    108
0-6 months    ki1000109-EE               PAKISTAN                       <20                  1        1    108
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 0       30    108
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 1       42    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0       50    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1       37    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  0        5    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  1        5    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 0        6    108
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 1        5    108
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       11     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1        0     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0        1     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        0     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0        6     18
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        0     18
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0       44    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1      114    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  0        5    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  1       16    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       15    223
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       29    223
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       28    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1       98    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  0        4    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <20                  1       19    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 0        7    184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       28    184
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       12    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1      116    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0        4    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1       34    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0        5    198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       27    198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0       60    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      163    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0        7    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       19    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       34    339
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       56    339
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              0       55    414
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              1      111    414
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  0       18    414
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  1       36    414
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 0       78    414
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 1      116    414
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1        0      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        1      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        2      9
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3      9
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              0       43    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              1       69    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  0       17    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  1       19    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 0       15    180
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 1       17    180
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              0      179   2131
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              1     1379   2131
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  0       18   2131
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  1      200   2131
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 0       54   2131
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 1      301   2131
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0      418   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1     1248   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      126   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1      318   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0       97   2507
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      300   2507
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              0       17    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              1       39    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  0        5    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  1       17    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 0       17    127
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 1       32    127
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              0      523   1276
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              1      302   1276
0-6 months    ki1135781-COHORTS          INDIA                          <20                  0       78   1276
0-6 months    ki1135781-COHORTS          INDIA                          <20                  1       34   1276
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 0      218   1276
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 1      121   1276
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              0      121    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      317    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  0       26    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  1       81    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 0       51    752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 1      156    752
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              0        1      3
0-6 months    ki1148112-LCNI-5           MALAWI                         [20-30)              1        0      3
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  0        0      3
0-6 months    ki1148112-LCNI-5           MALAWI                         <20                  1        0      3
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 0        2      3
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 1        0      3
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0      362   2422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1      737   2422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  0      343   2422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  1      735   2422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0       88   2422
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      157   2422
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              0       16     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              1       20     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  0        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  1        5     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       11     62
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1        5     62
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              0        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [20-30)              1        3      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  0        0      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <20                  1        1      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0        2      9
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        0      9
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              0       36     95
6-24 months   ki0047075b-MAL-ED          INDIA                          [20-30)              1       42     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  0        9     95
6-24 months   ki0047075b-MAL-ED          INDIA                          <20                  1        6     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0        0     95
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        2     95
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              0       10     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          [20-30)              1       33     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  0        0     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          <20                  1        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0        1     50
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1        5     50
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              0        3     23
6-24 months   ki0047075b-MAL-ED          PERU                           [20-30)              1        9     23
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  0        2     23
6-24 months   ki0047075b-MAL-ED          PERU                           <20                  1        6     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0        1     23
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        2     23
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              0        5     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [20-30)              1       22     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  0        1     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <20                  1        6     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0        3     50
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       13     50
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              0        3     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [20-30)              1       13     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  0        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <20                  1        1     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0        3     33
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       12     33
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              0       42    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              1       48    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  0        4    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  1       11    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0        8    123
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       10    123
6-24 months   ki1000108-IRC              INDIA                          [20-30)              0       62    155
6-24 months   ki1000108-IRC              INDIA                          [20-30)              1       72    155
6-24 months   ki1000108-IRC              INDIA                          <20                  0        5    155
6-24 months   ki1000108-IRC              INDIA                          <20                  1        5    155
6-24 months   ki1000108-IRC              INDIA                          >=30                 0        8    155
6-24 months   ki1000108-IRC              INDIA                          >=30                 1        3    155
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              0       47    146
6-24 months   ki1000109-EE               PAKISTAN                       [20-30)              1       22    146
6-24 months   ki1000109-EE               PAKISTAN                       <20                  0        0    146
6-24 months   ki1000109-EE               PAKISTAN                       <20                  1        0    146
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 0       53    146
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 1       24    146
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              0       81    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              1       22    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  0       15    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  1        4    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0        6    135
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1        7    135
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              0       30     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [20-30)              1        3     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  0        3     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <20                  1        0     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0        7     44
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1        1     44
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              0       89    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              1       40    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  0       11    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  1        3    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       37    196
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       16    196
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              0       56    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              1       22    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  0       16    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  1        7    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       17    123
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1        5    123
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              0       60    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              1       11    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  0       21    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  1        2    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       15    113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1        4    113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              0      105    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              1      134    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  0       12    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  1       10    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0       47    371
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       63    371
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              0      236   1100
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              1      269   1100
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  0       53   1100
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  1       64   1100
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      254   1100
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      224   1100
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              0        8     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [20-30)              1       11     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  0        4     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <20                  1        2     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0        3     28
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        0     28
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              0       99    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [20-30)              1        0    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  0       18    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <20                  1        0    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0       59    176
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1        0    176
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              0      122    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              1      129    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  0       36    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  1       30    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       35    381
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1       29    381
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              0       43     66
6-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              1        9     66
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  0        4     66
6-24 months   ki1119695-PROBIT           BELARUS                        <20                  1        3     66
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0        6     66
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1        1     66
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              0      649   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              1       51   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  0      154   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  1       10   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0      180   1056
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1       12   1056
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              0       55    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              1        3    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  0       13    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  1        1    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0       38    111
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1        1    111
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              0      413    664
6-24 months   ki1135781-COHORTS          INDIA                          [20-30)              1        0    664
6-24 months   ki1135781-COHORTS          INDIA                          <20                  0       58    664
6-24 months   ki1135781-COHORTS          INDIA                          <20                  1        0    664
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      193    664
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 1        0    664
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              0      258    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              1      258    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  0       72    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  1       71    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      136    937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      142    937
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              0       24     60
6-24 months   ki1148112-LCNI-5           MALAWI                         [20-30)              1        6     60
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  0       10     60
6-24 months   ki1148112-LCNI-5           MALAWI                         <20                  1        3     60
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0       15     60
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1        2     60
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              0      635   1413
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              1        0   1413
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  0      679   1413
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  1        0   1413
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0       99   1413
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1        0   1413


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/e64c5e22-1941-4e37-a24f-d429a7be90fe/0d9d9611-0d6d-43bf-b4b0-7180586060b8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e64c5e22-1941-4e37-a24f-d429a7be90fe/0d9d9611-0d6d-43bf-b4b0-7180586060b8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e64c5e22-1941-4e37-a24f-d429a7be90fe/0d9d9611-0d6d-43bf-b4b0-7180586060b8/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e64c5e22-1941-4e37-a24f-d429a7be90fe/0d9d9611-0d6d-43bf-b4b0-7180586060b8/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.6571429   0.5406898   0.7735959
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.6800000   0.4819438   0.8780562
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.5517241   0.3870228   0.7164254
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                0.6126482   0.5473590   0.6779374
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  NA                0.7714286   0.6335453   0.9093119
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.6315789   0.4821442   0.7810137
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                0.6059701   0.5489040   0.6630363
0-24 months   ki1000108-IRC              INDIA                          <20                  NA                0.5333333   0.3421602   0.7245064
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.4666667   0.3071858   0.6261475
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.3105263   0.2427000   0.3783526
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.3103448   0.1313149   0.4893748
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.5000000   0.2896540   0.7103460
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.5365854   0.4751640   0.5980067
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.5428571   0.3658374   0.7198769
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.4639175   0.3608362   0.5669988
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.5882353   0.5193144   0.6571562
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.5652174   0.4114854   0.7189494
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.5789474   0.4473137   0.7105810
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                0.6381910   0.5696412   0.7067407
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  NA                0.5901639   0.4724894   0.7078385
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.6078431   0.4757701   0.7399162
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.6428571   0.5964647   0.6892496
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.6041667   0.4499991   0.7583342
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5950000   0.5240251   0.6659749
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.5663189   0.5242599   0.6083779
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.5847953   0.5045894   0.6650013
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5059524   0.4659723   0.5459325
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5454545   0.4914859   0.5994232
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4803922   0.3637569   0.5970274
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4791667   0.3722690   0.5860643
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8621118   0.8454001   0.8788235
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  NA                0.9022222   0.8633864   0.9410581
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8342541   0.7955077   0.8730006
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.5490279   0.5288503   0.5692054
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.5394737   0.4994210   0.5795264
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.5297114   0.4887557   0.5706671
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.3684211   0.2787196   0.4581225
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.5000000   0.3232060   0.6767940
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.3750000   0.2669209   0.4830791
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                0.2439418   0.2196135   0.2682701
0-24 months   ki1135781-COHORTS          INDIA                          <20                  NA                0.2000000   0.1410052   0.2589948
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.2274436   0.1925299   0.2623573
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.6027254   0.5692538   0.6361970
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.6080000   0.5490467   0.6669533
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.6144330   0.5694107   0.6594552
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.4250288   0.4018150   0.4482426
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.4183267   0.3954122   0.4412412
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.4563953   0.4020735   0.5107172
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                0.6517413   0.5839855   0.7194971
0-6 months    ki1000108-IRC              INDIA                          <20                  NA                0.5500000   0.3148186   0.7851814
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5789474   0.3725273   0.7853674
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                0.4252874   0.3201740   0.5304007
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  NA                0.5000000   0.1702528   0.8297472
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4545455   0.1717310   0.7373599
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                0.7215190   0.6511513   0.7918867
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  NA                0.7619048   0.5927535   0.9310560
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.6590909   0.5180822   0.8000996
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.7309417   0.6719457   0.7899377
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.7307692   0.5576592   0.9038792
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.6222222   0.5204880   0.7239564
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.6686747   0.5961122   0.7412372
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  NA                0.6666667   0.5359309   0.7974024
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.5979381   0.5298856   0.6659907
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.6160714   0.5258798   0.7062631
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.5277778   0.3624022   0.6931534
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5312500   0.3559148   0.7065852
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                0.8851091   0.8691397   0.9010785
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  NA                0.9174312   0.8805659   0.9542964
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.8478873   0.8101937   0.8855810
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.7490996   0.7282906   0.7699087
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.7162162   0.6744897   0.7579427
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.7556675   0.7132393   0.7980957
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                0.6964286   0.5755249   0.8173322
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  NA                0.7727273   0.5969187   0.9485359
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.6530612   0.5192569   0.7868655
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                0.3660606   0.3331761   0.3989451
0-6 months    ki1135781-COHORTS          INDIA                          <20                  NA                0.3035714   0.2183835   0.3887594
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.3569322   0.3059122   0.4079521
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.7237443   0.6816227   0.7658659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.7570093   0.6760179   0.8380007
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.7536232   0.6949446   0.8123018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                0.6706096   0.6428056   0.6984137
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  NA                0.6818182   0.6540285   0.7096079
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.6408163   0.5807046   0.7009281
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                0.5555556   0.3824365   0.7286746
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  NA                0.5000000   0.1310291   0.8689709
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3125000   0.1323165   0.4926835
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                0.2820513   0.1804061   0.3836964
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  NA                0.3043478   0.1179134   0.4907823
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2272727   0.0303695   0.4241760
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                0.5606695   0.4957083   0.6256306
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  NA                0.4545455   0.2257592   0.6833317
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.5727273   0.4775076   0.6679470
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                0.5326733   0.4861072   0.5792393
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  NA                0.5470085   0.4517362   0.6422809
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4686192   0.4210005   0.5162380
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                0.5139442   0.4494557   0.5784327
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  NA                0.4545455   0.3106841   0.5984068
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.4531250   0.3140916   0.5921584
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                0.0728571   0.0541604   0.0915539
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  NA                0.0609756   0.0238812   0.0980700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0625000   0.0264905   0.0985095
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                0.5000000   0.4543027   0.5456973
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  NA                0.4965035   0.4104952   0.5825118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.5107914   0.4487580   0.5728247


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.6370968   0.5511492   0.7230443
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6319018   0.5759256   0.6878781
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5898734   0.5376978   0.6420491
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3292181   0.2676535   0.3907827
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.5202864   0.4695109   0.5710618
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.5830619   0.5262762   0.6398476
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6267606   0.5890263   0.6644948
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5416116   0.5143001   0.5689232
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5222816   0.4773852   0.5671781
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8616295   0.8472386   0.8760204
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.5442043   0.5277100   0.5606986
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3907563   0.3259495   0.4555631
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2355670   0.2165976   0.2545364
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6068680   0.5823645   0.6313715
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4247718   0.4091425   0.4404012
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6375000   0.5751450   0.6998550
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4351852   0.3405027   0.5298677
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.7130045   0.6535890   0.7724200
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.7020649   0.6526590   0.7514708
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6352657   0.5887450   0.6817864
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5833333   0.5108676   0.6557991
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8822149   0.8684104   0.8960194
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.7443159   0.7272505   0.7613813
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.6929134   0.6123695   0.7734573
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3581505   0.3318331   0.3844678
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7367021   0.7051294   0.7682749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6725846   0.6538934   0.6912758
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.4838710   0.3544124   0.6133295
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2764228   0.1950773   0.3577682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5579515   0.5056058   0.6102972
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5063636   0.4748679   0.5378594
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4934383   0.4388573   0.5480193
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0691288   0.0539734   0.0842842
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5026681   0.4688378   0.5364984


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           1.0347826   0.7358140   1.4552251
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.8395802   0.5929854   1.1887221
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <20                  [20-30)           1.2591705   1.0225845   1.5504933
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 [20-30)           1.0308998   0.7952710   1.3363426
0-24 months   ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          <20                  [20-30)           0.8801314   0.6075574   1.2749927
0-24 months   ki1000108-IRC              INDIA                          >=30                 [20-30)           0.7701149   0.5402651   1.0977519
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           0.9994155   0.5392911   1.8521192
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.6101695   1.0023267   2.5866275
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0116883   0.7161022   1.4292838
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.8645736   0.6733556   1.1100932
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           0.9608696   0.7145234   1.2921485
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           0.9842105   0.7620102   1.2712039
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <20                  [20-30)           0.9247451   0.7370681   1.1602096
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 [20-30)           0.9524471   0.7472406   1.2140073
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9398148   0.7208988   1.2252093
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.9255556   0.8051072   1.0640236
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0326254   0.8834684   1.2069648
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8934054   0.8015784   0.9957519
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8807190   0.6775966   1.1447311
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8784722   0.6881861   1.1213732
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0465258   0.9982692   1.0971151
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9676867   0.9201908   1.0176342
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9825979   0.9044718   1.0674725
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.9648169   0.8856503   1.0510600
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.3571429   0.8834458   2.0848327
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           1.0178571   0.6979646   1.4843635
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8198675   0.6005015   1.1193691
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9323682   0.7764009   1.1196669
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0087513   0.9020876   1.1280271
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0194245   0.9298619   1.1176135
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           0.9842313   0.9109675   1.0633873
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           1.0737986   0.9419962   1.2240425
0-6 months    ki1000108-IRC              INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          <20                  [20-30)           0.8438931   0.5434659   1.3103962
0-6 months    ki1000108-IRC              INDIA                          >=30                 [20-30)           0.8883086   0.6127210   1.2878490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <20                  [20-30)           1.1756757   0.5813258   2.3776912
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 [20-30)           1.0687961   0.5471779   2.0876665
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <20                  [20-30)           1.0559733   0.8285939   1.3457492
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 [20-30)           0.9134769   0.7220780   1.1556092
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.9997640   0.7784126   1.2840595
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           0.8512611   0.7093703   1.0215334
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         <20                  [20-30)           0.9969970   0.7968152   1.2474700
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8942138   0.7640926   1.0464940
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8566828   0.6062010   1.2106634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8623188   0.6009852   1.2372914
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        <20                  [20-30)           1.0365176   0.9918522   1.0831944
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 [20-30)           0.9579467   0.9130717   1.0050271
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.9561027   0.8963420   1.0198478
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           1.0087677   0.9475144   1.0739808
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      <20                  [20-30)           1.1095571   0.8334132   1.4771987
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 [20-30)           0.9377289   0.7168835   1.2266087
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          <20                  [20-30)           0.8292928   0.6176524   1.1134524
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 [20-30)           0.9750630   0.8235934   1.1543899
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           1.0459624   0.9260231   1.1814365
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0412838   0.9448248   1.1475905
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <20                  [20-30)           1.0167140   0.9592879   1.0775777
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 [20-30)           0.9555728   0.8624281   1.0587773
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <20                  [20-30)           0.9000000   0.4038524   2.0056831
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 [20-30)           0.5625000   0.2920037   1.0835694
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <20                  [20-30)           1.0790514   0.5301386   2.1963159
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 [20-30)           0.8057851   0.3153819   2.0587410
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <20                  [20-30)           0.8107191   0.4836820   1.3588795
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 [20-30)           1.0215061   0.8341199   1.2509889
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         <20                  [20-30)           1.0269120   0.8450524   1.2479086
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 [20-30)           0.8797499   0.7693580   1.0059814
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <20                  [20-30)           0.8844257   0.6291617   1.2432555
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 [20-30)           0.8816618   0.6327946   1.2284042
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <20                  [20-30)           0.8369201   0.4324486   1.6196963
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 [20-30)           0.8578431   0.4565586   1.6118298
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              [20-30)           1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <20                  [20-30)           0.9930070   0.8163783   1.2078504
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 [20-30)           1.0215827   0.8775332   1.1892784


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0200461   -0.0951000   0.0550079
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0192536   -0.0087860   0.0472932
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0160967   -0.0373720   0.0051786
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0186918   -0.0156495   0.0530331
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0162990   -0.0504996   0.0179016
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0051734   -0.0459401   0.0355933
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0143967   -0.0544249   0.0256314
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0160966   -0.0439482   0.0117550
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0247073   -0.0555534   0.0061388
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0231729   -0.0573401   0.0109943
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0004823   -0.0092602   0.0082956
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0048236   -0.0165901   0.0069430
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0223352   -0.0450285   0.0896990
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0083748   -0.0223883   0.0056387
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0041426   -0.0172129   0.0254981
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0002570   -0.0174574   0.0169434
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0142413   -0.0424320   0.0139495
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0098978   -0.0369617   0.0567573
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0085145   -0.0467921   0.0297631
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0288768   -0.0655418   0.0077881
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0334090   -0.0900331   0.0232152
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0327381   -0.0898898   0.0244136
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0028942   -0.0114207   0.0056323
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0047837   -0.0169789   0.0074115
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0035152   -0.0941453   0.0871149
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0079101   -0.0272917   0.0114714
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0129578   -0.0135854   0.0395011
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0019750   -0.0185398   0.0224898
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0716846   -0.1816278   0.0382586
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0056285   -0.0676577   0.0564006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0027180   -0.0417530   0.0363171
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0263096   -0.0605775   0.0079583
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0205059   -0.0614904   0.0204786
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0037284   -0.0144942   0.0070375
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0026681   -0.0278732   0.0332093


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.0314647   -0.1561481   0.0797723
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [20-30)              NA                 0.0304693   -0.0153283   0.0742012
0-24 months   ki1000108-IRC              INDIA                          [20-30)              NA                -0.0272885   -0.0639884   0.0081456
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0567763   -0.0530896   0.1551802
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0313269   -0.0992537   0.0324024
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0088728   -0.0813039   0.0587064
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [20-30)              NA                -0.0230793   -0.0892459   0.0390680
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0256822   -0.0711606   0.0178654
0-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0456181   -0.1040959   0.0097625
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0443686   -0.1123549   0.0194625
0-24 months   ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0005598   -0.0107995   0.0095763
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0088635   -0.0307226   0.0125320
0-24 months   ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                 0.0571590   -0.1314119   0.2143011
0-24 months   ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0355518   -0.0966517   0.0221439
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0068262   -0.0290128   0.0414170
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                -0.0006050   -0.0419289   0.0390799
0-6 months    ki1000108-IRC              INDIA                          [20-30)              NA                -0.0223393   -0.0676463   0.0210451
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [20-30)              NA                 0.0227439   -0.0911466   0.1247470
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [20-30)              NA                -0.0119417   -0.0670961   0.0403619
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0411313   -0.0950270   0.0101118
0-6 months    ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0525906   -0.1457821   0.0330212
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0561224   -0.1594095   0.0379632
0-6 months    ki1119695-PROBIT           BELARUS                        [20-30)              NA                -0.0032806   -0.0129941   0.0063398
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0064270   -0.0229487   0.0098279
0-6 months    ki1135781-COHORTS          GUATEMALA                      [20-30)              NA                -0.0050731   -0.1447663   0.1175737
0-6 months    ki1135781-COHORTS          INDIA                          [20-30)              NA                -0.0220861   -0.0776635   0.0306251
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0175890   -0.0191519   0.0530053
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [20-30)              NA                 0.0029364   -0.0280368   0.0329765
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [20-30)              NA                -0.1481481   -0.4017062   0.0595432
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [20-30)              NA                -0.0203620   -0.2715476   0.1812036
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [20-30)              NA                -0.0048713   -0.0773326   0.0627161
6-24 months   ki1101329-Keneba           GAMBIA                         [20-30)              NA                -0.0519580   -0.1219355   0.0136549
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [20-30)              NA                -0.0415572   -0.1287095   0.0388657
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [20-30)              NA                -0.0539335   -0.2221172   0.0911054
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [20-30)              NA                 0.0053079   -0.0573475   0.0642505
