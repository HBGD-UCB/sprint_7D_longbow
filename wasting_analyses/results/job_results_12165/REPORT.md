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

**Outcome Variable:** wasted

## Predictor Variables

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        feducyrs    wasted   n_cell       n
----------  -------------------------  -----------------------------  ---------  -------  -------  ------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              0       26     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low              1        9     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             0       44     134
Birth       ki0047075b-MAL-ED          BANGLADESH                     High             1        5     134
Birth       ki0047075b-MAL-ED          INDIA                          Low              0       42     121
Birth       ki0047075b-MAL-ED          INDIA                          Low              1        6     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium           0       29     121
Birth       ki0047075b-MAL-ED          INDIA                          Medium           1        6     121
Birth       ki0047075b-MAL-ED          INDIA                          High             0       34     121
Birth       ki0047075b-MAL-ED          INDIA                          High             1        4     121
Birth       ki0047075b-MAL-ED          NEPAL                          Low              0       17      64
Birth       ki0047075b-MAL-ED          NEPAL                          Low              1        1      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           0       19      64
Birth       ki0047075b-MAL-ED          NEPAL                          Medium           1        0      64
Birth       ki0047075b-MAL-ED          NEPAL                          High             0       24      64
Birth       ki0047075b-MAL-ED          NEPAL                          High             1        3      64
Birth       ki0047075b-MAL-ED          PERU                           Low              0       62     230
Birth       ki0047075b-MAL-ED          PERU                           Low              1        1     230
Birth       ki0047075b-MAL-ED          PERU                           Medium           0       53     230
Birth       ki0047075b-MAL-ED          PERU                           Medium           1        2     230
Birth       ki0047075b-MAL-ED          PERU                           High             0      111     230
Birth       ki0047075b-MAL-ED          PERU                           High             1        1     230
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       29      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       26      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       34      91
Birth       ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        1      91
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       26      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        1      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0        6      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0       62      96
Birth       ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1      96
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              0       65     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Low              1        3     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           0       61     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Medium           1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             0       29     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          High             1        4     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              0       10      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Low              1        1      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             0        5      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     High             1        2      23
Birth       ki1119695-PROBIT           BELARUS                        Low              0     4187   13359
Birth       ki1119695-PROBIT           BELARUS                        Low              1     1107   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium           0     4744   13359
Birth       ki1119695-PROBIT           BELARUS                        Medium           1     1271   13359
Birth       ki1119695-PROBIT           BELARUS                        High             0     1650   13359
Birth       ki1119695-PROBIT           BELARUS                        High             1      400   13359
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1779   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low              1      311   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     8051   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1     1517   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             0      759   12572
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High             1      155   12572
Birth       ki1135781-COHORTS          GUATEMALA                      Low              0      232     718
Birth       ki1135781-COHORTS          GUATEMALA                      Low              1       79     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           0      210     718
Birth       ki1135781-COHORTS          GUATEMALA                      Medium           1       61     718
Birth       ki1135781-COHORTS          GUATEMALA                      High             0       95     718
Birth       ki1135781-COHORTS          GUATEMALA                      High             1       41     718
Birth       ki1135781-COHORTS          INDIA                          Low              0      359    1291
Birth       ki1135781-COHORTS          INDIA                          Low              1       55    1291
Birth       ki1135781-COHORTS          INDIA                          Medium           0      293    1291
Birth       ki1135781-COHORTS          INDIA                          Medium           1       77    1291
Birth       ki1135781-COHORTS          INDIA                          High             0      418    1291
Birth       ki1135781-COHORTS          INDIA                          High             1       89    1291
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              0      673    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Low              1      100    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           0      826    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium           1      135    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High             0      818    2728
Birth       ki1135781-COHORTS          PHILIPPINES                    High             1      176    2728
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              0     6019   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low              1      656   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     4691   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      494   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             0     2970   15127
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High             1      297   15127
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              0      267     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Low              1       13     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           0       51     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     Medium           1        4     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             0       43     379
Birth       kiGH5241-JiVitA-4          BANGLADESH                     High             1        1     379
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              0       35     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Low              1        1     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           0       43     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium           1        3     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             0       49     132
6 months    ki0047075b-MAL-ED          BANGLADESH                     High             1        1     132
6 months    ki0047075b-MAL-ED          INDIA                          Low              0       52     138
6 months    ki0047075b-MAL-ED          INDIA                          Low              1        2     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium           0       34     138
6 months    ki0047075b-MAL-ED          INDIA                          Medium           1        7     138
6 months    ki0047075b-MAL-ED          INDIA                          High             0       42     138
6 months    ki0047075b-MAL-ED          INDIA                          High             1        1     138
6 months    ki0047075b-MAL-ED          NEPAL                          Low              0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Low              1        0      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           0       27      95
6 months    ki0047075b-MAL-ED          NEPAL                          Medium           1        1      95
6 months    ki0047075b-MAL-ED          NEPAL                          High             0       40      95
6 months    ki0047075b-MAL-ED          NEPAL                          High             1        0      95
6 months    ki0047075b-MAL-ED          PERU                           Low              0       60     224
6 months    ki0047075b-MAL-ED          PERU                           Low              1        0     224
6 months    ki0047075b-MAL-ED          PERU                           Medium           0       57     224
6 months    ki0047075b-MAL-ED          PERU                           Medium           1        0     224
6 months    ki0047075b-MAL-ED          PERU                           High             0      107     224
6 months    ki0047075b-MAL-ED          PERU                           High             1        0     224
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       32      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        3      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       24      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       33      92
6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      92
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       55     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       19     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      126     201
6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     201
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              0      476    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low              1       72    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           0      379    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium           1       55    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             0      311    1331
6 months    ki1000304b-SAS-CompFeed    INDIA                          High             1       38    1331
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              0      115     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low              1       17     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           0      114     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium           1       33     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             0       82     380
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High             1       19     380
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              0      189     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low              1       11     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           0      174     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium           1        5     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             0      195     582
6 months    ki1017093b-PROVIDE         BANGLADESH                     High             1        8     582
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      213     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       10     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      207     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1        6     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             0      274     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High             1        5     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0     1038    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1       44    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0      534    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1       30    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0      358    2017
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1       13    2017
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              0      216     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low              1       27     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           0      171     562
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium           1       12     562
6 months    ki1113344-GMS-Nepal        NEPAL                          High             0      124     562
6 months    ki1113344-GMS-Nepal        NEPAL                          High             1       12     562
6 months    ki1119695-PROBIT           BELARUS                        Low              0     5900   15207
6 months    ki1119695-PROBIT           BELARUS                        Low              1       58   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium           0     6685   15207
6 months    ki1119695-PROBIT           BELARUS                        Medium           1       52   15207
6 months    ki1119695-PROBIT           BELARUS                        High             0     2494   15207
6 months    ki1119695-PROBIT           BELARUS                        High             1       18   15207
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              0     1329    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       69    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0     5914    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1      168    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             0      535    8032
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High             1       17    8032
6 months    ki1135781-COHORTS          GUATEMALA                      Low              0      394     905
6 months    ki1135781-COHORTS          GUATEMALA                      Low              1       12     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           0      322     905
6 months    ki1135781-COHORTS          GUATEMALA                      Medium           1       12     905
6 months    ki1135781-COHORTS          GUATEMALA                      High             0      160     905
6 months    ki1135781-COHORTS          GUATEMALA                      High             1        5     905
6 months    ki1135781-COHORTS          INDIA                          Low              0      399    1385
6 months    ki1135781-COHORTS          INDIA                          Low              1       51    1385
6 months    ki1135781-COHORTS          INDIA                          Medium           0      344    1385
6 months    ki1135781-COHORTS          INDIA                          Medium           1       47    1385
6 months    ki1135781-COHORTS          INDIA                          High             0      483    1385
6 months    ki1135781-COHORTS          INDIA                          High             1       61    1385
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              0      699    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Low              1       45    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           0      871    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium           1       55    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High             0      843    2562
6 months    ki1135781-COHORTS          PHILIPPINES                    High             1       49    2562
6 months    ki1148112-LCNI-5           MALAWI                         Low              0      285     812
6 months    ki1148112-LCNI-5           MALAWI                         Low              1        5     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium           0      265     812
6 months    ki1148112-LCNI-5           MALAWI                         Medium           1        6     812
6 months    ki1148112-LCNI-5           MALAWI                         High             0      248     812
6 months    ki1148112-LCNI-5           MALAWI                         High             1        3     812
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              0     5711   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low              1      580   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     5077   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      466   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             0     3956   16105
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High             1      315   16105
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1876    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low              1      119    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      386    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       19    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             0      328    2746
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High             1       18    2746
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              0       30     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Low              1        5     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           0       35     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium           1        7     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             0       37     117
24 months   ki0047075b-MAL-ED          BANGLADESH                     High             1        3     117
24 months   ki0047075b-MAL-ED          INDIA                          Low              0       47     132
24 months   ki0047075b-MAL-ED          INDIA                          Low              1        4     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium           0       32     132
24 months   ki0047075b-MAL-ED          INDIA                          Medium           1        7     132
24 months   ki0047075b-MAL-ED          INDIA                          High             0       41     132
24 months   ki0047075b-MAL-ED          INDIA                          High             1        1     132
24 months   ki0047075b-MAL-ED          NEPAL                          Low              0       26      91
24 months   ki0047075b-MAL-ED          NEPAL                          Low              1        1      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           0       24      91
24 months   ki0047075b-MAL-ED          NEPAL                          Medium           1        2      91
24 months   ki0047075b-MAL-ED          NEPAL                          High             0       37      91
24 months   ki0047075b-MAL-ED          NEPAL                          High             1        1      91
24 months   ki0047075b-MAL-ED          PERU                           Low              0       44     164
24 months   ki0047075b-MAL-ED          PERU                           Low              1        0     164
24 months   ki0047075b-MAL-ED          PERU                           Medium           0       43     164
24 months   ki0047075b-MAL-ED          PERU                           Medium           1        0     164
24 months   ki0047075b-MAL-ED          PERU                           High             0       75     164
24 months   ki0047075b-MAL-ED          PERU                           High             1        2     164
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              0       33      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low              1        1      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           0       23      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium           1        0      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             0       34      91
24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High             1        0      91
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              0       45     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low              1        2     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           0       16     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium           1        0     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             0      113     177
24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High             1        1     177
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              0      169     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low              1       28     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           0      159     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium           1       20     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             0      185     578
24 months   ki1017093b-PROVIDE         BANGLADESH                     High             1       17     578
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              0      127     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low              1       17     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           0      147     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium           1       12     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             0      195     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High             1       16     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low              1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium           1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High             1        0       6
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              0      185     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Low              1       35     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           0      134     497
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium           1       27     497
24 months   ki1113344-GMS-Nepal        NEPAL                          High             0       88     497
24 months   ki1113344-GMS-Nepal        NEPAL                          High             1       28     497
24 months   ki1119695-PROBIT           BELARUS                        Low              0     1473    3852
24 months   ki1119695-PROBIT           BELARUS                        Low              1       15    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium           0     1724    3852
24 months   ki1119695-PROBIT           BELARUS                        Medium           1       20    3852
24 months   ki1119695-PROBIT           BELARUS                        High             0      612    3852
24 months   ki1119695-PROBIT           BELARUS                        High             1        8    3852
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              0       74     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low              1       26     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           0      241     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium           1       46     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             0       11     400
24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High             1        2     400
24 months   ki1135781-COHORTS          GUATEMALA                      Low              0      446    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Low              1       19    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           0      341    1002
24 months   ki1135781-COHORTS          GUATEMALA                      Medium           1       18    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High             0      170    1002
24 months   ki1135781-COHORTS          GUATEMALA                      High             1        8    1002
24 months   ki1135781-COHORTS          INDIA                          Low              0      393    1370
24 months   ki1135781-COHORTS          INDIA                          Low              1       55    1370
24 months   ki1135781-COHORTS          INDIA                          Medium           0      353    1370
24 months   ki1135781-COHORTS          INDIA                          Medium           1       33    1370
24 months   ki1135781-COHORTS          INDIA                          High             0      504    1370
24 months   ki1135781-COHORTS          INDIA                          High             1       32    1370
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              0      642    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Low              1       51    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           0      753    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium           1       75    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High             0      769    2319
24 months   ki1135781-COHORTS          PHILIPPINES                    High             1       29    2319
24 months   ki1148112-LCNI-5           MALAWI                         Low              0      189     555
24 months   ki1148112-LCNI-5           MALAWI                         Low              1        5     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium           0      188     555
24 months   ki1148112-LCNI-5           MALAWI                         Medium           1        3     555
24 months   ki1148112-LCNI-5           MALAWI                         High             0      168     555
24 months   ki1148112-LCNI-5           MALAWI                         High             1        2     555
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              0     2606    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low              1      765    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           0     2208    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium           1      630    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             0     1642    8264
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High             1      413    8264
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              0     1572    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low              1      383    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           0      315    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium           1       80    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             0      275    2683
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High             1       58    2683


