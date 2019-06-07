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

**Intervention Variable:** gagebrth

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                        studyid                    country                        gagebrth             ever_wasted   n_cell      n
----------------------------  -------------------------  -----------------------------  ------------------  ------------  -------  -----
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      123    348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       90    348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       25    348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       27    348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       46    348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       37    348
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              0      121    389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              1      128    389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        0       16    389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        1       26    389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     0       44    389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     1       54    389
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              0       19    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              1        6    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        0      132    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        1      111    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     0       61    377
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     1       48    377
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        7    457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        4    457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      269    457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      143    457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       21    457
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       13    457
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      152    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       16    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      214    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       47    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      280    754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       45    754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1145   2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      240   2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      253   2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       91   2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      401   2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1      112   2242
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              0      522   1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              1      314   1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        0      152   1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        1      104   1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     0      387   1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     1      212   1691
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              0     3572   8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              1      236   8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        0      228   8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        1       12   8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     0     3816   8113
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     1      249   8113
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      162    388
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       36    388
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       58    388
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       18    388
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     0       91    388
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     1       23    388
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              0      470   1342
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              1      109   1342
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        0      242   1342
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        1       66   1342
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     0      355   1342
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     1      100   1342
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      799   2913
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      328   2913
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      412   2913
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      199   2913
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      795   2913
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      380   2913
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     3948   9704
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1      889   9704
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     1736   9704
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      386   9704
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     2266   9704
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      479   9704
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      136    332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       64    332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       36    332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       15    332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       58    332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       23    332
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              0      160    371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              1       79    371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        0       28    371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        1       10    371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     0       54    371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     1       40    371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              0       21    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              1        4    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        0      195    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        1       45    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     0       85    373
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     1       23    373
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       10    449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        1    449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      343    449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1       61    449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       26    449
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     1        8    449
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      162    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1        6    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      255    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1        5    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      312    749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1        9    749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1270   2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      110   2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      301   2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       42   2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      471   2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       40   2234
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              0      642   1550
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              1      110   1550
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        0      201   1550
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        1       39   1550
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     0      495   1550
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     1       63   1550
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              0     3536   7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              1      209   7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        0      226   7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        1       10   7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     0     3778   7979
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     1      220   7979
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              0      170    343
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              1        2    343
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        0       67    343
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        1        2    343
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     0       99    343
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     1        3    343
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              0      476   1229
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              1       49   1229
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        0      258   1229
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        1       20   1229
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     0      387   1229
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     1       39   1229
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              0     1002   2870
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      103   2870
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      545   2870
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        1       60   2870
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     0     1043   2870
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     1      117   2870
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     4414   9598
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1      376   9598
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     1935   9598
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      153   9598
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     2504   9598
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      216   9598
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      164    351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       51    351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       33    351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       19    351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       63    351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       21    351
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              0      177    390
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              1       73    390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        0       21    390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        1       21    390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     0       68    390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     1       30    390
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              0       22    375
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              1        3    375
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        0      159    375
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        1       83    375
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     0       70    375
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     1       38    375
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0        7    431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        4    431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      282    431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      105    431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       25    431
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1        8    431
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      146    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       12    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      210    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       45    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      278    730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       39    730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      997   1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      161   1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      240   1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       60   1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      358   1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       81   1897
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              0      546   1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              1      268   1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        0      159   1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        1       82   1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     0      399   1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     1      181   1635
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              0     3723   7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              1       28   7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        0      234   7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        1        2   7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     0     3952   7975
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     1       36   7975
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      158    376
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       35    376
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       56    376
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       17    376
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     0       90    376
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     1       20    376
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              0      510   1327
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              1       64   1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        0      255   1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        1       48   1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     0      387   1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     1       63   1327
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      815   2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      266   2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      419   2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      167   2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      809   2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      311   2787
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0     2715   6385
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1      560   6385
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     1069   6385
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      249   6385
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     1505   6385
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      287   6385


The following strata were considered:

