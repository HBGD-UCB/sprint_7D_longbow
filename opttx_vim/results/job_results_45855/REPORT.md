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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** gagebrth

**Adjustment Set:**

* arm
* sex
* W_mage
* W_fage
* meducyrs
* feducyrs
* single
* brthmon
* W_parity
* delta_W_mage
* delta_W_fage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon
* delta_W_parity

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
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               0        3     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Full or late term               1       15     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         0       14     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Preterm                         1      146     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      0       16     249
0-24 months (no birth st.)   ki1000109-EE               PAKISTAN                       Early term                      1       55     249
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
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     5990   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     2065   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     1396   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      568   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     2554   13596
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1     1023   13596
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
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               0       11     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Full or late term               1        7     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         0       50     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Preterm                         1      110     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      0       38     249
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       Early term                      1       33     249
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
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     7037   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     1017   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0     1630   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      334   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     2991   13594
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      585   13594
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
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               0        3      97
6-24 months                  ki1000109-EE               PAKISTAN                       Full or late term               1        8      97
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         0       12      97
6-24 months                  ki1000109-EE               PAKISTAN                       Preterm                         1       36      97
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      0       16      97
6-24 months                  ki1000109-EE               PAKISTAN                       Early term                      1       22      97
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
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               0     3617    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Full or late term               1     1048    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         0      775    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Preterm                         1      241    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      0     1501    7620
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     Early term                      1      438    7620


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
* agecat: 0-24 months (no birth st.), studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months (no birth st.), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN

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
![](/tmp/d8972913-bd7c-4fc4-bf01-d5639f7c7daa/ddd06caf-894b-4838-bb71-4b7c931269be/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/d8972913-bd7c-4fc4-bf01-d5639f7c7daa/ddd06caf-894b-4838-bb71-4b7c931269be/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5701335   0.5045631   0.6357040
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5890812   0.5293552   0.6488073
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3402233   0.2668971   0.4135495
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2867360   0.2623606   0.3111115
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.5034391   0.4671447   0.5397336
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1406083   0.1212647   0.1599519
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7636768   0.7216127   0.8057409
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.3131309   0.2723279   0.3539339
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6486897   0.6212405   0.6761388
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2531981   0.2388243   0.2675719
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3064882   0.1891978   0.4237786
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3106679   0.2286464   0.3926895
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.4917389   0.2639714   0.7195064
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1268910   0.0775917   0.1761902
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1528053   0.1254177   0.1801929
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2079873   0.1789588   0.2370158
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0739021   0.0584480   0.0893561
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2176178   0.1759021   0.2593335
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0632855   0.0388573   0.0877138
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1538393   0.1329408   0.1747377
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1311758   0.1214859   0.1408657
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.4497580   0.3575580   0.5419580
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5150036   0.4691553   0.5608519
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2295882   0.1553667   0.3038096
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2339662   0.2046964   0.2632360
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.4018631   0.3578417   0.4458845
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0865820   0.0657374   0.1074266
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7704491   0.6791160   0.8617822
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2460704   0.2086175   0.2835232
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6667753   0.6275852   0.7059654
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2145743   0.1939419   0.2352067


### Parameter: E(Y)


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             NA                0.5953079   0.5431354   0.6474804
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5698427   0.5147261   0.6249593
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.3935681   0.3560687   0.4310676
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2979534   0.2783922   0.3175146
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             NA                0.5091714   0.4845214   0.5338214
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             NA                0.1597778   0.1408215   0.1787342
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7723343   0.7411143   0.8035543
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             NA                0.3004847   0.2749357   0.3260336
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6661982   0.6488700   0.6835264
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2689026   0.2600803   0.2777249
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             NA                0.3795620   0.3219972   0.4371269
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             NA                0.3401760   0.2898173   0.3905347
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             NA                0.6024096   0.5415000   0.6633193
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.1898928   0.1597870   0.2199986
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.1346978   0.1200961   0.1492994
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             NA                0.2466667   0.2248446   0.2684887
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             NA                0.0912784   0.0781588   0.1043979
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             NA                0.2481315   0.2153770   0.2808861
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             NA                0.0687398   0.0545482   0.0829313
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.1897400   0.1753322   0.2041478
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.1424158   0.1357405   0.1490910
6-24 months                  ki1000108-IRC              INDIA                          observed             NA                0.3866667   0.3228931   0.4504402
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             NA                0.5049505   0.4617314   0.5481695
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             NA                0.2628458   0.2244546   0.3012371
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             NA                0.2274536   0.2062895   0.2486177
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             NA                0.3917012   0.3641291   0.4192734
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             NA                0.0768510   0.0628857   0.0908164
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             NA                0.7490347   0.7116615   0.7864080
6-24 months                  ki1135781-COHORTS          INDIA                          observed             NA                0.2598214   0.2341270   0.2855158
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             NA                0.6444867   0.6240287   0.6649447
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             NA                0.2266404   0.2153534   0.2379275


### Parameter: RR


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.0441552   0.9759346   1.117145
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9673415   0.9129594   1.024963
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1567937   0.9586578   1.395881
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0391207   0.9857710   1.095358
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0113863   0.9602671   1.065227
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.1363326   1.0823891   1.192964
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0113366   0.9760895   1.047856
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           0.9596135   0.8704417   1.057920
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.0269906   0.9941590   1.060906
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0620247   1.0151611   1.111052
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.2384230   0.8793262   1.744167
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           1.0949826   0.8918680   1.344355
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.2250599   0.7848144   1.912263
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.4965037   1.0565090   2.119739
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8814991   0.7611631   1.020860
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1859698   1.0694564   1.315177
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.2351258   1.0877767   1.402435
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1402170   0.9975215   1.303325
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           1.0861844   0.7858701   1.501261
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2333651   1.1042154   1.377620
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0856866   1.0273348   1.147353
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           0.8597216   0.7337066   1.007380
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9804795   0.9116190   1.054542
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1448581   0.8616974   1.521068
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.9721644   0.8925690   1.058858
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           0.9747130   0.8954461   1.060997
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             optimal           0.8876099   0.7230548   1.089615
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             optimal           0.9722054   0.8714856   1.084566
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           1.0558825   0.9420555   1.183463
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9665725   0.9192805   1.016298
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0562327   0.9720107   1.147752


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0251744   -0.0132286   0.0635773
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0192385   -0.0529689   0.0144920
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0533449   -0.0104813   0.1171711
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0112173   -0.0038986   0.0263332
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0057323   -0.0203714   0.0318359
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0191695    0.0124433   0.0258957
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0086575   -0.0184181   0.0357330
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0126463   -0.0432202   0.0179277
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0175085   -0.0035572   0.0385742
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0157045    0.0042852   0.0271239
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0730738   -0.0318043   0.1779520
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0295080   -0.0339732   0.0929893
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.1106707   -0.1078357   0.3291771
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0630018    0.0181155   0.1078882
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0181076   -0.0405495   0.0043343
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0386794    0.0170787   0.0602800
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0173763    0.0081310   0.0266216
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0305137    0.0013045   0.0597229
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0054542   -0.0150443   0.0259528
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0359007    0.0187402   0.0530613
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0112400    0.0039952   0.0184848
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.0630913   -0.1330753   0.0068927
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0100531   -0.0472394   0.0271332
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0332577   -0.0320133   0.0985287
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0065126   -0.0264958   0.0134707
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0101619   -0.0442469   0.0239231
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0097310   -0.0271636   0.0077017
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0214143   -0.1056444   0.0628157
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0137510   -0.0143281   0.0418302
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0222886   -0.0557295   0.0111523
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0120661   -0.0057846   0.0299168


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0422880   -0.0246589   0.1048608
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0337610   -0.0953390   0.0243551
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1355417   -0.0431251   0.2836063
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0376479   -0.0144344   0.0870562
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0112581   -0.0413769   0.0612327
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1199759    0.0761179   0.1617520
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0112095   -0.0244963   0.0456709
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0420862   -0.1488420   0.0547493
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0262812   -0.0058753   0.0574098
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0584023    0.0149346   0.0999518
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1925215   -0.1372343   0.4266603
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                 0.0867434   -0.1212422   0.2561486
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.1837134   -0.2741866   0.4770595
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.3317758    0.0534865   0.5282438
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1344311   -0.3137789   0.0204334
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1568082    0.0649455   0.2396460
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1903659    0.0806937   0.2869543
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1229739   -0.0024846   0.2327317
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0793460   -0.2724749   0.3338935
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1892101    0.0943796   0.2741105
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0789238    0.0266075   0.1284284
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.1631672   -0.3629426   0.0073258
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0199091   -0.0969495   0.0517207
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1265293   -0.1605002   0.3425670
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0286326   -0.1203616   0.0555861
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                -0.0259430   -0.1167618   0.0574902
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                -0.1266210   -0.3830211   0.0822447
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                -0.0285892   -0.1474659   0.0779718
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0529250   -0.0615086   0.1550223
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0345835   -0.0878073   0.0160362
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0532389   -0.0287952   0.1287319
