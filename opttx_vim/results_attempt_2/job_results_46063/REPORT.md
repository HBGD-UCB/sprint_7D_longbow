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
![](/tmp/5cec9c78-3bef-4521-aeff-061e6a926e3f/aab00e59-220b-41b5-8032-3f99e4d5edef/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5cec9c78-3bef-4521-aeff-061e6a926e3f/aab00e59-220b-41b5-8032-3f99e4d5edef/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4717396   0.3816123   0.5618669
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                0.5866157   0.5131031   0.6601284
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                0.2413517   0.0619425   0.4207609
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0996733   0.0551545   0.1441921
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1830583   0.1613268   0.2047898
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3556338   0.3174366   0.3938311
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.0467637   0.0252891   0.0682383
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2392795   0.1751363   0.3034226
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2146365   0.1792466   0.2500265
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2936466   0.2648195   0.3224737
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1799491   0.1637709   0.1961274
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.4189693   0.2942553   0.5436833
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                0.2425278   0.1089377   0.3761178
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0195480   0.0024726   0.0366234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0748408   0.0547908   0.0948908
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.1150115   0.0884528   0.1415703
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0495807   0.0249694   0.0741919
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0801842   0.0489116   0.1114567
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.0963002   0.0757935   0.1168070
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.0696354   0.0584078   0.0808630
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3505618   0.2676531   0.4334704
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                0.3167293   0.2564821   0.3769766
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0748231   0.0334721   0.1161741
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1507559   0.1275376   0.1739741
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                0.3242279   0.2871094   0.3613464
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.1874047   0.1160492   0.2587601
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                0.1209034   0.0924077   0.1493991
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.2524430   0.2260737   0.2788122
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1584656   0.1407860   0.1761453


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
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.9380785   0.8019899   1.0972597
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          observed             optimal           0.9115070   0.8347271   0.9953493
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       observed             optimal           1.8133944   0.8767974   3.7504665
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4370554   0.9563175   2.1594588
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0793909   0.9946254   1.1713804
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0475961   0.9608428   1.1421822
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.3099835   0.9040547   1.8981779
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.8293800   0.6757505   1.0179367
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          observed             optimal           0.9547212   0.8397144   1.0854793
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0603319   0.9793437   1.1480175
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0044518   0.9312861   1.0833657
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.7332969   0.5635022   0.9542542
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          observed             optimal           1.4336868   0.8463274   2.4286793
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3659871   0.6415269   2.9085621
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.1483640   0.9140418   1.4427566
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1892215   0.9816317   1.4407112
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.1096949   0.7429574   1.6574607
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          observed             optimal           1.0959312   0.7748277   1.5501064
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0130917   0.8491472   1.2086890
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.1146681   0.9692986   1.2818391
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           0.7395537   0.6137094   0.8912030
6-24 months                   ki1000108-IRC              INDIA                          observed             optimal           1.0038500   0.8822490   1.1422113
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.7575697   1.0501397   2.9415623
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0560034   0.9441883   1.1810602
6-24 months                   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0016739   0.9145845   1.0970562
6-24 months                   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0217962   0.7408594   1.4092653
6-24 months                   ki1135781-COHORTS          INDIA                          observed             optimal           1.0907583   0.9050830   1.3145244
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0574813   0.9731152   1.1491617
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0832147   0.9814013   1.1955906


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0292108   -0.1030431    0.0446214
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                -0.0519114   -0.1035622   -0.0002606
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.1963141    0.0210239    0.3716043
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0435628    0.0024267    0.0846988
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0145332   -0.0004482    0.0295145
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0169268   -0.0138099    0.0476634
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0144960   -0.0027142    0.0317061
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0408259   -0.0895078    0.0078561
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0097185   -0.0372725    0.0178355
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0177162   -0.0055896    0.0410221
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0008011   -0.0128095    0.0144117
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.1117404   -0.2220984   -0.0013824
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.1051811   -0.0228891    0.2332513
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0071543   -0.0079190    0.0222276
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0111037   -0.0060084    0.0282158
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0217627   -0.0004192    0.0439445
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0054387   -0.0143459    0.0252234
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0076922   -0.0201501    0.0355345
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0012607   -0.0157333    0.0182547
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0079850   -0.0017619    0.0177318
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0913025   -0.1561875   -0.0264175
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0012194   -0.0396861    0.0421249
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0566837    0.0170116    0.0963559
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0084428   -0.0084339    0.0253196
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0005427   -0.0289485    0.0300340
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0040847   -0.0561835    0.0643529
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0109730   -0.0115899    0.0335359
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0145107   -0.0064785    0.0355000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0131867   -0.0025506    0.0289239


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.0660089   -0.2468984    0.0886387
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          optimal              NA                -0.0970842   -0.1979963   -0.0046724
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       optimal              NA                 0.4485480   -0.1405144    0.7333665
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3041326   -0.0456779    0.5369210
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0735516   -0.0054036    0.1463064
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0454336   -0.0407530    0.1244830
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.2366316   -0.1061277    0.4731790
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.2057199   -0.4798361    0.0176207
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0474262   -0.1908811    0.0787479
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0568990   -0.0210920    0.1289331
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0044321   -0.0737839    0.0769507
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.3637040   -0.7746158   -0.0479387
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          optimal              NA                 0.3024976   -0.1815758    0.5882536
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2679287   -0.5587810    0.6561875
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.1291960   -0.0940419    0.3068824
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1591138   -0.0187120    0.3058984
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0988514   -0.3459721    0.3966675
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0875340   -0.2906096    0.3548830
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0129226   -0.1776521    0.1726573
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.1028719   -0.0316738    0.2198709
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                -0.3521669   -0.6294358   -0.1220788
6-24 months                   ki1000108-IRC              INDIA                          optimal              NA                 0.0038352   -0.1334668    0.1245053
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.4310325    0.0477458    0.6600446
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0530334   -0.0591107    0.1533031
6-24 months                   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0016711   -0.0933926    0.0884697
6-24 months                   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0213313   -0.3497837    0.2904104
6-24 months                   ki1135781-COHORTS          INDIA                          optimal              NA                 0.0832066   -0.1048710    0.2392686
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0543568   -0.0276276    0.1298004
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0768220   -0.0189512    0.1635933