The following strata were considered:

* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: Birth, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/0f3e1419-946d-4b3a-bc97-7a45d4ff8e6c/9d8fa884-f75a-421d-bf32-e73cc2eb14ab/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0f3e1419-946d-4b3a-bc97-7a45d4ff8e6c/9d8fa884-f75a-421d-bf32-e73cc2eb14ab/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0f3e1419-946d-4b3a-bc97-7a45d4ff8e6c/9d8fa884-f75a-421d-bf32-e73cc2eb14ab/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0f3e1419-946d-4b3a-bc97-7a45d4ff8e6c/9d8fa884-f75a-421d-bf32-e73cc2eb14ab/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2571429   0.1118044   0.4024813
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.1400000   0.0434610   0.2365390
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1020408   0.0169678   0.1871138
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                0.2091046   0.1355762   0.2826331
Birth       ki1119695-PROBIT           BELARUS                        Medium               NA                0.2113051   0.1473777   0.2752324
Birth       ki1119695-PROBIT           BELARUS                        High                 NA                0.1951220   0.1265377   0.2637062
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1488038   0.1335453   0.1640624
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1585493   0.1512303   0.1658683
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1695842   0.1452548   0.1939137
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2540193   0.2056057   0.3024329
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2250923   0.1753333   0.2748512
Birth       ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3014706   0.2242921   0.3786490
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                0.1328502   0.1001430   0.1655575
Birth       ki1135781-COHORTS          INDIA                          Medium               NA                0.2081081   0.1667279   0.2494883
Birth       ki1135781-COHORTS          INDIA                          High                 NA                0.1755424   0.1424150   0.2086698
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1293661   0.1057033   0.1530289
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1404787   0.1185052   0.1624522
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1770624   0.1533278   0.2007969
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0982772   0.0902736   0.1062807
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0952748   0.0864141   0.1041356
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0909091   0.0800160   0.1018022
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1313869   0.0961526   0.1666212
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1267281   0.0945698   0.1588864
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1088825   0.0818315   0.1359336
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1287879   0.0715699   0.1860059
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2244898   0.1569509   0.2920286
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1881188   0.1118017   0.2644359
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0550000   0.0233769   0.0866231
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0279330   0.0037727   0.0520932
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0394089   0.0126209   0.0661968
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0448430   0.0176609   0.0720252
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0281690   0.0059337   0.0504043
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0179211   0.0023434   0.0334989
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0406654   0.0288937   0.0524372
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0531915   0.0346661   0.0717169
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0350404   0.0163246   0.0537562
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1111111   0.0715622   0.1506600
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0655738   0.0296777   0.1014698
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0882353   0.0405233   0.1359473
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0097348   0.0060756   0.0133940
6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0077186   0.0052070   0.0102301
6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0071656   0.0030368   0.0112944
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0493562   0.0380009   0.0607116
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0276225   0.0235034   0.0317416
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0307971   0.0163837   0.0452105
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0295567   0.0130736   0.0460397
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0359281   0.0159577   0.0558986
6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0303030   0.0041328   0.0564732
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.1133333   0.0840340   0.1426327
6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.1202046   0.0879592   0.1524500
6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.1121324   0.0856080   0.1386567
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0604839   0.0433515   0.0776163
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0593952   0.0441685   0.0746220
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0549327   0.0399774   0.0698881
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0921952   0.0841145   0.1002759
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0840700   0.0763212   0.0918188
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0737532   0.0647911   0.0827153
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0596491   0.0461189   0.0731793
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0469136   0.0237283   0.0700989
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0520231   0.0234543   0.0805919
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1421320   0.0933289   0.1909350
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1117318   0.0655408   0.1579229
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0841584   0.0458400   0.1224768
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1180556   0.0653018   0.1708093
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0754717   0.0343733   0.1165701
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0758294   0.0400754   0.1115834
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.1590909   0.1107103   0.2074715
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1677019   0.1099347   0.2254690
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2413793   0.1634288   0.3193298
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0100806   0.0044919   0.0156694
24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0114679   0.0005363   0.0223995
24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0129032   0.0046689   0.0211375
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0408602   0.0228578   0.0588626
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0501393   0.0275534   0.0727251
24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0449438   0.0144926   0.0753950
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1227679   0.0923683   0.1531674
24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0854922   0.0575880   0.1133965
24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0597015   0.0396360   0.0797670
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0735931   0.0541487   0.0930375
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0905797   0.0710262   0.1101332
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0363409   0.0233541   0.0493276
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2269356   0.2118436   0.2420277
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2219873   0.2052525   0.2387221
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2009732   0.1822640   0.2196825
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1959079   0.1752373   0.2165786
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2025316   0.1531956   0.2518677
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1741742   0.1317418   0.2166065


