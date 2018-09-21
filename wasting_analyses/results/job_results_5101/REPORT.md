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

**Outcome Variable:** wast_rec90d

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

agecat        studyid                    country                        gagebrth             wast_rec90d   n_cell       n
------------  -------------------------  -----------------------------  ------------------  ------------  -------  ------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       68     301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1      119     301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       21     301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       28     301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       21     301
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       44     301
0-24 months   ki1000108-IRC              INDIA                          Full or late term              0       92     382
0-24 months   ki1000108-IRC              INDIA                          Full or late term              1      134     382
0-24 months   ki1000108-IRC              INDIA                          Preterm                        0       24     382
0-24 months   ki1000108-IRC              INDIA                          Preterm                        1       29     382
0-24 months   ki1000108-IRC              INDIA                          Early term                     0       39     382
0-24 months   ki1000108-IRC              INDIA                          Early term                     1       64     382
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term              0        8     514
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term              1       12     514
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                        0      196     514
0-24 months   ki1000109-EE               PAKISTAN                       Preterm                        1      156     514
0-24 months   ki1000109-EE               PAKISTAN                       Early term                     0       96     514
0-24 months   ki1000109-EE               PAKISTAN                       Early term                     1       46     514
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        9     810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        5     810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      463     810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      282     810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       29     810
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       22     810
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0       16     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       26     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       57     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       92     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0       44     311
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       76     311
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      128     666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      247     666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       52     666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       77     666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       67     666
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       95     666
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              0      225     953
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              1      255     953
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        0       73     953
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        1       88     953
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                     0      137     953
0-24 months   ki1101329-Keneba           GAMBIA                         Early term                     1      175     953
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              0      315    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              1     1875    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        0       24    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        1      139    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                     0      276    4431
0-24 months   ki1119695-PROBIT           BELARUS                        Early term                     1     1802    4431
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              0       66     280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       75     280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       35     280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       19     280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     0       46     280
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     1       39     280
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term              0      163     523
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term              1       46     523
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                        0       96     523
0-24 months   ki1135781-COHORTS          INDIA                          Preterm                        1       38     523
0-24 months   ki1135781-COHORTS          INDIA                          Early term                     0      127     523
0-24 months   ki1135781-COHORTS          INDIA                          Early term                     1       53     523
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      219    1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      352    1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      156    1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      238    1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      285    1675
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      425    1675
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     3349   11167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     2444   11167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     1338   11167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      970   11167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     1888   11167
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1178   11167
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       40     187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       80     187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0        7     187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       20     187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       13     187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       27     187
0-6 months    ki1000108-IRC              INDIA                          Full or late term              0       51     230
0-6 months    ki1000108-IRC              INDIA                          Full or late term              1       84     230
0-6 months    ki1000108-IRC              INDIA                          Preterm                        0        9     230
0-6 months    ki1000108-IRC              INDIA                          Preterm                        1       17     230
0-6 months    ki1000108-IRC              INDIA                          Early term                     0       23     230
0-6 months    ki1000108-IRC              INDIA                          Early term                     1       46     230
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term              0        2     216
0-6 months    ki1000109-EE               PAKISTAN                       Full or late term              1       12     216
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                        0       68     216
0-6 months    ki1000109-EE               PAKISTAN                       Preterm                        1       78     216
0-6 months    ki1000109-EE               PAKISTAN                       Early term                     0       24     216
0-6 months    ki1000109-EE               PAKISTAN                       Early term                     1       32     216
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        2     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        4     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      148     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      159     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       15     340
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       12     340
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0        3     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       23     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       11     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       85     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0        7     198
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       69     198
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0       52     316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      133     316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       20     316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       41     316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       23     316
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       47     316
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term              0       45     257
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term              1       87     257
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                        0       19     257
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm                        1       33     257
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                     0       21     257
0-6 months    ki1101329-Keneba           GAMBIA                         Early term                     1       52     257
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term              0      256    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term              1     1858    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                        0       19    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm                        1      138    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                     0      213    4263
0-6 months    ki1119695-PROBIT           BELARUS                        Early term                     1     1779    4263
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term              0       16     161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term              1       72     161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                        0       10     161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm                        1       17     161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                     0        8     161
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term                     1       38     161
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term              0       98     344
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term              1       46     344
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                        0       46     344
0-6 months    ki1135781-COHORTS          INDIA                          Preterm                        1       38     344
0-6 months    ki1135781-COHORTS          INDIA                          Early term                     0       63     344
0-6 months    ki1135781-COHORTS          INDIA                          Early term                     1       53     344
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term              0       63     744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      182     744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                        0       46     744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      134     744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                     0       87     744
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term                     1      232     744
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     1108    6806
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     2444    6806
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      430    6806
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      970    6806
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0      676    6806
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1178    6806
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0       28     114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       39     114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       14     114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1        8     114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0        8     114
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       17     114
6-24 months   ki1000108-IRC              INDIA                          Full or late term              0       41     152
6-24 months   ki1000108-IRC              INDIA                          Full or late term              1       50     152
6-24 months   ki1000108-IRC              INDIA                          Preterm                        0       15     152
6-24 months   ki1000108-IRC              INDIA                          Preterm                        1       12     152
6-24 months   ki1000108-IRC              INDIA                          Early term                     0       16     152
6-24 months   ki1000108-IRC              INDIA                          Early term                     1       18     152
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term              0        6     298
6-24 months   ki1000109-EE               PAKISTAN                       Full or late term              1        0     298
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                        0      128     298
6-24 months   ki1000109-EE               PAKISTAN                       Preterm                        1       78     298
6-24 months   ki1000109-EE               PAKISTAN                       Early term                     0       72     298
6-24 months   ki1000109-EE               PAKISTAN                       Early term                     1       14     298
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        7     470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        1     470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      315     470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      123     470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       14     470
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       10     470
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0       13     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1        3     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0       46     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1        7     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0       37     113
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1        7     113
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0       76     350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      114     350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0       32     350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       36     350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0       44     350
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       48     350
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              0      180     696
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term              1      168     696
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        0       54     696
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm                        1       55     696
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                     0      116     696
6-24 months   ki1101329-Keneba           GAMBIA                         Early term                     1      123     696
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              0       59     168
6-24 months   ki1119695-PROBIT           BELARUS                        Full or late term              1       17     168
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        0        5     168
6-24 months   ki1119695-PROBIT           BELARUS                        Preterm                        1        1     168
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                     0       63     168
6-24 months   ki1119695-PROBIT           BELARUS                        Early term                     1       23     168
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              0       50     119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term              1        3     119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       25     119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm                        1        2     119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     0       38     119
6-24 months   ki1135781-COHORTS          GUATEMALA                      Early term                     1        1     119
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term              0       65     179
6-24 months   ki1135781-COHORTS          INDIA                          Full or late term              1        0     179
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                        0       50     179
6-24 months   ki1135781-COHORTS          INDIA                          Preterm                        1        0     179
6-24 months   ki1135781-COHORTS          INDIA                          Early term                     0       64     179
6-24 months   ki1135781-COHORTS          INDIA                          Early term                     1        0     179
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      156     931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      170     931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      110     931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      104     931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      198     931
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      193     931
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     2241    4361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1        0    4361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0      908    4361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1        0    4361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     1212    4361
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1        0    4361


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

* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/54f18f97-b3fb-4587-b73f-d8b2c0edc8fe/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/54f18f97-b3fb-4587-b73f-d8b2c0edc8fe/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/54f18f97-b3fb-4587-b73f-d8b2c0edc8fe/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/54f18f97-b3fb-4587-b73f-d8b2c0edc8fe/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6363636   0.5668993   0.7058280
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5714286   0.4226699   0.7201873
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6769231   0.5405828   0.8132633
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5929204   0.5209401   0.6649006
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.5471698   0.4158117   0.6785279
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.6213592   0.5268794   0.7158391
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.6000000   0.3000972   0.8999028
0-24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4431818   0.3628195   0.5235442
0-24 months   ki1000109-EE               PAKISTAN                       Early term           NA                0.3239437   0.2074617   0.4404256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3571429   0.0731496   0.6411361
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3785235   0.3421693   0.4148777
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.4313725   0.2762267   0.5865184
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.6190476   0.4768572   0.7612380
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.6174497   0.5406725   0.6942268
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.6333333   0.5434169   0.7232498
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6586667   0.6078603   0.7094731
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5968992   0.5064015   0.6873969
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5864198   0.5062428   0.6665967
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.5312500   0.4830164   0.5794836
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.5465839   0.4622903   0.6308774
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.5608974   0.4991389   0.6226559
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8561644   0.8414854   0.8708434
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8527607   0.7997707   0.9057508
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.8671800   0.8527899   0.8815701
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.5319149   0.4468531   0.6169767
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3518519   0.2184275   0.4852762
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4588235   0.3513175   0.5663296
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2200957   0.1607962   0.2793952
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2835821   0.2080763   0.3590879
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.2944444   0.2285314   0.3603575
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6164623   0.5734554   0.6594693
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6040609   0.5540745   0.6540474
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.5985915   0.5610039   0.6361792
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4218885   0.4039028   0.4398742
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.4202773   0.3917859   0.4487687
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3842140   0.3599725   0.4084554
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6666667   0.5821538   0.7511795
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7407407   0.5657628   0.9157187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6750000   0.5250907   0.8249093
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.6222222   0.5361698   0.7082747
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.6538462   0.4797295   0.8279628
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.6666667   0.5568093   0.7765240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.7189189   0.6530656   0.7847722
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6721311   0.5518529   0.7924094
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.6714286   0.5614299   0.7814273
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.6590909   0.5782408   0.7399410
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6346154   0.5076673   0.7615635
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.7123288   0.6071718   0.8174857
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8789026   0.8648824   0.8929227
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8789809   0.8284410   0.9295208
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.8930723   0.8793931   0.9067515
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.8181818   0.7368393   0.8995243
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.6296296   0.4457667   0.8134926
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8260870   0.7207224   0.9314515
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.3194444   0.2431789   0.3957100
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.4523810   0.3457871   0.5589748
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.4568966   0.3661142   0.5476789
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.7428571   0.6882172   0.7974970
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.7444444   0.6801122   0.8087766
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.7272727   0.6781705   0.7763749
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.6880631   0.6665223   0.7096038
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.6928571   0.6586684   0.7270458
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.6353830   0.6043848   0.6663811
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.5820896   0.4594727   0.7047064
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3636364   0.1308138   0.5964590
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6800000   0.4890151   0.8709849
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5494505   0.4419865   0.6569146
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.4444444   0.2479491   0.6409398
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.5294118   0.3414334   0.7173901
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6000000   0.5285487   0.6714513
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5294118   0.4055054   0.6533181
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5217391   0.4145563   0.6289220
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4827586   0.4264333   0.5390839
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.5045872   0.4037057   0.6054686
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.5146444   0.4471879   0.5821008
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.5214724   0.4634910   0.5794538
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.4859813   0.4159761   0.5559865
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.4936061   0.4414105   0.5458018


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6345515   0.5770351   0.6920679
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5942408   0.5412823   0.6471994
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4163424   0.3511349   0.4815500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3814815   0.3462984   0.4166645
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.6237942   0.5698223   0.6777662
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6291291   0.5901846   0.6680736
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5435467   0.5088559   0.5782375
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.8612051   0.8511051   0.8713052
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.4750000   0.4147665   0.5352335
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.2619503   0.2237649   0.3001357
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6059701   0.5813402   0.6306001
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.4112116   0.3983175   0.4241057
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6791444   0.6111760   0.7471128
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.6391304   0.5756367   0.7026242
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.6993671   0.6481378   0.7505964
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.6692607   0.6118880   0.7266334
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.8855266   0.8758983   0.8951550
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7888199   0.7258783   0.8517615
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.3982558   0.3464489   0.4500628
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.7365591   0.7047881   0.7683302
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.6746988   0.6589571   0.6904405
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5614035   0.4645960   0.6582110
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.5263158   0.4415211   0.6111105
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.5657143   0.5118874   0.6195411
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.4971264   0.4573928   0.5368601
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.5016112   0.4676556   0.5355667


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.8979592   0.6770214   1.1909973
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0637363   0.8459911   1.3375258
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.9228386   0.7051713   1.2076940
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0479641   0.8626426   1.2730981
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    0.7386364   0.4339694   1.2571940
0-24 months   ki1000109-EE               PAKISTAN                       Early term           Full or late term    0.5399061   0.2916843   0.9993635
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.0598658   0.4757869   2.3609635
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    1.2078431   0.5046764   2.8907336
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.9974187   0.7680002   1.2953695
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.0230769   0.7807062   1.3406918
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9062235   0.7644676   1.0742653
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8903134   0.7609661   1.0416468
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0288637   0.8602563   1.2305176
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0558069   0.9153816   1.2177744
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9960245   0.9338449   1.0623443
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0128662   0.9889844   1.0373247
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.6614815   0.4382920   0.9983248
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8625882   0.6494952   1.1455950
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2884491   0.8821822   1.8818118
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.3378019   0.9424712   1.8989589
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9798829   0.8793557   1.0919023
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9710107   0.8840063   1.0665782
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9961810   0.9195149   1.0792393
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9107003   0.8439280   0.9827557
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1111111   0.8498176   1.4527446
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0125000   0.7840402   1.3075303
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.0508242   0.7784047   1.4185827
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.0714286   0.8640328   1.3286061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9349193   0.7646574   1.1430923
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9339420   0.7741110   1.1267734
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9628647   0.7614731   1.2175197
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0807747   0.8920199   1.3094706
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0000891   0.9421593   1.0615809
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0161221   0.9938971   1.0388440
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.7695473   0.5652821   1.0476239
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0096618   0.8589016   1.1868846
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4161491   1.0125803   1.9805622
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.4302849   1.0483994   1.9512743
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0021368   0.8946287   1.1225642
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9790210   0.8859946   1.0818148
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0069675   0.9498090   1.0675658
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9234371   0.8714298   0.9785482
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.6247086   0.3184160   1.2256319
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.1682051   0.8223605   1.6594951
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.8088889   0.4987649   1.3118429
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9635294   0.6423669   1.4452627
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8823529   0.6785706   1.1473334
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8695652   0.6857587   1.1026381
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0452163   0.8291524   1.3175829
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0660490   0.8944253   1.2706042
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9319406   0.7768892   1.1179372
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9465624   0.8119141   1.1035408


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0018121   -0.0480655   0.0444412
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0013205   -0.0417711   0.0444121
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.1836576   -0.4793385   0.1120233
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0243386   -0.2569276   0.3056048
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0047466   -0.1283808   0.1378740
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0295375   -0.0640612   0.0049861
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0122967   -0.0221204   0.0467138
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0050408   -0.0051826   0.0152641
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0569149   -0.1165335   0.0027037
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0418546   -0.0046947   0.0884039
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0104922   -0.0450644   0.0240800
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0106769   -0.0230925   0.0017388
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0124777   -0.0384437   0.0633991
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0169082   -0.0354403   0.0692567
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0195518   -0.0629854   0.0238817
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0101698   -0.0456439   0.0659835
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0066241   -0.0030871   0.0163352
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0293619   -0.0871996   0.0284757
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0788114    0.0185551   0.1390677
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0062980   -0.0513388   0.0387428
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0133643   -0.0284468   0.0017182
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0206860   -0.1028182   0.0614461
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0231348   -0.0933454   0.0470759
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0342857   -0.0839393   0.0153678
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0143678   -0.0253555   0.0540911
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0198612   -0.0663470   0.0266245


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0028558   -0.0784946    0.0674782
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0022221   -0.0730179    0.0721863
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4411215   -1.3695376    0.1235289
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0638003   -1.0580120    0.5741182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0076092   -0.2304690    0.1996227
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0469499   -0.1035144    0.0067152
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0226231   -0.0427704    0.0839156
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0058531   -0.0060922    0.0176566
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1198208   -0.2535385   -0.0003671
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1597807   -0.0391173    0.3206075
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0173147   -0.0759812    0.0381531
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0259644   -0.0566092    0.0037915
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0183727   -0.0595480    0.0905630
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0264550   -0.0593125    0.1052784
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0279565   -0.0920958    0.0324160
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0151956   -0.0718733    0.0951918
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0074804   -0.0035515    0.0183909
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0372226   -0.1135640    0.0338851
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1978913    0.0312167    0.3358904
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0085506   -0.0716011    0.0507902
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0198078   -0.0424251    0.0023189
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0368470   -0.1946251    0.1000928
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0439560   -0.1868530    0.0817361
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0606061   -0.1526179    0.0240606
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0289017   -0.0544324    0.1056498
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0395949   -0.1365217    0.0490657
