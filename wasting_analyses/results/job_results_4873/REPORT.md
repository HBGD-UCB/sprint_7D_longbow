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

* arm
* W_mage
* meducyrs
* hhwealth_quart
* W_mhtcm
* W_gagebrth
* W_birthwt
* W_birthlen
* W_nrooms
* W_nchldlt5
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_gagebrth
* delta_W_birthwt
* delta_W_birthlen
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan
* delta_safeh20

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
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      180    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      334    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      172    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      222    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0      140    1202
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1      154    1202
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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0    15592   51894
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     5672   51894
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0    13145   51894
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     4555   51894
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     9791   51894
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     3139   51894
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     3001    5987
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1     1354    5987
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      607    5987
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      277    5987
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      532    5987
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      216    5987
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
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   0      374    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                   1      140    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                0      256    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium                1      138    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  0      216    1202
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                  1       78    1202
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
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   0    17400   51772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     3810   51772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                0    14580   51772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     3082   51772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  0    10686   51772
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                  1     2214   51772
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     3756    5778
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                   1      452    5778
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      768    5778
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium                1       86    5778
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  0      644    5778
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                  1       72    5778
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
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   0      236    1178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                   1      270    1178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                0      214    1178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium                1      168    1178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  0      172    1178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                  1      118    1178
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   0    10612   33158
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                   1     2362   33158
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                0     9525   33158
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium                1     1901   33158
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  0     7569   33158
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                  1     1189   33158
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   0     3275    5973
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                   1     1068    5973
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                0      663    5973
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium                1      219    5973
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  0      576    5973
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                  1      172    5973


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
![](/tmp/234c063d-3471-49bf-a1b6-ca61952c8410/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/234c063d-3471-49bf-a1b6-ca61952c8410/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/234c063d-3471-49bf-a1b6-ca61952c8410/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/234c063d-3471-49bf-a1b6-ca61952c8410/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4082019   0.2571604   0.5592433
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3323576   0.2089221   0.4557930
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2433164   0.1311910   0.3554417
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5267012   0.4019036   0.6514988
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3861494   0.2459810   0.5263177
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4980189   0.3553284   0.6407094
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3571429   0.1787512   0.5355345
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3214286   0.1475539   0.4953032
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2380952   0.1086231   0.3675674
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4326920   0.3643376   0.5010464
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3740554   0.3114981   0.4366127
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3992675   0.3605521   0.4379828
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4607485   0.3804330   0.5410641
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.5046652   0.4277513   0.5815791
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.4365624   0.3437809   0.5293438
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3764888   0.3331096   0.4198680
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3056078   0.2662148   0.3450009
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3037064   0.2634606   0.3439523
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3587688   0.3145278   0.4030098
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2852390   0.2415664   0.3289117
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3151590   0.2730005   0.3573175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2324247   0.2099833   0.2548662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2357770   0.2060386   0.2655154
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1840865   0.1532754   0.2148975
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6484656   0.5953426   0.7015886
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5486216   0.4859745   0.6112686
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4884132   0.4195011   0.5573252
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2552874   0.1991496   0.3114253
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2568629   0.1975208   0.3162050
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2566826   0.1982997   0.3150656
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2503209   0.2375046   0.2631373
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2298289   0.2223490   0.2373089
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2032319   0.1907715   0.2156924
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2590284   0.2332044   0.2848523
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2656949   0.2375082   0.2938815
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2816576   0.2541248   0.3091904
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3590097   0.3276123   0.3904070
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3321018   0.3008023   0.3634012
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3531253   0.3241616   0.3820889
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4312113   0.4056674   0.4567553
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4188675   0.3945674   0.4431676
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3766267   0.3537373   0.3995161
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0858983   0.0555462   0.1162504
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0967289   0.0637080   0.1297498
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0630271   0.0351212   0.0909330
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2639431   0.2552493   0.2726368
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2568609   0.2473991   0.2663228
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2543045   0.2434048   0.2652043
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3104921   0.2880612   0.3329230
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3295892   0.2872066   0.3719718
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3065594   0.2613802   0.3517386
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2820513   0.1403386   0.4237640
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3208571   0.2075852   0.4341289
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2518471   0.1321116   0.3715826
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2902197   0.1691463   0.4112931
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2189001   0.1719012   0.2658990
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2117935   0.1620342   0.2615527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2079628   0.1681787   0.2477469
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1724651   0.1127006   0.2322295
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2170865   0.1544518   0.2797212
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1577277   0.0910940   0.2243614
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2666727   0.2295442   0.3038011
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2352564   0.2027482   0.2677646
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2557178   0.2200890   0.2913465
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3359652   0.2840984   0.3878319
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2421362   0.1941742   0.2900981
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2774207   0.2322279   0.3226135
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1406246   0.1220536   0.1591956
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1410150   0.1164779   0.1655521
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1061104   0.0816430   0.1305778
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2494806   0.2009568   0.2980043
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3467210   0.2864761   0.4069659
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2326655   0.1731576   0.2921733
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2472912   0.1902505   0.3043319
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2495331   0.1897317   0.3093345
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2515545   0.1921909   0.3109181
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1836231   0.1741542   0.1930921
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1790487   0.1723782   0.1857192
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1608885   0.1521352   0.1696418
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2211610   0.1907014   0.2516207
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1873709   0.1574318   0.2173100
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2771317   0.2409252   0.3133382
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2325636   0.2069933   0.2581339
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2442330   0.2182809   0.2701851
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2502705   0.2250652   0.2754758
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2371397   0.2176769   0.2566025
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2240229   0.2056109   0.2424348
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2289639   0.2107712   0.2471566
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1767711   0.1697708   0.1837714
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1778449   0.1701324   0.1855575
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1707220   0.1616767   0.1797673
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1055043   0.0916261   0.1193824
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1045255   0.0835119   0.1255391
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1009668   0.0758038   0.1261298
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3546228   0.3055906   0.4036550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2906038   0.2398762   0.3413313
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3311791   0.2938913   0.3684669
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3315039   0.2532910   0.4097168
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3326344   0.2577556   0.4075131
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.2921412   0.2053630   0.3789195
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2275998   0.1749419   0.2802576
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1233867   0.0816544   0.1651190
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1136462   0.0758823   0.1514102
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1754533   0.1272961   0.2236105
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1431694   0.0973556   0.1889833
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0804001   0.0497185   0.1110816
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1485006   0.1279817   0.1690194
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1715623   0.1431240   0.2000006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1307234   0.1009362   0.1605106
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5297693   0.4733775   0.5861612
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4387059   0.3750300   0.5023819
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4050202   0.3360688   0.4739716
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0113975   0.0072057   0.0155894
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0099069   0.0066830   0.0131307
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0084300   0.0051113   0.0117486
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1273648   0.1138679   0.1408617
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0905414   0.0843686   0.0967141
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0830565   0.0677609   0.0983521
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1253920   0.0981830   0.1526011
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1226188   0.0927389   0.1524986
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1321686   0.0925859   0.1717513
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1714073   0.1418576   0.2009570
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1155230   0.0887367   0.1423093
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1038274   0.0815519   0.1261028
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3244761   0.2972023   0.3517498
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2891309   0.2639207   0.3143411
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2300110   0.2073299   0.2526921
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0846200   0.0540274   0.1152125
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0886020   0.0562319   0.1209721
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0585610   0.0310416   0.0860804
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1793593   0.1696311   0.1890874
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1656460   0.1560163   0.1752757
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1589705   0.1476465   0.1702944
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2479493   0.2263379   0.2695608
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2770504   0.2336101   0.3204907
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2527997   0.2079260   0.2976733


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
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2575635   0.2509808   0.2641462
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.3085018   0.2890487   0.3279548
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
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1644249   0.1581893   0.1706604
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.2442659   0.2256986   0.2628332


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8141990   0.4841124   1.3693515
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5960687   0.3315284   1.0716966
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7331469   0.4765381   1.1279358
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9455435   0.6546150   1.3657685
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               Low               0.9000000   0.4310005   1.8793484
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 Low               0.6666667   0.3185934   1.3950207
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               Low               1.2333333   0.4843434   3.1405635
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 Low               0.8604651   0.3310009   2.2368526
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8644842   0.7544288   0.9905944
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.9227521   0.8165771   1.0427325
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0953159   0.8695055   1.3797690
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9475069   0.7200159   1.2468742
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8117316   0.7099208   0.9281431
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.8066812   0.7007871   0.9285767
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.7950497   0.6686826   0.9452976
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8784459   0.7479626   1.0316921
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0144230   0.8660501   1.1882155
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7920262   0.6533798   0.9600931
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8460303   0.7351272   0.9736646
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7531828   0.6397018   0.8867950
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0061714   0.9640126   1.0501740
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0054652   0.9468498   1.0677091
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9181371   0.8717079   0.9670393
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8118855   0.7549848   0.8730745
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0257366   0.9203416   1.1432010
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0873619   0.9789727   1.2077517
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.9250497   0.8285692   1.0327645
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.9836095   0.8891958   1.0880479
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9713740   0.9006645   1.0476347
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.8734156   0.8083793   0.9436842
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1260869   0.6888994   1.8407212
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.7337410   0.4164078   1.2929051
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9731680   0.9328263   1.0152545
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9634826   0.9166665   1.0126897
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0615058   0.9213228   1.2230182
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9873339   0.8409894   1.1591445
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.7878788   0.3876207   1.6014445
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5909091   0.2705003   1.2908435
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7849200   0.4404315   1.3988540
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.9045139   0.5338255   1.5326083
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9675349   0.8191788   1.1427588
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.9500351   0.8378697   1.0772162
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.2587272   0.8021691   1.9751373
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9145487   0.5300154   1.5780659
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8821915   0.7878153   0.9878736
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.9589201   0.8408494   1.0935700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.7207181   0.5627950   0.9229553
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8257425   0.6628011   1.0287409
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0027765   0.8064102   1.2469594
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7545651   0.5788582   0.9836060
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.3897716   1.0708533   1.8036693
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9325996   0.6759816   1.2866357
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0090660   0.9698506   1.0498670
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               1.0172401   0.9521866   1.0867380
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9750881   0.9315660   1.0206434
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8761888   0.8260529   0.9293676
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8472149   0.6977748   1.0286599
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.2530765   1.0533171   1.4907199
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.0501772   0.9426656   1.1699506
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0761378   0.9685840   1.1956346
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9446872   0.8627146   1.0344486
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9655232   0.8833284   1.0553663
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0060746   0.9593577   1.0550664
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9657798   0.9136434   1.0208912
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9907232   0.8074173   1.2156444
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9569926   0.7461589   1.2273991
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8937198   0.4044997   1.9746246
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5138889   0.2000570   1.3200326
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.5400000   0.2646136   1.1019840
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.6906977   0.3717902   1.2831518
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.8194729   0.6862944   0.9784952
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.9338913   0.8227078   1.0601004
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.0034101   0.7243141   1.3900486
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.8812602   0.6028491   1.2882488
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.5421213   0.3612997   0.8134396
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.4993249   0.3341297   0.7461933
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.8159974   0.5364724   1.2411669
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4582420   0.2864916   0.7329558
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.1552971   0.9332540   1.4301696
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8802888   0.6754032   1.1473272
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8281074   0.6918743   0.9911654
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7645218   0.6255372   0.9343866
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8692128   0.6019894   1.2550569
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.7396308   0.4194929   1.3040836
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7108820   0.6273103   0.8055872
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6521150   0.5275934   0.8060260
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9778833   0.7066546   1.3532151
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0540432   0.7291049   1.5237958
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.6739678   0.5081138   0.8939584
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.6057348   0.4630774   0.7923397
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8910701   0.7903211   1.0046624
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7088689   0.6233894   0.8060694
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0470580   0.6262305   1.7506819
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.6920468   0.3825267   1.2520139
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9235432   0.8559489   0.9964754
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8863242   0.8100317   0.9698024
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1173669   0.9374975   1.3317461
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0195618   0.8377702   1.2408011


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0884740   -0.2146688    0.0377209
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0505107   -0.1462066    0.0451852
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0612245   -0.2091769    0.0867279
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0017199   -0.1017388    0.1051786
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0181225   -0.0467349    0.0104899
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0105433   -0.0540525    0.0751391
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0250602   -0.0521423    0.0020219
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0276342   -0.0602625    0.0049940
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0042517   -0.0109778    0.0194813
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0577834   -0.0998105   -0.0157564
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0003669   -0.0057527    0.0064864
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0185704   -0.0292981   -0.0078428
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0011013   -0.0136312    0.0158338
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0224513   -0.0441848   -0.0007177
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0298864   -0.0500312   -0.0097416
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0059475   -0.0301063    0.0182113
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0063796   -0.0123856   -0.0003736
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0019904   -0.0122729    0.0082921
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0643642   -0.1822934    0.0535649
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0283401   -0.1111786    0.0544985
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0008070   -0.0166527    0.0182666
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0141378   -0.0346495    0.0629251
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0081012   -0.0266201    0.0104177
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0773900   -0.1187088   -0.0360711
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0008848   -0.0133974    0.0116278
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0466925    0.0081882    0.0851968
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0014827   -0.0042920    0.0072574
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0042140   -0.0112194    0.0027914
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0205592   -0.0417143    0.0005959
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0137314   -0.0014894    0.0289521
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0079803   -0.0211949    0.0052343
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0008845   -0.0053037    0.0035346
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0000686   -0.0054361    0.0055733
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0524035   -0.1661693    0.0613622
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0856988   -0.1820795    0.0106818
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0494280   -0.0733981   -0.0254578
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0242175   -0.0387583    0.0871932
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0666242   -0.1055815   -0.0276668
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0439464   -0.0815032   -0.0063897
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0117782   -0.0023810    0.0259374
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0577829   -0.1008776   -0.0146883
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0011648   -0.0035358    0.0012062
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0347401   -0.0469980   -0.0224823
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0034969   -0.0166158    0.0236096
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0390230   -0.0610654   -0.0169805
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0578094   -0.0805764   -0.0350424
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0073132   -0.0313402    0.0167137
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0149344   -0.0223522   -0.0075166
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0036835   -0.0141639    0.0067969


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2767164   -0.7411752    0.0638479
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1060725   -0.3276213    0.0785050
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2068966   -0.8264376    0.2024916
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0090090   -0.7122310    0.4264424
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0437139   -0.1141353    0.0222563
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0223712   -0.1247773    0.1502690
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0713096   -0.1519878    0.0037184
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0834532   -0.1879747    0.0118722
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0179642   -0.0484999    0.0802152
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0978249   -0.1726731   -0.0277540
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0014350   -0.0226996    0.0250000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0801312   -0.1275160   -0.0347378
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0042336   -0.0539570    0.0592114
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0667084   -0.1338545   -0.0035386
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0744693   -0.1263328   -0.0249939
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0743891   -0.4242578    0.1895344
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0247689   -0.0483948   -0.0016754
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0064518   -0.0403229    0.0263166
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2956731   -0.9650094    0.1456689
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0968835   -0.4200044    0.1527115
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0036729   -0.0790052    0.0800159
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0757640   -0.2258573    0.3031716
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0313308   -0.1056749    0.0380146
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.2992938   -0.4737356   -0.1455002
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0063315   -0.0999916    0.0793537
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.1576527    0.0191237    0.2766173
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0059601   -0.0171820    0.0285757
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0234881   -0.0633127    0.0148449
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1024877   -0.2158060    0.0002688
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0557517   -0.0076893    0.1151986
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0348243   -0.0943745    0.0214855
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0050291   -0.0304828    0.0197960
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0006499   -0.0528706    0.0514498
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2745946   -1.0296154    0.1995570
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.3010446   -0.6881859   -0.0026841
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1619555   -0.2455558   -0.0839664
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0680799   -0.1270834    0.2294491
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.4138774   -0.6754565   -0.1931372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3341761   -0.6481839   -0.0799922
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0734857   -0.0188827    0.1574803
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1224250   -0.2191811   -0.0333476
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1138305   -0.3593475    0.0873427
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.3750635   -0.5159384   -0.2472799
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0271309   -0.1418970    0.1711386
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.2947701   -0.4735760   -0.1376609
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2167852   -0.3074791   -0.1323823
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0946002   -0.4545506    0.1762750
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0908280   -0.1369962   -0.0465345
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0150798   -0.0588829    0.0269112