### Parameter: E(Y)


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1567164   0.0949338   0.2184990
Birth       ki1119695-PROBIT           BELARUS                        NA                   NA                0.2079497   0.1424160   0.2734834
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1577315   0.1513599   0.1641031
Birth       ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2520891   0.2203065   0.2838718
Birth       ki1135781-COHORTS          INDIA                          NA                   NA                0.1711851   0.1506302   0.1917400
Birth       ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1506598   0.1372339   0.1640858
Birth       kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0956568   0.0903208   0.1009928
6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1239669   0.0988748   0.1490591
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1815789   0.1427684   0.2203895
6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0412371   0.0250690   0.0574052
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0293706   0.0169860   0.0417552
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0431334   0.0342652   0.0520016
6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0907473   0.0669775   0.1145172
6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0084172   0.0066782   0.0101561
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0316235   0.0277962   0.0354508
6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0320442   0.0205636   0.0435248
6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.1148014   0.0980067   0.1315962
6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0581577   0.0490934   0.0672220
6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0845079   0.0795688   0.0894470
6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0568099   0.0457042   0.0679156
24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1124567   0.0866788   0.1382347
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0875486   0.0630907   0.1120065
24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1810865   0.1471967   0.2149763
24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0111630   0.0050745   0.0172515
24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0449102   0.0320802   0.0577401
24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0875912   0.0726161   0.1025664
24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0668392   0.0566723   0.0770060
24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2187803   0.2086815   0.2288790
24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1941856   0.1762345   0.2121367


