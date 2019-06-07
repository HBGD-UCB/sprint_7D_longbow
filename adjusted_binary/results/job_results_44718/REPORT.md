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

**Intervention Variable:** feducyrs

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        feducyrs    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       41     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       13     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       23     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       16     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       36     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       18     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       22     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       22     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       28     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       31     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       27     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       17     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       32      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       18      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       19      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        9      98
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0      112     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        8     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       65     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        4     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       54     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       36     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       30     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       23     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      114     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       16     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       53     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       78     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       43     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0       98     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       89     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      109     461
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       44     461
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       20     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       11     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       15     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       17     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       18     106
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       25     106
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      165     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       67     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      136     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1      102     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      153     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       77     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      201     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       95     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      152     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       90     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      154     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       66     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      355    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       94    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      966    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      304    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      498    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      166    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       70     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       77     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0       90     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      167     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       86     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      111     601
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0      920    7823
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      325    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     2020    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1      710    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     2811    7823
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1037    7823
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      783   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      209   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1722   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      561   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7914   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     2373   13562
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      102     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       50     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      137     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       71     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      157     594
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       77     594
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      386    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                  1      181    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      305    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      167    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      269    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      139    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      640    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      388    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      480    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      346    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      597    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      417    2868
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      235     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       16     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      267     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      246     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       25     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     2421   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      795   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     3795   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1428   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     3232   12838
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1167   12838
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       79     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       33     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      393     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      175     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       73     796
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       43     796
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       45     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1        9     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       28     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       42     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       12     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       31     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       13     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       40     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       19     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       33     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       11     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       34      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1        8      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       22      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1        6      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       26      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1        2      98
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0      118     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0       67     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        2     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0       58     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        3     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       39     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        4     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       34     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        3     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       29     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        1     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      125     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        5     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       59     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0      100     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       21     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0      136     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1       51     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0      122     460
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1       30     460
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       29     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1        2     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       26     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1        6     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       33     106
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       10     106
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0      180     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       52     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0      167     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       71     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0      172     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       58     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      218     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       78     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      172     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       70     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      172     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       48     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      395    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0     1088    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      182    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      567    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       97    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0      108     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       39     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      187     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       70     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0      128     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       69     601
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0      923    7822
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      322    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     2035    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1      695    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     2837    7822
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1010    7822
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      815   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      170   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1863   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      405   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     8377   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1842   13472
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0       86     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       36     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0      120     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       42     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0      148     475
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       43     475
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      419    1417
0-6 months    ki1135781-COHORTS          INDIA                          High                  1      138    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0      357    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      101    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0      292    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      110    1417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0      768    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      260    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0      649    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      177    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0      793    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      220    2867
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0       72     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        1     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0      104     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        3     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     2644   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1      559   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     4237   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1      969   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     3582   12795
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      804   12795
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0       89     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       13     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      472     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1       54     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       97     737
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       12     737
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       42     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        6     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       28     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1        9     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       36     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       10     131
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       11     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       34     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       20     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1        8     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       36      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        3      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       23      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        4      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       20      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        8      94
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       99     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        7     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       58     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        2     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       53     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        4     223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       33      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        3      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       30      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        6      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       17      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7      96
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      116     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       12     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       47     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        0     202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0       84     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1       34     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      114     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1       56     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      116     430
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1       26     430
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       20     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       10     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       18     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       13     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       25     103
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       17     103
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      191     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       23     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      158     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       50     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      167     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       26     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      263     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       23     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      188     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       41     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      183     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       32     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      321    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      906    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      166    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      460    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      102    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       86     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       59     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      118     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      135     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      107     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       84     589
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0     1205    7678
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1        6    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     2658    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       23    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     3750    7678
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       36    7678
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      656   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       51   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1583   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      208   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7185   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      703   10386
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      122     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       20     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      145     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       39     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      180     542
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       36     542
6-24 months   ki1135781-COHORTS          INDIA                          High                  0      494    1405
6-24 months   ki1135781-COHORTS          INDIA                          High                  1       55    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0      375    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1       84    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0      350    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1       47    1405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      735    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      188    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      526    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      252    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      686    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      268    2655
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      232     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       15     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      265     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      243     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       23     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     1870    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      289    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     2604    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1      587    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     2376    8207
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      481    8207
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0       88     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       24     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0      423     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      143     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0       82     794
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       34     794


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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




