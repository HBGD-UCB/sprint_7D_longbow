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

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* single
* brthmon
* W_parity
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_single
* delta_brthmon
* delta_W_parity

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth             ever_co   n_cell       n
------------  -------------------------  -----------------------------  ------------------  --------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      170     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       45     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       35     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       17     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       70     351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1       14     351
0-24 months   ki1000108-IRC              INDIA                          Full or late term          0      211     390
0-24 months   ki1000108-IRC              INDIA                          Full or late term          1       39     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                    0       28     390
0-24 months   ki1000108-IRC              INDIA                          Preterm                    1       14     390
0-24 months   ki1000108-IRC              INDIA                          Early term                 0       78     390
0-24 months   ki1000108-IRC              INDIA                          Early term                 1       20     390
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term          0       21     379
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        4     379
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                    0      145     379
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                    1      100     379
0-24 months   ki1000109-EE               PAKISTAN                       Early term                 0       69     379
0-24 months   ki1000109-EE               PAKISTAN                       Early term                 1       40     379
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       21    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        7    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0     1044    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1      321    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       85    1498
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 1       20    1498
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      161     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        7     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      224     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       41     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      302     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       23     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1334    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       56    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      321    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       29    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      487    2254
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       27    2254
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      707    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      136    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      200    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       57    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      520    1703
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       83    1703
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     8617   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1       12   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      590   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1        1   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     7663   16897
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                 1       14   16897
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0      406     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1       43     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0      105     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1       26     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0      195     812
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1       37     812
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      550    1371
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term          1       41    1371
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      280    1371
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                    1       35    1371
0-24 months   ki1135781-COHORTS          INDIA                          Early term                 0      436    1371
0-24 months   ki1135781-COHORTS          INDIA                          Early term                 1       29    1371
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      987    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      179    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      502    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      143    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      973    3019
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1      235    3019
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     9594   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      755   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     3545   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      495   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     5058   19946
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      499   19946
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      200     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       12     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       45     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        7     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       74     346
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        8     346
0-6 months    ki1000108-IRC              INDIA                          Full or late term          0      238     389
0-6 months    ki1000108-IRC              INDIA                          Full or late term          1       11     389
0-6 months    ki1000108-IRC              INDIA                          Preterm                    0       36     389
0-6 months    ki1000108-IRC              INDIA                          Preterm                    1        6     389
0-6 months    ki1000108-IRC              INDIA                          Early term                 0       92     389
0-6 months    ki1000108-IRC              INDIA                          Early term                 1        6     389
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       24     379
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        1     379
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      208     379
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                    1       37     379
0-6 months    ki1000109-EE               PAKISTAN                       Early term                 0       94     379
0-6 months    ki1000109-EE               PAKISTAN                       Early term                 1       15     379
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       28    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        0    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0     1261    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1       98    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       96    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        7    1490
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      168     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        0     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      250     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       15     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      323     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        2     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1380    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       10    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      343    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        7    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      513    2254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        1    2254
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      733    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       22    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      226    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1       15    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      556    1557
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                 1        5    1557
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term          0     8621   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term          1        6   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                    0      590   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                    1        1   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                 0     7663   16893
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                 1       12   16893
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          0      415     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          1        5     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    0      124     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    1        5     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 0      211     765
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 1        5     765
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term          0      572    1348
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term          1       10    1348
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                    0      296    1348
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                    1       12    1348
0-6 months    ki1135781-COHORTS          INDIA                          Early term                 0      451    1348
0-6 months    ki1135781-COHORTS          INDIA                          Early term                 1        7    1348
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1156    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       10    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      613    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    1       31    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1177    3018
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 1       31    3018
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    10089   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      252   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     3759   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      255   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     5366   19906
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      185   19906
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      176     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1       39     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       40     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1       12     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       75     351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        9     351
6-24 months   ki1000108-IRC              INDIA                          Full or late term          0      217     390
6-24 months   ki1000108-IRC              INDIA                          Full or late term          1       33     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                    0       30     390
6-24 months   ki1000108-IRC              INDIA                          Preterm                    1       12     390
6-24 months   ki1000108-IRC              INDIA                          Early term                 0       80     390
6-24 months   ki1000108-IRC              INDIA                          Early term                 1       18     390
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term          0       21     373
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term          1        4     373
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                    0      151     373
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                    1       89     373
6-24 months   ki1000109-EE               PAKISTAN                       Early term                 0       69     373
6-24 months   ki1000109-EE               PAKISTAN                       Early term                 1       39     373
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       20    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        7    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      967    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1      289    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       81    1379
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                 1       15    1379
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      151     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        7     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      221     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1       34     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      295     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1       22     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1104    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1       53    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      274    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1       26    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      412    1896
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1       27    1896
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      685    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1      129    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      190    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1       51    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      500    1635
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       80    1635
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     8473   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1        6   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      580   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1        0   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     7536   16598
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                 1        3   16598
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0      387     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1       39     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0       95     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1       25     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0      188     767
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1       33     767
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      534    1327
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term          1       40    1327
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      274    1327
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                    1       29    1327
6-24 months   ki1135781-COHORTS          INDIA                          Early term                 0      423    1327
6-24 months   ki1135781-COHORTS          INDIA                          Early term                 1       27    1327
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      905    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1      175    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      459    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1      127    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      889    2786
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1      231    2786
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     6222   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      548   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2207   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      275   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3212   12816
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      352   12816


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS

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




