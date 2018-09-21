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
![](/tmp/50a546c2-ea20-4e7c-bfac-6a694167773f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/50a546c2-ea20-4e7c-bfac-6a694167773f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/50a546c2-ea20-4e7c-bfac-6a694167773f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/50a546c2-ea20-4e7c-bfac-6a694167773f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6280387   0.5586597   0.6974177
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5013908   0.3539088   0.6488728
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6447755   0.5099363   0.7796147
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5816792   0.5104851   0.6528733
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.4425081   0.3226680   0.5623482
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.5884173   0.4977831   0.6790516
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.6000000   0.3000972   0.8999028
0-24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4431818   0.3628195   0.5235442
0-24 months   ki1000109-EE               PAKISTAN                       Early term           NA                0.3239437   0.2074617   0.4404256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3571429   0.0731496   0.6411361
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3785235   0.3421693   0.4148777
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.4313725   0.2762267   0.5865184
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.6190476   0.4768572   0.7612380
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.6174497   0.5406725   0.6942268
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.6333333   0.5434169   0.7232498
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6559149   0.6060237   0.7058060
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5647100   0.4800449   0.6493752
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5599608   0.4847581   0.6351635
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.5201852   0.4742012   0.5661693
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4879611   0.4151656   0.5607565
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.5519825   0.4948851   0.6090799
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8554657   0.8407713   0.8701600
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8612670   0.8174947   0.9050393
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.8660294   0.8516002   0.8804587
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.5321110   0.4481462   0.6160759
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3548489   0.2286996   0.4809982
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4602042   0.3562257   0.5641828
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2195650   0.1610002   0.2781297
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2811334   0.2062370   0.3560297
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.2984451   0.2343123   0.3625779
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6160109   0.5731297   0.6588920
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6049892   0.5550780   0.6549004
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.5984413   0.5609620   0.6359206
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4210477   0.4033997   0.4386956
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.4222308   0.3954760   0.4489856
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3853764   0.3618557   0.4088972
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6666667   0.5821538   0.7511795
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7407407   0.5657628   0.9157187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6750000   0.5250907   0.8249093
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.6222222   0.5361698   0.7082747
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.6538462   0.4797295   0.8279628
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.6666667   0.5568093   0.7765240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.7194362   0.6545136   0.7843588
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6696799   0.5581747   0.7811852
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.6643069   0.5616012   0.7670126
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.6587505   0.5788133   0.7386878
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6317600   0.5082845   0.7552354
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.7159351   0.6122256   0.8196446
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8788104   0.8647972   0.8928237
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8796380   0.8291252   0.9301508
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.8931132   0.8794327   0.9067937
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.8181818   0.7368393   0.8995243
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.6296296   0.4457667   0.8134926
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8260870   0.7207224   0.9314515
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.3204981   0.2454878   0.3955083
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.4513494   0.3470343   0.5556646
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.4601570   0.3711645   0.5491495
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.7423179   0.6878413   0.7967945
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.7453188   0.6811300   0.8095075
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.7271849   0.6783169   0.7760528
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.6844093   0.6633895   0.7054290
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.7017722   0.6706743   0.7328701
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.6368666   0.6074190   0.6663142
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.5820896   0.4594727   0.7047064
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3636364   0.1308138   0.5964590
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6800000   0.4890151   0.8709849
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5418355   0.4353121   0.6483589
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.3966983   0.2055648   0.5878318
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.5015551   0.3181253   0.6849849
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6005186   0.5291140   0.6719231
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5322252   0.4087411   0.6557094
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5239174   0.4170650   0.6307698
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4639046   0.4103633   0.5174458
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4210933   0.3349218   0.5072648
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.4939094   0.4310523   0.5567666
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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7983438   0.5824317   1.0942962
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0266493   0.8102066   1.3009136
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7607425   0.5646630   1.0249107
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0115839   0.8304882   1.2321692
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
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8609502   0.7280246   1.0181458
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8537096   0.7320129   0.9956382
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9380525   0.7895508   1.1144850
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0611268   0.9269287   1.2147538
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0067815   0.9541952   1.0622658
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0123485   0.9884110   1.0368658
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.6668701   0.4519129   0.9840741
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8648651   0.6578929   1.1369505
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2804108   0.8795126   1.8640459
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.3592567   0.9680766   1.9085048
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9821080   0.8816963   1.0939550
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9714785   0.8847780   1.0666748
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0028100   0.9296989   1.0816704
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9152799   0.8501807   0.9853638
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1111111   0.8498176   1.4527446
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0125000   0.7840402   1.3075303
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.0508242   0.7784047   1.4185827
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.0714286   0.8640328   1.3286061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9308399   0.7705393   1.1244891
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9233715   0.7725964   1.1035711
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9590276   0.7631580   1.2051685
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0868076   0.9003884   1.3118236
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0009416   0.9430339   1.0624052
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0162751   0.9940546   1.0389923
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.7695473   0.5652821   1.0476239
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0096618   0.8589016   1.1868846
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4082750   1.0150221   1.9538871
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.4357559   1.0621421   1.9407903
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0040425   0.8967342   1.1241920
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9796138   0.8870376   1.0818517
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0253692   0.9719101   1.0817689
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9305348   0.8806284   0.9832694
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.6247086   0.3184160   1.2256319
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.1682051   0.8223605   1.6594951
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7321379   0.4347269   1.2330176
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9256593   0.6113304   1.4016073
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8862760   0.6828850   1.1502453
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8724417   0.6889745   1.1047643
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9077153   0.7190271   1.1459195
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0646790   0.8984436   1.2616723
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9319406   0.7768892   1.1179372
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9465624   0.8119141   1.1035408


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0065128   -0.0400617   0.0530873
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0125616   -0.0303444   0.0554677
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.1836576   -0.4793385   0.1120233
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0243386   -0.2569276   0.3056048
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0047466   -0.1283808   0.1378740
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0267857   -0.0605767   0.0070052
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0233615   -0.0094079   0.0561309
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0057395   -0.0045377   0.0160166
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0571110   -0.1156070   0.0013849
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0423853   -0.0032349   0.0880056
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0100407   -0.0444663   0.0243849
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0098361   -0.0219643   0.0022922
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0124777   -0.0384437   0.0633991
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0169082   -0.0354403   0.0692567
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0200691   -0.0628330   0.0226948
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0105102   -0.0442491   0.0652694
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0067162   -0.0029907   0.0164230
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0293619   -0.0871996   0.0284757
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0777577    0.0187912   0.1367243
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0057588   -0.0505717   0.0390542
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0097105   -0.0242673   0.0048463
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0206860   -0.1028182   0.0614461
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0155197   -0.0852448   0.0542054
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0348043   -0.0844354   0.0148269
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0332219   -0.0042369   0.0706806
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0198612   -0.0663470   0.0266245


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0102636   -0.0658061    0.0809040
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0211390   -0.0540088    0.0909290
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4411215   -1.3695376    0.1235289
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0638003   -1.0580120    0.5741182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0076092   -0.2304690    0.1996227
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0425759   -0.0979404    0.0099968
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0429797   -0.0191050    0.1012822
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0066644   -0.0053444    0.0185298
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1202337   -0.2514564   -0.0027705
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1618068   -0.0328146    0.3197541
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0165697   -0.0749823    0.0386689
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0239197   -0.0538570    0.0051672
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0183727   -0.0595480    0.0905630
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0264550   -0.0593125    0.1052784
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0286961   -0.0918560    0.0308103
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0157042   -0.0696486    0.0942462
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0075844   -0.0034426    0.0184902
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0372226   -0.1135640    0.0338851
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1952457    0.0327403    0.3304493
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0078185   -0.0705407    0.0512289
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0143923   -0.0362146    0.0069705
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0368470   -0.1946251    0.1000928
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0294874   -0.1712850    0.0951439
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0615227   -0.1535045    0.0231243
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0668278   -0.0116295    0.1392003
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0395949   -0.1365217    0.0490657
