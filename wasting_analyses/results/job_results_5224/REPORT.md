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

**Outcome Variable:** swasted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat      studyid                    country                        gagebrth             swasted   n_cell       n
----------  -------------------------  -----------------------------  ------------------  --------  -------  ------
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0       51      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        3      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       10      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        0      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       22      87
Birth       ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        1      87
Birth       ki1000108-IRC              INDIA                          Full or late term          0      187     328
Birth       ki1000108-IRC              INDIA                          Full or late term          1       26     328
Birth       ki1000108-IRC              INDIA                          Preterm                    0       22     328
Birth       ki1000108-IRC              INDIA                          Preterm                    1       10     328
Birth       ki1000108-IRC              INDIA                          Early term                 0       67     328
Birth       ki1000108-IRC              INDIA                          Early term                 1       16     328
Birth       ki1000109-EE               PAKISTAN                       Full or late term          0        0       2
Birth       ki1000109-EE               PAKISTAN                       Full or late term          1        0       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                    0        2       2
Birth       ki1000109-EE               PAKISTAN                       Preterm                    1        0       2
Birth       ki1000109-EE               PAKISTAN                       Early term                 0        0       2
Birth       ki1000109-EE               PAKISTAN                       Early term                 1        0       2
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0        1     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        0     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0      147     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1        4     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       13     166
Birth       ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        1     166
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0        6      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0        3      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        0      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0       13      23
Birth       ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        1      23
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          0      673    1401
Birth       ki1101329-Keneba           GAMBIA                         Full or late term          1        7    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    0      206    1401
Birth       ki1101329-Keneba           GAMBIA                         Preterm                    1        1    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                 0      511    1401
Birth       ki1101329-Keneba           GAMBIA                         Early term                 1        3    1401
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          0     6620   13824
Birth       ki1119695-PROBIT           BELARUS                        Full or late term          1      451   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    0      439   13824
Birth       ki1119695-PROBIT           BELARUS                        Preterm                    1       29   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                 0     5854   13824
Birth       ki1119695-PROBIT           BELARUS                        Early term                 1      431   13824
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          0      294     572
Birth       ki1135781-COHORTS          GUATEMALA                      Full or late term          1       29     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    0       69     572
Birth       ki1135781-COHORTS          GUATEMALA                      Preterm                    1        9     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 0      162     572
Birth       ki1135781-COHORTS          GUATEMALA                      Early term                 1        9     572
Birth       ki1135781-COHORTS          INDIA                          Full or late term          0      525    1229
Birth       ki1135781-COHORTS          INDIA                          Full or late term          1       28    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                    0      245    1229
Birth       ki1135781-COHORTS          INDIA                          Preterm                    1       14    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                 0      403    1229
Birth       ki1135781-COHORTS          INDIA                          Early term                 1       14    1229
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1100    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       35    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      546    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Preterm                    1       33    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1110    2874
Birth       ki1135781-COHORTS          PHILIPPINES                    Early term                 1       50    2874
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    16548   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      276   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     4646   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       88   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     7982   29656
Birth       kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      116   29656
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      205     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        7     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       50     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        1     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       82     346
6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        1     346
6 months    ki1000108-IRC              INDIA                          Full or late term          0      238     388
6 months    ki1000108-IRC              INDIA                          Full or late term          1       11     388
6 months    ki1000108-IRC              INDIA                          Preterm                    0       37     388
6 months    ki1000108-IRC              INDIA                          Preterm                    1        5     388
6 months    ki1000108-IRC              INDIA                          Early term                 0       92     388
6 months    ki1000108-IRC              INDIA                          Early term                 1        5     388
6 months    ki1000109-EE               PAKISTAN                       Full or late term          0       50     752
6 months    ki1000109-EE               PAKISTAN                       Full or late term          1        0     752
6 months    ki1000109-EE               PAKISTAN                       Preterm                    0      474     752
6 months    ki1000109-EE               PAKISTAN                       Preterm                    1       12     752
6 months    ki1000109-EE               PAKISTAN                       Early term                 0      210     752
6 months    ki1000109-EE               PAKISTAN                       Early term                 1        6     752
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          0       24    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term          1        1    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    0     1169    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                    1       39    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 0       90    1325
6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                 1        2    1325
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0      155     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      251     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        0     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      309     715
6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        0     715
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0     1159    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        8    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0      289    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        1    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0      444    1902
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        1    1902
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          0      648    1374
6 months    ki1101329-Keneba           GAMBIA                         Full or late term          1       10    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    0      204    1374
6 months    ki1101329-Keneba           GAMBIA                         Preterm                    1        3    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 0      501    1374
6 months    ki1101329-Keneba           GAMBIA                         Early term                 1        8    1374
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          0     8001   15757
6 months    ki1119695-PROBIT           BELARUS                        Full or late term          1        4   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    0      550   15757
6 months    ki1119695-PROBIT           BELARUS                        Preterm                    1        1   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                 0     7190   15757
6 months    ki1119695-PROBIT           BELARUS                        Early term                 1       11   15757
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          0      386     714
6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term          1        3     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    0      113     714
6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                    1        1     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 0      210     714
6 months    ki1135781-COHORTS          GUATEMALA                      Early term                 1        1     714
6 months    ki1135781-COHORTS          INDIA                          Full or late term          0      552    1312
6 months    ki1135781-COHORTS          INDIA                          Full or late term          1       16    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    0      292    1312
6 months    ki1135781-COHORTS          INDIA                          Preterm                    1        7    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 0      428    1312
6 months    ki1135781-COHORTS          INDIA                          Early term                 1       17    1312
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          0     1017    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term          1       11    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      564    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                    1        8    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 0     1069    2685
6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                 1       16    2685
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0    13022   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      172   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     4720   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1       80   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     6828   24926
6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      104   24926
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          0      213     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term          1        1     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    0       51     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                    1        1     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 0       84     350
24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                 1        0     350
24 months   ki1000108-IRC              INDIA                          Full or late term          0      247     390
24 months   ki1000108-IRC              INDIA                          Full or late term          1        3     390
24 months   ki1000108-IRC              INDIA                          Preterm                    0       42     390
24 months   ki1000108-IRC              INDIA                          Preterm                    1        0     390
24 months   ki1000108-IRC              INDIA                          Early term                 0       96     390
24 months   ki1000108-IRC              INDIA                          Early term                 1        2     390
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          0       78     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term          1        1     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    0      205     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                    1        3     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 0      227     514
24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                 1        0     514
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          0        5       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term          1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    0        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                    1        0       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 0        1       6
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                 1        0       6
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          0      548    1157
24 months   ki1101329-Keneba           GAMBIA                         Full or late term          1       10    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    0      166    1157
24 months   ki1101329-Keneba           GAMBIA                         Preterm                    1        2    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                 0      421    1157
24 months   ki1101329-Keneba           GAMBIA                         Early term                 1       10    1157
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          0     1988    3971
24 months   ki1119695-PROBIT           BELARUS                        Full or late term          1        2    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    0      136    3971
24 months   ki1119695-PROBIT           BELARUS                        Preterm                    1        0    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                 0     1843    3971
24 months   ki1119695-PROBIT           BELARUS                        Early term                 1        2    3971
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          0      374     667
24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term          1        3     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    0      109     667
24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                    1        0     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 0      181     667
24 months   ki1135781-COHORTS          GUATEMALA                      Early term                 1        0     667
24 months   ki1135781-COHORTS          INDIA                          Full or late term          0      555    1298
24 months   ki1135781-COHORTS          INDIA                          Full or late term          1        4    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                    0      301    1298
24 months   ki1135781-COHORTS          INDIA                          Preterm                    1        2    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                 0      431    1298
24 months   ki1135781-COHORTS          INDIA                          Early term                 1        5    1298
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          0      931    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term          1        8    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    0      511    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                    1        6    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 0      961    2428
24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                 1       11    2428
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          0     6531   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term          1      244   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    0     2465   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                    1      118   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 0     3447   12937
24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                 1      132   12937