# Results Detail

## Results Plots
![](/tmp/581d5e68-4ff4-420e-a17e-dfaa41925532/18181b70-2998-40a7-9eff-ff3852c09c01/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/581d5e68-4ff4-420e-a17e-dfaa41925532/18181b70-2998-40a7-9eff-ff3852c09c01/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/581d5e68-4ff4-420e-a17e-dfaa41925532/18181b70-2998-40a7-9eff-ff3852c09c01/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/581d5e68-4ff4-420e-a17e-dfaa41925532/18181b70-2998-40a7-9eff-ff3852c09c01/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2407407   0.1263204   0.3551611
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4102564   0.2553543   0.5651585
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3333333   0.2071717   0.4594949
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5000000   0.3517571   0.6482429
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5254237   0.3975704   0.6532771
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3863636   0.2420001   0.5307272
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2380952   0.1086231   0.3675674
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3571429   0.1787512   0.5355345
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3214286   0.1475539   0.4953032
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3553719   0.3037759   0.4069679
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4759358   0.3641976   0.5876740
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2875817   0.2319283   0.3432351
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3548387   0.1856096   0.5240679
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.5312500   0.3575293   0.7049707
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5813953   0.4332425   0.7295482
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2887931   0.2304344   0.3471518
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4285714   0.3656552   0.4914876
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3347826   0.2737506   0.3958146
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3209459   0.2677281   0.3741638
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3719008   0.3109675   0.4328341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3000000   0.2394055   0.3605945
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2093541   0.1717143   0.2469940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2393701   0.2158976   0.2628426
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2500000   0.2170576   0.2829424
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5238095   0.4430064   0.6046126
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6498054   0.5914355   0.7081754
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5634518   0.4941378   0.6327658
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2610442   0.1810738   0.3410146
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2600733   0.1431773   0.3769692
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2694906   0.1777939   0.3611874
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2106855   0.1853079   0.2360631
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2457293   0.2280688   0.2633898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2306795   0.2225385   0.2388205
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.3289474   0.2541935   0.4037012
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.3413462   0.2768538   0.4058385
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.3290598   0.2688059   0.3893138
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3192240   0.2808394   0.3576085
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3538136   0.3106623   0.3969648
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3406863   0.2946827   0.3866898
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3774319   0.3477945   0.4070693
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4188862   0.3852341   0.4525383
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4112426   0.3809510   0.4415342
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0637450   0.0335038   0.0939862
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0824742   0.0508487   0.1140997
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0922509   0.0577763   0.1267255
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2472015   0.2306293   0.2637737
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2734061   0.2602366   0.2865756
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2652876   0.2498523   0.2807228
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2946429   0.2055335   0.3837522
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3080986   0.2623765   0.3538207
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3706897   0.2665565   0.4748228
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2820513   0.1403386   0.4237640
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2954545   0.1601838   0.4307253
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3220339   0.2023987   0.4416691
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2500000   0.1216179   0.3783821
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1735537   0.1386223   0.2084851
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2727273   0.1715879   0.3738666
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1973684   0.1653406   0.2293962
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2241379   0.1704391   0.2778367
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2983193   0.2401518   0.3564868
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2521739   0.1960116   0.3083362
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2635135   0.2132940   0.3137331
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2892562   0.2320919   0.3464205
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2181818   0.1635701   0.2727935
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1202673   0.0901743   0.1503602
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1433071   0.1240326   0.1625816
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1460843   0.1192145   0.1729541
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2653061   0.1938766   0.3367357
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2723735   0.2179007   0.3268464
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3502538   0.2835824   0.4169253
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2586345   0.1777590   0.3395101
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2545788   0.1362519   0.3729056
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2625422   0.1700321   0.3550523
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1725888   0.1489888   0.1961889
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1785714   0.1628086   0.1943342
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1802525   0.1727993   0.1877056
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2950820   0.2140668   0.3760972
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2592593   0.1917057   0.3268129
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2251309   0.1658355   0.2844263
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2477558   0.2118913   0.2836204
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2205240   0.1825403   0.2585078
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2736318   0.2300355   0.3172282
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2529183   0.2263416   0.2794950
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2142857   0.1862983   0.2422731
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2171767   0.1917812   0.2425723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1745239   0.1594778   0.1895700
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1861314   0.1741109   0.1981519
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1833105   0.1701520   0.1964691
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1274510   0.0713984   0.1835035
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1026616   0.0685133   0.1368099
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1100917   0.0473201   0.1728634
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2881356   0.2068196   0.3694515
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3294118   0.2526954   0.4061281
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.1830986   0.1247505   0.2414467
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3333333   0.1638216   0.5028451
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4193548   0.2448000   0.5939097
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4047619   0.2555900   0.5539338
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1074766   0.0659467   0.1490066
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2403846   0.1822654   0.2985039
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1347150   0.0865080   0.1829221
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0804196   0.0488813   0.1119579
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1790393   0.1293499   0.2287287
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1488372   0.1012283   0.1964462
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1440000   0.1084566   0.1795434
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1548507   0.1331896   0.1765119
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1814947   0.1496211   0.2133682
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4068966   0.3268689   0.4869242
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5335968   0.4720729   0.5951208
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4397906   0.3693377   0.5102434
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0049546   0.0002441   0.0096651
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0085789   0.0059064   0.0112513
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0095087   0.0059720   0.0130454
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0721358   0.0530646   0.0912069
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1161362   0.1012975   0.1309750
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0891227   0.0828348   0.0954107
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1408451   0.0835771   0.1981130
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2119565   0.1528496   0.2710635
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1666667   0.1169209   0.2164124
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1001822   0.0750581   0.1253062
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1830065   0.1476199   0.2183931
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1183879   0.0865972   0.1501786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2036836   0.1776970   0.2296703
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3239075   0.2910182   0.3567967
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2809224   0.2523967   0.3094482
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0607287   0.0309255   0.0905320
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0830450   0.0512103   0.1148797
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0864662   0.0526703   0.1202620
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1338583   0.1193886   0.1483279
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1839549   0.1687179   0.1991918
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1683584   0.1530805   0.1836363
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2142857   0.1369470   0.2916244
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2526502   0.2093393   0.2959611
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2931034   0.1868298   0.3993771


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3197279   0.2440789   0.3953769
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4761905   0.3951786   0.5572024
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2959184   0.2050820   0.3867547
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1909091   0.1171277   0.2646905
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3817787   0.3000427   0.4635148
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.5000000   0.4043636   0.5956364
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2366765   0.2196074   0.2537455
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5906822   0.5513381   0.6300263
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2648600   0.1706787   0.3590414
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2317505   0.2246488   0.2388522
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.3333333   0.2953918   0.3712748
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3365584   0.3122030   0.3609138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4013250   0.3833827   0.4192673
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0799508   0.0612962   0.0986054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2640598   0.2549058   0.2732138
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3153266   0.2784039   0.3522494
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2176871   0.1507482   0.2846259
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2925170   0.2187257   0.3663083
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2217391   0.1654429   0.2780353
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397398   0.1258162   0.1536634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2961730   0.2596406   0.3327054
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2591409   0.1639775   0.3543043
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1794091   0.1729298   0.1858885
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2547368   0.2155121   0.2939615
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2462950   0.2238538   0.2687361
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2291594   0.2137721   0.2445467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1822587   0.1741890   0.1903284
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1071913   0.0805964   0.1337862
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1908397   0.1232893   0.2583901
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2846715   0.2088306   0.3605124
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2697674   0.2157680   0.3237669
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3883495   0.2937670   0.4829321
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1602787   0.1442326   0.1763249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0084657   0.0067680   0.0101635
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0926247   0.0870490   0.0982004
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1752768   0.1432387   0.2073148
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1323843   0.1146569   0.1501118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666667   0.2498425   0.2834908
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0773067   0.0588111   0.0958024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1653467   0.1559417   0.1747516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2531486   0.2176598   0.2886375


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.7041420   0.9287226   3.1269833
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3846154   0.7541594   2.5421150
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.0508475   0.7160831   1.5421121
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7727273   0.4795940   1.2450269
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  High              1.5000000   0.7168352   3.1387966
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               High              1.3500000   0.6269331   2.9070086
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  High              1.1621622   0.4470567   3.0211399
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               High              1.4333333   0.5585186   3.6783812
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.3392613   1.1797207   1.5203775
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.8092415   0.7068238   0.9264995
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.4971591   0.8397182   2.6693304
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.6384778   0.9541259   2.8136847
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.4840085   1.1560081   1.9050742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1592472   0.8830377   1.5218536
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.1587647   0.9178206   1.4629609
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.9347368   0.7197752   1.2138971
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1433741   0.9316394   1.4032300
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.1941489   0.9555445   1.4923341
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.2405377   1.0377311   1.4829792
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0756807   0.8830692   1.3103038
0-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              0.9962806   0.7717588   1.2861209
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.0323565   0.8961591   1.1892529
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.1663324   1.0136927   1.3419563
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0948998   0.9657471   1.2413246
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.0376923   0.7721827   1.3944954
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.0003419   0.7471411   1.3393507
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.1083552   0.9338951   1.3154059
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.0672327   0.8907063   1.2787444
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.1098325   0.9919031   1.2417828
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.0895809   0.9783663   1.2134377
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2938144   0.7029928   2.3811848
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4471863   0.7911260   2.6473004
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1060050   1.0228001   1.1959786
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0731633   0.9827016   1.1719523
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0456679   0.7368186   1.4839765
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2580982   0.8289702   1.9093703
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.6923077   0.7746872   3.6968536
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.3333333   0.6110452   2.9094047
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  High              1.0899609   0.6044367   1.9654908
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               High              0.8461538   0.4252650   1.6836005
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.5714286   1.0921918   2.2609469
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1372180   0.9238489   1.3998663
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.3309632   0.9772688   1.8126670
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1250836   0.8111926   1.5604348
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              1.0976902   0.8341540   1.4444860
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              0.8279720   0.6044883   1.1340794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.1915719   0.8969084   1.5830419
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2146642   0.8904033   1.6570123
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.0266387   0.7341097   1.4357352
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.3201874   0.9493716   1.8358405
0-6 months    ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  High              0.9843185   0.7533377   1.2861203
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               High              1.0151090   0.8813275   1.1691979
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.0346639   0.8792541   1.2175426
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.0444040   0.9053715   1.2047870
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8786008   0.6017354   1.2828553
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               High              0.7629436   0.5215086   1.1161520
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              0.8900861   0.7107522   1.1146687
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              1.1044416   0.8905416   1.3697184
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              0.8472527   0.7164924   1.0018770
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              0.8586833   0.7337644   1.0048688
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.0665095   0.9604537   1.1842763
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0503464   0.9395685   1.1741854
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              0.8054987   0.4650651   1.3951341
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              0.8637968   0.4201800   1.7757745
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  High              1.9459459   0.7575571   4.9985748
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               High              1.7391304   0.6852334   4.4139335
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4478114   0.7793310   2.6896889
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              0.7818182   0.3493801   1.7494977
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.1432526   0.7567351   1.7271916
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              0.6354598   0.4590598   0.8796440
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2580645   0.6520768   2.4272085
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.2142857   0.6479888   2.2754865
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.2366221   1.4178638   3.5281798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2534355   0.7402509   2.1223891
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.2263148   1.3769991   3.5994778
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8507583   1.1157368   3.0699951
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.0753524   0.8097231   1.4281214
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.2603796   0.9309814   1.7063249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3113821   1.0440402   1.6471807
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.0808412   0.8386818   1.3929213
6-24 months   ki1119695-PROBIT           BELARUS                        High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  High              1.7315057   0.6201683   4.8343520
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               High              1.9191759   0.6604064   5.5772268
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              1.6099670   1.2003092   2.1594385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.2354855   0.9397261   1.6243291
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              1.5048913   0.9191359   2.4639423
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              1.1833333   0.7145818   1.9595767
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              1.8267379   1.3309055   2.5072941
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              1.1817266   0.8183643   1.7064254
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5902478   1.3509832   1.8718871
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3792096   1.1716943   1.6234774
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.3674740   0.7336171   2.5489937
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              1.4238095   0.7602936   2.6663824
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3742511   1.2028280   1.5701049
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.2577364   1.0943285   1.4455449
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.1790342   0.7823661   1.7768172
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.3678161   0.8108642   2.3073170


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0789872   -0.0169095    0.1748838
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0238095   -0.1478386    0.1002195
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.0578231   -0.0453561    0.1610024
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.0281184   -0.0620180    0.1182548
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0264068   -0.0225483    0.0753620
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1451613    0.0001302    0.2901924
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0626355    0.0136372    0.1116337
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0101886   -0.0315747    0.0519519
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0273223   -0.0069446    0.0615893
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0668727   -0.0030068    0.1367522
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0038159   -0.0307710    0.0384027
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0210650   -0.0034349    0.0455648
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0043860   -0.0601723    0.0689443
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0173344   -0.0128631    0.0475319
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0238931    0.0000055    0.0477806
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0162058   -0.0102108    0.0426223
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0168583    0.0027732    0.0309434
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0206838   -0.0670019    0.1083694
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0510204   -0.0333601    0.1354009
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0029375   -0.1160274    0.1101523
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0481854   -0.0017670    0.0981378
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0344335   -0.0105749    0.0794419
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0049383   -0.0439919    0.0341152
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0194726   -0.0080628    0.0470079
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0308669   -0.0319096    0.0936434
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0005063   -0.0341402    0.0351529
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0068203   -0.0159283    0.0295690
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0403451   -0.1091237    0.0284334
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0014608   -0.0293651    0.0264434
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.0237589   -0.0446531   -0.0028647
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0077348   -0.0052219    0.0206915
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.0202597   -0.0749167    0.0343974
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.0658397   -0.0173452    0.1490246
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0288576   -0.0812767    0.1389918
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0183682   -0.1004567    0.0637204
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0550162   -0.0896963    0.1997287
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0534990    0.0164930    0.0905050
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0510873    0.0225018    0.0796727
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0162787   -0.0161124    0.0486699
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0650899   -0.0047621    0.1349418
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0035112   -0.0010984    0.0081207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0204889    0.0019072    0.0390706
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0344317   -0.0164366    0.0853000
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0322022    0.0109375    0.0534669
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0629830    0.0408737    0.0850924
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0165780   -0.0095602    0.0427162
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0314884    0.0182692    0.0447076
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0388629   -0.0382665    0.1159923


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2470449   -0.1189307    0.4933186
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0500000   -0.3457730    0.1807682
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                 0.1954023   -0.2384488    0.4772675
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                 0.1472868   -0.4798679    0.5086590
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0691679   -0.0551571    0.1788442
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2903226   -0.0713379    0.5298943
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1782310    0.0264289    0.3063637
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0307688   -0.1039248    0.1490280
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1154417   -0.0417379    0.2489057
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1132126   -0.0137722    0.2242914
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.0144070   -0.1220131    0.1342405
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0908952   -0.0211948    0.1906817
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.0131579   -0.2008287    0.1890123
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0515049   -0.0425973    0.1371137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0595354   -0.0019267    0.1172273
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2026969   -0.2022753    0.4712590
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0638428    0.0089734    0.1156744
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0655948   -0.2566561    0.3052092
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.2343750   -0.2638627    0.5361983
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                -0.0100423   -0.4810578    0.3111779
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2173068    0.0088687    0.3819096
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1331682   -0.0592168    0.2906105
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                -0.0190982   -0.1818918    0.1212723
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1393487   -0.0816372    0.3151857
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1042192   -0.1347954    0.2928917
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                 0.0019539   -0.1406518    0.1267309
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0380154   -0.0975133    0.1568081
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1583796   -0.4621488    0.0822799
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                -0.0059313   -0.1258536    0.1012173
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                -0.1036784   -0.1986289   -0.0162496
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0424386   -0.0313191    0.1109213
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                -0.1890047   -0.8426009    0.2327518
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                 0.3450000   -0.2511462    0.6570944
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.1013715   -0.3817356    0.4155660
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                -0.0680888   -0.4267418    0.2004063
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1416667   -0.3251717    0.4440448
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3323421    0.0662098    0.5226261
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3884761    0.1417210    0.5642892
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.1015652   -0.1248504    0.2824067
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1379062   -0.0238534    0.2741093
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                 0.4147494   -0.4738095    0.7675967
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2212035   -0.0071359    0.3977734
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                 0.1964418   -0.1510037    0.4390063
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2432477    0.0674593    0.3858992
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2361863    0.1492748    0.3142189
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.2144443   -0.2028818    0.4869839
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1904386    0.1082043    0.2650899
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1535181   -0.2073613    0.4065310
