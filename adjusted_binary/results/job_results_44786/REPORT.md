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

**Outcome Variable:** pers_wast

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        gagebrth             pers_wast   n_cell      n
------------  -------------------------  -----------------------------  ------------------  ----------  -------  -----
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201    351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14    351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49    351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3    351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81    351
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3    351
0-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225    390
0-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25    390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34    390
0-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8    390
0-24 months   ki1000108-IRC              INDIA                          Early term                   0       85    390
0-24 months   ki1000108-IRC              INDIA                          Early term                   1       13    390
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       24    377
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1    377
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      225    377
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       19    377
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   0      100    377
0-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        8    377
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            0       10    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            1        1    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      0      354    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      1       29    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   0       31    427
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   1        2    427
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307    730
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10    730
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212   2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33   2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306   2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11   2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462   2035
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11   2035
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      736   1576
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       39   1576
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      230   1576
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1        9   1576
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      536   1576
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       26   1576
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     3707   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       44   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      231   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        5   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     3939   7972
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       46   7972
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      179    361
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        5    361
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0       66    361
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6    361
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      101    361
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        4    361
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470   1186
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42   1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248   1186
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18   1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367   1186
0-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41   1186
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034   2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47   2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550   2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34   2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062   2789
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62   2789
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     2946   5897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      157   5897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     1065   5897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1       72   5897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     1556   5897
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      101   5897
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      174    337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       32    337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       45    337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        6    337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       72    337
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        8    337
0-6 months    ki1000108-IRC              INDIA                          Full or late term            0      211    383
0-6 months    ki1000108-IRC              INDIA                          Full or late term            1       34    383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      0       33    383
0-6 months    ki1000108-IRC              INDIA                          Preterm                      1        9    383
0-6 months    ki1000108-IRC              INDIA                          Early term                   0       78    383
0-6 months    ki1000108-IRC              INDIA                          Early term                   1       18    383
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            0       24    366
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term            1        1    366
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      0      219    366
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                      1       19    366
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   0       96    366
0-6 months    ki1000109-EE               PAKISTAN                       Early term                   1        7    366
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0       80    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        1    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0       65    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1        2    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      100    250
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1        2    250
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1157   1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       29   1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      290   1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1        8   1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      438   1934
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       12   1934
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            0      659   1401
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term            1       17   1401
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      0      206   1401
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                      1        8   1401
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   0      504   1401
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                   1        7   1401
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            0     2849   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term            1      290   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      0      177   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                      1       15   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   0     3004   6657
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                   1      322   6657
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            0      315    848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       11    848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      158    848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       13    848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   0      323    848
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                   1       28    848
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0       11     17
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1        0     17
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0        2     17
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1        0     17
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0        3     17
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1        1     17
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            0      201    351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term            1       14    351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      0       49    351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                      1        3    351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   0       81    351
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                   1        3    351
6-24 months   ki1000108-IRC              INDIA                          Full or late term            0      225    390
6-24 months   ki1000108-IRC              INDIA                          Full or late term            1       25    390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      0       34    390
6-24 months   ki1000108-IRC              INDIA                          Preterm                      1        8    390
6-24 months   ki1000108-IRC              INDIA                          Early term                   0       85    390
6-24 months   ki1000108-IRC              INDIA                          Early term                   1       13    390
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            0       24    377
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term            1        1    377
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      0      225    377
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                      1       19    377
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   0      100    377
6-24 months   ki1000109-EE               PAKISTAN                       Early term                   1        8    377
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            0       10    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term            1        1    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      0      354    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                      1       29    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   0       31    427
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                   1        2    427
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            0      156    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term            1        2    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      0      241    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                      1       14    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   0      307    730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                   1       10    730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            0     1212   2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term            1       33   2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      0      306   2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                      1       11   2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   0      462   2035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                   1       11   2035
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            0      736   1576
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term            1       39   1576
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      0      230   1576
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                      1        9   1576
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   0      536   1576
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                   1       26   1576
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            0     3707   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term            1       44   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      0      231   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                      1        5   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   0     3939   7972
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                   1       46   7972
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            0      179    361
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term            1        5    361
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      0       66    361
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                      1        6    361
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   0      101    361
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                   1        4    361
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            0      470   1186
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term            1       42   1186
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      0      248   1186
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                      1       18   1186
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   0      367   1186
6-24 months   ki1135781-COHORTS          INDIA                          Early term                   1       41   1186
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            0     1034   2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term            1       47   2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      0      550   2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                      1       34   2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   0     1062   2789
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                   1       62   2789
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            0     2946   5897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term            1      157   5897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      0     1065   5897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                      1       72   5897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   0     1556   5897
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                   1      101   5897


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
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
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

* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA

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
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
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
![](/tmp/8e9b0d1a-c7e9-45c8-aa09-6e82f39ca698/2174185a-f296-4d65-ad60-c23c76e78efd/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8e9b0d1a-c7e9-45c8-aa09-6e82f39ca698/2174185a-f296-4d65-ad60-c23c76e78efd/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8e9b0d1a-c7e9-45c8-aa09-6e82f39ca698/2174185a-f296-4d65-ad60-c23c76e78efd/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8e9b0d1a-c7e9-45c8-aa09-6e82f39ca698/2174185a-f296-4d65-ad60-c23c76e78efd/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0265060   0.0175810   0.0354310
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0347003   0.0145481   0.0548525
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0232558   0.0096702   0.0368415
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0503226   0.0349267   0.0657185
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0376569   0.0135148   0.0617990
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0462633   0.0288913   0.0636354
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0117302   0.0035754   0.0198850
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0211864   0.0017625   0.0406104
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0115433   0.0044991   0.0185875
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0820313   0.0582519   0.1058106
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0676692   0.0374717   0.0978667
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1004902   0.0713048   0.1296756
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0434783   0.0313193   0.0556372
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0582192   0.0392247   0.0772137
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0551601   0.0418116   0.0685087
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0505962   0.0418873   0.0593051
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0633245   0.0493868   0.0772622
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0609535   0.0486707   0.0732363
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.1553398   0.1058014   0.2048782
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.1176471   0.0290906   0.2062035
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.1000000   0.0341631   0.1658369
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.1387755   0.0954297   0.1821213
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.2142857   0.0900289   0.3385425
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.1875000   0.1093206   0.2656794
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0244519   0.0156597   0.0332442
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0268456   0.0084896   0.0452017
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0266667   0.0117775   0.0415558
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0251479   0.0133406   0.0369552
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0373832   0.0119582   0.0628082
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.0136986   0.0036169   0.0237804
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0923861   0.0372520   0.1475202
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0781250   0.0305814   0.1256686
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0968130   0.0498212   0.1438048
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0337423   0.0141300   0.0533547
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0760234   0.0362758   0.1157709
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0797721   0.0514109   0.1081332
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.1000000   0.0627645   0.1372355
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.1904762   0.0715668   0.3093856
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.1326531   0.0654100   0.1998961
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0265060   0.0175810   0.0354310
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.0347003   0.0145481   0.0548525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0232558   0.0096702   0.0368415
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.0503226   0.0349267   0.0657185
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.0376569   0.0135148   0.0617990
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.0462633   0.0288913   0.0636354
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0117302   0.0035754   0.0198850
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0211864   0.0017625   0.0406104
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0115433   0.0044991   0.0185875
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0820313   0.0582519   0.1058106
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.0676692   0.0374717   0.0978667
6-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.1004902   0.0713048   0.1296756
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0434783   0.0313193   0.0556372
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0582192   0.0392247   0.0772137
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0551601   0.0418116   0.0685087
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0505962   0.0418873   0.0593051
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0633245   0.0493868   0.0772622
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0609535   0.0486707   0.0732363


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0469543   0.0365071   0.0574016
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0559607   0.0495732   0.0623481
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.1364985   0.0997894   0.1732076
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.1592689   0.1225736   0.1959642
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0253361   0.0183307   0.0323414
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.0228408   0.0150151   0.0306665
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0941866   0.0454872   0.1428859
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0613208   0.0451635   0.0774781
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.1179487   0.0858959   0.1500016
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0270270   0.0199797   0.0340743
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.0469543   0.0365071   0.0574016
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0119167   0.0046062   0.0192272
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.0851602   0.0692682   0.1010522
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0512729   0.0430860   0.0594597
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0559607   0.0495732   0.0623481


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3091483   0.6690294   2.561725
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8773784   0.4470465   1.721953
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.7483103   0.3677682   1.522612
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9193357   0.5663951   1.492206
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.8061441   0.9020484   3.616388
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9840652   0.6615842   1.463736
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8249194   0.4845141   1.404483
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2250233   0.8127084   1.846520
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3390410   0.8713097   2.057857
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2686832   0.8764771   1.836394
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.2515671   0.9393363   1.667582
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2047058   0.9290729   1.562112
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7573529   0.3343982   1.715271
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.6437500   0.3097517   1.337891
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.5441176   0.7991678   2.983478
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.3511029   0.8024776   2.274804
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0978940   0.5070474   2.377236
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0905747   0.5613548   2.118719
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.4865311   0.6505119   3.396978
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.5447220   0.2275334   1.304081
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.8456358   0.5067605   1.411120
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0479171   0.7746302   1.417619
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    2.2530569   1.0309696   4.923778
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    2.3641544   1.1961048   4.672856
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.9047619   0.9207828   3.940254
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.3265306   0.7072263   2.488148
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.3091483   0.6690294   2.561725
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8773784   0.4470465   1.721953
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.7483103   0.3677682   1.522612
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9193357   0.5663951   1.492206
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.8061441   0.9020484   3.616388
6-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9840652   0.6615842   1.463736
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.8249194   0.4845141   1.404483
6-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2250233   0.8127084   1.846520
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.3390410   0.8713097   2.057857
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2686832   0.8764771   1.836394
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.2515671   0.9393363   1.667582
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2047058   0.9290729   1.562112


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005210   -0.0051230   0.0061650
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0033683   -0.0140010   0.0072645
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0001865   -0.0019550   0.0023280
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0031290   -0.0150313   0.0212892
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077946   -0.0022184   0.0178076
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0053645   -0.0007184   0.0114473
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0188413   -0.0471504   0.0094678
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0204934   -0.0081709   0.0491577
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0008842   -0.0047344   0.0065027
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0023071   -0.0104384   0.0058242
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0018005   -0.0127197   0.0163206
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0275784    0.0088712   0.0462857
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0179487   -0.0072768   0.0431742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0005210   -0.0051230   0.0061650
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0033683   -0.0140010   0.0072645
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0001865   -0.0019550   0.0023280
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0031290   -0.0150313   0.0212892
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0077946   -0.0022184   0.0178076
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0053645   -0.0007184   0.0114473


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0192771   -0.2133771   0.2073219
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0717350   -0.3232634   0.1319825
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0156506   -0.1849042   0.1822598
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0367420   -0.2018407   0.2279625
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1520219   -0.0658551   0.3253615
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0958613   -0.0199510   0.1985235
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.1380329   -0.3629649   0.0497782
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.1286718   -0.0692198   0.2899375
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0348969   -0.2141578   0.2328642
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.1010078   -0.5190887   0.2020097
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0191159   -0.1518951   0.1647385
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.4497404    0.0798625   0.6709344
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.1521739   -0.0870878   0.3387755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0192771   -0.2133771   0.2073219
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0717350   -0.3232634   0.1319825
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0156506   -0.1849042   0.1822598
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0367420   -0.2018407   0.2279625
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1520219   -0.0658551   0.3253615
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0958613   -0.0199510   0.1985235
