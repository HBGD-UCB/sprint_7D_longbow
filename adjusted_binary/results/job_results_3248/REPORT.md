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

**Outcome Variable:** ever_stunted

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
* impsan
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impsan

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat                       studyid                    country                        gagebrth             ever_stunted   n_cell       n
---------------------------  -------------------------  -----------------------------  ------------------  -------------  -------  ------
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0       18     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1      164     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0        3     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1       30     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0        7     278
0-24 months (no birth st.)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1       56     278
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term               0       95     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term               1      126     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm                         0        9     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm                         1       23     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term                      0       34     341
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term                      1       54     341
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               0        6     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               1       30     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         0       28     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         1      292     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      0       32     498
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      1      110     498
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0        8    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1       16    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0      422    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      550    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       35    1081
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term                      1       50    1081
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0      105     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1       51     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      110     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       89     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      181     653
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1      117     653
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0      944    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      379    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      204    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       97    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      327    2101
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1      150    2101
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term               0      413    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term               1      394    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm                         0       78    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm                         1      135    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term                      0      285    1581
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term                      1      276    1581
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term               0     7390   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term               1     1194   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm                         0      407   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm                         1      157   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term                      0     6270   16742
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term                      1     1324   16742
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term               0       94     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term               1      303     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm                         0       23     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm                         1       79     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term                      0       41     694
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term                      1      154     694
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term               0      395    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term               1      160    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm                         0      181    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm                         1       88    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term                      0      290    1238
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term                      1      124    1238
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term               0      395    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term               1      735    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      185    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm                         1      380    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term                      0      370    2846
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term                      1      781    2846
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0    11979   27190
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     4130   27190
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     2792   27190
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1     1136   27190
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     5107   27190
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1     2046   27190
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0      108     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1       71     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0       19     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1       14     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0       43     274
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1       19     274
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term               0      151     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term               1       70     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm                         0       19     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm                         1       13     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term                      0       55     341
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term                      1       33     341
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               0       22     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               1       14     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         0      100     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         1      220     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      0       76     498
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      1       66     498
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0       22    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1        2    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0      781    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      191    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       67    1080
0-6 months (no birth st.)    ki1000304b-SAS-CompFeed    INDIA                          Early term                      1       17    1080
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0      134     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1       22     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      150     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       49     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      245     653
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1       53     653
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0     1155    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      168    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      257    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       44    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      406    2101
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       71    2101
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term               0      596    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term               1      160    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm                         0      129    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm                         1       77    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term                      0      405    1500
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term                      1      133    1500
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term               0     7967   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term               1      616   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm                         0      439   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm                         1      125   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term                      0     6806   16740
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term                      1      787   16740
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term               0      296     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term               1       82     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm                         0       70     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm                         1       31     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term                      0      137     669
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term                      1       53     669
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term               0      512    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term               1       37    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm                         0      242    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm                         1       23    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term                      0      384    1222
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term                      1       24    1222
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term               0      957    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term               1      173    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      425    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm                         1      140    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term                      0      924    2846
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term                      1      227    2846
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0    14074   27188
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     2034   27188
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     3260   27188
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      668   27188
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     5982   27188
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1     1170   27188
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               0       18     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term               1       93     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         0        3     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                         1       16     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      0        7     175
6-24 months                  ki1000108-CMC-V-BCS-2002   INDIA                          Early term                      1       38     175
6-24 months                  ki1000108-IRC              INDIA                          Full or late term               0       95     225
6-24 months                  ki1000108-IRC              INDIA                          Full or late term               1       56     225
6-24 months                  ki1000108-IRC              INDIA                          Preterm                         0        9     225
6-24 months                  ki1000108-IRC              INDIA                          Preterm                         1       10     225
6-24 months                  ki1000108-IRC              INDIA                          Early term                      0       34     225
6-24 months                  ki1000108-IRC              INDIA                          Early term                      1       21     225
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               0        6     194
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               1       16     194
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         0       24     194
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         1       72     194
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      0       32     194
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      1       44     194
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term               0        7     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term               1       14     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm                         0      361     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm                         1      360     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term                      0       32     808
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term                      1       34     808
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               0       96     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term               1       29     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         0      102     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                         1       40     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      0      175     506
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term                      1       64     506
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               0      738    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term               1      211    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         0      166    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                         1       53    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      0      261    1508
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                      1       79    1508
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term               0      394    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term               1      247    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm                         0       66    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm                         1       66    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term                      0      273    1205
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term                      1      159    1205
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term               0     7256   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term               1      579   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm                         0      397   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm                         1       32   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term                      0     6149   14951
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term                      1      538   14951
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term               0       77     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term               1      228     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm                         0       20     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm                         1       49     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term                      0       33     518
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term                      1      111     518
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term               0      381    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term               1      124    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm                         0      171    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm                         1       66    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Early term                      0      277    1120
6-24 months                  ki1135781-COHORTS          INDIA                          Early term                      1      101    1120
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term               0      317    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term               1      562    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm                         0      137    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm                         1      240    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term                      0      294    2104
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term                      1      554    2104
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     7233   15236
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     2096   15236
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     1550   15236
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      480   15236
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     3001   15236
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      876   15236


