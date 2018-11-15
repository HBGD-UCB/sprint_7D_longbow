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

agecat                        studyid                    country                        gagebrth             ever_wasted   n_cell       n
----------------------------  -------------------------  -----------------------------  ------------------  ------------  -------  ------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      123     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       90     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       25     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       27     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       46     348
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       37     348
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              0      121     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term              1      128     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        0       16     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm                        1       26     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     0       44     389
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term                     1       54     389
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              0       38     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term              1       12     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        0      264     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm                        1      222     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     0      122     754
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term                     1       96     754
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       19    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        9    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      862    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      496    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       66    1487
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       35    1487
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      152     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       16     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      214     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       47     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      280     754
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       45     754
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1145    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      240    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      253    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       91    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      401    2242
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1      112    2242
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              0      522    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term              1      314    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        0      152    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm                        1      104    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     0      387    1691
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term                     1      212    1691
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              0     7999   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term              1      622   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        0      549   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm                        1       42   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     0     7119   16877
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term                     1      546   16877
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      394     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       54     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        0      105     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       25     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     0      191     809
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term                     1       40     809
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              0      470    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term              1      109    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        0      242    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm                        1       66    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     0      358    1345
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term                     1      100    1345
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      830    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      328    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      434    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      199    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      822    2993
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      380    2993
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    16840   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     3606   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     6616   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1     1366   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     9023   39401
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1950   39401
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      136     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       64     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       36     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       15     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       58     332
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       23     332
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              0      160     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term              1       79     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        0       28     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm                        1       10     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     0       54     371
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term                     1       40     371
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              0       42     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term              1        8     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        0      390     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm                        1       90     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     0      170     746
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term                     1       46     746
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       25    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        3    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0     1170    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      162    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       80    1459
0-6 months (no birth wast)    ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       19    1459
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      162     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1        6     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      255     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1        5     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      312     749
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1        9     749
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0     1270    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      110    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      301    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       42    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      471    2234
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       40    2234
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              0      642    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term              1      110    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        0      202    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm                        1       39    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     0      496    1552
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term                     1       63    1552
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              0     7954   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term              1      552   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        0      546   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm                        1       36   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     0     7095   16657
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term                     1      474   16657
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              0      406     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Full or late term              1        4     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        0      120     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Preterm                        1        2     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     0      208     745
0-6 months (no birth wast)    ki1135781-COHORTS          GUATEMALA                      Early term                     1        5     745
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              0      484    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term              1       49    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        0      262    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm                        1       20    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     0      395    1249
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term                     1       39    1249
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              0     1047    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      103    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      569    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm                        1       60    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     0     1076    2972
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term                     1      117    2972
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    18760   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     1548   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     7384   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      514   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0    10054   39104
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1      844   39104
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              0      164     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term              1       51     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        0       33     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm                        1       19     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     0       63     351
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term                     1       21     351
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              0      177     390
6-24 months                   ki1000108-IRC              INDIA                          Full or late term              1       73     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        0       21     390
6-24 months                   ki1000108-IRC              INDIA                          Preterm                        1       21     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     0       68     390
6-24 months                   ki1000108-IRC              INDIA                          Early term                     1       30     390
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              0       44     750
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term              1        6     750
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        0      318     750
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm                        1      166     750
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     0      140     750
6-24 months                   ki1000109-EE               PAKISTAN                       Early term                     1       76     750
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              0       20    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term              1        7    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        0      865    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm                        1      391    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     0       72    1379
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term                     1       24    1379
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              0      146     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term              1       12     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        0      210     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm                        1       45     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     0      278     730
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term                     1       39     730
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              0      997    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term              1      161    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        0      240    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm                        1       60    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     0      358    1897
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term                     1       81    1897
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              0      546    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term              1      268    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        0      159    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm                        1       82    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     0      399    1635
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term                     1      181    1635
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              0     8403   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term              1       76   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        0      574   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm                        1        6   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     0     7454   16598
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term                     1       85   16598
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              0      376     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term              1       51     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        0       97     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm                        1       24     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     0      185     769
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term                     1       36     769
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              0      510    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term              1       64    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        0      255    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm                        1       48    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     0      387    1327
6-24 months                   ki1135781-COHORTS          INDIA                          Early term                     1       63    1327
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              0      815    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term              1      266    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        0      419    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm                        1      167    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     0      809    2787
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term                     1      311    2787
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              0    11306   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term              1     2241   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        0     4064   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm                        1      908   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     0     5923   25654
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term                     1     1212   25654


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