### Parameter: RR


agecat      studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.5444444   0.2232211   1.3279198
Birth       ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.3968254   0.1449304   1.0865246
Birth       ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1119695-PROBIT           BELARUS                        Medium               Low               1.0105231   0.8423644   1.2122507
Birth       ki1119695-PROBIT           BELARUS                        High                 Low               0.9331306   0.7538436   1.1550575
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0654922   0.9521656   1.1923070
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               1.1396497   0.9554023   1.3594288
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8861227   0.6618097   1.1864640
Birth       ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1868019   0.8625180   1.6330081
Birth       ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          INDIA                          Medium               Low               1.5664865   1.1415307   2.1496398
Birth       ki1135781-COHORTS          INDIA                          High                 Low               1.3213556   0.9689474   1.8019353
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
Birth       ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0859001   0.8536234   1.3813809
Birth       ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.3686922   1.0909875   1.7170849
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9694505   0.8574050   1.0961380
Birth       kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9250277   0.8015168   1.0675713
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9645417   0.7330005   1.2692225
6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8287170   0.5886078   1.1667731
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.7430972   1.0192847   2.9809023
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               1.4606872   0.8003313   2.6659050
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.5078720   0.1797603   1.4348774
6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7165249   0.2941563   1.7453574
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.6281690   0.2321919   1.6994407
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.3996416   0.1384965   1.1531947
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.3080271   0.8316414   2.0572988
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8616761   0.4693548   1.5819283
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.5901639   0.3071821   1.1338340
6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7941176   0.4156571   1.5171707
6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               0.7928834   0.4666805   1.3470971
6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.7360806   0.3585961   1.5109330
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.5596557   0.4254520   0.7361925
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6239761   0.3704084   1.0511266
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2155689   0.5531277   2.6713682
6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0252525   0.3667455   2.8661370
6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.0606289   0.7307457   1.5394324
6 months    ki1135781-COHORTS          INDIA                          High                 Low               0.9894031   0.6969339   1.4046074
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9820014   0.6701833   1.4389001
6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9082212   0.6131501   1.3452918
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9118696   0.8018342   1.0370051
6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7999681   0.6940455   0.9220563
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.7864924   0.4576838   1.3515233
6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8721523   0.4800457   1.5845360
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.7861133   0.4592952   1.3454835
24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.5921146   0.3347652   1.0473003
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.6392897   0.3160594   1.2930839
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.6423195   0.3354498   1.2299136
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.0541260   0.6657885   1.6689709
24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               1.5172414   0.9736597   2.3642977
24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.1376147   0.4356663   2.9705466
24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.2800000   0.5535061   2.9600399
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.2270928   0.6534716   2.3042420
24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0999409   0.4902032   2.4680988
24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.6963731   0.4622900   1.0489853
24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.4862958   0.3203305   0.7382487
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.2308184   0.8750193   1.7312920
24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.4938080   0.3166257   0.7701408
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9781951   0.8889815   1.0763616
24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8855958   0.7901821   0.9925306
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0338104   0.7927608   1.3481542
24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.8890614   0.6868907   1.1507364