* agecat: 0-24 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth wast), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth wast), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth wast), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth wast), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
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
![](/tmp/00439083-4d0f-4307-a5ca-fc8318b82b51/95375cae-054d-449b-8e23-561abfc276f3/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/00439083-4d0f-4307-a5ca-fc8318b82b51/95375cae-054d-449b-8e23-561abfc276f3/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/00439083-4d0f-4307-a5ca-fc8318b82b51/95375cae-054d-449b-8e23-561abfc276f3/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/00439083-4d0f-4307-a5ca-fc8318b82b51/95375cae-054d-449b-8e23-561abfc276f3/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4225352   0.3561032   0.4889672
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5192308   0.3832367   0.6552248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4457831   0.3386964   0.5528699
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5140562   0.4518970   0.5762155
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.6190476   0.4719926   0.7661026
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.5510204   0.4524172   0.6496236
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2400000   0.0723640   0.4076360
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4567901   0.3940762   0.5195040
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           NA                0.4403670   0.3470479   0.5336861
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0952381   0.0508206   0.1396556
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1800766   0.1334288   0.2267244
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1384615   0.1008868   0.1760363
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1732852   0.1533473   0.1932231
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2645349   0.2179132   0.3111566
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2183236   0.1825675   0.2540797
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3755981   0.3427608   0.4084354
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4062500   0.3460696   0.4664304
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3539232   0.3156178   0.3922286
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0619748   0.0470207   0.0769289
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0500000   0.0210513   0.0789487
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0612546   0.0462867   0.0762225
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1818182   0.1280260   0.2356104
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2368421   0.1411363   0.3325479
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2017544   0.1279919   0.2755169
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1882556   0.1564023   0.2201089
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2142857   0.1684437   0.2601277
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2197802   0.1817169   0.2578436
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2910382   0.2645137   0.3175626
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3256956   0.2885304   0.3628607
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.3234043   0.2966532   0.3501553
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1837916   0.1716852   0.1958980
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1819039   0.1639800   0.1998278
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1744991   0.1581817   0.1908164
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3200000   0.2552533   0.3847467
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2941176   0.1688772   0.4193581
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2839506   0.1856053   0.3822959
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3305439   0.2708252   0.3902627
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.2631579   0.1229612   0.4033546
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.4255319   0.3254468   0.5256170
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0357143   0.0076336   0.0637950
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0192308   0.0025263   0.0359353
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0280374   0.0099665   0.0461083
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0797101   0.0654171   0.0940032
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1224490   0.0877504   0.1571476
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0782779   0.0549833   0.1015724
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1462766   0.1210112   0.1715419
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1625000   0.1158124   0.2091876
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1129032   0.0866363   0.1391702
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0558077   0.0398159   0.0717996
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0423729   0.0169352   0.0678106
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0550275   0.0410758   0.0689792
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0933333   0.0684398   0.1182269
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0719424   0.0415558   0.1023291
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0915493   0.0641526   0.1189460
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0932127   0.0760679   0.1103575
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0991736   0.0753523   0.1229948
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1008621   0.0835291   0.1181950
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0784969   0.0698158   0.0871779
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0732759   0.0616729   0.0848788
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0794118   0.0683913   0.0904323
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2372093   0.1802694   0.2941492
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3653846   0.2343167   0.4964525
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2500000   0.1572682   0.3427318
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.2920000   0.2355656   0.3484344
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.5000000   0.3485913   0.6514087
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.3061224   0.2147571   0.3974878
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0759494   0.0346135   0.1172852
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1764706   0.1296484   0.2232927
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1230284   0.0868448   0.1592120
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1390328   0.1191004   0.1589652
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2000000   0.1547246   0.2452754
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1845103   0.1482150   0.2208055
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3292383   0.2969454   0.3615313
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3402490   0.2804132   0.4000847
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3120690   0.2743496   0.3497884
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1813472   0.1269153   0.2357790
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.2328767   0.1357898   0.3299636
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1818182   0.1096454   0.2539910
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1114983   0.0857398   0.1372567
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1584158   0.1172878   0.1995439
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.1400000   0.1079285   0.1720715
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2460685   0.2203877   0.2717492
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2849829   0.2484281   0.3215378
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2776786   0.2514452   0.3039119
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1709924   0.1558714   0.1861133
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1889226   0.1653248   0.2125204
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1601563   0.1422628   0.1780497


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4425287   0.3902692   0.4947882
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5347044   0.4850733   0.5843354
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975914   0.1811057   0.2140772
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3725606   0.3495097   0.3956116
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0612597   0.0474556   0.0750638
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1984536   0.1587174   0.2381898
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2049180   0.1833143   0.2265218
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3113629   0.2945446   0.3281811
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1807502   0.1716556   0.1898448
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3072289   0.2575285   0.3569293
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3477089   0.2991827   0.3962350
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0859445   0.0743193   0.0975697
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1367742   0.1196627   0.1538856
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0550194   0.0412334   0.0688054
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0878763   0.0720416   0.1037111
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0975610   0.0867035   0.1084185
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0776203   0.0714558   0.0837849
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2592593   0.2133485   0.3051700
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3179487   0.2716722   0.3642252
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591987   0.1427306   0.1756669
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3247706   0.3020649   0.3474764
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1914894   0.1516651   0.2313136
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1318764   0.1136647   0.1500881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2669537   0.2505274   0.2833801
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1716523   0.1610413   0.1822634


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2288462   0.9053765   1.667884
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0550201   0.7917273   1.405872
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2042411   0.9224653   1.572088
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0719069   0.8636986   1.330307
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.9032922   0.9340145   3.878442
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.8348624   0.8843059   3.807189
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.8908045   1.1090532   3.223598
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.4538461   0.8475737   2.493787
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5265867   1.2368416   1.884208
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2599090   1.0313694   1.539090
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0816083   0.9106816   1.284616
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9422924   0.8199022   1.082952
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.8067797   0.4821706   1.349923
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9883795   0.8148419   1.198876
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.3026316   0.7894380   2.149439
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.1096491   0.6933128   1.775997
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1382700   0.8665415   1.495207
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1674564   0.9164060   1.487282
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1190821   0.9670264   1.295047
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1112091   0.9825253   1.256747
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9897289   0.8827125   1.109719
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9494399   0.8514003   1.058769
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9191176   0.5736217   1.472708
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8873457   0.5941417   1.325243
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7961359   0.4536025   1.397330
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2873687   0.9569730   1.731834
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.737757
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.169851
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5361781   1.0985134   2.148215
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9820317   0.6938028   1.390000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1109091   0.7944925   1.553343
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7718475   0.5776855   1.031268
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.7592653   0.4369808   1.319243
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9860193   0.7977622   1.218702
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.7708119   0.4677373   1.270266
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.9808853   0.6569390   1.464574
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0639493   0.7861994   1.439823
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0820639   0.8412644   1.391789
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9334877   0.7742562   1.125466
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0116552   0.8526493   1.200313
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5403469   1.0003898   2.371744
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0539216   0.6775284   1.639416
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7123288   1.1955633   2.452459
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0483646   0.7346654   1.496012
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.3235294   1.2682049   4.257032
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.6198738   0.8725893   3.007132
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4385093   1.1003763   1.880547
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3270986   1.0403781   1.692837
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0334427   0.8449595   1.263971
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9478513   0.8112195   1.107496
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.2841487   0.7682690   2.146433
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0025974   0.6095333   1.649133
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4207921   1.0036963   2.011216
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2556250   0.9069109   1.738422
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1581449   0.9816268   1.366405
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1284607   0.9802781   1.299043
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1048599   0.9509054   1.283740
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9366281   0.8130903   1.078936


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0199935   -0.0217424   0.0617295
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0206481   -0.0165082   0.0578045
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1976658    0.0336863   0.3616452
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0479980    0.0065276   0.0894684
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0243062    0.0109585   0.0376540
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0030375   -0.0263498   0.0202748
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0007151   -0.0068058   0.0053757
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0166354   -0.0223428   0.0556137
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0166624   -0.0079514   0.0412762
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0203247   -0.0006995   0.0413489
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0030414   -0.0111171   0.0050343
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0127711   -0.0529146   0.0273724
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0171650   -0.0192524   0.0535823
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0062343   -0.0030954   0.0155641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0095024   -0.0271587   0.0081539
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0007883   -0.0069150   0.0053384
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0054570   -0.0239231   0.0130091
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0043483   -0.0092709   0.0179675
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0008765   -0.0064714   0.0047184
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0220500   -0.0150725   0.0591725
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0259487   -0.0093107   0.0612081
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0555575    0.0159234   0.0951916
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0201659    0.0066217   0.0337102
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0044677   -0.0272716   0.0183362
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0101422   -0.0286801   0.0489645
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0203782   -0.0001442   0.0409005
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0208853    0.0004470   0.0413235
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0006599   -0.0092487   0.0105686


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0451802   -0.0540332   0.1350548
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0386160   -0.0335666   0.1057575
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.4516364   -0.0848875   0.7228259
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3350970   -0.0205568   0.5668090
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1230126    0.0532702   0.1876173
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0081530   -0.0727092   0.0525182
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0116730   -0.1162555   0.0831112
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0838253   -0.1347407   0.2602925
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0813126   -0.0468250   0.1937654
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0652766   -0.0047298   0.1304052
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0168265   -0.0625177   0.0268998
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0415686   -0.1807664   0.0812194
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0493659   -0.0613601   0.1485404
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0725393   -0.0422120   0.1746559
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0694751   -0.2064619   0.0519576
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0143280   -0.1314209   0.0906468
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0620988   -0.2941764   0.1283616
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0445701   -0.1056591   0.1743873
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0112925   -0.0859254   0.0582110
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0850498   -0.0696159   0.2173510
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0816129   -0.0361537   0.1859944
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4224684    0.0412055   0.6521227
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1266714    0.0380590   0.2071209
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0137564   -0.0864603   0.0540823
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0529649   -0.1729055   0.2353386
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1545246   -0.0150246   0.2957524
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0782355   -0.0015408   0.1516574
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0038447   -0.0556075   0.0599484
