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
![](/tmp/73493048-ee6e-4ab5-a52e-7ec8d74a9d72/ffb09093-3d35-4510-9e9f-ec1ad0687f45/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/73493048-ee6e-4ab5-a52e-7ec8d74a9d72/ffb09093-3d35-4510-9e9f-ec1ad0687f45/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.2758510   0.1558328   0.3958691
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3857183   0.2375531   0.5338835
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                0.2380119   0.1060935   0.3699304
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                0.2531137   0.1302433   0.3759842
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.3168086   0.2541266   0.3794907
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.3797936   0.1900953   0.5694919
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.3218577   0.2718394   0.3718760
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2893321   0.2372430   0.3414212
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2133657   0.1756885   0.2510428
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.5663236   0.4853976   0.6472496
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.2579947   0.1628901   0.3530992
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.2194810   0.2016185   0.2373436
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.3033591   0.2434098   0.3633085
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.3150870   0.2778870   0.3522870
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.3682714   0.3403414   0.3962015
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0601042   0.0306034   0.0896050
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2646239   0.2493626   0.2798852
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.3153406   0.2396693   0.3910120
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1703192   0.0674234   0.2732150
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                0.3379208   0.1991519   0.4766896
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1732755   0.1393376   0.2072133
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.2309741   0.1894806   0.2724675
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2186384   0.1637623   0.2735145
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1276947   0.0982464   0.1571430
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.2951685   0.2292620   0.3610750
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                0.2561167   0.1608245   0.3514090
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.1718686   0.1589745   0.1847627
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2156617   0.1551555   0.2761678
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                0.2433216   0.2094350   0.2772082
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2146232   0.1933549   0.2358915
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1765967   0.1637454   0.1894479
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.1131816   0.0645477   0.1618155
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                0.1279286   0.0314347   0.2244226
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                0.1994698   0.0726382   0.3263014
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.1858627   0.1469493   0.2247760
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                0.2910899   0.1351762   0.4470036
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                0.1704287   0.1232591   0.2175983
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0902093   0.0562238   0.1241948
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1387671   0.1078807   0.1696536
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                0.4075871   0.3262022   0.4889720
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0048721   0.0002352   0.0095090
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                0.0810925   0.0590327   0.1031523
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1541270   0.0981871   0.2100669
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                0.1212950   0.0924637   0.1501264
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2161374   0.1896115   0.2426634
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                0.0641754   0.0334771   0.0948738
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1555129   0.1389786   0.1720472
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                0.2453156   0.1617924   0.3288388


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.1590603   0.8083507   1.661928
0-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.2345550   0.8898927   1.712708
0-24 months   ki0047075b-MAL-ED          NEPAL                          observed             optimal           1.2432922   0.7981609   1.936672
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   observed             optimal           0.7542423   0.5121862   1.110693
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2050768   1.1140133   1.303584
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3165045   0.8585167   2.018812
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.0918756   0.9693055   1.229945
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1444791   0.9891372   1.324217
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1092529   0.9447121   1.302452
0-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0430118   0.9221856   1.179669
0-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0266105   0.9789726   1.076566
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0559020   0.9791624   1.138656
0-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0988076   0.9393480   1.285336
0-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0681444   0.9735491   1.171931
0-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0897532   1.0268569   1.156502
0-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.3302035   0.8691031   2.035940
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9978684   0.9549134   1.042756
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9999556   0.7836239   1.276009
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.2781123   0.7698972   2.121804
0-6 months    ki0047075b-MAL-ED          INDIA                          observed             optimal           0.8656378   0.6173138   1.213854
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.2796914   1.0037211   1.631539
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           1.1194824   0.9900912   1.265783
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1826615   0.9540379   1.466072
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0943275   0.8885300   1.347791
0-6 months    ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.0034033   0.8271158   1.217264
0-6 months    ki1119695-PROBIT           BELARUS                        observed             optimal           1.0118077   0.9499788   1.077661
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.0438739   0.9776082   1.114631
0-6 months    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1811875   0.9414810   1.481925
0-6 months    ki1135781-COHORTS          INDIA                          observed             optimal           1.0122200   0.9136184   1.121463
0-6 months    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0677290   0.9924460   1.148723
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0320620   0.9770482   1.090173
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           0.9470737   0.6950648   1.290453
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     observed             optimal           1.4917670   0.7785123   2.858489
6-24 months   ki0047075b-MAL-ED          INDIA                          observed             optimal           1.4271409   0.8151022   2.498743
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           1.4514342   1.2247496   1.720075
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          observed             optimal           1.3341223   0.8386321   2.122364
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     observed             optimal           0.9445333   0.7491345   1.190899
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4577969   1.0567386   2.011067
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1550196   0.9494264   1.405133
6-24 months   ki1113344-GMS-Nepal        NEPAL                          observed             optimal           1.1580014   0.9718986   1.379740
6-24 months   ki1119695-PROBIT           BELARUS                        observed             optimal           1.7375979   0.6885501   4.384934
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       observed             optimal           1.1422108   0.8764106   1.488624
6-24 months   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1372229   0.8362724   1.546477
6-24 months   ki1135781-COHORTS          INDIA                          observed             optimal           1.0914244   0.8966864   1.328455
6-24 months   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2337829   1.1126418   1.368113
6-24 months   ki1148112-LCNI-5           MALAWI                         observed             optimal           1.2046157   0.7976711   1.819170
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0632344   0.9672930   1.168692
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     observed             optimal           1.0319304   0.7383668   1.442211


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0438769   -0.0558627   0.1436165
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0904722   -0.0351536   0.2160979
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.0579064   -0.0479990   0.1638119
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.0622047   -0.1579885   0.0335792
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0649701    0.0321387   0.0978016
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.1202064   -0.0395400   0.2799528
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0295709   -0.0088901   0.0680318
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0418024   -0.0004886   0.0840934
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0233108   -0.0109742   0.0575958
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0243586   -0.0453052   0.0940224
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0068654   -0.0051138   0.0188445
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0122694   -0.0042961   0.0288350
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0299742   -0.0175688   0.0775171
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0214714   -0.0077760   0.0507188
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0330536    0.0111713   0.0549358
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0198466   -0.0060288   0.0457220
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0005641   -0.0122089   0.0110808
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0000140   -0.0768878   0.0768598
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0473679   -0.0395602   0.1342959
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.0454038   -0.1596005   0.0687930
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0484637   -0.0028933   0.0998206
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0275973   -0.0008230   0.0560177
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0399368   -0.0070643   0.0869380
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0120451   -0.0145884   0.0386786
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0010046   -0.0560315   0.0580406
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0030241   -0.0131727   0.0192210
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0075405   -0.0037334   0.0188145
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0390752   -0.0099052   0.0880556
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0029734   -0.0219571   0.0279039
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0145362   -0.0011901   0.0302625
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0056620   -0.0039975   0.0153216
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0059903   -0.0413008   0.0293202
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.0629111   -0.0222402   0.1480623
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.0852017   -0.0273371   0.1977405
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.0839048    0.0430483   0.1247612
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.0972596   -0.0386934   0.2332126
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0094531   -0.0487920   0.0298858
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0412975    0.0114938   0.0711013
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0215116   -0.0057139   0.0487371
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0643993   -0.0068787   0.1356774
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0035936   -0.0009568   0.0081441
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0115322   -0.0099546   0.0330191
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0211497   -0.0262533   0.0685528
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0110893   -0.0127969   0.0349756
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0505292    0.0280628   0.0729957
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.0131313   -0.0134828   0.0397454
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0098338   -0.0049290   0.0245965
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0078330   -0.0744772   0.0901432


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.1372321   -0.2370868   0.3982893
0-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.1899916   -0.1237310   0.4161292
0-24 months   ki0047075b-MAL-ED          NEPAL                          optimal              NA                 0.1956838   -0.2528803   0.4836502
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   optimal              NA                -0.3258339   -0.9524149   0.0996609
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.1701774    0.1023446   0.2328843
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2404128   -0.1647997   0.5046592
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.0841447   -0.0316665   0.1869554
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1262400   -0.0109821   0.2448368
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0984923   -0.0585235   0.2322172
0-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0412381   -0.0843804   0.1523045
0-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0259207   -0.0214791   0.0711210
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0529425   -0.0212811   0.1217717
0-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0899226   -0.0645682   0.2219935
0-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0637970   -0.0271696   0.1467075
0-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0823611    0.0261545   0.1353236
0-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.2482353   -0.1506115   0.5088263
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0021362   -0.0472154   0.0410025
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0000444   -0.2761223   0.2163065
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.2175961   -0.2988747   0.5287030
0-6 months    ki0047075b-MAL-ED          INDIA                          optimal              NA                -0.1552175   -0.6199217   0.1761778
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.2185616    0.0037073   0.3870817
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                 0.1067301   -0.0100080   0.2099754
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1544495   -0.0481763   0.3179052
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0861967   -0.1254544   0.2580451
0-6 months    ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.0033918   -0.2090206   0.1784855
0-6 months    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0116699   -0.0526551   0.0720641
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.0420299   -0.0229047   0.1028423
0-6 months    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1533943   -0.0621563   0.3252018
0-6 months    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0120725   -0.0945489   0.1083077
0-6 months    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0634328   -0.0076115   0.1294679
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0310660   -0.0234910   0.0827147
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                -0.0558840   -0.4387147   0.2250785
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     optimal              NA                 0.3296540   -0.2845011   0.6501648
6-24 months   ki0047075b-MAL-ED          INDIA                          optimal              NA                 0.2992983   -0.2268399   0.5997988
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                 0.3110263    0.1835066   0.4186300
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          optimal              NA                 0.2504435   -0.1924180   0.5288272
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     optimal              NA                -0.0587239   -0.3348737   0.1602979
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3140334    0.0536922   0.5027515
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1342138   -0.0532675   0.2883235
6-24 months   ki1113344-GMS-Nepal        NEPAL                          optimal              NA                 0.1364432   -0.0289140   0.2752257
6-24 months   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.4244929   -0.4523272   0.7719464
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       optimal              NA                 0.1245049   -0.1410177   0.3282385
6-24 months   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1206649   -0.1957827   0.3533689
6-24 months   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0837661   -0.1152171   0.2472456
6-24 months   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1894846    0.1012381   0.2690665
6-24 months   ki1148112-LCNI-5           MALAWI                         optimal              NA                 0.1698598   -0.2536495   0.4502987
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0594736   -0.0338129   0.1443424
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     optimal              NA                 0.0309424   -0.3543404   0.3066200
