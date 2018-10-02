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
![](/tmp/db913801-7439-40e3-bde8-b60724db53ae/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db913801-7439-40e3-bde8-b60724db53ae/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db913801-7439-40e3-bde8-b60724db53ae/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db913801-7439-40e3-bde8-b60724db53ae/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.4065516   0.2583426   0.5547607
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.3316492   0.2102242   0.4530743
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.2453783   0.1349697   0.3557868
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.5269210   0.4026353   0.6512067
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.3861048   0.2466403   0.5255694
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.4976808   0.3559142   0.6394473
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                0.3571429   0.1787512   0.5355345
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium               NA                0.3214286   0.1475539   0.4953032
0-24 months   ki0047075b-MAL-ED          NEPAL                          High                 NA                0.2380952   0.1086231   0.3675674
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                0.1891892   0.0624128   0.3159655
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium               NA                0.2333333   0.0812918   0.3853749
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High                 NA                0.1627907   0.0519425   0.2736389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.4326920   0.3643376   0.5010464
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.3740554   0.3114981   0.4366127
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3992675   0.3605521   0.4379828
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.4226176   0.3444343   0.5008008
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4709976   0.3956094   0.5463858
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3874214   0.2980480   0.4767948
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.3790172   0.3359296   0.4221047
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.3090164   0.2697653   0.3482676
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.3049915   0.2652833   0.3446997
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3586138   0.3145312   0.4026964
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2843785   0.2409896   0.3277675
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.3148163   0.2728496   0.3567830
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.2324352   0.2101015   0.2547690
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.2354061   0.2060380   0.2647742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1836597   0.1534890   0.2138303
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.6478405   0.5945461   0.7011349
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.5488237   0.4858570   0.6117903
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4901040   0.4206947   0.5595134
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.2552932   0.1991440   0.3114423
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.2568617   0.1975500   0.3161735
0-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.2567009   0.1983431   0.3150586
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.2503179   0.2374956   0.2631402
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.2298274   0.2223473   0.2373074
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.2032182   0.1907592   0.2156772
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2584100   0.2324735   0.2843465
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.2645084   0.2361615   0.2928553
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2771393   0.2494742   0.3048045
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.3604081   0.3294130   0.3914032
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.3328195   0.3019317   0.3637073
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.3545047   0.3257945   0.3832148
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.4302204   0.4045936   0.4558471
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.4182732   0.3938633   0.4426830
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.3753691   0.3523980   0.3983401
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0858652   0.0553912   0.1163393
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0966733   0.0635391   0.1298075
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0634017   0.0352786   0.0915248
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.2639593   0.2552585   0.2726601
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.2568538   0.2473893   0.2663183
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.2543077   0.2433958   0.2652196
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.3106113   0.2881675   0.3330551
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.3297030   0.2876349   0.3717712
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.3056482   0.2607783   0.3505181
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2820513   0.1403386   0.4237640
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2222222   0.1109581   0.3334863
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1666667   0.0669272   0.2664062
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3210363   0.2066233   0.4354493
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2515010   0.1301454   0.3728565
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 NA                0.2913460   0.1676339   0.4150581
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2189001   0.1719012   0.2658990
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2117935   0.1620342   0.2615527
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.2079628   0.1681787   0.2477469
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.1723808   0.1126417   0.2321200
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.2168849   0.1545316   0.2792382
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.1577319   0.0915108   0.2239530
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2647449   0.2265957   0.3028941
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.2338969   0.2009069   0.2668869
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.2535694   0.2170445   0.2900942
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.3376391   0.2867997   0.3884786
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.2434194   0.1966467   0.2901921
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.2785247   0.2341641   0.3228854
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1406248   0.1220249   0.1592248
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1411552   0.1165180   0.1657924
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1067578   0.0821002   0.1314153
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.2490060   0.2006183   0.2973937
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3477544   0.2877026   0.4078061
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2319128   0.1727703   0.2910552
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                0.2473063   0.1902516   0.3043611
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               NA                0.2495365   0.1897548   0.3093181
0-6 months    ki1119695-PROBIT           BELARUS                        High                 NA                0.2516033   0.1922596   0.3109470
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1836363   0.1742018   0.1930708
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.1790565   0.1723869   0.1857261
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.1609825   0.1522307   0.1697343
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.2226702   0.1925691   0.2527712
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1882965   0.1588883   0.2177046
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 NA                0.2807035   0.2453683   0.3160387
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.2308651   0.2052111   0.2565190
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.2436818   0.2175354   0.2698283
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.2494945   0.2242138   0.2747752
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2367293   0.2172845   0.2561740
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2238733   0.2054865   0.2422601
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2288670   0.2107072   0.2470268
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1767672   0.1697631   0.1837712
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1778425   0.1701279   0.1855570
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1707242   0.1616690   0.1797794
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1055541   0.0916729   0.1194353
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1048165   0.0837302   0.1259028
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1014086   0.0759332   0.1268841
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                0.2432432   0.1044687   0.3820178
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               NA                0.2173913   0.0977375   0.3370451
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 NA                0.1250000   0.0310816   0.2189184
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.3703704   0.2410989   0.4996419
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.2558140   0.1249236   0.3867043
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.3546228   0.3055906   0.4036550
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2906038   0.2398762   0.3413313
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.3311791   0.2938913   0.3684669
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3642857   0.2844721   0.4440993
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.3612903   0.2855716   0.4370090
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3364486   0.2468103   0.4260869
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.2277431   0.1751093   0.2803769
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1237636   0.0821811   0.1653461
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.1145383   0.0768083   0.1522683
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1755866   0.1275521   0.2236212
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1431737   0.0975474   0.1888000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0802867   0.0496909   0.1108825
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.1487672   0.1282361   0.1692983
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.1720917   0.1435047   0.2006787
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.1314580   0.1011277   0.1617882
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.5311353   0.4751588   0.5871117
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.4384804   0.3756364   0.5013244
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.4031627   0.3355176   0.4708078
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                0.0113975   0.0072057   0.0155894
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               NA                0.0099069   0.0066830   0.0131308
6-24 months   ki1119695-PROBIT           BELARUS                        High                 NA                0.0084300   0.0051113   0.0117486
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.1273831   0.1139074   0.1408589
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0905351   0.0843632   0.0967070
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0830636   0.0677536   0.0983737
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1249414   0.0979633   0.1519195
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1221123   0.0924649   0.1517596
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1311786   0.0922477   0.1701095
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1713693   0.1420234   0.2007152
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.1152600   0.0886633   0.1418568
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.1036551   0.0814919   0.1258183
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.3242555   0.2970445   0.3514664
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2890976   0.2639147   0.3142805
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.2307114   0.2080702   0.2533525
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0846126   0.0538419   0.1153832
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0885627   0.0560143   0.1211112
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0590997   0.0312604   0.0869389
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.1795215   0.1697808   0.1892622
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.1656638   0.1560364   0.1752912
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.1590156   0.1476698   0.1703614
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.2480598   0.2264899   0.2696296
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.2778530   0.2352533   0.3204526
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.2527413   0.2088302   0.2966524


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.8157616   0.4903223   1.3572034
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.6035599   0.3408427   1.0687762
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7327566   0.4774872   1.1244955
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 Low               0.9445074   0.6556407   1.3606449
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
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.1144771   0.8730630   1.4226455
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9167187   0.6822809   1.2317114
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8153099   0.7167984   0.9273601
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.8046906   0.7029766   0.9211216
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.7929939   0.6669602   0.9428439
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8778701   0.7475045   1.0309717
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0127814   0.8658395   1.1846609
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7901542   0.6537362   0.9550392
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8471586   0.7356400   0.9755827
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7565196   0.6421384   0.8912750
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               1.0061442   0.9641596   1.0499570
0-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               1.0055141   0.9471608   1.0674625
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9181419   0.8716912   0.9670679
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8118403   0.7549321   0.8730384
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               1.0235998   0.9158723   1.1439985
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0724791   0.9628010   1.1946514
0-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.9234517   0.8291510   1.0284772
0-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.9836201   0.8911232   1.0857179
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9722301   0.9008445   1.0492724
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.8725042   0.8069755   0.9433541
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.1258722   0.6873424   1.8441874
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.7383862   0.4183697   1.3031873
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9730812   0.9327159   1.0151933
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9634353   0.9165709   1.0126958
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.0614650   0.9218734   1.2221937
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9840215   0.8384315   1.1548926
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium               Low               0.7878788   0.3876207   1.6014445
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High                 Low               0.5909091   0.2705003   1.2908435
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium               Low               0.7834036   0.4350277   1.4107634
0-6 months    ki0047075b-MAL-ED          INDIA                          High                 Low               0.9075173   0.5295065   1.5553871
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               Low               0.9675349   0.8191788   1.1427588
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 Low               0.9500351   0.8378697   1.0772162
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               1.2581734   0.8022914   1.9730989
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9150202   0.5312654   1.5759767
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.8834804   0.7817115   0.9984982
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.9577877   0.8314195   1.1033626
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.7209456   0.5669784   0.9167237
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.8249185   0.6656803   1.0222481
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.0037714   0.8067668   1.2488826
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.7591674   0.5821532   0.9900060
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               Low               1.3965701   1.0770146   1.8109393
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.9313541   0.6755373   1.2840452
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Medium               Low               1.0090177   0.9698580   1.0497586
0-6 months    ki1119695-PROBIT           BELARUS                        High                 Low               1.0173751   0.9524021   1.0867806
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.9750605   0.9317441   1.0203907
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.8766376   0.8266428   0.9296560
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.8456296   0.7009748   1.0201357
0-6 months    ki1135781-COHORTS          GUATEMALA                      High                 Low               1.2606249   1.0669391   1.4894712
0-6 months    ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Medium               Low               1.0555163   0.9442642   1.1798761
0-6 months    ki1135781-COHORTS          INDIA                          High                 Low               1.0806940   0.9697718   1.2043035
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.9456932   0.8636062   1.0355827
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.9667880   0.8844797   1.0567558
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               1.0060831   0.9593358   1.0551083
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.9658141   0.9136175   1.0209927
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               0.9930120   0.8092666   1.2184771
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               0.9607268   0.7476839   1.2344735
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
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               Low               0.9917774   0.7323842   1.3430415
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 Low               0.9235844   0.6541388   1.3040170
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               Low               0.5434352   0.3627356   0.8141518
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 Low               0.5029276   0.3372577   0.7499791
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               Low               0.8154019   0.5368965   1.2383771
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 Low               0.4572483   0.2861419   0.7306724
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               Low               1.1567850   0.9354309   1.4305187
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 Low               0.8836486   0.6769736   1.1534201
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               Low               0.8255531   0.6911836   0.9860448
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 Low               0.7590585   0.6226901   0.9252913
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Medium               Low               0.8692133   0.6019898   1.2550574
6-24 months   ki1119695-PROBIT           BELARUS                        High                 Low               0.7396312   0.4194933   1.3040836
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               Low               0.7107305   0.6272755   0.8052885
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 Low               0.6520772   0.5275385   0.8060164
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               Low               0.9773563   0.7069397   1.3512121
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 Low               1.0499211   0.7280041   1.5141870
6-24 months   ki1135781-COHORTS          INDIA                          Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Medium               Low               0.6725826   0.5078609   0.8907309
6-24 months   ki1135781-COHORTS          INDIA                          High                 Low               0.6048641   0.4629993   0.7901967
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               Low               0.8915736   0.7910458   1.0048766
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 Low               0.7115112   0.6260972   0.8085776
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               Low               1.0466857   0.6240994   1.7554109
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 Low               0.6984741   0.3852292   1.2664308
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               Low               0.9228073   0.8552910   0.9956534
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 Low               0.8857744   0.8094478   0.9692982
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  Low               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               Low               1.1201050   0.9427719   1.3307939
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 Low               1.0188727   0.8401260   1.2356498


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0868238   -0.2099901    0.0363426
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0507305   -0.1458874    0.0444264
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.0612245   -0.2091769    0.0867279
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0017199   -0.1017388    0.1051786
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0181225   -0.0467349    0.0104899
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0486743   -0.0143137    0.1116623
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0275886   -0.0538200   -0.0013571
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0274792   -0.0601568    0.0051983
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0042412   -0.0109314    0.0194139
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0571583   -0.0992116   -0.0151050
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0003612   -0.0057458    0.0064681
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0185674   -0.0293018   -0.0078331
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0017197   -0.0133455    0.0167848
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0238497   -0.0452265   -0.0024730
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0288954   -0.0491256   -0.0086651
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0059144   -0.0301649    0.0183360
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0063958   -0.0124100   -0.0003816
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0021095   -0.0124418    0.0082227
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0643642   -0.1822934    0.0535649
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0285193   -0.1128201    0.0557815
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0008070   -0.0166527    0.0182666
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0142221   -0.0345229    0.0629670
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0061734   -0.0259998    0.0136529
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0790639   -0.1195622   -0.0385657
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0008850   -0.0134120    0.0116420
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.0471670    0.0086791    0.0856550
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0014676   -0.0043013    0.0072364
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0042272   -0.0111885    0.0027341
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.0220684   -0.0427611   -0.0013756
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0154299   -0.0001414    0.0310012
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0075699   -0.0208079    0.0056681
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0008806   -0.0053043    0.0035431
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0000188   -0.0054788    0.0055164
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.0524035   -0.1661693    0.0613622
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0856988   -0.1820795    0.0106818
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0494280   -0.0733981   -0.0254578
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0085643   -0.0728197    0.0556911
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0667675   -0.1057611   -0.0277738
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0440798   -0.0815365   -0.0066231
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0115115   -0.0025496    0.0255726
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0591489   -0.1022169   -0.0160808
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.0011648   -0.0035358    0.0012062
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0347584   -0.0469939   -0.0225230
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0039475   -0.0160981    0.0239931
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0389850   -0.0608835   -0.0170864
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0575888   -0.0802567   -0.0349209
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0073058   -0.0314685    0.0168568
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0150967   -0.0225271   -0.0076663
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0037939   -0.0142527    0.0066649


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2715551   -0.7237384    0.0620082
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.1065341   -0.3267669    0.0771418
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low                  NA                -0.2068966   -0.8264376    0.2024916
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low                  NA                 0.0090090   -0.7122310    0.4264424
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.0437139   -0.1141353    0.0222563
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.1032785   -0.0410198    0.2275752
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0785041   -0.1566188   -0.0056650
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.0829851   -0.1877315    0.0125238
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0179199   -0.0482792    0.0799384
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.0967666   -0.1716133   -0.0267014
0-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0014127   -0.0226731    0.0249312
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0801182   -0.1275330   -0.0346973
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0066108   -0.0528907    0.0627496
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.0708636   -0.1369847   -0.0085877
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0720000   -0.1240646   -0.0223469
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0739758   -0.4252975    0.1907486
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0248319   -0.0484903   -0.0017073
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0068380   -0.0408752    0.0260861
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2956731   -0.9650094    0.1456689
0-6 months    ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.0974962   -0.4270470    0.1559508
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                 0.0036729   -0.0790052    0.0800159
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                 0.0762157   -0.2251324    0.3034406
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.0238752   -0.1035370    0.0500360
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3057676   -0.4774615   -0.1540260
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                -0.0063332   -0.1001047    0.0794454
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                 0.1592549    0.0208721    0.2780797
0-6 months    ki1119695-PROBIT           BELARUS                        Low                  NA                 0.0058992   -0.0172252    0.0284980
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.0235617   -0.0631314    0.0145352
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low                  NA                -0.1100107   -0.2211073   -0.0090218
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                 0.0626481   -0.0022604    0.1233530
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.0330332   -0.0926864    0.0233634
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0050066   -0.0304868    0.0198436
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                 0.0001778   -0.0532747    0.0509176
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low                  NA                -0.2745946   -1.0296154    0.1995570
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                -0.3010446   -0.6881859   -0.0026841
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                -0.1619555   -0.2455558   -0.0839664
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                -0.0240759   -0.2216247    0.1415272
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                -0.4147675   -0.6768380   -0.1936556
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                -0.3351901   -0.6484145   -0.0814832
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                 0.0718219   -0.0199207    0.1553121
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                -0.1253190   -0.2222042   -0.0361139
6-24 months   ki1119695-PROBIT           BELARUS                        Low                  NA                -0.1138305   -0.3593473    0.0873427
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                -0.3752611   -0.5158791   -0.2476873
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                 0.0306271   -0.1377499    0.1740858
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                -0.2944833   -0.4723815   -0.1380794
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                -0.2159580   -0.3062313   -0.1319235
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                -0.0945043   -0.4566412    0.1776015
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                -0.0918149   -0.1380622   -0.0474470
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                -0.0155318   -0.0592463    0.0263786
