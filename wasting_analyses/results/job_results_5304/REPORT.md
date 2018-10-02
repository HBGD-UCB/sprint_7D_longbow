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
![](/tmp/7dbd777a-40d6-4a0c-8eba-0edc36696642/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7dbd777a-40d6-4a0c-8eba-0edc36696642/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/7dbd777a-40d6-4a0c-8eba-0edc36696642/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/7dbd777a-40d6-4a0c-8eba-0edc36696642/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6281856   0.5593775   0.6969936
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4964194   0.3595221   0.6333168
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6449183   0.5161989   0.7736376
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5821075   0.5107345   0.6534804
0-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.4455714   0.3230440   0.5680987
0-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.5889674   0.4973557   0.6805791
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.6000000   0.3000972   0.8999028
0-24 months   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4431818   0.3628195   0.5235442
0-24 months   ki1000109-EE               PAKISTAN                       Early term           NA                0.3239437   0.2074617   0.4404256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3571429   0.0731496   0.6411361
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3785235   0.3421693   0.4148777
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.4313725   0.2762267   0.5865184
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.6190476   0.4768572   0.7612380
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.6174497   0.5406725   0.6942268
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.6333333   0.5434169   0.7232498
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6588030   0.6091705   0.7084355
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5742875   0.4915376   0.6570374
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5712974   0.4978477   0.6447471
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.5200837   0.4740887   0.5660787
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4872322   0.4144652   0.5599991
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.5516290   0.4944692   0.6087888
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8554655   0.8407712   0.8701599
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8612683   0.8174966   0.9050400
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           NA                0.8660293   0.8516000   0.8804586
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.5304924   0.4459838   0.6150010
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3560088   0.2262220   0.4857955
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.4598919   0.3537356   0.5660481
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2282502   0.1706356   0.2858648
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2964576   0.2231521   0.3697632
0-24 months   ki1135781-COHORTS          INDIA                          Early term           NA                0.3119358   0.2487492   0.3751224
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6295354   0.5867823   0.6722885
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6265811   0.5771194   0.6760427
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6083659   0.5710032   0.6457286
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.4210934   0.4034109   0.4387759
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.4224745   0.3955641   0.4493849
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.3852558   0.3616777   0.4088339
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.6666667   0.5821538   0.7511795
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.7407407   0.5657628   0.9157187
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6750000   0.5250907   0.8249093
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                0.6222222   0.5361698   0.7082747
0-6 months    ki1000108-IRC              INDIA                          Preterm              NA                0.6538462   0.4797295   0.8279628
0-6 months    ki1000108-IRC              INDIA                          Early term           NA                0.6666667   0.5568093   0.7765240
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.7200712   0.6552509   0.7848915
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.6676556   0.5543017   0.7810094
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.6622883   0.5589450   0.7656317
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.6590284   0.5792274   0.7388294
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6281911   0.5057485   0.7506337
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           NA                0.7177621   0.6142413   0.8212829
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.8788067   0.8647937   0.8928197
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.8796655   0.8291534   0.9301776
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           NA                0.8931148   0.8794342   0.9067954
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.8181818   0.7368393   0.8995243
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.6296296   0.4457667   0.8134926
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.8260870   0.7207224   0.9314515
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.3202521   0.2453166   0.3951876
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              NA                0.4534234   0.3497699   0.5570768
0-6 months    ki1135781-COHORTS          INDIA                          Early term           NA                0.4596614   0.3705977   0.5487252
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.7470807   0.6925370   0.8016244
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.7522055   0.6881519   0.8162591
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.7311987   0.6822694   0.7801280
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.6864978   0.6653245   0.7076711
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.7039555   0.6721911   0.7357198
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.6380715   0.6081774   0.6679655
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.5820896   0.4594727   0.7047064
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3636364   0.1308138   0.5964590
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.6800000   0.4890151   0.8709849
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                0.5418739   0.4349486   0.6487992
6-24 months   ki1000108-IRC              INDIA                          Preterm              NA                0.3956932   0.2012648   0.5901215
6-24 months   ki1000108-IRC              INDIA                          Early term           NA                0.5001422   0.3148842   0.6854003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.6011455   0.5302255   0.6720656
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.5332484   0.4142166   0.6522802
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.5247771   0.4214692   0.6280849
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4613550   0.4087261   0.5139838
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4117067   0.3297774   0.4936360
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           NA                0.4929935   0.4318581   0.5541289
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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.7902433   0.5869634   1.0639241
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0266366   0.8178823   1.2886727
0-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7654452   0.5659721   1.0352211
0-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0117846   0.8295665   1.2340278
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
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8717135   0.7409603   1.0255399
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8671748   0.7471728   1.0064501
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9368342   0.7883174   1.1133310
0-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0606542   0.9263095   1.2144834
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0067832   0.9541976   1.0622668
0-24 months   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0123486   0.9884110   1.0368659
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.6710911   0.4509070   0.9987944
0-24 months   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    0.8669151   0.6554373   1.1466265
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2988274   0.9135061   1.8466791
0-24 months   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.3666396   0.9920621   1.8826481
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9953071   0.8969915   1.1043986
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9663728   0.8817839   1.0590762
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0032797   0.9298404   1.0825192
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9148940   0.8496690   0.9851259
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.1111111   0.8498176   1.4527446
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0125000   0.7840402   1.3075303
0-6 months    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.0508242   0.7784047   1.4185827
0-6 months    ki1000108-IRC              INDIA                          Early term           Full or late term    1.0714286   0.8640328   1.3286061
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.9272077   0.7655027   1.1230713
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9197540   0.7689791   1.1000914
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.9532079   0.7593487   1.1965588
0-6 months    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0891217   0.9030584   1.3135208
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.0009772   0.9430699   1.0624402
0-6 months    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.0162812   0.9940608   1.0389984
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.7695473   0.5652821   1.0476239
0-6 months    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0096618   0.8589016   1.1868846
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4158324   1.0225608   1.9603544
0-6 months    ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.4353111   1.0614919   1.9407760
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0068598   0.9001466   1.1262240
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9787413   0.8865811   1.0804816
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0254300   0.9710751   1.0828274
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9294588   0.8789178   0.9829061
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.6247086   0.3184160   1.2256319
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.1682051   0.8223605   1.6594951
6-24 months   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7302311   0.4296797   1.2410117
6-24 months   ki1000108-IRC              INDIA                          Early term           Full or late term    0.9229864   0.6068374   1.4038420
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    0.8870538   0.6891314   1.1418207
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.8729618   0.6939262   1.0981892
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    0.8923860   0.7109574   1.1201132
6-24 months   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0685775   0.9049529   1.2617869
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    0.9319406   0.7768892   1.1179372
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    0.9465624   0.8119141   1.1035408


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0063659   -0.0397620   0.0524939
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0121333   -0.0308560   0.0551227
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.1836576   -0.4793385   0.1120233
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0243386   -0.2569276   0.3056048
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0047466   -0.1283808   0.1378740
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0296739   -0.0634556   0.0041078
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0234630   -0.0093523   0.0562783
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0057396   -0.0045375   0.0160168
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0554924   -0.1145174   0.0035326
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0337001   -0.0111813   0.0785814
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0235653   -0.0579593   0.0108288
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0098818   -0.0220289   0.0022653
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0124777   -0.0384437   0.0633991
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0169082   -0.0354403   0.0692567
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0207041   -0.0633344   0.0219262
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0102323   -0.0442952   0.0647598
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0067199   -0.0029868   0.0164267
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0293619   -0.0871996   0.0284757
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0780037    0.0191060   0.1369013
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0105215   -0.0554272   0.0343841
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0117990   -0.0265548   0.0029567
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0206860   -0.1028182   0.0614461
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0155581   -0.0854811   0.0543649
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0354312   -0.0847681   0.0139056
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0357715   -0.0011537   0.0726967
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0198612   -0.0663470   0.0266245


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0100322   -0.0652738   0.0800146
0-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0204182   -0.0548777   0.0903396
0-24 months   ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.4411215   -1.3695376   0.1235289
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0638003   -1.0580120   0.5741182
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0076092   -0.2304690   0.1996227
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0471666   -0.1025730   0.0054555
0-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0431665   -0.0190059   0.1015455
0-24 months   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0066647   -0.0053442   0.0185301
0-24 months   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.1168261   -0.2491813   0.0015056
0-24 months   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1286506   -0.0609205   0.2843481
0-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0388885   -0.0972118   0.0163346
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0240309   -0.0540135   0.0050988
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0183727   -0.0595480   0.0905630
0-6 months    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0264550   -0.0593125   0.1052784
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0296041   -0.0925673   0.0297307
0-6 months    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0152889   -0.0696857   0.0935133
0-6 months    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0075886   -0.0034382   0.0184943
0-6 months    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                -0.0372226   -0.1135640   0.0338851
0-6 months    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1958633    0.0335613   0.3309085
0-6 months    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0142847   -0.0771360   0.0448992
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0174879   -0.0396141   0.0041674
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0368470   -0.1946251   0.1000928
6-24 months   ki1000108-IRC              INDIA                          Full or late term    NA                -0.0295604   -0.1717588   0.0953815
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                -0.0626310   -0.1541083   0.0215956
6-24 months   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0719565   -0.0052491   0.1432325
6-24 months   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                -0.0395949   -0.1365217   0.0490657
