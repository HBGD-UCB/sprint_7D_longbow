---
title: "Optimal Treatment Analysis"
output: 
  html_document:
    keep_md: TRUE
    self_contained: true
required_packages:  ['github://HBGD-UCB/longbowOptTX','github://jeremyrcoyle/skimr@vector_types', 'github://tlverse/delayed']
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
      W: []
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
      maximize:
        input: checkbox
        value: TRUE
  output_directory:
    value: '~/tmp/'
editor_options: 
  chunk_output_type: console
---







## Methods
## Outcome Variable

**Outcome Variable:** ever_wasted

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







# Results Detail

## Results Plots
![](/tmp/7d9046ad-491d-4241-bb44-d48849651e5e/1a6139e2-550a-4fba-a26f-3babd8e5a0bc/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/7d9046ad-491d-4241-bb44-d48849651e5e/1a6139e2-550a-4fba-a26f-3babd8e5a0bc/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4601636   0.3887776   0.5315497
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.5126921   0.4502740   0.5751101
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.2408829   0.0605806   0.4211852
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0940781   0.0503003   0.1378559
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1730216   0.1530779   0.1929652
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3707332   0.3321018   0.4093646
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0561119   0.0293789   0.0828449
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2833417   0.2109028   0.3557805
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.1937769   0.1597740   0.2277799
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2928768   0.2638102   0.3219433
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1966289   0.1802558   0.2130021
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3188750   0.1980289   0.4397211
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.2410050   0.1068048   0.3752052
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0190061   0.0023648   0.0356473
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0688858   0.0496649   0.0881067
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1206620   0.0927669   0.1485571
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0464961   0.0220084   0.0709838
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0758605   0.0456750   0.1060459
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0903107   0.0702198   0.1104015
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0683773   0.0572176   0.0795371
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3047963   0.2237948   0.3857978
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.3177829   0.2548014   0.3807645
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0789850   0.0374647   0.1205054
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1438015   0.1222383   0.1653646
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3281112   0.2906150   0.3656075
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1431786   0.0789388   0.2074185
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1145017   0.0865458   0.1424575
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2491967   0.2229116   0.2754819
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1586954   0.1405233   0.1768675


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.4425287   0.3902692   0.4947882
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             NA                0.5347044   0.4850733   0.5843354
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1975914   0.1811057   0.2140772
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             NA                0.3725606   0.3495097   0.3956116
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             NA                0.0612597   0.0474556   0.0750638
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1984536   0.1587174   0.2381898
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             NA                0.2049180   0.1833143   0.2265218
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.3113629   0.2945446   0.3281811
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1807502   0.1716556   0.1898448
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3072289   0.2575285   0.3569293
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             NA                0.3477089   0.2991827   0.3962350
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.0859445   0.0743193   0.0975697
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             NA                0.1367742   0.1196627   0.1538856
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0550194   0.0412334   0.0688054
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             NA                0.0878763   0.0720416   0.1037111
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.0975610   0.0867035   0.1084185
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.0776203   0.0714558   0.0837849
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.2592593   0.2133485   0.3051700
6-24 months                   ki1000108-IRC              INDIA                          observed             NA                0.3179487   0.2716722   0.3642252
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1591987   0.1427306   0.1756669
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             NA                0.3247706   0.3020649   0.3474764
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.1914894   0.1516651   0.2313136
6-24 months                   ki1135781-COHORTS          INDIA                          observed             NA                0.1318764   0.1136647   0.1500881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.2669537   0.2505274   0.2833801
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1716523   0.1610413   0.1822634


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9616769   0.8527799   1.0844797
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           1.0429348   0.9692048   1.1222736
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           1.8169237   0.8740599   3.7768712
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.5225232   0.9924983   2.3355979
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1420047   1.0578803   1.2328188
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0049292   0.9239141   1.0930483
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.0917417   0.7514909   1.5860470
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.7004039   0.5779109   0.8488604
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           1.0574944   0.9171715   1.2192861
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0631191   0.9806422   1.1525326
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9192452   0.8602191   0.9823216
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9634776   0.6898018   1.3457331
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           1.4427455   0.8469898   2.4575439
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4049339   0.6587086   2.9965286
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.2476374   0.9813198   1.5862303
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1335315   0.9368463   1.3715097
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.1833124   0.7598481   1.8427738
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           1.1583941   0.8101737   1.6562831
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0802818   0.8939301   1.3054811
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1351763   0.9890700   1.3028656
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.8505985   0.6918522   1.0457694
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.0005217   0.8729564   1.1467282
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.6649597   1.0224600   2.7111974
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1070731   0.9956971   1.2309074
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             optimal           0.9898188   0.9043835   1.0833249
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.3374158   0.9104066   1.9647058
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.1517424   0.9471918   1.4004668
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0712569   0.9848327   1.1652653
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0816463   0.9791847   1.1948294


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0176349   -0.0726573    0.0373876
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0220123   -0.0155079    0.0595326
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.1967829    0.0206445    0.3729213
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0491580    0.0081610    0.0901550
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0245699    0.0112477    0.0378921
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0018274   -0.0293345    0.0329894
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0051478   -0.0155862    0.0258818
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0848880   -0.1394288   -0.0303473
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0111411   -0.0164937    0.0387759
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0184861   -0.0051391    0.0421113
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0158787   -0.0289523   -0.0028051
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0116461   -0.1183142    0.0950221
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.1067039   -0.0218303    0.2352381
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0076962   -0.0070521    0.0224445
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0170587    0.0004257    0.0336917
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0161122   -0.0069088    0.0391332
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0085233   -0.0120061    0.0290527
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0120159   -0.0152268    0.0392585
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0072503   -0.0098451    0.0243457
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0092430   -0.0001613    0.0186473
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0455370   -0.1086393    0.0175653
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0001658   -0.0431773    0.0435089
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0525218    0.0129810    0.0920626
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0153973    0.0001060    0.0306886
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0033406   -0.0329600    0.0262788
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0483107   -0.0070357    0.1036572
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0173748   -0.0050397    0.0397893
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0177570   -0.0032051    0.0387190
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0129569   -0.0028964    0.0288102


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0398503   -0.1726355    0.0778988
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                 0.0411673   -0.0317737    0.1089517
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.4496191   -0.1440864    0.7352306
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3431956   -0.0075584    0.5718441
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1243469    0.0547135    0.1888508
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0049051   -0.0823517    0.0851274
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0840324   -0.3306882    0.3695017
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.4277475   -0.7303705   -0.1780500
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0543686   -0.0903086    0.1798479
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0593716   -0.0197399    0.1323456
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0878490   -0.1624945   -0.0179966
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0379069   -0.4496918    0.2569106
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.3068771   -0.1806517    0.5930897
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2882227   -0.5181220    0.6662805
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1984851   -0.0190358    0.3695745
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1178013   -0.0674110    0.2708765
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1549146   -0.3160524    0.4573398
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.1367360   -0.2343033    0.3962385
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0743156   -0.1186557    0.2339989
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1190796   -0.0110508    0.2324611
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1756428   -0.4453954    0.0437662
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0005214   -0.1455326    0.1279537
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3993849    0.0219666    0.6311593
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0967173   -0.0043215    0.1875912
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0102860   -0.1057256    0.0769159
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.2522894   -0.0984103    0.4910179
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.1317503   -0.0557524    0.2859524
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0665171   -0.0154009    0.1418263
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0754834   -0.0212577    0.1630605