The following strata were considered:

* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000108-IRC, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: Birth, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: Birth, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: Birth, studyid: ki1135781-COHORTS, country: INDIA
* agecat: Birth, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: Birth, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: Birth, studyid: ki1000109-EE, country: PAKISTAN
* agecat: Birth, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: Birth, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: Birth, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 24 months, studyid: ki1135781-COHORTS, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/b61bbb7c-1cd7-4608-be7c-1c84102c3734/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/b61bbb7c-1cd7-4608-be7c-1c84102c3734/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/b61bbb7c-1cd7-4608-be7c-1c84102c3734/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/b61bbb7c-1cd7-4608-be7c-1c84102c3734/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                0.1237117   0.0793249   0.1680985
Birth       ki1000108-IRC       INDIA         Preterm              NA                0.2987355   0.1585726   0.4388984
Birth       ki1000108-IRC       INDIA         Early term           NA                0.1870672   0.1068764   0.2672580
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                0.0638359   0.0330810   0.0945908
Birth       ki1119695-PROBIT    BELARUS       Preterm              NA                0.0608241   0.0194882   0.1021599
Birth       ki1119695-PROBIT    BELARUS       Early term           NA                0.0687118   0.0299498   0.1074737
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                0.0897833   0.0585802   0.1209863
Birth       ki1135781-COHORTS   GUATEMALA     Preterm              NA                0.1153846   0.0444216   0.1863476
Birth       ki1135781-COHORTS   GUATEMALA     Early term           NA                0.0526316   0.0191341   0.0861291
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                0.0500107   0.0317980   0.0682234
Birth       ki1135781-COHORTS   INDIA         Preterm              NA                0.0532938   0.0257677   0.0808199
Birth       ki1135781-COHORTS   INDIA         Early term           NA                0.0328543   0.0156675   0.0500412
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0323353   0.0222911   0.0423796
Birth       ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0622460   0.0433889   0.0811032
Birth       ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0444736   0.0327973   0.0561500
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0159835   0.0129943   0.0189727
Birth       kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0182663   0.0133634   0.0231692
Birth       kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0142192   0.0100881   0.0183503
6 months    ki1000108-IRC       INDIA         Full or late term    NA                0.0441767   0.0186206   0.0697328
6 months    ki1000108-IRC       INDIA         Preterm              NA                0.1190476   0.0209812   0.2171141
6 months    ki1000108-IRC       INDIA         Early term           NA                0.0515464   0.0074879   0.0956049
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                0.0281690   0.0145571   0.0417810
6 months    ki1135781-COHORTS   INDIA         Preterm              NA                0.0234114   0.0062660   0.0405568
6 months    ki1135781-COHORTS   INDIA         Early term           NA                0.0382022   0.0203858   0.0560186
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0107004   0.0044097   0.0169910
6 months    ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0139860   0.0043606   0.0236114
6 months    ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0147465   0.0075730   0.0219201
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0128519   0.0097354   0.0159683
6 months    kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0157293   0.0102497   0.0212090
6 months    kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0144058   0.0104781   0.0183334
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                0.0085197   0.0026400   0.0143995
24 months   ki1135781-COHORTS   PHILIPPINES   Preterm              NA                0.0116054   0.0023715   0.0208394
24 months   ki1135781-COHORTS   PHILIPPINES   Early term           NA                0.0113169   0.0046657   0.0179680
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                0.0364900   0.0299130   0.0430669
24 months   kiGH5241-JiVitA-3   BANGLADESH    Preterm              NA                0.0428266   0.0315395   0.0541136
24 months   kiGH5241-JiVitA-3   BANGLADESH    Early term           NA                0.0365481   0.0277652   0.0453310


