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

**Outcome Variable:** ever_swasted

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

agecat        studyid                    country                        feducyrs    ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       50     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        4     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       33     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        6     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       49     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        5     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       43     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        1     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       51     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        8     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       38     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        6     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       40      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        2      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       28      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        0      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       26      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        2      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                   0      117     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                   1        3     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       69     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        0     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       61     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        0     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       43     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       33     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        4     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       30     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      126     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        4     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       59     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       20     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      110     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1       11     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      147     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1       40     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      138     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       15     461
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       26     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        5     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       28     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1        4     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       31     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       12     106
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      219     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1       13     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      218     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       20     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      221     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        9     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      274     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       22     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      213     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       29     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      205     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       15     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      429    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       20    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1182    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       88    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      615    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       49    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0      114     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       33     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      179     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       78     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      152     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       45     601
0-24 months   ki1119695-PROBIT           BELARUS                        High                   0     1148    7823
0-24 months   ki1119695-PROBIT           BELARUS                        High                   1       97    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     2491    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Low                    1      239    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     3525    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1      323    7823
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      920   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       72   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2062   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      221   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     9351   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      936   13562
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      138     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1       14     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      189     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1       19     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      211     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1       23     594
0-24 months   ki1135781-COHORTS          INDIA                          High                   0      508    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                   1       59    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    0      434    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                    1       38    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      365    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       43    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      911    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1      117    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      726    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1      100    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      879    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1      135    2868
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      247     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        4     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      288     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      269     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        2     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3025   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1      191   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4858   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      365   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4127   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      272   12838
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      105     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1        7     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      532     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       36     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      107     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        9     796
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   0       51     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                   1        3     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    0       34     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                    1        5     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       50     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        4     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   0       43     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                   1        1     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    0       51     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                    1        8     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 0       40     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                 1        4     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   0       40      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                   1        2      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    0       28      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                    1        0      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 0       28      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                 1        0      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                   0      119     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                   1        1     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    0       69     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                    1        0     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 0       61     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                 1        0     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       43     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       36     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        1     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       30     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      128     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       61     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        0     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       20     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   0      118     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                   1        3     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    0      170     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                    1       17     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      148     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                 1        4     460
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       30     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        1     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       32     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1        0     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       41     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1        2     106
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   0      220     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                   1       12     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    0      228     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                    1       10     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      223     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        7     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      278     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                   1       18     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      222     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       20     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      208     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1       12     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      438    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       11    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1227    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       43    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      639    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       25    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   0      137     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                   1       10     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    0      233     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                    1       24     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 0      175     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                 1       22     601
0-6 months    ki1119695-PROBIT           BELARUS                        High                   0     1149    7822
0-6 months    ki1119695-PROBIT           BELARUS                        High                   1       96    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    0     2495    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Low                    1      235    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 0     3526    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                 1      321    7822
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      929   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       56   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     2124   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1      144   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     9503   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      716   13472
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   0      111     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                   1       11     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    0      150     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                    1       12     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 0      177     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                 1       14     475
0-6 months    ki1135781-COHORTS          INDIA                          High                   0      513    1417
0-6 months    ki1135781-COHORTS          INDIA                          High                   1       44    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                    0      441    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                    1       17    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 0      372    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                 1       30    1417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   0      946    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                   1       82    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    0      788    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                    1       38    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 0      941    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                 1       72    2867
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   0       73     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                   1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    0      104     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                    1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 0       90     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                 1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   0     3065   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                   1      138   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     4958   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      248   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     4198   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1      188   12795
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   0      100     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                   1        2     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      514     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       12     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      106     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        3     737
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   0       47     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                   1        1     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    0       36     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                    1        1     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 0       45     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                 1        1     131
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   0       43     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High                   1        0     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    0       53     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                    1        1     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 0       38     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                 1        2     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   0       39      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                   1        0      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    0       27      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                    1        0      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 0       26      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                 1        2      94
6-24 months   ki0047075b-MAL-ED          PERU                           High                   0      104     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                   1        2     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    0       60     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                    1        0     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 0       57     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                 1        0     223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   0       36      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                   1        0      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    0       33      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                    1        3      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 0       24      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                 1        0      96
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   0      126     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                   1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    0       53     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                    1        2     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 0       19     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                 1        0     202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   0      110     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                   1        8     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    0      144     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                    1       26     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 0      129     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                 1       13     430
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   0       26     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                   1        4     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    0       27     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                    1        4     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 0       32     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                 1       10     103
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   0      213     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                   1        1     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    0      198     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                    1       10     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 0      191     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                 1        2     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   0      282     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                   1        4     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    0      216     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                    1       13     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 0      212     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                 1        3     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   0      365    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                   1       10    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    0     1025    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                    1       47    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 0      537    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                 1       25    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   0      119     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                   1       26     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    0      194     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                    1       59     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 0      163     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                 1       28     589
6-24 months   ki1119695-PROBIT           BELARUS                        High                   0     1210    7678
6-24 months   ki1119695-PROBIT           BELARUS                        High                   1        1    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    0     2676    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Low                    1        5    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 0     3784    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                 1        2    7678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   0      690   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                   1       17   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    0     1709   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                    1       82   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 0     7653   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                 1      235   10386
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   0      139     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                   1        3     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    0      177     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                    1        7     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 0      207     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                 1        9     542
6-24 months   ki1135781-COHORTS          INDIA                          High                   0      534    1405
6-24 months   ki1135781-COHORTS          INDIA                          High                   1       15    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                    0      436    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                    1       23    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 0      384    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                 1       13    1405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   0      883    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                   1       40    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    0      710    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                    1       68    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 0      885    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                 1       69    2655
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   0      243     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High                   1        4     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    0      286     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                    1        3     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 0      264     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                 1        2     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   0     2105    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                   1       54    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    0     3069    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                    1      122    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 0     2768    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                 1       89    8207
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   0      107     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                   1        5     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    0      542     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                    1       24     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 0      110     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                 1        6     794


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
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
![](/tmp/bd5ffb6b-33da-470f-99af-5223a0c30e3f/024a8b42-62fb-477d-ac20-1541f1924d77/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/bd5ffb6b-33da-470f-99af-5223a0c30e3f/024a8b42-62fb-477d-ac20-1541f1924d77/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/bd5ffb6b-33da-470f-99af-5223a0c30e3f/024a8b42-62fb-477d-ac20-1541f1924d77/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/bd5ffb6b-33da-470f-99af-5223a0c30e3f/024a8b42-62fb-477d-ac20-1541f1924d77/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0909091   0.0703936   0.1114246
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2139037   0.1607755   0.2670320
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0980392   0.0456583   0.1504201
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0560345   0.0264189   0.0856501
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0840336   0.0487611   0.1193061
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0743243   0.0444235   0.1042252
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1198347   0.0788897   0.1607797
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0681818   0.0348527   0.1015109
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0445434   0.0254575   0.0636294
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0692913   0.0553217   0.0832609
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0737952   0.0539057   0.0936846
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2244898   0.1569837   0.2919959
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3035019   0.2472440   0.3597599
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.2284264   0.1697534   0.2870994
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0779116   0.0281457   0.1276776
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0875458   0.0121412   0.1629504
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0839397   0.0384694   0.1294100
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0725806   0.0564349   0.0887263
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0968025   0.0846729   0.1089320
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0909886   0.0854309   0.0965464
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0921053   0.0460953   0.1381153
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0913462   0.0521605   0.1305318
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0982906   0.0601142   0.1364670
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1040564   0.0789155   0.1291974
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0805085   0.0559545   0.1050625
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1053922   0.0755872   0.1351971
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1138132   0.0943960   0.1332304
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.1210654   0.0988158   0.1433150
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.1331361   0.1122225   0.1540497
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0593905   0.0505097   0.0682714
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0698832   0.0625141   0.0772523
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0618322   0.0534307   0.0702338
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0625000   0.0291532   0.0958468
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0633803   0.0389691   0.0877914
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0775862   0.0257184   0.1294540
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0517241   0.0232055   0.0802428
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0420168   0.0165097   0.0675239
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0304348   0.0082187   0.0526509
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0608108   0.0335678   0.0880539
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.0826446   0.0479307   0.1173585
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.0545455   0.0245177   0.0845732
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0244989   0.0101967   0.0388011
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0338583   0.0239090   0.0438075
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0376506   0.0231693   0.0521319
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0680272   0.0272897   0.1087647
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0933852   0.0577816   0.1289888
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1116751   0.0676561   0.1556942
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.0771084   0.0276033   0.1266135
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.0860806   0.0102938   0.1618674
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.0834416   0.0377740   0.1291093
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0568528   0.0423913   0.0713142
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0634921   0.0534561   0.0735280
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0700656   0.0651163   0.0750148
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.0901639   0.0392867   0.1410412
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.0740741   0.0337031   0.1144451
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.0732984   0.0362980   0.1102988
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0789946   0.0565866   0.1014026
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0371179   0.0197979   0.0544379
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0746269   0.0489292   0.1003246
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0797665   0.0632017   0.0963314
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0460048   0.0317156   0.0602941
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0710760   0.0552500   0.0869020
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0430846   0.0356721   0.0504971
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0476373   0.0416375   0.0536371
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0428637   0.0351721   0.0505552
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0677966   0.0367164   0.0988768
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.1529412   0.1003926   0.2054898
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0915493   0.0385551   0.1445435
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0266667   0.0103566   0.0429767
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0438433   0.0315837   0.0561028
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0444840   0.0274346   0.0615334
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.1793103   0.1168182   0.2418025
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2332016   0.1810505   0.2853526
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.1465969   0.0963927   0.1968010
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0240453   0.0127528   0.0353377
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0457845   0.0361038   0.0554651
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0297921   0.0260400   0.0335441
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0273224   0.0136810   0.0409639
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.0501089   0.0301429   0.0700749
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0327456   0.0152328   0.0502583
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0433369   0.0301987   0.0564752
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0874036   0.0675543   0.1072529
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0723270   0.0558870   0.0887671
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0250116   0.0179369   0.0320862
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0382325   0.0309585   0.0455066
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0311516   0.0247398   0.0375633
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.0446429   0.0210071   0.0682786
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.0424028   0.0226012   0.0622045
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.0517241   0.0105426   0.0929056


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1431670   0.1130936   0.1732405
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0600000   0.0423945   0.0776055
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0870712   0.0669870   0.1071555
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0658833   0.0559209   0.0758458
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2595674   0.2244889   0.2946458
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0842388   0.0288434   0.1396342
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0906209   0.0857893   0.0954524
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0942761   0.0707571   0.1177951
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0967519   0.0815150   0.1119888
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1227336   0.1107225   0.1347447
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0644960   0.0595717   0.0694204
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0653266   0.0456567   0.0849966
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0414286   0.0266555   0.0562017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0659631   0.0482810   0.0836451
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0331515   0.0259618   0.0403411
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0931780   0.0699191   0.1164370
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0833546   0.0277077   0.1390016
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0679929   0.0637419   0.0722439
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0778947   0.0537677   0.1020217
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0642202   0.0514517   0.0769887
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0669690   0.0578174   0.0761205
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0448613   0.0405987   0.0491239
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.1093023   0.0732474   0.1453573
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0408163   0.0321620   0.0494707
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.1918506   0.1600242   0.2236769
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0321587   0.0287656   0.0355518
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0362989   0.0265157   0.0460822
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0666667   0.0571766   0.0761568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0322895   0.0278646   0.0367144
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.0440806   0.0289011   0.0592601


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.3529410   1.6943193   3.2675843
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.0784313   0.7331589   1.5863057
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4996768   0.7636284   2.9451898
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.6983278   0.3042943   1.6025988
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.6123216   0.9510936   2.7332544
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9173554   0.4870702   1.7277609
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5555905   0.9688125   2.4977608
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6567018   0.9986314   2.7484221
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3519632   0.9496215   1.9247717
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0175358   0.6851670   1.5111339
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.1236547   0.7594058   1.6626155
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0773705   0.8243668   1.4080228
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.3337227   1.0331987   1.7216593
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2536211   0.9953616   1.5788894
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.9917582   0.5133851   1.9158804
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0671551   0.5667873   2.0092545
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              0.7737001   0.5243156   1.1417013
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.0128365   0.6982342   1.4691887
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.0637197   0.8277940   1.3668854
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.1697770   0.9276546   1.4750944
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1766722   0.9869655   1.4028429
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0411124   0.8491894   1.2764114
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0140845   0.5391260   1.9074714
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2413793   0.5288594   2.9138606
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              0.8123249   0.3577453   1.8445294
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              0.5884058   0.2357163   1.4688054
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.3590450   0.7354083   2.5115345
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8969697   0.4410951   1.8239935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.3820329   0.7189106   2.6568184
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5368291   0.7638511   3.0920214
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3727626   0.6749747   2.7919228
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.6416244   0.8015257   3.3622510
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              1.1163576   0.7576578   1.6448776
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0821338   0.8414849   1.3916038
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1167800   0.8277628   1.5067090
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2324032   0.9464603   1.6047347
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8215488   0.3749119   1.8002695
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8129462   0.3812867   1.7332928
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.4698789   0.2721621   0.8112305
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              0.9447083   0.6047012   1.4758921
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.5767436   0.3969332   0.8380081
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8910505   0.6571602   1.2081849
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1056696   0.9010376   1.3567749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              0.9948717   0.7740992   1.2786083
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.2558824   1.3428896   3.7895932
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.3503521   0.6138665   2.9704356
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6441231   0.8391984   3.2210986
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6681495   0.8105214   3.4332501
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3005473   0.8595835   1.9677241
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.8175594   0.5015532   1.3326670
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.9040956   1.1376569   3.1868836
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2390004   0.7619133   2.0148250
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.8339869   0.9682269   3.4738841
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1984887   0.5766142   2.4910504
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              2.0168379   1.3809054   2.9456291
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6689465   1.1425691   2.4378239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.5285931   1.1045309   2.1154656
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2454854   0.8843879   1.7540199
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.9498233   0.4670089   1.9317925
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.1586207   0.4478812   2.9972274


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0522579    0.0390633    0.0654526
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0039655   -0.0206446    0.0285756
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0127469   -0.0117311    0.0372250
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0213399    0.0032775    0.0394024
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0350776   -0.0245741    0.0947293
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0063271   -0.0121188    0.0247731
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0180402    0.0023593    0.0337211
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0021708   -0.0376620    0.0420037
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0073045   -0.0265109    0.0119019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0089204   -0.0069230    0.0247637
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0051055   -0.0026377    0.0128487
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0028266   -0.0301421    0.0357954
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.0102956   -0.0324867    0.0118956
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0051522   -0.0166466    0.0269511
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0086526   -0.0047325    0.0220377
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0251508   -0.0121144    0.0624161
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0062462   -0.0109322    0.0234246
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0111401   -0.0028821    0.0251623
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0122692   -0.0551754    0.0306370
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0147744   -0.0312184    0.0016695
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0127976   -0.0255007   -0.0000944
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0017767   -0.0048037    0.0083571
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0415057    0.0018316    0.0811798
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0141497   -0.0013940    0.0296933
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0125402   -0.0421899    0.0672704
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0081134   -0.0029171    0.0191439
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0089765   -0.0027014    0.0206544
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0233297    0.0113857    0.0352737
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0072779    0.0011272    0.0134287
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0005623   -0.0257754    0.0246509


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3650137    0.3112688    0.4145647
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0660920   -0.4482931    0.3977847
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.1463964   -0.1841883    0.3846932
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3239045   -0.0082177    0.5466206
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1351387   -0.1277274    0.3367323
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0751095   -0.1497746    0.2560086
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1990735    0.0062597    0.3544759
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0230263   -0.5055282    0.3660181
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                -0.0754976   -0.2931812    0.1055429
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0726808   -0.0656561    0.1930597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0791596   -0.0487669    0.1914819
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0432692   -0.6154784    0.4333977
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                -0.2485137   -0.9073454    0.1827456
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0781081   -0.3185292    0.3554298
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.2610019   -0.2696929    0.5698817
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.2699223   -0.2542614    0.5750379
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0749353   -0.1318412    0.2439358
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.1638419   -0.0697619    0.3464337
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1575100   -0.8601099    0.2797042
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.2300590   -0.5105114   -0.0016774
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1910972   -0.3949698   -0.0170202
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0396035   -0.1184202    0.1752998
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.3797331    0.0026273    0.6142556
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3466667   -0.1582084    0.6314614
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0653647   -0.2680802    0.3111294
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2522932   -0.1813758    0.5267674
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2472945   -0.1440653    0.5047787
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3499458    0.1520489    0.5016570
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.2253961    0.0115887    0.3929539
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0127551   -0.7846182    0.4252704