The following strata were considered:

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months (no birth st.), studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months (no birth st.), studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months (no birth st.), studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months (no birth st.), studyid: kiGH5241-JiVitA-3, country: BANGLADESH
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

* agecat: 0-24 months (no birth st.), studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/a65cbea9-4c68-4f88-81d7-40b08de8d8ce/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a65cbea9-4c68-4f88-81d7-40b08de8d8ce/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a65cbea9-4c68-4f88-81d7-40b08de8d8ce/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a65cbea9-4c68-4f88-81d7-40b08de8d8ce/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5701357   0.5047709   0.6355006
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm              NA                0.7187500   0.5627423   0.8747577
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term           NA                0.6136364   0.5117542   0.7155185
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.8333333   0.6608213   1.0058454
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm              NA                0.9125000   0.8686285   0.9563715
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term           NA                0.7746479   0.6772665   0.8720292
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.6666667   0.3663101   0.9670232
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.5658436   0.5093009   0.6223863
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.5882353   0.5185374   0.6579332
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.3058956   0.2426802   0.3691110
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.4350721   0.3728886   0.4972556
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.3917257   0.3399614   0.4434901
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2851537   0.2609258   0.3093815
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2995489   0.2508356   0.3482623
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.3051172   0.2650521   0.3451822
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.4859043   0.4519388   0.5198698
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.6401707   0.5807266   0.6996149
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.4939470   0.4535114   0.5343827
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.1389713   0.1190431   0.1588995
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2974263   0.2636832   0.3311695
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.1734996   0.1521123   0.1948868
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7622376   0.7204211   0.8040541
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7753995   0.6946903   0.8561086
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7911326   0.7339653   0.8482999
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2868670   0.2501979   0.3235362
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.3152006   0.2621549   0.3682464
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2965394   0.2538078   0.3392710
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6477644   0.6205372   0.6749917
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6682606   0.6303665   0.7061548
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6808098   0.6541157   0.7075040
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2574389   0.2465808   0.2682970
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2844058   0.2637061   0.3051055
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2843275   0.2687289   0.2999261
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3966480   0.3248515   0.4684446
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.4242424   0.2553104   0.5931744
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.3064516   0.1914866   0.4214166
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3227544   0.2615975   0.3839113
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm              NA                0.4703433   0.3123328   0.6283538
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term           NA                0.3998530   0.3008280   0.4988779
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.3717188   0.1881210   0.5553166
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm              NA                0.6795451   0.6096874   0.7494027
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term           NA                0.4356608   0.3317006   0.5396209
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.1453269   0.0940156   0.1966382
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2449862   0.1891788   0.3007936
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1795638   0.1370285   0.2220991
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1264072   0.1085654   0.1442490
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1394727   0.1013915   0.1775540
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1464951   0.1153745   0.1776158
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.2069515   0.1785054   0.2353975
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3737756   0.3135987   0.4339525
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.2448787   0.2097456   0.2800119
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0721063   0.0583365   0.0858762
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.2407923   0.1998285   0.2817561
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.1038371   0.0885937   0.1190804
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.2169108   0.1753315   0.2584902
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.3069414   0.2169306   0.3969522
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.2789900   0.2151739   0.3428062
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0667625   0.0461207   0.0874042
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0865219   0.0532764   0.1197673
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0588337   0.0362951   0.0813724
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.1528764   0.1320930   0.1736598
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2424738   0.2075562   0.2773914
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.1965796   0.1738338   0.2193254
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1259255   0.1177641   0.1340869
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1668619   0.1495229   0.1842010
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1629897   0.1498811   0.1760982
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                0.3708609   0.2936452   0.4480766
6-24 months                  ki1000108-IRC              INDIA                          Preterm              NA                0.5263158   0.3013035   0.7513281
6-24 months                  ki1000108-IRC              INDIA                          Early term           NA                0.3818182   0.2531354   0.5105010
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term    NA                0.7272727   0.4627184   0.9918271
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm              NA                0.7500000   0.6268659   0.8731341
6-24 months                  ki1000109-EE               PAKISTAN                       Early term           NA                0.5789474   0.4211520   0.7367427
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.6666667   0.3925625   0.9407709
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.4993065   0.4553857   0.5432274
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.5151515   0.4536984   0.5766046
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.2263092   0.1569476   0.2956709
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.2859161   0.2144419   0.3573903
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.2662852   0.2112034   0.3213669
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.2212561   0.1949399   0.2475723
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2260182   0.1731205   0.2789159
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2246711   0.1812184   0.2681237
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3841327   0.3467483   0.4215170
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm              NA                0.5028190   0.4211710   0.5844670
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term           NA                0.3695208   0.3245519   0.4144897
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0725290   0.0594145   0.0856434
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0823087   0.0602500   0.1043674
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term           NA                0.0800983   0.0625303   0.0976664
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.7475902   0.6990195   0.7961608
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.7146839   0.6129297   0.8164382
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.7738406   0.7065745   0.8411067
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                0.2428930   0.2057768   0.2800092
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm              NA                0.2646833   0.2083459   0.3210206
6-24 months                  ki1135781-COHORTS          INDIA                          Early term           NA                0.2605128   0.2163341   0.3046915
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.6362417   0.6050675   0.6674159
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.6383387   0.5908240   0.6858534
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.6556882   0.6239819   0.6873945
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.2263898   0.2123311   0.2404484
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.2271739   0.1994589   0.2548890
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.2205340   0.1996311   0.2414369


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          NA                   NA                0.5953079   0.5431354   0.6474804
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       NA                   NA                0.8674699   0.8252704   0.9096693
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5698427   0.5147261   0.6249593
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2979534   0.2783922   0.3175146
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.5091714   0.4845214   0.5338214
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7723343   0.7411143   0.8035543
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          NA                   NA                0.3004847   0.2749357   0.3260336
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6661982   0.6488700   0.6835264
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2689224   0.2600986   0.2777462
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3795620   0.3219972   0.4371269
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          NA                   NA                0.3401760   0.2898173   0.3905347
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       NA                   NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1346978   0.1200961   0.1492994
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.2466667   0.2248446   0.2684887
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2481315   0.2153770   0.2808861
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0687398   0.0545482   0.0829313
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.1897400   0.1753322   0.2041478
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1424158   0.1357405   0.1490910
6-24 months                  ki1000108-IRC              INDIA                          NA                   NA                0.3866667   0.3228931   0.4504402
6-24 months                  ki1000109-EE               PAKISTAN                       NA                   NA                0.6804124   0.5871313   0.7736934
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.5049505   0.4617314   0.5481695
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2274536   0.2062895   0.2486177
6-24 months                  ki1101329-Keneba           GAMBIA                         NA                   NA                0.3917012   0.3641291   0.4192734
6-24 months                  ki1119695-PROBIT           BELARUS                        NA                   NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.7490347   0.7116615   0.7864080
6-24 months                  ki1135781-COHORTS          INDIA                          NA                   NA                0.2598214   0.2341270   0.2855158
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.6444867   0.6240287   0.6649447
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2265687   0.2152795   0.2378578


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level        estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2606647   0.9862620   1.611413
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0762987   0.8796426   1.316920
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.0950000   0.8853522   1.354292
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term           Full or late term    0.9295775   0.7296287   1.184321
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.8487654   0.5693739   1.265254
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.8823529   0.5595601   1.391355
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.4222895   1.1089027   1.824243
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.2805864   1.0050855   1.631604
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0504824   0.8744093   1.262010
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0700096   0.9151424   1.251085
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3174831   1.1736275   1.478972
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.0165520   0.9132804   1.131501
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    2.1401999   1.8103368   2.530168
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2484564   1.1372033   1.370593
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.0172673   0.9044560   1.144149
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0379081   0.9479434   1.136411
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.0987691   0.8908914   1.355152
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0337171   0.8541215   1.251076
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0316414   0.9617873   1.106569
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0510145   0.9928093   1.112632
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1047506   1.0178769   1.199039
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.1044465   1.0337038   1.180031
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.0695689   0.6906300   1.656426
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.7726034   0.5093991   1.171804
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Preterm              Full or late term    1.4572794   0.9911038   2.142725
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2388769   0.9071572   1.691896
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.8281159   1.1034706   3.028633
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.1720170   0.6782927   2.025120
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.6857595   1.1070327   2.567029
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.2355854   0.8084894   1.888301
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.1033608   0.8119145   1.499425
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.1589149   0.8987276   1.494428
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.8061030   1.4624254   2.230547
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    1.1832665   0.9708944   1.442092
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    3.3394065   2.6973048   4.134363
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.4400548   1.2424864   1.669039
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.4150581   0.9968380   2.008741
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.2861970   0.9543308   1.733469
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.2959661   0.7926168   2.118966
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.8812400   0.5404391   1.436950
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.5860774   1.3016523   1.932652
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.2858728   1.0764060   1.536102
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.3250842   1.1733439   1.496448
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.2943338   1.1691102   1.432970
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1000108-IRC              INDIA                          Preterm              Full or late term    1.4191729   0.8820972   2.283254
6-24 months                  ki1000108-IRC              INDIA                          Early term           Full or late term    1.0295455   0.6927854   1.530003
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.0312500   0.6918927   1.537054
6-24 months                  ki1000109-EE               PAKISTAN                       Early term           Full or late term    0.7960526   0.5052847   1.254144
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    0.7489598   0.5192679   1.080253
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.7727273   0.4992646   1.195974
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.2633866   0.8511674   1.875243
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.1766430   0.8136418   1.701595
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.0215232   0.7856724   1.328174
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.0154347   0.8092351   1.274176
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.3089723   1.0843375   1.580143
6-24 months                  ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9619614   0.8240515   1.122951
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1348381   0.8489801   1.516947
6-24 months                  ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.1043632   0.9457101   1.289632
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    0.9559836   0.8175250   1.117892
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.0351134   0.9287033   1.153716
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.0897114   0.8396516   1.414242
6-24 months                  ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.0725415   0.8549474   1.345516
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0032959   0.9183608   1.096086
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0305647   0.9626587   1.103261
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.000000
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.0034639   0.8785646   1.146119
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    0.9741342   0.8712200   1.089205


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0251722   -0.0129918   0.0633362
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0341365   -0.1309043   0.1991774
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.0968239   -0.3620298   0.1683819
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0876726    0.0317964   0.1435487
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0127997   -0.0022521   0.0278515
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0232671   -0.0003490   0.0468831
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0208065    0.0142756   0.0273374
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0100967   -0.0167107   0.0369040
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0136176   -0.0136676   0.0409028
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0184337   -0.0024334   0.0393009
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0114835    0.0049576   0.0180094
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0170860   -0.0587204   0.0245484
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0174215   -0.0200449   0.0548880
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.2306908    0.0526305   0.4087512
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0445659   -0.0024352   0.0915670
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0082906   -0.0029792   0.0195604
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0397152    0.0185839   0.0608465
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0191721    0.0134999   0.0248442
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0312207    0.0021010   0.0603404
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0019773   -0.0133801   0.0173348
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0368636    0.0198062   0.0539210
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0164902    0.0110900   0.0218905
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                 0.0158057   -0.0292126   0.0608240
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0468604   -0.2974927   0.2037720
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1617162   -0.4070183   0.0835859
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0365366   -0.0246757   0.0977489
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0061975   -0.0100508   0.0224458
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0075686   -0.0178044   0.0329416
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0043221   -0.0012145   0.0098586
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0014446   -0.0295979   0.0324871
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0169284   -0.0108438   0.0447006
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0082450   -0.0152934   0.0317834
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0001789   -0.0080240   0.0083818


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0422843   -0.0242259   0.1044755
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0393519   -0.1711873   0.2120433
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.1699134   -0.7277410   0.2078110
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2227633    0.0683318   0.3515966
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0429586   -0.0088866   0.0921396
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0456960   -0.0018630   0.0909973
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1302216    0.0857076   0.1725684
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0130729   -0.0222764   0.0471999
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0453188   -0.0498738   0.1318802
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0276700   -0.0041770   0.0585070
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0427019    0.0181152   0.0666728
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0450150   -0.1607351   0.0591683
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0512133   -0.0654151   0.1550748
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.3829468    0.0046003   0.6174857
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.2346899   -0.0526092   0.4435736
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0615497   -0.0257661   0.1414329
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.1610076    0.0714467   0.2419302
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.2100394    0.1408203   0.2736818
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1258233    0.0007938   0.2352079
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0287653   -0.2223418   0.2282871
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.1942847    0.1000635   0.2786413
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.1157895    0.0771993   0.1527659
6-24 months                  ki1000108-IRC              INDIA                          Full or late term    NA                 0.0408769   -0.0829571   0.1505508
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term    NA                -0.0688705   -0.5092665   0.2430203
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                -0.3202614   -0.8838898   0.0747388
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.1390039   -0.1272548   0.3423721
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0272474   -0.0468484   0.0960986
6-24 months                  ki1101329-Keneba           GAMBIA                         Full or late term    NA                 0.0193223   -0.0476498   0.0820133
6-24 months                  ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0562395   -0.0155194   0.1229277
6-24 months                  ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0019286   -0.0403873   0.0425234
6-24 months                  ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0651540   -0.0480311   0.1661154
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0127931   -0.0244156   0.0486504
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0007896   -0.0360801   0.0363473