* agecat: 0-6 months (no birth wast), studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months (no birth wast), studyid: ki1135781-COHORTS, country: GUATEMALA

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
![](/tmp/8cdcd17d-8ff3-49ee-afd8-ac6e1d3485e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/8cdcd17d-8ff3-49ee-afd8-ac6e1d3485e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/8cdcd17d-8ff3-49ee-afd8-ac6e1d3485e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/8cdcd17d-8ff3-49ee-afd8-ac6e1d3485e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat                        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.4225352    0.3561032   0.4889672
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.5192308    0.3832367   0.6552248
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.4457831    0.3386964   0.5528699
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                0.5140562    0.4518970   0.5762155
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              NA                0.6190476    0.4719926   0.7661026
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           NA                0.5510204    0.4524172   0.6496236
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.2400000    0.0723640   0.4076360
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              NA                0.4567901    0.3940762   0.5195040
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           NA                0.4403670    0.3470479   0.5336861
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.3214286    0.0856647   0.5571925
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3652430    0.3139329   0.4165531
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.3465347    0.2741080   0.4189613
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0952381    0.0508206   0.1396556
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1800766    0.1334288   0.2267244
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1384615    0.1008868   0.1760363
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1732852    0.1533473   0.1932231
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2645349    0.2179132   0.3111566
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.2183236    0.1825675   0.2540797
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3755981    0.3427608   0.4084354
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.4062500    0.3460696   0.4664304
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3539232    0.3156178   0.3922286
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0721494    0.0591090   0.0851898
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0710660    0.0386659   0.1034661
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0712329    0.0583673   0.0840985
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1205357    0.0903678   0.1507036
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1923077    0.1245176   0.2600978
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1731602    0.1243348   0.2219855
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1882556    0.1564023   0.2201089
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              NA                0.2142857    0.1684438   0.2601277
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           NA                0.2183406    0.1804917   0.2561895
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2832470    0.2572912   0.3092027
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.3143760    0.2782028   0.3505492
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.3161398    0.2898497   0.3424298
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1763670    0.1679921   0.1847420
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1711351    0.1584146   0.1838555
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1777089    0.1661638   0.1892541
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.3200000    0.2552533   0.3847467
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.2941176    0.1688772   0.4193581
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2839506    0.1856053   0.3822959
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                0.3305439    0.2708252   0.3902627
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              NA                0.2631579    0.1229612   0.4033546
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           NA                0.4255319    0.3254468   0.5256170
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1600000    0.0161000   0.3039000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm              NA                0.1875000    0.1380533   0.2369467
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term           NA                0.2129630    0.1356471   0.2902789
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0357143    0.0076336   0.0637950
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.0192308    0.0025263   0.0359353
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.0280374    0.0099665   0.0461083
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.0797101    0.0654171   0.0940032
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.1224490    0.0877504   0.1571476
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.0782779    0.0549833   0.1015724
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.1462766    0.1210113   0.1715419
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              NA                0.1618257    0.1153131   0.2083383
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           NA                0.1127013    0.0864783   0.1389242
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0648954    0.0521585   0.0776322
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0618557    0.0342981   0.0894132
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           NA                0.0626239    0.0509265   0.0743212
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                0.0919325    0.0673937   0.1164712
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              NA                0.0709220    0.0409501   0.1008939
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           NA                0.0898618    0.0629453   0.1167782
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.0895652    0.0730583   0.1060721
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.0953895    0.0724292   0.1183498
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.0980721    0.0811926   0.1149516
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.0762261    0.0702328   0.0822194
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.0650798    0.0570806   0.0730789
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.0774454    0.0696550   0.0852358
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                0.2372093    0.1802694   0.2941492
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              NA                0.3653846    0.2343167   0.4964525
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           NA                0.2500000    0.1572682   0.3427318
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                0.2920000    0.2355656   0.3484344
6-24 months                   ki1000108-IRC              INDIA                          Preterm              NA                0.5000000    0.3485913   0.6514087
6-24 months                   ki1000108-IRC              INDIA                          Early term           NA                0.3061224    0.2147571   0.3974878
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                0.1200000   -0.0075528   0.2475528
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm              NA                0.3429752    0.2830868   0.4028636
6-24 months                   ki1000109-EE               PAKISTAN                       Early term           NA                0.3518519    0.2616671   0.4420366
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                0.2592593    0.0238559   0.4946626
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              NA                0.3113057    0.2697687   0.3528428
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           NA                0.2500000    0.1619881   0.3380119
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                0.0759494    0.0346135   0.1172852
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              NA                0.1764706    0.1296484   0.2232927
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           NA                0.1230284    0.0868448   0.1592120
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                0.1390328    0.1191004   0.1589652
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              NA                0.2000000    0.1547246   0.2452754
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           NA                0.1845103    0.1482150   0.2208055
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                0.3292383    0.2969454   0.3615313
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              NA                0.3402490    0.2804132   0.4000847
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           NA                0.3120690    0.2743496   0.3497884
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                0.0089633    0.0061435   0.0117831
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              NA                0.0103448   -0.0000468   0.0207365
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           NA                0.0112747    0.0075006   0.0150488
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                0.1194379    0.0886580   0.1502179
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              NA                0.1983471    0.1272513   0.2694429
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           NA                0.1628959    0.1141791   0.2116128
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                0.1114983    0.0857398   0.1372567
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              NA                0.1584158    0.1172878   0.1995439
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           NA                0.1400000    0.1079285   0.1720715
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                0.2460685    0.2203877   0.2717492
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              NA                0.2849829    0.2484281   0.3215378
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           NA                0.2776786    0.2514452   0.3039119
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                0.1654241    0.1556808   0.1751673
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              NA                0.1826227    0.1659403   0.1993050
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           NA                0.1698669    0.1566580   0.1830757


### Parameter: E(Y)


agecat                        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.4425287   0.3902692   0.4947882
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          NA                   NA                0.5347044   0.4850733   0.5843354
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       NA                   NA                0.4376658   0.3875213   0.4878102
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3631473   0.3130392   0.4132554
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1432361   0.1182149   0.1682572
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1975914   0.1811057   0.2140772
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3725606   0.3495097   0.3956116
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0716952   0.0597165   0.0836739
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1470952   0.1226726   0.1715178
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          NA                   NA                0.2044610   0.1828992   0.2260227
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.3030404   0.2865732   0.3195077
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1756808   0.1694214   0.1819403
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.3072289   0.2575285   0.3569293
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          NA                   NA                0.3477089   0.2991827   0.3962350
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       NA                   NA                0.1930295   0.1529228   0.2331362
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0267023   0.0151493   0.0382553
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0859445   0.0743193   0.0975697
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1365979   0.1195068   0.1536891
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0637570   0.0524446   0.0750694
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          NA                   NA                0.0864692   0.0708761   0.1020623
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.0942127   0.0837084   0.1047169
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.0743146   0.0700205   0.0786087
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2592593   0.2133485   0.3051700
6-24 months                   ki1000108-IRC              INDIA                          NA                   NA                0.3179487   0.2716722   0.3642252
6-24 months                   ki1000109-EE               PAKISTAN                       NA                   NA                0.3306667   0.2829875   0.3783458
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3060189   0.2640311   0.3480066
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1591987   0.1427306   0.1756669
6-24 months                   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3247706   0.3020649   0.3474764
6-24 months                   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months                   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1443433   0.1194882   0.1691984
6-24 months                   ki1135781-COHORTS          INDIA                          NA                   NA                0.1318764   0.1136647   0.1500881
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2669537   0.2505274   0.2833801
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1699930   0.1628757   0.1771103


### Parameter: RR


agecat                        studyid                    country                        intervention_level   baseline_level        estimate    ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ------------------  ----------  ----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.2288462   0.9053765   1.6678839
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0550201   0.7917273   1.4058721
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.2042411   0.9224653   1.5720879
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0719069   0.8636986   1.3303072
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.9032922   0.9340145   3.8784420
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.8348624   0.8843059   3.8071892
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.1363116   0.5359720   2.4090883
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    1.0781078   0.5705854   2.0370596
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    1.8908045   1.1090532   3.2235982
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.4538461   0.8475737   2.4937872
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5265867   1.2368416   1.8842082
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.2599090   1.0313694   1.5390904
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0816083   0.9106816   1.2846164
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9422924   0.8199022   1.0829522
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9849838   0.6337804   1.5308031
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9872968   0.8648932   1.1270236
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.5954416   1.0354412   2.4583085
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.4365881   0.9853568   2.0944550
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.1382700   0.8665417   1.4952062
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.1598093   0.9102995   1.4777088
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1099006   0.9580798   1.2857794
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1161276   0.9862163   1.2631517
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.9703348   0.8910249   1.0567041
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0076086   0.9310768   1.0904311
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    0.9191176   0.5736217   1.4727080
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    0.8873457   0.5941417   1.3252433
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Preterm              Full or late term    0.7961359   0.4536025   1.3973299
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Early term           Full or late term    1.2873687   0.9569730   1.7318338
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Preterm              Full or late term    1.1718750   0.4590316   2.9917133
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Early term           Full or late term    1.3310185   0.5046240   3.5107532
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    0.5384615   0.1668478   1.7377569
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    0.7850467   0.2840280   2.1698509
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.5361781   1.0985134   2.1482151
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    0.9820317   0.6938028   1.3900005
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.1062995   0.7911176   1.5470502
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.7704667   0.5766398   1.0294450
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    0.9531600   0.6132841   1.4813917
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Early term           Full or late term    0.9649974   0.8424093   1.1054246
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Preterm              Full or late term    0.7714575   0.4679872   1.2717157
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Early term           Full or late term    0.9774758   0.6544318   1.4599825
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.0650285   0.7865067   1.4421818
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.0949796   0.8509225   1.4090359
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    0.8537726   0.7423862   0.9818711
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0159956   0.8976791   1.1499066
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Preterm              Full or late term    1.5403469   1.0003898   2.3717441
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Early term           Full or late term    1.0539216   0.6775284   1.6394157
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000108-IRC              INDIA                          Preterm              Full or late term    1.7123288   1.1955633   2.4524588
6-24 months                   ki1000108-IRC              INDIA                          Early term           Full or late term    1.0483646   0.7346654   1.4960121
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000109-EE               PAKISTAN                       Preterm              Full or late term    2.8581267   0.9733416   8.3926223
6-24 months                   ki1000109-EE               PAKISTAN                       Early term           Full or late term    2.9320988   0.9824674   8.7506244
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Preterm              Full or late term    1.2007507   0.4570909   3.1543011
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Early term           Full or late term    0.9642857   0.3949159   2.3545441
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Preterm              Full or late term    2.3235294   1.2682049   4.2570321
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Early term           Full or late term    1.6198738   0.8725893   3.0071318
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Preterm              Full or late term    1.4385093   1.1003763   1.8805467
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Early term           Full or late term    1.3270986   1.0403781   1.6928371
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1101329-Keneba           GAMBIA                         Preterm              Full or late term    1.0334427   0.8449595   1.2639705
6-24 months                   ki1101329-Keneba           GAMBIA                         Early term           Full or late term    0.9478513   0.8112195   1.1074956
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1119695-PROBIT           BELARUS                        Preterm              Full or late term    1.1541289   0.4648563   2.8654305
6-24 months                   ki1119695-PROBIT           BELARUS                        Early term           Full or late term    1.2578713   0.8760389   1.8061302
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Preterm              Full or late term    1.6606709   1.0679649   2.5823207
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Early term           Full or late term    1.3638541   0.9190002   2.0240453
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          INDIA                          Preterm              Full or late term    1.4207921   1.0036963   2.0112162
6-24 months                   ki1135781-COHORTS          INDIA                          Early term           Full or late term    1.2556250   0.9069109   1.7384224
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Preterm              Full or late term    1.1581449   0.9816268   1.3664049
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Early term           Full or late term    1.1284607   0.9802781   1.2990430
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    Full or late term    1.0000000   1.0000000   1.0000000
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Preterm              Full or late term    1.1039668   0.9907525   1.2301181
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Early term           Full or late term    1.0268569   0.9306713   1.1329833


### Parameter: PAR


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0199935   -0.0217424   0.0617295
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0206481   -0.0165082   0.0578045
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1976658    0.0336863   0.3616452
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0417187   -0.1934900   0.2769274
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0479980    0.0065276   0.0894684
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0243062    0.0109585   0.0376540
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0030375   -0.0263498   0.0202748
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0004542   -0.0049363   0.0040279
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0265595    0.0042303   0.0488886
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0162054   -0.0084113   0.0408220
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0197935   -0.0007871   0.0403740
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0006862   -0.0062893   0.0049169
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0127711   -0.0529146   0.0273724
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0171650   -0.0192524   0.0535823
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.0330295   -0.1067560   0.1728150
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.0090120   -0.0328503   0.0148263
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0062343   -0.0030954   0.0155641
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0096787   -0.0273379   0.0079806
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0011384   -0.0052881   0.0030113
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0054633   -0.0236669   0.0127403
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0046474   -0.0084655   0.0177604
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0019115   -0.0056209   0.0017980
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0220500   -0.0150725   0.0591725
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0259487   -0.0093107   0.0612081
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.2106667    0.0827068   0.3386265
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.0467596   -0.1999217   0.2934409
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.0555575    0.0159234   0.0951916
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0201659    0.0066217   0.0337102
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0044677   -0.0272716   0.0183362
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.0010981   -0.0006579   0.0028542
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.0249054    0.0022546   0.0475561
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0203782   -0.0001442   0.0409005
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0208853    0.0004470   0.0413235
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0045689   -0.0022051   0.0113429


### Parameter: PAF


agecat                        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
----------------------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months (no birth wast)   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0451802   -0.0540332   0.1350548
0-24 months (no birth wast)   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0386160   -0.0335666   0.1057575
0-24 months (no birth wast)   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.4516364   -0.0848875   0.7228259
0-24 months (no birth wast)   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1148810   -0.8371874   0.5735679
0-24 months (no birth wast)   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.3350970   -0.0205568   0.5668090
0-24 months (no birth wast)   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1230126    0.0532702   0.1876173
0-24 months (no birth wast)   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0081530   -0.0727092   0.0525182
0-24 months (no birth wast)   ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0063351   -0.0707750   0.0542268
0-24 months (no birth wast)   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1805597    0.0163590   0.3173502
0-24 months (no birth wast)   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.0792589   -0.0491907   0.1919828
0-24 months (no birth wast)   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0653162   -0.0051067   0.1308050
0-24 months (no birth wast)   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0039059   -0.0363125   0.0274873
0-6 months (no birth wast)    ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                -0.0415686   -0.1807664   0.0812194
0-6 months (no birth wast)    ki1000108-IRC              INDIA                          Full or late term    NA                 0.0493659   -0.0613601   0.1485404
0-6 months (no birth wast)    ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.1711111   -0.9844754   0.6537842
0-6 months (no birth wast)    ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                -0.3375000   -1.5855791   0.3081216
0-6 months (no birth wast)    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.0725393   -0.0422120   0.1746559
0-6 months (no birth wast)    ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0708551   -0.2080346   0.0507469
0-6 months (no birth wast)    ki1119695-PROBIT           BELARUS                        Full or late term    NA                -0.0178551   -0.0845342   0.0447244
0-6 months (no birth wast)    ki1135781-COHORTS          INDIA                          Full or late term    NA                -0.0631818   -0.2956919   0.1276046
0-6 months (no birth wast)    ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0493292   -0.1004591   0.1787292
0-6 months (no birth wast)    kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                -0.0257213   -0.0767124   0.0228549
6-24 months                   ki1000108-CMC-V-BCS-2002   INDIA                          Full or late term    NA                 0.0850498   -0.0696159   0.2173510
6-24 months                   ki1000108-IRC              INDIA                          Full or late term    NA                 0.0816129   -0.0361537   0.1859944
6-24 months                   ki1000109-EE               PAKISTAN                       Full or late term    NA                 0.6370968   -0.0338224   0.8726099
6-24 months                   ki1000304b-SAS-CompFeed    INDIA                          Full or late term    NA                 0.1527997   -1.1757018   0.6701072
6-24 months                   ki1017093c-NIH-Crypto      BANGLADESH                     Full or late term    NA                 0.4224684    0.0412055   0.6521227
6-24 months                   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Full or late term    NA                 0.1266714    0.0380590   0.2071209
6-24 months                   ki1101329-Keneba           GAMBIA                         Full or late term    NA                -0.0137564   -0.0864603   0.0540823
6-24 months                   ki1119695-PROBIT           BELARUS                        Full or late term    NA                 0.1091425   -0.0756863   0.2622133
6-24 months                   ki1135781-COHORTS          GUATEMALA                      Full or late term    NA                 0.1725426    0.0022169   0.3137930
6-24 months                   ki1135781-COHORTS          INDIA                          Full or late term    NA                 0.1545246   -0.0150246   0.2957524
6-24 months                   ki1135781-COHORTS          PHILIPPINES                    Full or late term    NA                 0.0782355   -0.0015408   0.1516574
6-24 months                   kiGH5241-JiVitA-3          BANGLADESH                     Full or late term    NA                 0.0268770   -0.0137960   0.0659183