### Parameter: PAR


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.1004264   -0.2183494    0.0174965
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0011549   -0.0239972    0.0216873
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0089276   -0.0050728    0.0229280
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0019302   -0.0383105    0.0344501
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.0383349    0.0099419    0.0667279
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0212937    0.0007301    0.0418574
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0026204   -0.0084947    0.0032540
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0074199   -0.0279691    0.0131293
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0527911    0.0027345    0.1028476
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0137629   -0.0377239    0.0101981
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0154724   -0.0362416    0.0052968
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0024679   -0.0058113    0.0107472
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0203638   -0.0482299    0.0075024
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0013176   -0.0040497    0.0014144
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0177327   -0.0276678   -0.0077976
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0024875   -0.0101507    0.0151258
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0014681   -0.0226706    0.0256068
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0023262   -0.0166512    0.0119989
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0076873   -0.0136519   -0.0017226
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0028392   -0.0092000    0.0035215
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0296752   -0.0673939    0.0080435
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0305069   -0.0731898    0.0121759
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0219956   -0.0156470    0.0596383
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0010824   -0.0042494    0.0064142
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0040500   -0.0096575    0.0177575
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0351766   -0.0585003   -0.0118530
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0067539   -0.0227376    0.0092298
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0081554   -0.0193900    0.0030792
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0017223   -0.0122159    0.0087713


