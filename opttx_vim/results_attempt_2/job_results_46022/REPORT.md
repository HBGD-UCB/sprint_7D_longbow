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
![](/tmp/ab297911-e1c8-4e59-b93f-ede0102d2843/5433ff5a-4859-4769-bfb6-6bda946642e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/ab297911-e1c8-4e59-b93f-ede0102d2843/5433ff5a-4859-4769-bfb6-6bda946642e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->


## Results Table

### Parameter: TSM


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                0.5697121   0.5041437   0.6352805
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5890812   0.5293552   0.6488073
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.3427333   0.2676084   0.4178583
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2866854   0.2622978   0.3110729
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                0.4995594   0.4636698   0.5354490
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                0.1400402   0.1204671   0.1596133
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7622993   0.7201768   0.8044217
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                0.3146935   0.2737816   0.3556054
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6678946   0.6393643   0.6964249
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2550722   0.2410825   0.2690619
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                0.3067961   0.1895876   0.4240047
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                0.3435444   0.2434336   0.4436551
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                0.3952887   0.1441270   0.6464503
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.1424859   0.0893425   0.1956293
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.1680223   0.1365006   0.1995441
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                0.2080251   0.1789682   0.2370820
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                0.0720961   0.0580592   0.0861331
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.2170094   0.1752874   0.2587313
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                0.0624972   0.0385467   0.0864476
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.1567745   0.1355216   0.1780273
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.1314066   0.1218766   0.1409366
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                0.4923909   0.3832995   0.6014822
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                0.5150036   0.4691553   0.5608519
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                0.2317244   0.1567048   0.3067440
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                0.2531317   0.2166314   0.2896320
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                0.3879724   0.3427813   0.4331635
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                0.0829221   0.0665529   0.0992912
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                0.7237490   0.6223501   0.8251479
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                0.2464923   0.2090523   0.2839324
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                0.6546795   0.6173282   0.6920309
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                0.2276592   0.2048379   0.2504805


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


agecat                       studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          observed             optimal           1.0449276   0.9767075   1.1179127
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9673415   0.9129594   1.0249631
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1483218   0.9486680   1.3899941
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           1.0393044   0.9858734   1.0956312
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         observed             optimal           1.0192410   0.9684402   1.0727066
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        observed             optimal           1.1409423   1.0628087   1.2248200
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0131642   0.9777524   1.0498585
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          observed             optimal           0.9548486   0.8670291   1.0515633
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9974600   0.9631835   1.0329563
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0542214   1.0094709   1.1009558
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          observed             optimal           1.2371800   0.8791083   1.7410988
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          observed             optimal           0.9901952   0.7797566   1.2574262
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       observed             optimal           1.5239739   0.8230076   2.8219624
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.3327128   0.9559729   1.8579222
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8016659   0.6846234   0.9387180
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         observed             optimal           1.1857545   1.0691871   1.3150306
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        observed             optimal           1.2660648   1.1606906   1.3810054
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.1434139   0.9997989   1.3076584
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          observed             optimal           1.0998863   0.8003268   1.5115700
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    observed             optimal           1.2102736   1.0840965   1.3511363
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           1.0837794   1.0264251   1.1443385
6-24 months                  ki1000108-IRC              INDIA                          observed             optimal           0.7852840   0.6543579   0.9424062
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          observed             optimal           0.9804795   0.9116190   1.0545416
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     observed             optimal           1.1343036   0.8532914   1.5078607
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   observed             optimal           0.8985583   0.8032217   1.0052107
6-24 months                  ki1101329-Keneba           GAMBIA                         observed             optimal           1.0096112   0.9211561   1.1065602
6-24 months                  ki1119695-PROBIT           BELARUS                        observed             optimal           0.9267865   0.7930642   1.0830564
6-24 months                  ki1135781-COHORTS          GUATEMALA                      observed             optimal           1.0349372   0.9098121   1.1772704
6-24 months                  ki1135781-COHORTS          INDIA                          observed             optimal           1.0540751   0.9406014   1.1812382
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    observed             optimal           0.9844308   0.9376454   1.0335506
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     observed             optimal           0.9955250   0.9147940   1.0833805


### Parameter: PAR


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0255958   -0.0127431    0.0639347
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0192385   -0.0529689    0.0144920
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0508348   -0.0144746    0.1161442
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0112680   -0.0038660    0.0264020
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0096120   -0.0159139    0.0351380
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0197376    0.0095889    0.0298863
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0100350   -0.0170667    0.0371368
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0142088   -0.0446213    0.0162037
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0016964   -0.0250497    0.0216568
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0138304    0.0027650    0.0248958
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.0727659   -0.0319807    0.1775125
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                -0.0033684   -0.0854913    0.0787545
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.2071210   -0.0349803    0.4492222
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0474069   -0.0002723    0.0950861
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0333245   -0.0599337   -0.0067154
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0386416    0.0170259    0.0602573
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.0191822    0.0133994    0.0249651
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0311222    0.0018823    0.0603620
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0062426   -0.0136387    0.0261239
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.0329655    0.0155968    0.0503342
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0110092    0.0038564    0.0181619
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.1057242   -0.1939111   -0.0175373
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0100531   -0.0472394    0.0271332
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.0311214   -0.0348676    0.0971104
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.0256781   -0.0541190    0.0027628
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0037289   -0.0318415    0.0392992
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0060710   -0.0186780    0.0065360
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0252857   -0.0679311    0.1185025
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0133291   -0.0147586    0.0414168
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0101928   -0.0420590    0.0216733
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0010188   -0.0202748    0.0182372


### Parameter: PAF


agecat                       studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
---------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months (no birth st.)   ki1000108-IRC              INDIA                          optimal              NA                 0.0429959   -0.0238480    0.1054758
0-24 months (no birth st.)   ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0337610   -0.0953390    0.0243551
0-24 months (no birth st.)   ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1291639   -0.0541096    0.2805725
0-24 months (no birth st.)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                 0.0378180   -0.0143290    0.0872841
0-24 months (no birth st.)   ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0188778   -0.0325883    0.0677787
0-24 months (no birth st.)   ki1119695-PROBIT           BELARUS                        optimal              NA                 0.1235315    0.0590969    0.1835535
0-24 months (no birth st.)   ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0129931   -0.0227538    0.0474906
0-24 months (no birth st.)   ki1135781-COHORTS          INDIA                          optimal              NA                -0.0472864   -0.1533639    0.0490349
0-24 months (no birth st.)   ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0025464   -0.0382237    0.0319048
0-24 months (no birth st.)   kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0514327    0.0093820    0.0916983
0-6 months (no birth st.)    ki1000108-CMC-V-BCS-2002   INDIA                          optimal              NA                 0.1917102   -0.1375163    0.4256501
0-6 months (no birth st.)    ki1000108-IRC              INDIA                          optimal              NA                -0.0099019   -0.2824514    0.2047247
0-6 months (no birth st.)    ki1000109-EE               PAKISTAN                       optimal              NA                 0.3438208   -0.2150557    0.6456367
0-6 months (no birth st.)    ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.2496508   -0.0460548    0.4617643
0-6 months (no birth st.)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.2474024   -0.4606571   -0.0652826
0-6 months (no birth st.)    ki1101329-Keneba           GAMBIA                         optimal              NA                 0.1566551    0.0647100    0.2395614
0-6 months (no birth st.)    ki1119695-PROBIT           BELARUS                        optimal              NA                 0.2101510    0.1384440    0.2758899
0-6 months (no birth st.)    ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.1254261   -0.0002012    0.2352743
0-6 months (no birth st.)    ki1135781-COHORTS          INDIA                          optimal              NA                 0.0908152   -0.2494896    0.3384362
0-6 months (no birth st.)    ki1135781-COHORTS          PHILIPPINES                    optimal              NA                 0.1737405    0.0775729    0.2598822
0-6 months (no birth st.)    kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                 0.0773030    0.0257448    0.1261327
6-24 months                  ki1000108-IRC              INDIA                          optimal              NA                -0.2734247   -0.5282157   -0.0611136
6-24 months                  ki1000304b-SAS-CompFeed    INDIA                          optimal              NA                -0.0199091   -0.0969495    0.0517207
6-24 months                  ki1017093c-NIH-Crypto      BANGLADESH                     optimal              NA                 0.1184018   -0.1719326    0.3368088
6-24 months                  ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   optimal              NA                -0.1128938   -0.2449862    0.0051837
6-24 months                  ki1101329-Keneba           GAMBIA                         optimal              NA                 0.0095197   -0.0855923    0.0962986
6-24 months                  ki1119695-PROBIT           BELARUS                        optimal              NA                -0.0789971   -0.2609319    0.0766871
6-24 months                  ki1135781-COHORTS          GUATEMALA                      optimal              NA                 0.0337578   -0.0991280    0.1505775
6-24 months                  ki1135781-COHORTS          INDIA                          optimal              NA                 0.0513010   -0.0631496    0.1534307
6-24 months                  ki1135781-COHORTS          PHILIPPINES                    optimal              NA                -0.0158154   -0.0665012    0.0324615
6-24 months                  kiGH5241-JiVitA-3          BANGLADESH                     optimal              NA                -0.0044951   -0.0931423    0.0769633
