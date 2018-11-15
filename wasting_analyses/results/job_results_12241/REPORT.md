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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       23     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1       16     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       36     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       18     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       41     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1       13     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       28     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       31     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       27     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1       17     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       22     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       22     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       18      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1       10      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       19      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        9      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       32      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1       10      98
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       65     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        4     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       54     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        7     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                  0      112     250
0-24 months   ki0047075b-MAL-ED          PERU                           High                  1        8     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       30     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       23     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       36     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        7     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       53     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      114     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       16     211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      352    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      291    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      297    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      184    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      235    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1      151    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       79     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       68     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       80     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       81     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       62     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       48     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      136     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1      102     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      153     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       77     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      165     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       67     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      152     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       90     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      154     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       66     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      201     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       95     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      966    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      304    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      498    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      166    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      355    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       94    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0       90     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      167     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0       86     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      111     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       70     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       77     601
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     4760   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Low                   1     1658   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     5314   16315
0-24 months   ki1119695-PROBIT           BELARUS                        Medium                1     1875   16315
0-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2070   16315
0-24 months   ki1119695-PROBIT           BELARUS                        High                  1      638   16315
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1722   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      561   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7914   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     2373   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      783   13562
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      209   13562
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      419    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1      139    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      330    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1      115    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      164    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       67    1234
0-24 months   ki1135781-COHORTS          INDIA                          Low                   0      305    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low                   1      167    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                0      269    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium                1      139    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                  0      386    1447
0-24 months   ki1135781-COHORTS          INDIA                          High                  1      181    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      480    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      346    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      597    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      417    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      640    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      388    2868
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      267     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      246     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       25     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      235     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       16     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     7803   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2838   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     6578   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     2278   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     4907   25974
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1570   25974
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1547    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      691    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      313    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      141    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      275    3079
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      112    3079
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   0       28     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                   1       11     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                0       42     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium                1       12     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  0       45     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                  1        9     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   0       40     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                   1       19     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                0       33     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium                1       11     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  0       31     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High                  1       13     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   0       22      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low                   1        6      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                0       26      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium                1        2      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  0       34      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High                  1        8      98
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   0       67     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low                   1        2     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                0       58     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium                1        3     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                  0      118     250
0-6 months    ki0047075b-MAL-ED          PERU                           High                  1        2     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       34     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        3     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       29     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        1     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       39     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        4     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       59     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        1     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      125     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1        5     211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   0      491    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                   1      149    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                0      372    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium                1      105    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  0      309    1502
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                  1       76    1502
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0      121     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       26     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0      126     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       35     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       93     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       17     418
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   0      167     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                   1       71     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                0      172     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium                1       58     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  0      180     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                  1       52     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      172     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       70     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      172     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       48     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      218     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       78     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0     1088    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      182    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      567    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1       97    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      395    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      187     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1       70     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0      128     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1       69     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0      108     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       39     601
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   0     4810   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Low                   1     1608   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                0     5361   16312
0-6 months    ki1119695-PROBIT           BELARUS                        Medium                1     1825   16312
0-6 months    ki1119695-PROBIT           BELARUS                        High                  0     2083   16312
0-6 months    ki1119695-PROBIT           BELARUS                        High                  1      625   16312
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1863   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      405   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     8377   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1     1842   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      815   13472
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                  1      170   13472
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   0      355     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                   1       88     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                0      296     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium                1       68     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  0      146     997
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                  1       44     997
0-6 months    ki1135781-COHORTS          INDIA                          Low                   0      357    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low                   1      101    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                0      292    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium                1      110    1417
0-6 months    ki1135781-COHORTS          INDIA                          High                  0      419    1417
0-6 months    ki1135781-COHORTS          INDIA                          High                  1      138    1417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   0      649    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                   1      177    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                0      793    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium                1      220    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  0      768    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                  1      260    2867
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   0      104     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low                   1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                0       87     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium                1        3     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  0       72     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High                  1        1     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     8700   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1905   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     7290   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1541   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0     5343   25886
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1107   25886
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1878    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      226    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      384    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       43    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0      322    2889
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       36    2889
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   0       28     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                   1        9     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                0       36     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium                1       10     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  0       42     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                  1        6     131
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   0       34     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                   1       20     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium                1        8     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High                  1       11     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   0       23      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low                   1        4      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                0       20      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium                1        8      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  0       36      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High                  1        3      94
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   0       58     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low                   1        2     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                0       53     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium                1        4     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                  0       99     223
6-24 months   ki0047075b-MAL-ED          PERU                           High                  1        7     223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   0       30      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                   1        6      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                0       17      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium                1        7      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  0       33      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                  1        3      96
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   0       47     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low                   1        8     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                0       19     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium                1        0     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  0      116     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High                  1       12     202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   0      376    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                   1      196    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                0      324    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium                1      120    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  0      263    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                  1      107    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   0       89     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                   1       51     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                0       99     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium                1       56     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  0       71     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                  1       36     402
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   0      158     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                   1       50     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                0      167     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium                1       26     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  0      191     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                  1       23     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   0      188     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                   1       41     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                0      183     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium                1       32     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  0      263     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                  1       23     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   0      906    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                   1      166    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                0      460    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium                1      102    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  0      321    2009
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                  1       54    2009
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      118     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      135     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      107     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1       84     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0       86     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1       59     589
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   0     6249   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low                   1       72   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                0     7000   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium                1       70   16027
6-24 months   ki1119695-PROBIT           BELARUS                        High                  0     2614   16027
6-24 months   ki1119695-PROBIT           BELARUS                        High                  1       22   16027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   0     1583   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                   1      208   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                0     7185   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium                1      703   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  0      656   10386
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                  1       51   10386
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   0      445    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                   1       66    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                0      354    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium                1       50    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  0      181    1125
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                  1       29    1125
6-24 months   ki1135781-COHORTS          INDIA                          Low                   0      375    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low                   1       84    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                0      350    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium                1       47    1405
6-24 months   ki1135781-COHORTS          INDIA                          High                  0      494    1405
6-24 months   ki1135781-COHORTS          INDIA                          High                  1       55    1405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   0      526    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                   1      252    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                0      686    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium                1      268    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  0      735    2655
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                  1      188    2655
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   0      265     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                   1       24     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                0      243     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium                1       23     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  0      232     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High                  1       15     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0     5313   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     1183   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     4768   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1      951   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     3796   16606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1      595   16606
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     1684    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      548    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      341    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      112    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      297    3072
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1       90    3072


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
![](/tmp/f627ff26-ae46-4cd1-9c72-4651df4c0588/8b7751d7-4d95-414b-b462-bd82f0ee285f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/f627ff26-ae46-4cd1-9c72-4651df4c0588/8b7751d7-4d95-414b-b462-bd82f0ee285f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/f627ff26-ae46-4cd1-9c72-4651df4c0588/8b7751d7-4d95-414b-b462-bd82f0ee285f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/f627ff26-ae46-4cd1-9c72-4651df4c0588/8b7751d7-4d95-414b-b462-bd82f0ee285f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4102564   0.2553543   0.5651585
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3333333   0.2071717   0.4594949
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2407407   0.1263204   0.3551611
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5254237   0.3975704   0.6532771
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3863636   0.2420001   0.5307272
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.5000000   0.3517571   0.6482429
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3571429   0.1787512   0.5355345
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3214286   0.1475539   0.4953032
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2380952   0.1086231   0.3675674
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4525661   0.3744447   0.5306875
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3825364   0.3114525   0.4536203
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3911917   0.3550083   0.4273751
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4625850   0.3818875   0.5432826
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5031056   0.4257811   0.5804300
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4363636   0.3435748   0.5291525
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.4285714   0.3656552   0.4914876
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3347826   0.2737506   0.3958146
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2887931   0.2304344   0.3471518
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3719008   0.3109675   0.4328341
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.3000000   0.2394055   0.3605945
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3209459   0.2677281   0.3741638
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2393701   0.2158976   0.2628426
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2500000   0.2170576   0.2829424
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.2093541   0.1717143   0.2469940
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6498054   0.5914355   0.7081754
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5634518   0.4941378   0.6327658
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.5238095   0.4430064   0.6046126
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2583359   0.1950426   0.3216292
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2608151   0.2007990   0.3208313
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2355982   0.1795897   0.2916067
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2457293   0.2280688   0.2633898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2306795   0.2225385   0.2388205
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2106855   0.1853079   0.2360631
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2491039   0.2132045   0.2850033
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2584270   0.2177367   0.2991172
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2900433   0.2315016   0.3485850
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3538136   0.3106623   0.3969648
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3406863   0.2946827   0.3866898
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3192240   0.2808394   0.3576085
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4188862   0.3852341   0.4525383
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4112426   0.3809510   0.4415342
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3774319   0.3477945   0.4070693
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0824742   0.0508487   0.1140997
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0922509   0.0577763   0.1267255
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0637450   0.0335038   0.0939862
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2667043   0.2573274   0.2760812
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2572267   0.2467410   0.2677125
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2423962   0.2299825   0.2548098
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3087578   0.2854986   0.3320170
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3105727   0.2617930   0.3593524
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2894057   0.2333216   0.3454898
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2820513   0.1403386   0.4237640
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3220339   0.2023987   0.4416691
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2500000   0.1216179   0.3783821
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2954545   0.1601838   0.4307253
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2328125   0.1777545   0.2878705
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2201258   0.1638145   0.2764371
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1974026   0.1644818   0.2303234
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1768707   0.1151158   0.2386257
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2173913   0.1536019   0.2811807
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1545455   0.0869146   0.2221763
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2983193   0.2401518   0.3564868
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2521739   0.1960116   0.3083362
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2241379   0.1704391   0.2778367
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.2892562   0.2320919   0.3464205
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2181818   0.1635701   0.2727935
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2635135   0.2132940   0.3137331
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1433071   0.1240326   0.1625816
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1460843   0.1192145   0.1729541
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1202673   0.0901743   0.1503602
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2723735   0.2179007   0.3268464
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3502538   0.2835824   0.4169253
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2653061   0.1938766   0.3367357
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2505453   0.1863405   0.3147501
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2539660   0.1933465   0.3145856
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2307976   0.1737983   0.2877970
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1785714   0.1628086   0.1943342
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1802525   0.1727993   0.1877056
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1725888   0.1489888   0.1961889
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1986456   0.1614736   0.2358176
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1868132   0.1467529   0.2268735
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2315789   0.1715669   0.2915910
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2205240   0.1825403   0.2585078
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2736318   0.2300355   0.3172282
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2477558   0.2118913   0.2836204
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2142857   0.1862983   0.2422731
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2171767   0.1917812   0.2425723
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2529183   0.2263416   0.2794950
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1796322   0.1713429   0.1879216
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1744989   0.1654974   0.1835005
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1716279   0.1603928   0.1828630
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1074144   0.0916835   0.1231454
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1007026   0.0679286   0.1334765
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1005587   0.0599186   0.1411987
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3426573   0.2855335   0.3997811
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2702703   0.2128666   0.3276739
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2891892   0.2489867   0.3293917
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3642857   0.2844721   0.4440993
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3612903   0.2855716   0.4370090
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3364486   0.2468103   0.4260869
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2403846   0.1822654   0.2985039
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1347150   0.0865080   0.1829221
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1074766   0.0659467   0.1490066
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1790393   0.1293499   0.2287287
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1488372   0.1012283   0.1964462
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0804196   0.0488813   0.1119579
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1548507   0.1331896   0.1765119
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1814947   0.1496211   0.2133682
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1440000   0.1084566   0.1795434
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5335968   0.4720729   0.5951208
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4397906   0.3693377   0.5102434
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4068966   0.3268689   0.4869242
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0113906   0.0071370   0.0156442
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0099010   0.0066493   0.0131527
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0083460   0.0048560   0.0118360
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1161362   0.1012975   0.1309750
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0891227   0.0828348   0.0954107
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0721358   0.0530646   0.0912069
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1291585   0.1000673   0.1582497
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1237624   0.0916364   0.1558883
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1380952   0.0914131   0.1847774
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1830065   0.1476199   0.2183931
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1183879   0.0865972   0.1501786
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1001822   0.0750581   0.1253062
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3239075   0.2910182   0.3567967
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2809224   0.2523967   0.3094482
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2036836   0.1776970   0.2296703
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0830450   0.0512103   0.1148797
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0864662   0.0526703   0.1202620
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0607287   0.0309255   0.0905320
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1821121   0.1720556   0.1921685
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1662878   0.1559323   0.1766433
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1355044   0.1250848   0.1459241
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2455197   0.2235896   0.2674498
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2472406   0.1994660   0.2950153
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2325581   0.1813965   0.2837198


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3197279   0.2440789   0.3953769
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4761905   0.3951786   0.5572024
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2959184   0.2050820   0.3867547
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1909091   0.1171277   0.2646905
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4145695   0.3576236   0.4715155
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2366765   0.2196074   0.2537455
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5906822   0.5513381   0.6300263
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2556543   0.1980936   0.3132150
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2317505   0.2246488   0.2388522
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2601297   0.2356425   0.2846169
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3365584   0.3122030   0.3609138
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4013250   0.3833827   0.4192673
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0799508   0.0612962   0.0986054
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2574113   0.2508319   0.2639906
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3065930   0.2872641   0.3259220
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2176871   0.1507482   0.2846259
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2925170   0.2187257   0.3663083
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2197071   0.1750081   0.2644060
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397398   0.1258162   0.1536634
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2961730   0.2596406   0.3327054
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2487739   0.1904535   0.3070943
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1794091   0.1729298   0.1858885
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2006018   0.1757323   0.2254713
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2462950   0.2238538   0.2687361
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2291594   0.2137721   0.2445467
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1758866   0.1701478   0.1816254
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1055729   0.0925062   0.1186395
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1908397   0.1232893   0.2583901
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2846715   0.2088306   0.3605124
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3051948   0.2633957   0.3469939
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1602787   0.1442326   0.1763249
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4719864   0.4316361   0.5123367
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102327   0.0075781   0.0128874
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0926247   0.0870490   0.0982004
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1288889   0.1093000   0.1484778
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1323843   0.1146569   0.1501118
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666667   0.2498425   0.2834908
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0773067   0.0588111   0.0958024
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1643382   0.1581062   0.1705701
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2441406   0.2256713   0.2626100


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8125000   0.4760397   1.3867672
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5868056   0.3197970   1.0767478
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7353372   0.4707999   1.1485153
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9516129   0.6484613   1.3964860
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.9000000   0.4310005   1.8793484
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.6666667   0.3185934   1.3950207
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2333333   0.4843434   3.1405635
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.8604651   0.3310009   2.2368526
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8452608   0.7080170   1.0091083
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8643858   0.7358744   1.0153401
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0875959   0.8619773   1.3722692
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9433155   0.7164853   1.2419573
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.7811594   0.6181400   0.9871713
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.6738506   0.5249139   0.8650458
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.8066667   0.6219325   1.0462729
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8629880   0.6835453   1.0895376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0444079   0.8862090   1.2308472
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8746044   0.7126416   1.0733767
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8671084   0.7445962   1.0097782
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.8061021   0.6743183   0.9636407
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0095968   0.8773906   1.1617240
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.9119840   0.7775273   1.0696921
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9387545   0.8665215   1.0170089
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8573885   0.7451808   0.9864923
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0374262   0.8380260   1.2842718
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1643464   0.9086031   1.4920736
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.9628977   0.8027081   1.1550550
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.9022379   0.7602216   1.0707840
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9817526   0.8803728   1.0948068
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9010369   0.8052938   1.0081630
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1185424   0.6548079   1.9106934
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.7729084   0.4199590   1.4224897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9644643   0.9161873   1.0152852
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9088575   0.8563348   0.9646017
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0058780   0.8446232   1.1979194
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9373226   0.7597655   1.1563747
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.7878788   0.3876207   1.6014445
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5909091   0.2705003   1.2908435
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7763158   0.4118846   1.4631920
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.9174641   0.5087788   1.6544330
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9455067   0.7694182   1.1618948
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8479038   0.7039182   1.0213414
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.2290970   0.7789558   1.9393648
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.8737762   0.4991929   1.5294387
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8453154   0.6287310   1.1365084
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.7513356   0.5516733   1.0232599
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.7542857   0.5483178   1.0376227
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.9110039   0.6922878   1.1988195
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0193797   0.8116646   1.2802517
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8392276   0.6316952   1.1149411
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.2859318   0.9756844   1.6948315
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9740525   0.6965073   1.3621943
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0136530   0.8772893   1.1712128
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               0.9211811   0.7793837   1.0887765
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               1.0094138   0.9156635   1.1127628
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.9664975   0.8213265   1.1373276
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9404346   0.7074980   1.2500632
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.1657895   0.8468392   1.6048680
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.2408256   0.9813217   1.5689535
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.1234869   0.8971275   1.4069602
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               1.0134913   0.8505220   1.2076872
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               1.1802853   0.9981266   1.3956882
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9714231   0.9082659   1.0389721
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9554404   0.8847296   1.0318027
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9375143   0.6483194   1.3557098
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9361744   0.6091316   1.4388067
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8937198   0.4044997   1.9746246
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5138889   0.2000570   1.3200326
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.5400000   0.2646136   1.1019840
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.6906977   0.3717902   1.2831518
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.7887479   0.6258955   0.9939730
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.8439603   0.7129543   0.9990388
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9917774   0.7323842   1.3430415
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9235844   0.6541388   1.3040170
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.5604145   0.3638751   0.8631106
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.4471028   0.2834323   0.7052864
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.8313103   0.5443072   1.2696447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4491728   0.2778181   0.7262169
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.1720619   0.9363603   1.4670946
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.9299277   0.7002206   1.2349901
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8242001   0.6765714   1.0040417
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7625543   0.6070979   0.9578175
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8692244   0.5985736   1.2622526
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.7327074   0.4053330   1.3244914
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7673980   0.6631822   0.8879909
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6211307   0.4630833   0.8331187
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9582208   0.6795318   1.3512056
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0691919   0.7122657   1.6049789
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.6469054   0.4646555   0.9006384
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.5474239   0.3988363   0.7513682
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8672923   0.7512777   1.0012222
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.6288328   0.5342203   0.7402017
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0411967   0.6022415   1.8000928
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.7312753   0.3923117   1.3631090
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9131070   0.8427079   0.9893873
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.7440717   0.6772657   0.8174676
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0070092   0.8147041   1.2447066
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9472076   0.7462259   1.2023199


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0905285   -0.2208572    0.0398002
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0492333   -0.1481663    0.0496998
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0612245   -0.2091769    0.0867279
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0017199   -0.1017388    0.1051786
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0379966   -0.0769426    0.0009495
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0087068   -0.0563105    0.0737242
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0771429   -0.1273356   -0.0269501
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0407663   -0.0904257    0.0088932
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0026936   -0.0186640    0.0132768
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0591233   -0.1043024   -0.0139441
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0026816   -0.0241101    0.0187469
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0139788   -0.0300201    0.0020624
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0110257   -0.0158603    0.0379118
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0172552   -0.0524753    0.0179650
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0175612   -0.0458822    0.0107598
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0025234   -0.0276666    0.0226197
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0092930   -0.0162372   -0.0023488
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0021648   -0.0140453    0.0097158
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0643642   -0.1822934    0.0535649
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0295169   -0.1204494    0.0614157
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0131054   -0.0353468    0.0091359
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0097321   -0.0405627    0.0600269
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0397479   -0.0859679    0.0064721
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0306810   -0.0770932    0.0157312
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0035673   -0.0165823    0.0094478
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0237995   -0.0182024    0.0658014
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0017714   -0.0233023    0.0197594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0008377   -0.0135425    0.0152179
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0019562   -0.0258346    0.0297470
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0257710   -0.0060679    0.0576099
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0148737   -0.0089741    0.0387215
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0037457   -0.0099627    0.0024713
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0018416   -0.0103072    0.0066241
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0524035   -0.1661693    0.0613622
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0856988   -0.1820795    0.0106818
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0374625   -0.0694489   -0.0054762
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0085643   -0.0728197    0.0556911
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0794090   -0.1234318   -0.0353862
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0475325   -0.0865429   -0.0085220
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0054280   -0.0096036    0.0204596
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0616104   -0.1081028   -0.0151180
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0011579   -0.0035954    0.0012797
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0235115   -0.0367530   -0.0102700
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0002696   -0.0217454    0.0212061
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0506222   -0.0779773   -0.0232671
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0572408   -0.0842742   -0.0302074
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0057382   -0.0307412    0.0192647
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0177739   -0.0251867   -0.0103610
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0013791   -0.0124845    0.0097264


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2831424   -0.7645074    0.0669042
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1033898   -0.3328996    0.0866010
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2068966   -0.8264376    0.2024916
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0090090   -0.7122310    0.4264424
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0916530   -0.1864729   -0.0044110
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0184744   -0.1296579    0.1471820
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.2195122   -0.3716544   -0.0842455
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1231109   -0.2836181    0.0173261
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0113810   -0.0811586    0.0538932
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1000932   -0.1799762   -0.0256181
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0104893   -0.0976749    0.0697715
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0603184   -0.1318358    0.0066800
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0423855   -0.0667268    0.1403370
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0512694   -0.1613079    0.0483425
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0437581   -0.1167787    0.0244880
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0315623   -0.3991519    0.2394531
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0361018   -0.0634862   -0.0094225
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0070607   -0.0465425    0.0309315
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2956731   -0.9650094    0.1456689
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1009066   -0.4599740    0.1698515
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0596496   -0.1630243    0.0345367
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0521542   -0.2594495    0.2866632
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.1537212   -0.3468261    0.0116969
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.1186541   -0.3132010    0.0470713
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0255279   -0.1230005    0.0634844
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0803568   -0.0728860    0.2117115
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0071207   -0.0973270    0.0756703
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                 0.0046693   -0.0787995    0.0816800
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0097517   -0.1389415    0.1390324
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.1046346   -0.0342660    0.2248810
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                 0.0649054   -0.0451275    0.1633539
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0212959   -0.0572975    0.0134797
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0174437   -0.1008541    0.0596467
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2745946   -1.0296154    0.1995570
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.3010446   -0.6881859   -0.0026841
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1227496   -0.2306674   -0.0242952
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0240759   -0.2216247    0.1415272
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.4932984   -0.7859056   -0.2486327
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3614447   -0.6872505   -0.0985515
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0338660   -0.0645786    0.1232072
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1305343   -0.2341589   -0.0356104
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1131536   -0.3664734    0.0932052
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.2538368   -0.4045818   -0.1192702
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0020919   -0.1833670    0.1514144
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.3823881   -0.6009728   -0.1936473
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2146530   -0.3202642   -0.1174898
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0742270   -0.4510767    0.2047535
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.1081543   -0.1540466   -0.0640869
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0056487   -0.0521653    0.0388113