# Results Detail

## Results Plots
![](/tmp/d82d5b71-9690-48a1-9fd8-00b1d0916c61/6bbb6fde-326c-49d0-90ff-713f3eb9a240/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d82d5b71-9690-48a1-9fd8-00b1d0916c61/6bbb6fde-326c-49d0-90ff-713f3eb9a240/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/d82d5b71-9690-48a1-9fd8-00b1d0916c61/6bbb6fde-326c-49d0-90ff-713f3eb9a240/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/d82d5b71-9690-48a1-9fd8-00b1d0916c61/6bbb6fde-326c-49d0-90ff-713f3eb9a240/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2038610   0.1489810   0.2587410
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2973186   0.1656144   0.4290227
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1502454   0.0675164   0.2329744
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1554026   0.1103332   0.2004719
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.3196169   0.1735654   0.4656684
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1978909   0.1171782   0.2786035
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2500000   0.1173954   0.3826046
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.2351648   0.1926748   0.2776548
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1904762   0.1298989   0.2510534
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0416667   0.0114301   0.0719033
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1547170   0.1111476   0.1982864
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0707692   0.0428710   0.0986675
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0407317   0.0303209   0.0511425
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0820553   0.0531945   0.1109161
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0511299   0.0320894   0.0701704
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1588608   0.1341634   0.1835583
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2287280   0.1779498   0.2795062
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1391159   0.1118803   0.1663514
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0946807   0.0673530   0.1220083
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1881688   0.1192079   0.2571298
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1600647   0.1126257   0.2075036
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0682515   0.0477348   0.0887681
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1089105   0.0740413   0.1437798
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0624321   0.0403886   0.0844755
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1527035   0.1320479   0.1733590
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2219926   0.1901401   0.2538451
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1952212   0.1729581   0.2174843
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0733967   0.0678039   0.0789895
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1206517   0.1100066   0.1312968
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0897666   0.0816568   0.0978765
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.0566038   0.0254523   0.0877552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1346154   0.0417130   0.2275178
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.0975610   0.0332453   0.1618766
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.0441767   0.0186207   0.0697327
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.1428571   0.0368927   0.2488215
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.0612245   0.0136978   0.1087512
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0291391   0.0171377   0.0411404
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0622407   0.0317293   0.0927520
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0089127   0.0011329   0.0166924
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0119048   0.0015255   0.0222840
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.0387597   0.0054291   0.0720903
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.0231481   0.0030814   0.0432149
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0171821   0.0066207   0.0277436
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0389610   0.0173428   0.0605792
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.0152838   0.0040443   0.0265234
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0087805   0.0033197   0.0142412
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0475976   0.0310618   0.0641334
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0253695   0.0164751   0.0342639
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0244305   0.0213153   0.0275456
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0618694   0.0540440   0.0696949
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0335528   0.0284463   0.0386592
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1813953   0.1298133   0.2329774
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2307692   0.1160904   0.3454481
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1071429   0.0409059   0.1733798
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1320825   0.0898106   0.1743544
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.2801434   0.1416420   0.4186448
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1850399   0.1068604   0.2632193
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2592593   0.1205814   0.3979372
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.2300955   0.1920503   0.2681407
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.1562500   0.1248841   0.1876159
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0443038   0.0121970   0.0764106
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1333333   0.0915819   0.1750847
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0694006   0.0414057   0.0973955
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0457473   0.0336694   0.0578252
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0849047   0.0530380   0.1167714
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0626998   0.0399803   0.0854192
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1559347   0.1309951   0.1808742
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.2156406   0.1643035   0.2669778
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.1400819   0.1120176   0.1681461
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.0917118   0.0642167   0.1192068
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2131551   0.1392298   0.2870804
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1510142   0.1039528   0.1980755
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0677672   0.0469311   0.0886032
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0987943   0.0657314   0.1318573
6-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.0601513   0.0381872   0.0821155
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1609364   0.1389888   0.1828840
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2184818   0.1855599   0.2514037
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2070562   0.1834364   0.2306760
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0818858   0.0746554   0.0891162
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1099469   0.0969650   0.1229289
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0981308   0.0879823   0.1082794


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2165242   0.1733743   0.2596741
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1871795   0.1484181   0.2259409
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2323097   0.1922289   0.2723906
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0936675   0.0729118   0.1144233
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0496894   0.0407166   0.0586623
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1620669   0.1445596   0.1795743
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1305419   0.1073553   0.1537285
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0765864   0.0625045   0.0906684
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1844982   0.1706594   0.1983369
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0876868   0.0832582   0.0921153
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.0780347   0.0497312   0.1063382
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.0591260   0.0356574   0.0825946
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0269750   0.0189251   0.0350248
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.0196078   0.0097764   0.0294393
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.0215134   0.0137652   0.0292615
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0238569   0.0184115   0.0293022
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0347634   0.0320812   0.0374456
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1709402   0.1315009   0.2103795
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1615385   0.1249661   0.1981108
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2255257   0.1905482   0.2605033
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0863014   0.0659171   0.1066856
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0559072   0.0455633   0.0662511
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.1590214   0.1412900   0.1767528
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1264668   0.1029292   0.1500043
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0723436   0.0584002   0.0862871
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1913137   0.1767054   0.2059220
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0916823   0.0863748   0.0969897


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.4584377   0.8670089    2.4533087
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7369991   0.3991633    1.3607654
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.0567031   1.1995133    3.5264536
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.2734082   0.7719744    2.1005467
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.9406593   0.5212112    1.6976612
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.7619048   0.4216947    1.3765855
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    3.7132072   1.7048769    8.0873333
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.6984614   0.7436993    3.8789481
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    2.0145325   1.3044650    3.1111153
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2552858   0.7992380    1.9715558
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4398012   1.0985147    1.8871186
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8757091   0.6827851    1.1231447
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.9874049   1.2462600    3.1693052
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.6905739   1.1180254    2.5563283
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.5957241   1.0288782    2.4748656
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.9147360   0.5757808    1.4532298
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.4537498   1.1940937    1.7698681
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2784335   1.0715531    1.5252556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.6438292   1.4673170    1.8415751
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2230335   1.0905642    1.3715938
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    2.3782051   0.9837792    5.7491148
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.7235772   0.7302577    4.0680412
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    3.2337661   1.2623594    8.2838874
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3858998   0.5263615    3.6490478
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    2.1359864   1.1259863    4.0519480
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.3058661   0.1165093    0.8029757
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    3.2558140   0.9568134   11.0787794
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.9444444   0.5686405    6.6489529
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    2.2675325   0.9906640    5.1901590
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8895197   0.3411203    2.3195486
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    5.4208483   2.6582923   11.0543132
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    2.8893093   1.4143782    5.9023169
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    2.5324702   2.1152708    3.0319547
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.3733988   1.1327771    1.6651327
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2721893   0.7176235    2.2553132
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.5906593   0.2990956    1.1664448
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    2.1209733   1.1761746    3.8247107
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.4009416   0.8239326    2.3820363
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.8875114   0.4853695    1.6228386
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.6026786   0.3211091    1.1311465
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    3.0095237   1.3666005    6.6275644
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.5664713   0.6834693    3.5902596
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.8559520   1.1728796    2.9368383
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3705684   0.8757152    2.1450556
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3828908   1.0386850    1.8411618
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.8983368   0.6959883    1.1595152
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    2.3241851   1.4692753    3.6765311
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.6466172   1.0688353    2.5367314
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4578494   0.9264413    2.2940740
6-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8876177   0.5511432    1.4295110
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3575660   1.1084716    1.6626365
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2865715   1.0773943    1.5363606
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000    1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.3426865   1.1614030    1.5522667
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1983867   1.0453128    1.3738764


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0126632   -0.0224253   0.0477517
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0317769    0.0012376   0.0623163
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0176903   -0.1589790   0.1235985
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0520009    0.0213449   0.0826569
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0089578    0.0014728   0.0164427
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0032061   -0.0143325   0.0207447
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0358612    0.0143608   0.0573617
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0083350   -0.0076640   0.0243339
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0317947    0.0148800   0.0487094
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0142900    0.0102867   0.0182934
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0214309   -0.0027005   0.0455623
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0149493   -0.0042281   0.0341266
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0021641   -0.0104796   0.0061514
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0077031   -0.0015757   0.0169818
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0043312   -0.0043440   0.0130064
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0150764    0.0089713   0.0211814
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0103329    0.0078170   0.0128489
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0104552   -0.0413843   0.0204739
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0294560    0.0001062   0.0588058
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0337335   -0.1831141   0.1156470
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0419976    0.0103726   0.0736225
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0101599    0.0014905   0.0188293
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0030867   -0.0145652   0.0207387
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0347550    0.0130183   0.0564917
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0045765   -0.0112808   0.0204337
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0303773    0.0125230   0.0482316
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0097965    0.0047407   0.0148522


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0584840   -0.1184778   0.2074474
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1697672   -0.0078194   0.3160615
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0761494   -0.9020927   0.3911455
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.5551643    0.1158430   0.7761949
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1802748    0.0189207   0.3150916
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0197826   -0.0946426   0.1222468
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2747104    0.0963624   0.4178584
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1088307   -0.1259249   0.2946396
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1723308    0.0759364   0.2586698
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1629669    0.1163296   0.2071428
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.2746331   -0.0891296   0.5169013
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.2528374   -0.1313107   0.5065441
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0802271   -0.4358159   0.1872980
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.3928571   -0.2355181   0.7016455
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.2013272   -0.3127887   0.5141044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.6319518    0.3446356   0.7933067
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.2972359    0.2242300   0.3633713
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0611628   -0.2580714   0.1049264
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1823465   -0.0170449   0.3426472
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1495772   -1.0630422   0.3594276
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4866385   -0.0147040   0.7402789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1817282    0.0148395   0.3203455
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0194108   -0.0981278   0.1243686
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.2748153    0.0884556   0.4230748
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0632600   -0.1837211   0.2587089
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1587827    0.0605160   0.2467711
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1068526    0.0497795   0.1604977