### Parameter: E(Y)


agecat      studyid             country       intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  ----------  ----------  ----------
Birth       ki1000108-IRC       INDIA         NA                   NA                0.1585366   0.1189492   0.1981239
Birth       ki1119695-PROBIT    BELARUS       NA                   NA                0.0658999   0.0328405   0.0989593
Birth       ki1135781-COHORTS   GUATEMALA     NA                   NA                0.0821678   0.0596429   0.1046927
Birth       ki1135781-COHORTS   INDIA         NA                   NA                0.0455655   0.0339017   0.0572293
Birth       ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0410578   0.0338021   0.0483134
Birth       kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0161856   0.0137999   0.0185712
6 months    ki1000108-IRC       INDIA         NA                   NA                0.0541237   0.0315811   0.0766663
6 months    ki1135781-COHORTS   INDIA         NA                   NA                0.0304878   0.0211813   0.0397943
6 months    ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0130354   0.0087443   0.0173265
6 months    kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0142823   0.0118903   0.0166742
24 months   ki1135781-COHORTS   PHILIPPINES   NA                   NA                0.0102965   0.0062804   0.0143127
24 months   kiGH5241-JiVitA-3   BANGLADESH    NA                   NA                0.0381851   0.0332624   0.0431077


### Parameter: RR


agecat      studyid             country       intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------  ------------------  ------------  -------------------  ------------------  ----------  ----------  ---------
Birth       ki1000108-IRC       INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1000108-IRC       INDIA         Preterm              Full or late term    2.4147714   1.3374609   4.359844
Birth       ki1000108-IRC       INDIA         Early term           Full or late term    1.5121217   0.8647729   2.644061
Birth       ki1119695-PROBIT    BELARUS       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1119695-PROBIT    BELARUS       Preterm              Full or late term    0.9528189   0.5610098   1.618267
Birth       ki1119695-PROBIT    BELARUS       Early term           Full or late term    1.0763805   0.7798179   1.485725
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   GUATEMALA     Preterm              Full or late term    1.2851459   0.6341034   2.604622
Birth       ki1135781-COHORTS   GUATEMALA     Early term           Full or late term    0.5862069   0.2838695   1.210551
Birth       ki1135781-COHORTS   INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   INDIA         Preterm              Full or late term    1.0656475   0.5664734   2.004692
Birth       ki1135781-COHORTS   INDIA         Early term           Full or late term    0.6569463   0.3472730   1.242764
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.9250161   1.2476091   2.970231
Birth       ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3753881   0.9158245   2.065562
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
Birth       kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1428246   0.8264295   1.580350
Birth       kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    0.8896198   0.6435229   1.229829
6 months    ki1000108-IRC       INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1000108-IRC       INDIA         Preterm              Full or late term    2.6948051   0.9848457   7.373718
6 months    ki1000108-IRC       INDIA         Early term           Full or late term    1.1668228   0.4156900   3.275218
6 months    ki1135781-COHORTS   INDIA         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   INDIA         Preterm              Full or late term    0.8311037   0.3456219   1.998523
6 months    ki1135781-COHORTS   INDIA         Early term           Full or late term    1.3561798   0.6928795   2.654464
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.3070566   0.5286910   3.231371
6 months    ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3781315   0.6425394   2.955845
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6 months    kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.2238936   0.8121604   1.844359
6 months    kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    1.1209081   0.7856348   1.599261
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   ki1135781-COHORTS   PHILIPPINES   Preterm              Full or late term    1.3621857   0.4751277   3.905371
24 months   ki1135781-COHORTS   PHILIPPINES   Early term           Full or late term    1.3283179   0.5365669   3.288366
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
24 months   kiGH5241-JiVitA-3   BANGLADESH    Preterm              Full or late term    1.1736542   0.8527299   1.615358
24 months   kiGH5241-JiVitA-3   BANGLADESH    Early term           Full or late term    1.0015934   0.7419358   1.352124


