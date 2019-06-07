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

**Intervention Variable:** feducyrs

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* W_mhtcm
* W_mwtkg
* W_gagebrth
* W_birthwt
* W_birthlen
* single
* delta_W_mage
* delta_meducyrs
* delta_W_mhtcm
* delta_W_mwtkg
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_single

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/64173297-a04b-4a75-932b-7f87139f0908/46a3a2ef-8b94-4fd5-80bc-175f761f3c92/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/64173297-a04b-4a75-932b-7f87139f0908/46a3a2ef-8b94-4fd5-80bc-175f761f3c92/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2400108   0.1226054   0.3574161
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.4186070   0.2731334   0.5640806
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2435071   0.1112232   0.3757909
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2454393   0.1020896   0.3887891
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3168086   0.2541266   0.3794907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3793381   0.1918460   0.5668302
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3487660   0.2988593   0.3986728
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3060784   0.2523849   0.3597720
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2137950   0.1761690   0.2514210
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5515484   0.4696137   0.6334831
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2555856   0.1629197   0.3482516
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2202252   0.2029343   0.2375161
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3172247   0.2529930   0.3814564
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3350648   0.2971626   0.3729670
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3706070   0.3429555   0.3982585
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0601469   0.0310581   0.0892358
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2756345   0.2607810   0.2904880
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2982482   0.2140583   0.3824381
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1669270   0.0664173   0.2674366
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3266864   0.1816242   0.4717487
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1732755   0.1393376   0.2072133
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2602173   0.2168343   0.3036002
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2204339   0.1665421   0.2743257
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1280382   0.0985060   0.1575704
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2867859   0.2233459   0.3502259
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2568140   0.1613682   0.3522597
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1710998   0.1592726   0.1829271
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2613387   0.1981449   0.3245326
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2489705   0.2151796   0.2827615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2324692   0.2109063   0.2540322
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1767229   0.1647918   0.1886540
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1338565   0.0959462   0.1717669
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1264943   0.0300995   0.2228891
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1951477   0.0680164   0.3222790
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1858627   0.1469493   0.2247760
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2591775   0.0968965   0.4214585
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1155632   0.0742415   0.1568850
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0829771   0.0514250   0.1145292
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1493955   0.1176934   0.1810977
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4347387   0.3551677   0.5143098
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0049153   0.0002240   0.0096066
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0818445   0.0604212   0.1032678
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1587705   0.1007370   0.2168040
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1102065   0.0828370   0.1375760
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2157324   0.1891268   0.2423380
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0616054   0.0311294   0.0920815
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1552404   0.1384529   0.1720280
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2108700   0.1319458   0.2897942


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.3197279   0.2440789   0.3953769
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.4761905   0.3951786   0.5572024
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             NA                0.2959184   0.2050820   0.3867547
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             NA                0.1909091   0.1171277   0.2646905
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.3817787   0.3000427   0.4635148
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.5000000   0.4043636   0.5956364
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2366765   0.2196074   0.2537455
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.5906822   0.5513381   0.6300263
0-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.2648600   0.1706787   0.3590414
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.2317505   0.2246488   0.2388522
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.3333333   0.2953918   0.3712748
0-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.3365584   0.3122030   0.3609138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.4013250   0.3833827   0.4192673
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0799508   0.0612962   0.0986054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2640598   0.2549058   0.2732138
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.3153266   0.2784039   0.3522494
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.2176871   0.1507482   0.2846259
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             NA                0.2925170   0.2187257   0.3663083
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2217391   0.1654429   0.2780353
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1397398   0.1258162   0.1536634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.2961730   0.2596406   0.3327054
0-6 months    ki1119695-PROBIT           BELARUS                        observed             NA                0.2591409   0.1639775   0.3543043
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.1794091   0.1729298   0.1858885
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2547368   0.2155121   0.2939615
0-6 months    ki1135781-COHORTS          INDIA                          observed             NA                0.2462950   0.2238538   0.2687361
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2291594   0.2137721   0.2445467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1822587   0.1741890   0.1903284
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.1071913   0.0805964   0.1337862
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             NA                0.1908397   0.1232893   0.2583901
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             NA                0.2846715   0.2088306   0.3605124
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.2697674   0.2157680   0.3237669
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             NA                0.3883495   0.2937670   0.4829321
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1602787   0.1442326   0.1763249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             NA                0.4719864   0.4316361   0.5123367
6-24 months   ki1119695-PROBIT           BELARUS                        observed             NA                0.0084657   0.0067680   0.0101635
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             NA                0.0926247   0.0870490   0.0982004
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1752768   0.1432387   0.2073148
6-24 months   ki1135781-COHORTS          INDIA                          observed             NA                0.1323843   0.1146569   0.1501118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2666667   0.2498425   0.2834908
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             NA                0.0773067   0.0588111   0.0958024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1653467   0.1559417   0.1747516
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             NA                0.2531486   0.2176598   0.2886375


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3321396   0.8849250   2.005363
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.1375597   0.8475856   1.526739
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.2152352   0.7881544   1.873740
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7778260   0.5104827   1.185179
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2050768   1.1140133   1.303584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3180854   0.8644534   2.009766
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0076342   0.9030233   1.124364
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.0818618   0.9381013   1.247653
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1070252   0.9434443   1.298969
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0709526   0.9420087   1.217547
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0362869   0.9664334   1.111189
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0523340   0.9787006   1.131507
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0507799   0.8927560   1.236775
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0044576   0.9190713   1.097777
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0828856   1.0212138   1.148282
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3292582   0.8738873   2.021917
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9580071   0.9171754   1.000657
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0572625   0.8021398   1.393528
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.3040857   0.7869623   2.161018
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8954061   0.6297952   1.273036
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2796914   1.0037211   1.631539
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9936752   0.8866749   1.113588
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1730283   0.9521747   1.445108
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0913917   0.8858023   1.344697
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0327322   0.8513759   1.252720
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0090607   0.9640564   1.056166
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0485640   0.9889619   1.111758
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9747381   0.8063747   1.178254
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           0.9892536   0.8959352   1.092292
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9857623   0.9213612   1.054665
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0313247   0.9778212   1.087756
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.8007926   0.6184671   1.036868
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.5086820   0.7820392   2.910495
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4587488   0.8209346   2.592104
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4514342   1.2247496   1.720075
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.4983922   0.8680366   2.586503
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.3929655   1.0199845   1.902336
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.5848568   1.1411905   2.201010
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0728482   0.8922911   1.289941
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0856783   0.9248095   1.274530
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.7223248   0.6795021   4.365553
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1317156   0.8774284   1.459698
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1039628   0.8063101   1.511495
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.2012393   0.9749803   1.480005
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2360992   1.1143290   1.371176
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2548684   0.8232287   1.912828
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0651004   0.9678507   1.172122
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.2004961   0.8307048   1.734901


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0797171   -0.0187100   0.1781442
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0575834   -0.0654675   0.1806344
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0524113   -0.0534427   0.1582653
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0545302   -0.1609316   0.0518711
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0649701    0.0321387   0.0978016
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1206619   -0.0367439   0.2780677
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0026626   -0.0355878   0.0409129
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0250561   -0.0186414   0.0687537
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0228815   -0.0113283   0.0570912
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0391338   -0.0314928   0.1097604
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0092744   -0.0088554   0.0274042
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0115253   -0.0044567   0.0275072
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0161086   -0.0355502   0.0677675
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0014936   -0.0282763   0.0312635
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0307180    0.0089771   0.0524588
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0198039   -0.0057606   0.0453684
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0115747   -0.0235611   0.0004117
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0170784   -0.0656262   0.0997830
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0507601   -0.0343445   0.1358647
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0341694   -0.1499168   0.0815780
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0484637   -0.0028933   0.0998206
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0016458   -0.0312868   0.0279951
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0381413   -0.0079142   0.0841968
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0117016   -0.0150554   0.0384587
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0093871   -0.0460928   0.0648670
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0023269   -0.0093912   0.0140450
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0083093   -0.0017047   0.0183232
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0066019   -0.0561467   0.0429429
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0026755   -0.0273495   0.0219984
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0033098   -0.0190062   0.0123866
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0055358   -0.0038943   0.0149659
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0266652   -0.0593467   0.0060163
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0643454   -0.0207116   0.1494024
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0895238   -0.0234126   0.2024602
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0839048    0.0430483   0.1247612
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1291720   -0.0117063   0.2700503
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0454124    0.0083423   0.0824824
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0485297    0.0199493   0.0771101
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0108832   -0.0166380   0.0384044
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0372477   -0.0324903   0.1069856
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0035504   -0.0010655   0.0081664
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0107802   -0.0100562   0.0316166
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0165062   -0.0334308   0.0664433
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0221779   -0.0010021   0.0453579
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0509342    0.0284469   0.0734216
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0157013   -0.0103580   0.0417606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0101062   -0.0048060   0.0250184
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0422786   -0.0364554   0.1210126


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2493279   -0.1300393   0.5013372
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1209252   -0.1798218   0.3450092
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1771141   -0.2687869   0.4663081
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.2856346   -0.9589302   0.1562454
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1701774    0.1023446   0.2328843
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2413238   -0.1568003   0.5024296
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0075764   -0.1073912   0.1106082
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0756675   -0.0659829   0.1984952
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0966782   -0.0599459   0.2301586
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0662519   -0.0615613   0.1786762
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0350163   -0.0347324   0.1000634
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0497313   -0.0217630   0.1162231
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0483259   -0.1201269   0.1914455
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0044378   -0.0880549   0.0890680
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0765414    0.0207731   0.1291336
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2477007   -0.1443123   0.5054198
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0438336   -0.0903040   0.0006561
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0541611   -0.2466655   0.2823967
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2331792   -0.2707088   0.5372551
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1168117   -0.5878178   0.2144763
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2185616    0.0037073   0.3870817
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0063651   -0.1278091   0.1020017
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1475057   -0.0502275   0.3080103
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0837387   -0.1289201   0.2563381
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0316947   -0.1745694   0.2017372
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0089793   -0.0372837   0.0531790
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0463148   -0.0111613   0.1005238
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0259166   -0.2401182   0.1512867
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                -0.0108632   -0.1161521   0.0844936
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0144433   -0.0853507   0.0518316
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0303733   -0.0226818   0.0806759
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.2487627   -0.6169009   0.0355572
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3371698   -0.2787083   0.6564159
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.3144810   -0.2181238   0.6142131
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3110263    0.1835066   0.4186300
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.3326180   -0.1520251   0.6133776
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.2821072    0.0195930   0.4743304
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3690282    0.1237221   0.5456631
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0679017   -0.1207105   0.2247710
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0789168   -0.0813038   0.2153970
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.4193894   -0.4716658   0.7709340
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1163858   -0.1396941   0.3149266
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0941723   -0.2402176   0.3384034
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1675264   -0.0256618   0.3243267
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1910034    0.1025989   0.2706991
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2031037   -0.2147293   0.4772138
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0611213   -0.0332172   0.1468463
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.1670110   -0.2037970   0.4235983
