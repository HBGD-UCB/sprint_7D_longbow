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



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/e38d8d54-886b-4885-ad5b-3c67cf5f1af8/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e38d8d54-886b-4885-ad5b-3c67cf5f1af8/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5699311   0.5045663   0.6352960
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              NA                0.7807879   0.6833990   0.8781767
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5661784   0.5096384   0.6227184
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2679010   0.2054902   0.3303117
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2869940   0.2627599   0.3112282
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4857597   0.4516021   0.5199172
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1383923   0.1184658   0.1583189
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7631483   0.7213306   0.8049660
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.2893609   0.2526236   0.3260982
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6474789   0.6201848   0.6747731
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2230185   0.2110188   0.2350182
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3669350   0.2679104   0.4659597
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.2266758   0.1180195   0.3353321
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.2741949   0.1090736   0.4393162
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.0969439   0.0549502   0.1389376
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.0769549   0.0568073   0.0971025
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2084509   0.1797752   0.2371266
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0723307   0.0585671   0.0860943
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2172828   0.1757128   0.2588529
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0231639   0.0094804   0.0368475
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1140590   0.0958067   0.1323113
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1178244   0.1096978   0.1259510
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.3710712   0.2938554   0.4482869
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              NA                0.5724404   0.4146367   0.7302441
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.4995670   0.4556483   0.5434858
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2339146   0.1638706   0.3039585
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2226144   0.1963723   0.2488564
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3710121   0.3259230   0.4161013
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0726458   0.0594842   0.0858075
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7095034   0.6098259   0.8091808
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2466606   0.2095254   0.2837958
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.5471272   0.5081640   0.5860904
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1416563   0.1234634   0.1598491


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5948594   0.5426869   0.6470320
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       observed             NA                0.8682431   0.8260437   0.9104426
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5701321   0.5150155   0.6252487
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3949803   0.3574808   0.4324798
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2981122   0.2785510   0.3176734
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5091056   0.4844556   0.5337556
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1587664   0.1398100   0.1777227
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7724985   0.7412785   0.8037185
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.3006773   0.2751283   0.3262262
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6658361   0.6485080   0.6831643
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2694499   0.2606261   0.2782736
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3761340   0.3185692   0.4336989
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3411994   0.2908407   0.3915581
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6039589   0.5430493   0.6648686
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1906077   0.1605019   0.2207134
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1349199   0.1203182   0.1495216
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2469101   0.2250880   0.2687322
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0910941   0.0779745   0.1042136
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2481728   0.2154182   0.2809273
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0695020   0.0553104   0.0836935
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1904345   0.1760267   0.2048423
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1426956   0.1360204   0.1493709
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3870446   0.3232710   0.4508182
6-24 months                  ki1000109-EE               PAKISTAN                       observed             NA                0.6797911   0.5865101   0.7730722
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5053939   0.4621748   0.5486129
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2633841   0.2249928   0.3017753
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2275402   0.2063761   0.2487043
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3921010   0.3645289   0.4196732
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0760229   0.0620576   0.0899883
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7494929   0.7121196   0.7868661
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2595422   0.2338478   0.2852367
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6445388   0.6240808   0.6649968
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2273206   0.2160314   0.2386097


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              observed          0.9580938   0.8958567   1.0246547
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       optimal              observed          0.8992733   0.8140359   0.9934360
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9930653   0.9771069   1.0092844
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.6782641   0.5527975   0.8322076
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9627048   0.9135647   1.0144882
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              observed          0.9541432   0.9085916   1.0019786
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              observed          0.8716729   0.8291410   0.9163865
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9878962   0.9537748   1.0232383
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              observed          0.9623637   0.8756834   1.0576241
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.9724299   0.9414998   1.0043761
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8276809   0.7955245   0.8611370
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              observed          0.9755433   0.7678014   1.2394934
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              observed          0.6643500   0.4255963   1.0370414
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              observed          0.4539959   0.2538536   0.8119335
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.5086046   0.3412152   0.7581099
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.5703745   0.4515241   0.7205088
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              observed          0.8442381   0.7625278   0.9347043
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              observed          0.7940224   0.7307679   0.8627520
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.8755305   0.7662068   1.0004528
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              observed          0.3332842   0.1923594   0.5774522
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.5989408   0.5217021   0.6876149
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.8257042   0.7875824   0.8656712
6-24 months                  ki1000108-IRC              INDIA                          optimal              observed          0.9587297   0.8491600   1.0824376
6-24 months                  ki1000109-EE               PAKISTAN                       optimal              observed          0.8420828   0.6814064   1.0406468
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              observed          0.9884707   0.9709794   1.0062772
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              observed          0.8881121   0.6827086   1.1553144
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              observed          0.9783519   0.9096945   1.0521911
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              observed          0.9462156   0.8584025   1.0430119
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              observed          0.9555779   0.8875125   1.0288634
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              observed          0.9466446   0.8312662   1.0780373
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              observed          0.9503680   0.8492418   1.0635361
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              observed          0.8488663   0.7996113   0.9011552
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              observed          0.6231564   0.5555674   0.6989682