### Parameter: PAR


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                 0.0348249    0.0031093   0.0665405
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                 0.0020640   -0.0090295   0.0131575
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                -0.0076154   -0.0271452   0.0119143
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                -0.0044452   -0.0174104   0.0085200
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0087224    0.0001382   0.0173066
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0002021   -0.0016180   0.0020222
6 months    ki1000108-IRC       INDIA         Full or late term    NA                 0.0099470   -0.0080254   0.0279194
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                 0.0023188   -0.0082390   0.0128766
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0023350   -0.0029266   0.0075966
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0014304   -0.0006306   0.0034914
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.0017768   -0.0031181   0.0066718
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0016951   -0.0030120   0.0064022


### Parameter: PAF


agecat      studyid             country       intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------  ------------------  ------------  -------------------  ---------------  -----------  -----------  ----------
Birth       ki1000108-IRC       INDIA         Full or late term    NA                 0.2196646   -0.0009919   0.3916800
Birth       ki1119695-PROBIT    BELARUS       Full or late term    NA                 0.0313195   -0.1464427   0.1815188
Birth       ki1135781-COHORTS   GUATEMALA     Full or late term    NA                -0.0926816   -0.3568340   0.1200448
Birth       ki1135781-COHORTS   INDIA         Full or late term    NA                -0.0975563   -0.4208531   0.1521785
Birth       ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.2124427   -0.0213645   0.3927275
Birth       kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0124876   -0.1066184   0.1187741
6 months    ki1000108-IRC       INDIA         Full or late term    NA                 0.1837827   -0.2138954   0.4511795
6 months    ki1135781-COHORTS   INDIA         Full or late term    NA                 0.0760563   -0.3429950   0.3643521
6 months    ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.1791273   -0.3353175   0.4953769
6 months    kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.1001534   -0.0569948   0.2339376
24 months   ki1135781-COHORTS   PHILIPPINES   Full or late term    NA                 0.1725666   -0.4614571   0.5315319
24 months   kiGH5241-JiVitA-3   BANGLADESH    Full or late term    NA                 0.0443917   -0.0868935   0.1598191