### Parameter: PAF


agecat      studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
Birth       ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.6408163   -1.5691781   -0.0479142
Birth       ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0055540   -0.1212535    0.0982068
Birth       ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0566002   -0.0364495    0.1412961
Birth       ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0076566   -0.1628165    0.1267996
Birth       ki1135781-COHORTS          INDIA                          Low                  NA                 0.2239382    0.0408600    0.3720708
Birth       ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.1413364   -0.0061264    0.2671864
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0273936   -0.0906692    0.0322111
6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0598540   -0.2371872    0.0920610
6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.2907334   -0.0390676    0.5158553
6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.3337500   -1.0416461    0.1286986
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.5267990   -1.3752445    0.0185788
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0572163   -0.1552596    0.2306136
6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.2244009   -0.5679216    0.0438568
6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1565411   -0.5201954    0.1201215
6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.5607448   -0.9006461   -0.2816296
6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0776287   -0.4131012    0.3979420
6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0127883   -0.2215390    0.2021646
6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0399978   -0.3178387    0.1792656
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0909652   -0.1635800   -0.0228821
6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0499775   -0.1671191    0.0554068
24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2638813   -0.6431510    0.0278459
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3484568   -0.9253876    0.0556002
24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.1214646   -0.1120945    0.3059723
24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0969617   -0.4895867    0.4525474
24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0901792   -0.2710851    0.3487660
24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.4015997   -0.6869502   -0.1645167
24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.1010473   -0.3676225    0.1135674
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0372766   -0.0899536    0.0128546
24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0088694   -0.0644002    0.0437643
