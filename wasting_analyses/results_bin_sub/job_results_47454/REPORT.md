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

**Outcome Variable:** ever_co

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
* single
* delta_W_mage
* delta_meducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
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

agecat        studyid                    country                        feducyrs    ever_co   n_cell       n
------------  -------------------------  -----------------------------  ---------  --------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       50     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        4     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       33     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       45     147
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        9     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High              0       36     147
0-24 months   ki0047075b-MAL-ED          INDIA                          High              1        8     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       46     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       13     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       36     147
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        8     147
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       39      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        3      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       26      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        2      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       22      98
0-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        6      98
0-24 months   ki0047075b-MAL-ED          PERU                           High              0      116     250
0-24 months   ki0047075b-MAL-ED          PERU                           High              1        4     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low               0       68     250
0-24 months   ki0047075b-MAL-ED          PERU                           Low               1        1     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            0       58     250
0-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        3     250
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       40     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        3     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       34     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        3     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       27     110
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3     110
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      120     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1       10     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       54     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        7     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       20     211
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     211
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      327    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       59    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      457    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      186    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      377    1510
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1      104    1510
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       76     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1       34     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0       92     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       55     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       95     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       66     418
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      213     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       19     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      193     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       45     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      204     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       26     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      279     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       17     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      212     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       30     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      196     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       24     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      434    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       15    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1202    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       68    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      629    2383
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       35    2383
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      109     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       38     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      163     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1       94     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      136     601
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       61     601
0-24 months   ki1119695-PROBIT           BELARUS                        High              0     2705   16314
0-24 months   ki1119695-PROBIT           BELARUS                        High              1        2   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6399   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Low               1       19   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7184   16314
0-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        5   16314
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      965   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       27   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2131   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      151   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     9911   13558
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      373   13558
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      203    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       28    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      497    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       61    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      395    1234
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       50    1234
0-24 months   ki1135781-COHORTS          INDIA                          High              0      538    1447
0-24 months   ki1135781-COHORTS          INDIA                          High              1       29    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low               0      412    1447
0-24 months   ki1135781-COHORTS          INDIA                          Low               1       60    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium            0      388    1447
0-24 months   ki1135781-COHORTS          INDIA                          Medium            1       20    1447
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      916    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      112    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      619    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      207    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      803    2868
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      211    2868
0-24 months   ki1148112-LCNI-5           MALAWI                         High              0      239     813
0-24 months   ki1148112-LCNI-5           MALAWI                         High              1       12     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      274     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       17     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      259     813
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       12     813
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     6067   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      407   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     9564   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1     1056   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8031   25943
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      818   25943
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      333    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       54    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1871    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      366    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      377    3078
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       77    3078
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              0       52     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     High              1        2     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               0       38     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Low               1        1     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            0       53     147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Medium            1        1     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High              0       42     147
0-6 months    ki0047075b-MAL-ED          INDIA                          High              1        2     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               0       56     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Low               1        3     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            0       42     147
0-6 months    ki0047075b-MAL-ED          INDIA                          Medium            1        2     147
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              0       40      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          High              1        2      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               0       28      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Low               1        0      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            0       26      98
0-6 months    ki0047075b-MAL-ED          NEPAL                          Medium            1        2      98
0-6 months    ki0047075b-MAL-ED          PERU                           High              0      120     250
0-6 months    ki0047075b-MAL-ED          PERU                           High              1        0     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low               0       69     250
0-6 months    ki0047075b-MAL-ED          PERU                           Low               1        0     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            0       61     250
0-6 months    ki0047075b-MAL-ED          PERU                           Medium            1        0     250
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       42     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        1     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       37     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        0     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       30     110
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        0     110
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      128     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        2     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       60     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        1     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       20     211
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     211
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              0      370    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High              1       14    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               0      587    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low               1       53    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            0      438    1501
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium            1       39    1501
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              0      104     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High              1        6     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               0      136     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       10     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0      144     416
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       16     416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              0      224     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High              1        8     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               0      225     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low               1       13     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            0      221     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium            1        9     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              0      291     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     High              1        5     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      234     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Low               1        8     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      216     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1        4     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      447    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1        2    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1255    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       15    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      662    2383
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1        2    2383
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              0      139     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High              1        8     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               0      247     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low               1       10     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            0      191     601
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium            1        6     601
0-6 months    ki1119695-PROBIT           BELARUS                        High              0     2706   16310
0-6 months    ki1119695-PROBIT           BELARUS                        High              1        1   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low               0     6404   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Low               1       14   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            0     7182   16310
0-6 months    ki1119695-PROBIT           BELARUS                        Medium            1        3   16310
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              0      978   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High              1        7   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     2228   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low               1       36   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0    10096   13465
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      120   13465
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              0      187     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      High              1        3     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               0      433     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Low               1        9     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            0      359     996
0-6 months    ki1135781-COHORTS          GUATEMALA                      Medium            1        5     996
0-6 months    ki1135781-COHORTS          INDIA                          High              0      547    1417
0-6 months    ki1135781-COHORTS          INDIA                          High              1       10    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low               0      446    1417
0-6 months    ki1135781-COHORTS          INDIA                          Low               1       12    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium            0      395    1417
0-6 months    ki1135781-COHORTS          INDIA                          Medium            1        7    1417
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              0     1011    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High              1       17    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               0      804    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low               1       22    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            0      991    2867
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium            1       22    2867
0-6 months    ki1148112-LCNI-5           MALAWI                         High              0       73     267
0-6 months    ki1148112-LCNI-5           MALAWI                         High              1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               0      104     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Low               1        0     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            0       90     267
0-6 months    ki1148112-LCNI-5           MALAWI                         Medium            1        0     267
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              0     6262   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High              1      182   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               0    10132   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low               1      448   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     8442   25845
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      379   25845
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              0      356    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     High              1        2    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               0     2040    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Low               1       64    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      416    2888
0-6 months    kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       10    2888
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              0       45     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     High              1        3     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               0       31     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low               1        6     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            0       37     131
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Medium            1        9     131
6-24 months   ki0047075b-MAL-ED          INDIA                          High              0       36     137
6-24 months   ki0047075b-MAL-ED          INDIA                          High              1        7     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               0       41     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Low               1       13     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            0       32     137
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium            1        8     137
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              0       38      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          High              1        1      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               0       25      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low               1        2      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            0       23      94
6-24 months   ki0047075b-MAL-ED          NEPAL                          Medium            1        5      94
6-24 months   ki0047075b-MAL-ED          PERU                           High              0      102     223
6-24 months   ki0047075b-MAL-ED          PERU                           High              1        4     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low               0       59     223
6-24 months   ki0047075b-MAL-ED          PERU                           Low               1        1     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            0       54     223
6-24 months   ki0047075b-MAL-ED          PERU                           Medium            1        3     223
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              0       34      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   High              1        2      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               0       33      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low               1        3      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            0       21      96
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Medium            1        3      96
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              0      119     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   High              1        9     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               0       49     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low               1        6     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            0       19     202
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Medium            1        0     202
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              0      317    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High              1       53    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               0      402    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low               1      170    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            0      355    1386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium            1       89    1386
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              0       75     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High              1       32     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               0       89     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low               1       51     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            0       92     401
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium            1       62     401
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              0      198     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High              1       16     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               0      168     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low               1       39     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            0      173     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium            1       20     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              0      273     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High              1       13     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               0      202     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low               1       27     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            0      192     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium            1       23     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              0      361    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High              1       14    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               0     1008    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low               1       63    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            0      527    2008
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium            1       35    2008
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              0      108     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High              1       37     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               0      160     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low               1       93     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            0      131     589
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium            1       60     589
6-24 months   ki1119695-PROBIT           BELARUS                        High              0     2635   16027
6-24 months   ki1119695-PROBIT           BELARUS                        High              1        1   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low               0     6315   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Low               1        6   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            0     7068   16027
6-24 months   ki1119695-PROBIT           BELARUS                        Medium            1        2   16027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              0      686   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High              1       21   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               0     1670   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low               1      121   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            0     7622   10385
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium            1      265   10385
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              0      184    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      High              1       26    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               0      454    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low               1       57    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            0      357    1124
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium            1       46    1124
6-24 months   ki1135781-COHORTS          INDIA                          High              0      525    1405
6-24 months   ki1135781-COHORTS          INDIA                          High              1       24    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low               0      403    1405
6-24 months   ki1135781-COHORTS          INDIA                          Low               1       56    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium            0      379    1405
6-24 months   ki1135781-COHORTS          INDIA                          Medium            1       18    1405
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              0      817    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High              1      105    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               0      577    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low               1      201    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            0      751    2654
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium            1      203    2654
6-24 months   ki1148112-LCNI-5           MALAWI                         High              0      235     802
6-24 months   ki1148112-LCNI-5           MALAWI                         High              1       12     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               0      272     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Low               1       17     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            0      254     802
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium            1       12     802
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              0     4144   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High              1      245   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               0     5792   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low               1      693   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            0     5219   16590
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium            1      497   16590
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              0      333    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High              1       54    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               0     1907    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low               1      324    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            0      381    3071
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium            1       72    3071


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

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
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/33758cc5-2372-4469-8a82-b47e5bfd27da/afc310d9-840c-4c5d-b185-1887b92c3ec3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/33758cc5-2372-4469-8a82-b47e5bfd27da/afc310d9-840c-4c5d-b185-1887b92c3ec3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/33758cc5-2372-4469-8a82-b47e5bfd27da/afc310d9-840c-4c5d-b185-1887b92c3ec3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/33758cc5-2372-4469-8a82-b47e5bfd27da/afc310d9-840c-4c5d-b185-1887b92c3ec3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1818182   0.0674652   0.2961712
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2203390   0.1142176   0.3264604
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.1818182   0.0674652   0.2961712
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1801765   0.1535653   0.2067877
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2693262   0.2124223   0.3262300
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2145458   0.1691191   0.2599725
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.3134216   0.2260453   0.4007980
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3747317   0.2966678   0.4527957
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4129954   0.3366124   0.4893783
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0870679   0.0517784   0.1223574
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1859804   0.1357787   0.2361821
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.1075772   0.0671646   0.1479897
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0582462   0.0316620   0.0848303
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1186420   0.0768511   0.1604330
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1078321   0.0661130   0.1495512
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0332317   0.0164882   0.0499752
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0533436   0.0409510   0.0657362
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0530756   0.0359929   0.0701584
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2703915   0.1979632   0.3428199
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3609001   0.3023194   0.4194807
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3084928   0.2429016   0.3740841
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0277445   0.0171146   0.0383744
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0683673   0.0568281   0.0799066
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0367902   0.0329858   0.0405945
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1349717   0.0881759   0.1817674
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1080555   0.0821902   0.1339208
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1130833   0.0827743   0.1433922
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0536429   0.0349650   0.0723208
0-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1189565   0.0894334   0.1484796
0-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0490512   0.0276670   0.0704355
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1233453   0.1035936   0.1430971
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2326626   0.2036955   0.2616297
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2062448   0.1815388   0.2309507
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0466404   0.0206022   0.0726787
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0595718   0.0320982   0.0870454
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0432348   0.0192966   0.0671730
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0826232   0.0742621   0.0909844
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0917035   0.0861825   0.0972244
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0889995   0.0826254   0.0953735
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1360582   0.0944800   0.1776365
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1636432   0.1454238   0.1818627
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1739864   0.1345826   0.2133902
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.0352695   0.0173263   0.0532127
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.0822565   0.0523244   0.1121887
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.0804173   0.0511684   0.1096661
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.0545455   0.0120567   0.0970342
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.0684932   0.0274717   0.1095146
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.1000000   0.0534594   0.1465406
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0344828   0.0109867   0.0579788
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.0546218   0.0257313   0.0835124
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0391304   0.0140529   0.0642079
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.0544218   0.0177201   0.0911235
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.0389105   0.0152481   0.0625729
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.0304569   0.0064407   0.0544730
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0071066   0.0018606   0.0123526
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0159011   0.0107481   0.0210540
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0117463   0.0096569   0.0138356
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                0.0179533   0.0069224   0.0289843
0-6 months    ki1135781-COHORTS          INDIA                          Low                  NA                0.0262009   0.0115669   0.0408348
0-6 months    ki1135781-COHORTS          INDIA                          Medium               NA                0.0174129   0.0046218   0.0302041
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.0168155   0.0087189   0.0249121
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.0260112   0.0151240   0.0368985
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.0229769   0.0134807   0.0324731
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0359780   0.0309115   0.0410444
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0397174   0.0361853   0.0432496
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0396818   0.0356612   0.0437023
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                0.1627907   0.0520425   0.2735389
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  NA                0.2407407   0.1262918   0.3551897
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               NA                0.2000000   0.0755861   0.3244139
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                0.1696898   0.1377733   0.2016063
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  NA                0.2730839   0.2245190   0.3216488
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               NA                0.2021590   0.1618324   0.2424857
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                0.2959581   0.2085328   0.3833834
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  NA                0.3638331   0.2833288   0.4443375
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               NA                0.4101017   0.3311064   0.4890970
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                0.0806808   0.0450633   0.1162984
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  NA                0.1865040   0.1326072   0.2404008
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               NA                0.0969087   0.0547249   0.1390925
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                0.0441795   0.0199253   0.0684337
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  NA                0.1141306   0.0723903   0.1558709
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               NA                0.1037914   0.0619293   0.1456534
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                0.0369998   0.0178392   0.0561605
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  NA                0.0585283   0.0444108   0.0726458
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               NA                0.0625726   0.0425418   0.0826034
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                0.2654130   0.1917720   0.3390539
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  NA                0.3663864   0.3062794   0.4264935
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               NA                0.3145690   0.2467224   0.3824156
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                0.0305891   0.0167643   0.0444139
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  NA                0.0711244   0.0576857   0.0845632
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               NA                0.0336795   0.0296168   0.0377421
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                0.1320292   0.0846278   0.1794306
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  NA                0.1124911   0.0846886   0.1402936
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               NA                0.1129372   0.0806091   0.1452652
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                0.0454947   0.0275171   0.0634723
6-24 months   ki1135781-COHORTS          INDIA                          Low                  NA                0.1192996   0.0891996   0.1493997
6-24 months   ki1135781-COHORTS          INDIA                          Medium               NA                0.0449673   0.0241781   0.0657566
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                0.1277893   0.1063188   0.1492598
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  NA                0.2384427   0.2085689   0.2683165
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               NA                0.2133910   0.1874981   0.2392838
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                0.0483122   0.0213836   0.0752408
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  NA                0.0596811   0.0320208   0.0873413
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               NA                0.0444223   0.0195708   0.0692739
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                0.0739097   0.0641820   0.0836375
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  NA                0.0970780   0.0895086   0.1046474
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               NA                0.0859185   0.0778632   0.0939738
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                0.1338281   0.0915721   0.1760842
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  NA                0.1456257   0.1277943   0.1634572
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               NA                0.1630379   0.1238051   0.2022707


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.1972789   0.1327292   0.2618286
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2311258   0.1911027   0.2711489
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3708134   0.3244530   0.4171738
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1285714   0.1037574   0.1533855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0495174   0.0408052   0.0582296
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3211314   0.2837715   0.3584914
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0406402   0.0373164   0.0439640
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1126418   0.0949950   0.1302886
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0753283   0.0617252   0.0889313
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1847978   0.1705903   0.1990052
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0504305   0.0353790   0.0654820
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0879235   0.0839809   0.0918662
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1614685   0.1457688   0.1771681
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.0706196   0.0480792   0.0931600
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.0769231   0.0512858   0.1025603
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.0428571   0.0278427   0.0578716
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.0399334   0.0242662   0.0556006
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0121055   0.0102583   0.0139526
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0204658   0.0130911   0.0278404
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0212766   0.0159935   0.0265597
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0390404   0.0364968   0.0415841
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2043796   0.1366076   0.2721516
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2251082   0.1905625   0.2596539
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3615960   0.3145115   0.4086805
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1221498   0.0962275   0.1480722
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0557769   0.0457368   0.0658170
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.3225806   0.2847967   0.3603646
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0391911   0.0354588   0.0429235
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1147687   0.0961264   0.1334109
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0697509   0.0564268   0.0830750
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1917860   0.1768046   0.2067673
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0511222   0.0358697   0.0663747
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0864979   0.0817318   0.0912639
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     NA                   NA                0.1465321   0.1312221   0.1618420


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.2118644   0.5488063   2.676017
0-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.0000000   0.4108786   2.433809
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.4947906   1.2921031   1.729273
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1907533   0.9714587   1.459551
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.1956154   0.8438236   1.694070
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3176989   0.9429128   1.841454
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.1360391   1.3137965   3.472884
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2355550   0.7120405   2.143974
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.0369074   1.1448567   3.624027
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              1.8513174   1.0173705   3.368857
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.6052028   0.9216147   2.795828
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.5971387   0.8784399   2.903844
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3347313   0.9764328   1.824506
0-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1409115   0.8115141   1.604013
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.4641771   1.6212249   3.745420
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.3260350   0.8916749   1.971984
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8005791   0.5254223   1.219832
0-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8378298   0.5406966   1.298249
0-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.2175629   1.4461092   3.400563
0-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9144031   0.5234825   1.597251
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8862704   1.5424259   2.306766
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6720927   1.3724281   2.037188
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2772576   0.6191843   2.634736
0-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9269808   0.4221276   2.035625
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1098997   0.9907695   1.243354
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.0771725   0.9598286   1.208862
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.2027443   0.8749142   1.653412
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2787645   0.8648920   1.890685
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Low                  High              2.3322295   1.6689802   3.259053
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Medium               High              2.2800803   1.2712411   4.089520
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2557078   0.4700637   3.354443
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.8333333   0.7398793   4.542783
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Low                  High              1.5840336   0.6685761   3.752995
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.1347826   0.4453148   2.891733
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Low                  High              0.7149805   0.2883483   1.772846
0-6 months    ki1113344-GMS-Nepal        NEPAL                          Medium               High              0.5596447   0.1982871   1.579539
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.2375063   0.9991746   5.010570
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.6528694   0.7735215   3.531870
0-6 months    ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          INDIA                          Low                  High              1.4593886   0.6361470   3.347992
0-6 months    ki1135781-COHORTS          INDIA                          Medium               High              0.9699005   0.3722365   2.527175
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.5468642   0.8174215   2.927240
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.3664136   0.7245216   2.576991
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.1039372   0.9456581   1.288708
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1029453   0.9398262   1.294376
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Low                  High              1.4788360   0.6448725   3.391300
6-24 months   ki0047075b-MAL-ED          INDIA                          Medium               High              1.2285714   0.4887082   3.088526
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low                  High              1.6093124   1.3687264   1.892187
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Medium               High              1.1913447   0.9711720   1.461432
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Low                  High              1.2293400   0.8498032   1.778385
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          Medium               High              1.3856749   0.9736343   1.972090
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low                  High              2.3116271   1.3645366   3.916069
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Medium               High              1.2011364   0.6474810   2.228218
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Low                  High              2.5833404   1.3376899   4.988935
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Medium               High              2.3493132   1.1875234   4.647717
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Low                  High              1.5818517   0.8933633   2.800938
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Medium               High              1.6911571   0.9201040   3.108358
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Low                  High              1.3804391   0.9998029   1.905988
6-24 months   ki1113344-GMS-Nepal        NEPAL                          Medium               High              1.1852058   0.8343240   1.683654
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Low                  High              2.3251553   1.4245874   3.795027
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Medium               High              1.1010278   0.6896707   1.757740
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Low                  High              0.8520168   0.5509534   1.317593
6-24 months   ki1135781-COHORTS          GUATEMALA                      Medium               High              0.8553952   0.5406287   1.353426
6-24 months   ki1135781-COHORTS          INDIA                          High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Low                  High              2.6222780   1.6409140   4.190556
6-24 months   ki1135781-COHORTS          INDIA                          Medium               High              0.9884091   0.5380675   1.815669
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Low                  High              1.8659047   1.5155135   2.297307
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Medium               High              1.6698654   1.3602392   2.049971
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 High              1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         Low                  High              1.2353214   0.5980254   2.551763
6-24 months   ki1148112-LCNI-5           MALAWI                         Medium               High              0.9194855   0.4173469   2.025781
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low                  High              1.3134674   1.1296323   1.527220
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Medium               High              1.1624790   0.9921364   1.362068
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 High              1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low                  High              1.0881550   0.7789169   1.520164
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Medium               High              1.2182634   0.8117984   1.828244


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0154607   -0.0815707   0.1124922
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0509493    0.0250941   0.0768046
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0573917   -0.0188593   0.1336428
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0415035    0.0094705   0.0735366
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0354214    0.0111772   0.0596656
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0162857    0.0004275   0.0321440
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0507399   -0.0135480   0.1150278
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0128957    0.0024771   0.0233144
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0223298   -0.0646127   0.0199530
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0216854    0.0052340   0.0381367
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0614525    0.0437252   0.0791797
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0037901   -0.0181613   0.0257414
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0053003   -0.0019178   0.0125184
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0254103   -0.0134127   0.0642333
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0353501    0.0199100   0.0507902
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0223776   -0.0164533   0.0612085
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0083744   -0.0119125   0.0286613
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.0144883   -0.0450422   0.0160655
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0049989   -0.0001883   0.0101860
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.0025125   -0.0064544   0.0114793
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0044611   -0.0024946   0.0114168
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0030624   -0.0012574   0.0073822
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0415889   -0.0541133   0.1372910
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.0554184    0.0311569   0.0796799
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.0656379   -0.0105868   0.1418626
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.0414690    0.0089471   0.0739909
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.0421219    0.0187054   0.0655384
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.0187770    0.0005920   0.0369621
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.0571677   -0.0084710   0.1228063
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.0086020   -0.0049025   0.0221066
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.0172605   -0.0600700   0.0255490
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.0242562    0.0080115   0.0405010
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.0639967    0.0447303   0.0832630
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0028100   -0.0198554   0.0254755
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0125882    0.0037732   0.0214032
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0127040   -0.0267618   0.0521698


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.0783699   -0.5709251   0.4592982
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2204397    0.1286840   0.3025329
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1547726   -0.0780443   0.3373098
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3228054    0.0329591   0.5257775
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.3781607    0.0762220   0.5814101
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3288886   -0.0740565   0.5806640
0-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1580035   -0.0676882   0.3359877
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.3173145    0.0078717   0.5302428
0-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1982375   -0.6382395   0.1235878
0-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.2878781    0.0408296   0.4712956
0-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3325390    0.2328715   0.4192574
0-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0751546   -0.4799827   0.4220614
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0602832   -0.0256709   0.1390341
0-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.1573698   -0.1211108   0.3666767
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.5005708    0.2906042   0.6483916
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.2909091   -0.4282555   0.6479552
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.1954023   -0.4407600   0.5506695
0-6 months    ki1113344-GMS-Nepal        NEPAL                          High                 NA                -0.3628118   -1.3685912   0.2158816
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.4129426   -0.2085827   0.7148425
0-6 months    ki1135781-COHORTS          INDIA                          High                 NA                 0.1227636   -0.4419798   0.4663283
0-6 months    ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.2096734   -0.1899816   0.4751043
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.0784427   -0.0393975   0.1829230
6-24 months   ki0047075b-MAL-ED          INDIA                          High                 NA                 0.2034884   -0.4286845   0.5559336
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          High                 NA                 0.2461857    0.1431050   0.3368663
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          High                 NA                 0.1815228   -0.0589912   0.3674122
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     High                 NA                 0.3394928    0.0266525   0.5517842
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     High                 NA                 0.4880793    0.1664085   0.6856220
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   High                 NA                 0.3366456   -0.0761299   0.5910912
6-24 months   ki1113344-GMS-Nepal        NEPAL                          High                 NA                 0.1772198   -0.0533081   0.3572941
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       High                 NA                 0.2194890   -0.2130185   0.4977840
6-24 months   ki1135781-COHORTS          GUATEMALA                      High                 NA                -0.1503941   -0.5906698   0.1680193
6-24 months   ki1135781-COHORTS          INDIA                          High                 NA                 0.3477551    0.0803980   0.5373832
6-24 months   ki1135781-COHORTS          PHILIPPINES                    High                 NA                 0.3336878    0.2284364   0.4245816
6-24 months   ki1148112-LCNI-5           MALAWI                         High                 NA                 0.0549667   -0.5104374   0.4087223
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     High                 NA                 0.1455315    0.0375626   0.2413882
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     High                 NA                 0.0866975   -0.2266974   0.3200268
