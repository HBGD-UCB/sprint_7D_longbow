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

**Intervention Variable:** mage

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mage       ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  0       85     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  1       39     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              0       63     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              1       30     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       28     263
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       18     263
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  0      110     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  1        7     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              0       57     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              1        8     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0       47     233
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        4     233
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  0       76     249
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  1       69     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              0       41     249
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              1       42     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0       15     249
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        6     249
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  0       38     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  1       28     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              0       98     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              1       30     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0       35     240
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1       11     240
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  0      156     302
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  1       15     302
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              0       58     302
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              1        6     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0       62     302
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        5     302
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  0      116     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  1       33     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              0       46     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              1       12     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       89     312
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       16     312
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  0       75     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  1       11     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              0       63     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              1        6     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       91     261
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       15     261
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  0       83     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  1      138     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              0       43     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              1       66     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       18     373
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       25     373
0-24 months   ki1000108-IRC              INDIA                          <25                  0       88     410
0-24 months   ki1000108-IRC              INDIA                          <25                  1      170     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)              0       42     410
0-24 months   ki1000108-IRC              INDIA                          [25-30)              1       81     410
0-24 months   ki1000108-IRC              INDIA                          >=30                 0       11     410
0-24 months   ki1000108-IRC              INDIA                          >=30                 1       18     410
0-24 months   ki1000109-EE               PAKISTAN                       <25                  0       28     754
0-24 months   ki1000109-EE               PAKISTAN                       <25                  1       16     754
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              0      150     754
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              1      132     754
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 0      210     754
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 1      218     754
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  0      563    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  1      367    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              0      233    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              1      181    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       89    1513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       80    1513
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  0      103     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  1       81     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              0       78     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              1       64     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       40     418
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1       52     418
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  0      162     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  1      147     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              0      100     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              1       81     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       63     622
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       69     622
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  0      231     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  1      138     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              0      146     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              1       63     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       77     700
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       45     700
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  0      260     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  1      139     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              0      160     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              1       71     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       87     758
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       41     758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  0      719    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  1      206    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              0      612    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              1      201    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      482    2376
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1      156    2376
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  0      793    2863
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  1      369    2863
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              0      427    2863
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              1      248    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      558    2863
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      468    2863
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  0      142     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  1       16     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              0       58     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              1        6     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       51     281
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        8     281
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  0     1053    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  1      288    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              0      642    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              1      162    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      761    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1      272    3178
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  0      288    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  1      378    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              0      146    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              1      210    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       58    1204
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1      124    1204
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  0     6763   16898
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  1     2378   16898
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              0     3518   16898
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              1     1216   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0     2281   16898
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1      742   16898
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  0     6192   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  1     1897   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              0     2650   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              1      823   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1798   13901
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      541   13901
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  0      426    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  1      134    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              0      212    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              1       79    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0      361    1341
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1      129    1341
0-24 months   ki1135781-COHORTS          INDIA                          <25                  0     1534    5305
0-24 months   ki1135781-COHORTS          INDIA                          <25                  1      742    5305
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              0     1189    5305
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              1      558    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 0      800    5305
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      482    5305
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  0      801    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  1      542    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              0      513    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              1      341    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      502    3045
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      346    3045
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  0      281     670
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  1       20     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              0      155     670
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              1       16     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0      180     670
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1       18     670
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  0    30193   53840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  1    10311   53840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              0     6487   53840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              1     2243   53840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0     3252   53840
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1     1354   53840
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  0      100     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  1       24     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              0       71     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              1       22     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       33     263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       13     263
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  0      110     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <25                  1        7     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              0       61     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [25-30)              1        4     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 0       48     233
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=30                 1        3     233
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  0      101     249
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  1       44     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)              0       54     249
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)              1       29     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 0       16     249
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 1        5     249
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  0       47     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  1       19     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              0      111     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              1       17     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 0       39     240
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 1        7     240
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  0      166     302
0-6 months    ki0047075b-MAL-ED          PERU                           <25                  1        5     302
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              0       61     302
0-6 months    ki0047075b-MAL-ED          PERU                           [25-30)              1        3     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 0       64     302
0-6 months    ki0047075b-MAL-ED          PERU                           >=30                 1        3     302
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  0      129     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  1       20     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              0       53     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              1        5     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       98     312
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1        7     312
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  0       85     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              0       68     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              1        1     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       97     261
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1        9     261
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  0      105     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  1      114     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              0       49     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              1       58     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       23     368
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       19     368
0-6 months    ki1000108-IRC              INDIA                          <25                  0      123     410
0-6 months    ki1000108-IRC              INDIA                          <25                  1      135     410
0-6 months    ki1000108-IRC              INDIA                          [25-30)              0       51     410
0-6 months    ki1000108-IRC              INDIA                          [25-30)              1       72     410
0-6 months    ki1000108-IRC              INDIA                          >=30                 0       13     410
0-6 months    ki1000108-IRC              INDIA                          >=30                 1       16     410
0-6 months    ki1000109-EE               PAKISTAN                       <25                  0       30     754
0-6 months    ki1000109-EE               PAKISTAN                       <25                  1       14     754
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              0      228     754
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              1       54     754
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 0      290     754
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 1      138     754
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  0      730    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  1      196    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              0      319    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              1       92    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 0      125    1505
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       43    1505
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  0      156     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  1       28     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              0      116     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              1       26     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       68     418
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1       24     418
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  0      189     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  1      118     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              0      121     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              1       60     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       88     620
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       44     620
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  0      272     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  1       97     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              0      159     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              1       50     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       88     700
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       34     700
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  0      289     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  1      110     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              0      177     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              1       54     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0       96     758
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       32     758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  0      802    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  1      123    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              0      692    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              1      121    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      550    2376
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       88    2376
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  0      858    2415
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  1      137    2415
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              0      457    2415
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              1       70    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 0      714    2415
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 1      179    2415
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  0      147     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      <25                  1        3     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              0       59     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              1        1     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       49     264
0-6 months    ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        5     264
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  0      476    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  1      190    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              0      254    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              1      102    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 0      118    1204
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 1       64    1204
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  0     6828   16895
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  1     2311   16895
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              0     3553   16895
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              1     1181   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 0     2294   16895
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 1      728   16895
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  0     6531   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  1     1505   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              0     2857   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              1      596   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1924   13809
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      396   13809
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  0      331    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  1       91    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              0      196    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              1       43    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 0      323    1063
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 1       79    1063
0-6 months    ki1135781-COHORTS          INDIA                          <25                  0     1631    5102
0-6 months    ki1135781-COHORTS          INDIA                          <25                  1      544    5102
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              0     1294    5102
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              1      393    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 0      901    5102
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 1      339    5102
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  0     1026    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  1      317    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              0      651    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              1      202    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 0      650    3044
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 1      198    3044
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  0      100     220
0-6 months    ki1148112-LCNI-5           MALAWI                         <25                  1        1     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              0       54     220
0-6 months    ki1148112-LCNI-5           MALAWI                         [25-30)              1        0     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 0       63     220
0-6 months    ki1148112-LCNI-5           MALAWI                         >=30                 1        2     220
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  0    33478   53704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  1     6920   53704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              0     7152   53704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              1     1556   53704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0     3604   53704
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      994   53704
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  0       91     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  1       21     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              0       73     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              1       13     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 0       32     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 1       10     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  0       97     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <25                  1        1     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              0       58     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [25-30)              1        4     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 0       46     207
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=30                 1        1     207
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  0       97     233
6-24 months   ki0047075b-MAL-ED          INDIA                          <25                  1       39     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              0       53     233
6-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              1       23     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 0       19     233
6-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 1        2     233
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  0       49     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  1       13     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              0      108     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              1       19     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 0       42     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 1        4     235
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  0      138     270
6-24 months   ki0047075b-MAL-ED          PERU                           <25                  1       12     270
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              0       56     270
6-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              1        3     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 0       59     270
6-24 months   ki0047075b-MAL-ED          PERU                           >=30                 1        2     270
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  0      104     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  1       16     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              0       36     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              1        8     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 0       83     259
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 1       12     259
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  0       67     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  1       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              0       60     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              1        5     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 0       92     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 1       11     245
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  0      164     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  1       57     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              0       82     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              1       27     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 0       28     373
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 1       15     373
6-24 months   ki1000108-IRC              INDIA                          <25                  0      169     410
6-24 months   ki1000108-IRC              INDIA                          <25                  1       89     410
6-24 months   ki1000108-IRC              INDIA                          [25-30)              0       94     410
6-24 months   ki1000108-IRC              INDIA                          [25-30)              1       29     410
6-24 months   ki1000108-IRC              INDIA                          >=30                 0       20     410
6-24 months   ki1000108-IRC              INDIA                          >=30                 1        9     410
6-24 months   ki1000109-EE               PAKISTAN                       <25                  0       32     744
6-24 months   ki1000109-EE               PAKISTAN                       <25                  1       10     744
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              0      180     744
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              1      100     744
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 0      290     744
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 1      132     744
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  0      625    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  1      248    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              0      242    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              1      124    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 0       97    1389
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 1       53    1389
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  0      115     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  1       62     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              0       91     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              1       47     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 0       53     402
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 1       34     402
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  0      191     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  1       68     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              0      115     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              1       46     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 0       75     539
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 1       44     539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  0      258     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  1       57     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              0      164     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              1       24     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 0       94     615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 1       18     615
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  0      334     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  1       49     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              0      193     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              1       31     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 0      107     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 1       16     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  0      649    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  1      110    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              0      571    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              1      118    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 0      461    2003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 1       94    2003
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  0      782    2689
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  1      281    2689
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              0      433    2689
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              1      207    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 0      612    2689
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 1      374    2689
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  0      132     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  1       14     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              0       56     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              1        6     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 0       54     265
6-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 1        3     265
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  0     1053    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  1      288    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              0      642    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              1      162    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 0      761    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 1      272    3178
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  0      360    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  1      290    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              0      184    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              1      168    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 0       78    1180
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 1      100    1180
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  0     8866   16598
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  1       97   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              0     4597   16598
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              1       49   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 0     2968   16598
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 1       21   16598
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  0     5566   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  1      530   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              0     2403   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              1      290   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 0     1696   10668
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 1      183   10668
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  0      449    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  1       52    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              0      219    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              1       43    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 0      391    1213
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 1       59    1213
6-24 months   ki1135781-COHORTS          INDIA                          <25                  0     1847    4957
6-24 months   ki1135781-COHORTS          INDIA                          <25                  1      257    4957
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              0     1432    4957
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              1      206    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 0     1025    4957
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 1      190    4957
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  0      911    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  1      326    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              0      580    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              1      202    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 0      569    2809
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 1      221    2809
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  0      272     659
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  1       20     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              0      155     659
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              1       16     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 0      180     659
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 1       16     659
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  0    22393   34526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  1     4333   34526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              0     4423   34526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              1      875   34526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 0     2042   34526
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 1      460   34526


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 0-6 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000108-CMC-V-BCS-2002, country: INDIA
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1000109-EE, country: PAKISTAN
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1000304b-SAS-FoodSuppl, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1113344-GMS-Nepal, country: NEPAL
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: GUATEMALA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: INDIA
* agecat: 6-24 months, studyid: ki1135781-COHORTS, country: PHILIPPINES
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki1112895-Guatemala BSC, country: GUATEMALA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV

## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```




# Results Detail

## Results Plots
![](/tmp/6f6162b6-8e01-418f-83e3-24c58c68bf7f/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/6f6162b6-8e01-418f-83e3-24c58c68bf7f/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/6f6162b6-8e01-418f-83e3-24c58c68bf7f/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/6f6162b6-8e01-418f-83e3-24c58c68bf7f/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.3145161   0.2326349   0.3963974
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.3225806   0.2273927   0.4177686
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3913043   0.2500005   0.5326081
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.4758621   0.3944102   0.5573140
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5060241   0.3982483   0.6137999
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2857143   0.0921103   0.4793182
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.4242424   0.3047584   0.5437264
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.2343750   0.1608367   0.3079133
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.2391304   0.1156073   0.3626536
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.0877193   0.0452493   0.1301893
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.0937500   0.0222200   0.1652800
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.0746269   0.0115984   0.1376554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.2214765   0.1546957   0.2882573
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2068966   0.1024792   0.3113139
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1523810   0.0835290   0.2212329
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1279070   0.0571839   0.1986300
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0869565   0.0203443   0.1535687
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1415094   0.0750297   0.2079892
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6244344   0.5605020   0.6883668
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6055046   0.5136296   0.6973796
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5813953   0.4337450   0.7290457
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.6589147   0.6009966   0.7168329
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6585366   0.5746316   0.7424416
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.6206897   0.4438767   0.7975026
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.3636364   0.1623567   0.5649160
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.4680851   0.3856146   0.5505556
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.5093458   0.4422783   0.5764133
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.3946237   0.3461812   0.4430661
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4371981   0.3675098   0.5068864
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4733728   0.3676148   0.5791308
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.4402174   0.3684045   0.5120303
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4507042   0.3687686   0.5326399
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.5652174   0.4637987   0.6666361
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.4757282   0.4199998   0.5314565
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.4475138   0.3750165   0.5200112
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5227273   0.4374504   0.6080042
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3739837   0.3245795   0.4233880
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3014354   0.2391787   0.3636921
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3688525   0.2831742   0.4545307
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.3483709   0.3015899   0.3951519
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.3073593   0.2478197   0.3668989
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3203125   0.2394269   0.4011981
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2227027   0.1958848   0.2495206
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2472325   0.2175720   0.2768929
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2445141   0.2111565   0.2778717
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.3175559   0.2907849   0.3443269
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3674074   0.3310320   0.4037828
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4561404   0.4256584   0.4866223
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.1012658   0.0541420   0.1483897
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.0937500   0.0222112   0.1652888
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1355932   0.0480799   0.2231066
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.2147651   0.1714521   0.2580781
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.2014925   0.1626127   0.2403724
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2633107   0.2289990   0.2976225
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5675676   0.5143132   0.6208219
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5898876   0.5175715   0.6622038
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6813187   0.5855018   0.7771355
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.2601466   0.2028512   0.3174420
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2568652   0.1947835   0.3189470
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2454515   0.1901686   0.3007344
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2345160   0.2252824   0.2437496
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2369709   0.2228283   0.2511135
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2312954   0.2142066   0.2483842
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2392857   0.2039361   0.2746354
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.2714777   0.2203622   0.3225931
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2632653   0.2242563   0.3022743
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.3260105   0.3067510   0.3452701
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3194047   0.2975393   0.3412701
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3759750   0.3494580   0.4024921
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.4035741   0.3773306   0.4298176
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.3992974   0.3664449   0.4321499
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4080189   0.3749351   0.4411027
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0664452   0.0382879   0.0946025
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0935673   0.0498851   0.1372494
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0909091   0.0508365   0.1309817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2545675   0.2473126   0.2618223
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2569301   0.2425474   0.2713129
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2939644   0.2741860   0.3137428
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1935484   0.1238780   0.2632188
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.2365591   0.1500242   0.3230941
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2826087   0.1522418   0.4129756
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                0.3034483   0.2284663   0.3784303
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.3493976   0.2466195   0.4521757
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2380952   0.0555637   0.4206268
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.2878788   0.1784165   0.3973411
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.1328125   0.0738975   0.1917275
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.1521739   0.0481581   0.2561897
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.1342282   0.0794036   0.1890528
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.0862069   0.0138590   0.1585548
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0666667   0.0188782   0.1144552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5205479   0.4542928   0.5868031
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5420561   0.4475248   0.6365873
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4523810   0.3016489   0.6031131
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.5232558   0.4622364   0.5842753
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.5853659   0.4981949   0.6725369
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5517241   0.3705013   0.7329470
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.3181818   0.1232937   0.5130700
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.1914894   0.1264569   0.2565219
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.3224299   0.2597234   0.3851364
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2116631   0.1717606   0.2515655
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2238443   0.1810444   0.2666442
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2559524   0.1569369   0.3549678
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1521739   0.1002123   0.2041355
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1830986   0.1194115   0.2467857
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.2608696   0.1710344   0.3507048
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.3843648   0.3299067   0.4388230
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3314917   0.2628562   0.4001273
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3333333   0.2528501   0.4138166
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.2628726   0.2179268   0.3078184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2392344   0.1813552   0.2971137
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2786885   0.1990727   0.3583044
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2756892   0.2318139   0.3195646
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2337662   0.1791527   0.2883798
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2500000   0.1749362   0.3250638
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1329730   0.1110870   0.1548590
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1488315   0.1243606   0.1733024
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1379310   0.1111683   0.1646938
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.1376884   0.1162740   0.1591029
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1328273   0.1038453   0.1618094
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.2004479   0.1741854   0.2267105
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.2852853   0.2367460   0.3338245
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2865169   0.2200407   0.3529930
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3516484   0.2534627   0.4498340
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.2528723   0.1948640   0.3108806
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2494719   0.1865741   0.3123698
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2409001   0.1846248   0.2971754
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1872822   0.1787520   0.1958125
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1726035   0.1599984   0.1852087
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1706897   0.1553794   0.1859999
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2156398   0.1763827   0.2548969
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1799163   0.1311951   0.2286375
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1965174   0.1576551   0.2353797
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.2501149   0.2319126   0.2683173
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2329579   0.2127844   0.2531314
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2733871   0.2485775   0.2981967
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2360387   0.2133239   0.2587535
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2368113   0.2082773   0.2653452
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2334906   0.2050122   0.2619689
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1712956   0.1651226   0.1774686
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1786863   0.1662592   0.1911133
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2161809   0.1980129   0.2343490
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1875000   0.1150634   0.2599366
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1511628   0.0752980   0.2270276
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2380952   0.1090162   0.3671743
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.1333333   0.0723947   0.1942720
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1818182   0.0676342   0.2960022
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1263158   0.0593840   0.1932476
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1298701   0.0546321   0.2051082
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0769231   0.0120108   0.1418353
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1067961   0.0470279   0.1665644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.2579186   0.2001619   0.3156752
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2477064   0.1665580   0.3288548
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3488372   0.2061934   0.4914810
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.3449612   0.2868865   0.4030360
6-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.2357724   0.1606648   0.3108799
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3103448   0.1417603   0.4789293
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.2380952   0.0556852   0.4205052
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3571429   0.2776649   0.4366208
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.3127962   0.2501543   0.3754381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2840779   0.2463054   0.3218503
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3387978   0.2843729   0.3932227
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3533333   0.2709883   0.4356784
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.3502825   0.2799147   0.4206503
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.3405797   0.2614135   0.4197459
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3908046   0.2881479   0.4934613
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2625483   0.2089102   0.3161863
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2857143   0.2158685   0.3555601
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3697479   0.2829343   0.4565615
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1809524   0.1384040   0.2235007
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1276596   0.0799185   0.1754007
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1607143   0.0926413   0.2287872
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.1279373   0.0944625   0.1614122
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1383929   0.0931413   0.1836444
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1300813   0.0705918   0.1895708
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1449275   0.1198773   0.1699778
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1712627   0.1431251   0.1994003
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1693694   0.1381567   0.2005821
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.2643462   0.2378316   0.2908608
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3234375   0.2871892   0.3596858
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3793103   0.3490186   0.4096021
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.2147651   0.1714521   0.2580781
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.2014925   0.1626127   0.2403724
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2633107   0.2289990   0.2976225
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.4461538   0.3920645   0.5002432
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4772727   0.4034175   0.5511279
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5617978   0.4586289   0.6649666
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0108223   0.0074525   0.0141920
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0105467   0.0068480   0.0142454
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0070258   0.0027609   0.0112906
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0869423   0.0798691   0.0940154
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1076866   0.0959784   0.1193948
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0973922   0.0839857   0.1107988
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.1037924   0.0770749   0.1305099
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1641221   0.1192547   0.2089896
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1311111   0.0999134   0.1623088
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.1221483   0.1081549   0.1361417
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1257631   0.1097038   0.1418224
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1563786   0.1359534   0.1768038
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2635408   0.2389859   0.2880958
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2583120   0.2276285   0.2889955
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2797468   0.2484402   0.3110535
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0684932   0.0394995   0.0974868
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0935673   0.0498845   0.1372500
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0816327   0.0432716   0.1199937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1621268   0.1552706   0.1689829
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1651567   0.1498201   0.1804933
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1838529   0.1620217   0.2056842


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3307985   0.2738270   0.3877700
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4698795   0.4077636   0.5319954
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2875000   0.2301200   0.3448800
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0860927   0.0544044   0.1177810
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1955128   0.1514355   0.2395901
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1226054   0.0827384   0.1624724
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.6139410   0.5644682   0.6634139
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6560976   0.6100625   0.7021326
0-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.4854111   0.4348939   0.5359283
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4150694   0.3581204   0.4720184
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.4712919   0.4233811   0.5192026
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4774920   0.4382065   0.5167774
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3514286   0.3160364   0.3868207
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311346   0.2976093   0.3646598
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2369529   0.2198518   0.2540539
0-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3789731   0.3611996   0.3967466
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      NA                   NA                0.1067616   0.0705906   0.1429325
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.5913621   0.5520608   0.6306634
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2565984   0.1993515   0.3138454
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2345874   0.2275431   0.2416318
0-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2550336   0.2316956   0.2783715
0-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.3359095   0.3231988   0.3486203
0-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.4036125   0.3861835   0.4210415
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0805970   0.0599695   0.1012246
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2583210   0.2518556   0.2647863
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2243346   0.1738240   0.2748452
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3132530   0.2555274   0.3709786
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1791667   0.1305478   0.2277856
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1025641   0.0688457   0.1362825
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.5190217   0.4679041   0.5701394
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5439024   0.4956326   0.5921723
0-6 months    ki1000109-EE               PAKISTAN                       NA                   NA                0.2732095   0.2281687   0.3182504
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2199336   0.1753445   0.2645227
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.1866029   0.1492099   0.2239959
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3580645   0.3202961   0.3958330
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2585714   0.2261125   0.2910304
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2585752   0.2273844   0.2897660
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1397306   0.1257869   0.1536744
0-6 months    ki1101329-Keneba           GAMBIA                         NA                   NA                0.1598344   0.1452161   0.1744527
0-6 months    ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.2956811   0.2591967   0.3321655
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2497780   0.1917926   0.3077635
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1808241   0.1744046   0.1872436
0-6 months    ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.2003763   0.1763021   0.2244505
0-6 months    ki1135781-COHORTS          INDIA                          NA                   NA                0.2500980   0.2382136   0.2619824
0-6 months    ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2355453   0.2204685   0.2506222
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1763370   0.1707128   0.1819611
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.1833333   0.1342773   0.2323893
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.1389961   0.0967835   0.1812087
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1061224   0.0674772   0.1447677
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          NA                   NA                0.2654155   0.2205451   0.3102860
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3097561   0.2649438   0.3545684
6-24 months   ki1000109-EE               PAKISTAN                       NA                   NA                0.3252688   0.2775985   0.3729391
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3059755   0.2638053   0.3481458
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          NA                   NA                0.3557214   0.3088651   0.4025777
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2931354   0.2546710   0.3315999
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1609756   0.1319065   0.1900447
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1607589   0.1446692   0.1768485
6-24 months   ki1101329-Keneba           GAMBIA                         NA                   NA                0.3205653   0.3029225   0.3382080
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1113344-GMS-Nepal        NEPAL                          NA                   NA                0.4728814   0.4325613   0.5132014
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0100615   0.0072668   0.0128561
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0940195   0.0884810   0.0995580
6-24 months   ki1135781-COHORTS          GUATEMALA                      NA                   NA                0.1269580   0.1082147   0.1457012
6-24 months   ki1135781-COHORTS          INDIA                          NA                   NA                0.1317329   0.1223171   0.1411487
6-24 months   ki1135781-COHORTS          PHILIPPINES                    NA                   NA                0.2666429   0.2502871   0.2829988
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0789074   0.0583085   0.0995064
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1641661   0.1580479   0.1702843


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               1.0256410   0.6919835   1.5201800
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.2441472   0.7971432   1.9418118
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               1.0633840   0.8091383   1.3975182
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               0.6004141   0.2984855   1.2077540
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.5524554   0.3623991   0.8421846
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               0.5636646   0.3129730   1.0151604
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.0687500   0.4329446   2.6382743
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               0.8507463   0.3213726   2.2521189
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.9341693   0.5189254   1.6816912
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.6880231   0.3996590   1.1844491
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.6798419   0.2643078   1.7486620
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1063465   0.5355337   2.2855752
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9696849   0.8074863   1.1644641
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9310752   0.7080535   1.2243439
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.9994261   0.8561035   1.1667427
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.9419878   0.6991561   1.2691601
0-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               1.2872340   0.7200841   2.3010806
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               1.4007009   0.7929522   2.4742513
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1078861   1.0015263   1.2255411
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1995550   1.0459772   1.3756822
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0238219   0.8019466   1.3070837
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.2839506   1.0074662   1.6363121
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.9406923   0.7702380   1.1488682
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0987941   0.8988612   1.3431978
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8060121   0.6307632   1.0299514
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9862794   0.7550014   1.2884044
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.8822760   0.6970094   1.1167869
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9194582   0.6907506   1.2238909
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1101458   0.9366081   1.3158372
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0979396   0.9152728   1.3170623
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.1569848   1.0159073   1.3176536
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4364095   1.2899068   1.5995514
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.9257813   0.3787434   2.2629334
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               1.3389830   0.6042496   2.9671110
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.9381996   0.7193826   1.2235749
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.2260407   0.9673479   1.5539143
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0393258   0.8906471   1.2128240
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.2004186   1.0137015   1.4215279
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9873865   0.9187801   1.0611158
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9435124   0.8663414   1.0275576
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.0104680   0.9407434   1.0853603
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9862671   0.9070593   1.0723916
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.1345335   0.8930596   1.4412994
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.1002132   0.8924975   1.3562718
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9797373   0.8950337   1.0724571
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.1532604   1.0518929   1.2643963
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9894030   0.8908988   1.0987985
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0110135   0.9112070   1.1217521
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.4081871   0.7496139   2.6453498
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.3681818   0.7423192   2.5217205
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0092811   0.9510520   1.0710755
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1547603   1.0737202   1.2419170
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               1.2222222   0.7315840   2.0419079
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.4601449   0.8133546   2.6212716
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)              <25               1.1514239   0.7841370   1.6907466
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 <25               0.7846320   0.3506343   1.7558108
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.4613487   0.2572109   0.8275024
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 <25               0.5286041   0.2417889   1.1556456
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.6422414   0.2525511   1.6332297
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.4966667   0.2176511   1.1333633
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               1.0413182   0.8391098   1.2922549
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.8690476   0.6083303   1.2415027
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1186992   0.9259110   1.3516287
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.0544061   0.7441033   1.4941101
0-6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               0.6018237   0.2987499   1.2123578
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               1.0133511   0.5329236   1.9268812
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.0575500   0.9572563   1.1683517
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.2092444   0.9195558   1.5901939
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.2032193   0.7390255   1.9589807
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.7142857   1.0555234   2.7841878
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.8624403   0.6710739   1.1083777
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.8672316   0.6554722   1.1474030
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.9100774   0.6767321   1.2238831
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0601656   0.7599427   1.4789945
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.8479339   0.6391389   1.1249384
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9068182   0.6455591   1.2738094
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1192612   0.8869414   1.4124333
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0372862   0.8042639   1.3378230
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9646948   0.7379390   1.2611286
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4558079   1.1879171   1.7841117
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0043170   0.7532135   1.3391324
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.2326200   0.8888483   1.7093492
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9865529   0.9144211   1.0643747
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9526550   0.8698305   1.0433660
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9216226   0.8456172   1.0044594
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9114034   0.8241786   1.0078593
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8343372   0.6020460   1.1562549
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.9113225   0.6965260   1.1923586
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9314034   0.8317863   1.0429509
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.0930458   0.9730129   1.2278863
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0032729   0.8599012   1.1705490
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               0.9892045   0.8468640   1.1554695
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0431456   0.9680515   1.1240650
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.2620344   1.1545584   1.3795152
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.8062016   0.4279418   1.5188069
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.2698413   0.6525886   2.4709242
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               1.3636364   0.6271565   2.9649762
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9473684   0.4705653   1.9072952
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.5923077   0.2128189   1.6484833
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8223301   0.3674695   1.8402258
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9604056   0.6458285   1.4282104
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.3525092   0.8485277   2.1558296
6-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.6834749   0.4766970   0.9799473
6-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.8996513   0.5094344   1.5887667
6-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               1.5000000   0.6754857   3.3309364
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               1.3137441   0.5951255   2.9001000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1926230   1.0575614   1.3449333
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.2437903   1.0087556   1.5335869
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               0.9723001   0.7151123   1.3219847
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.1156841   0.8015368   1.5529555
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0882353   0.7913374   1.4965248
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.4083045   1.0316462   1.9224824
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.7054871   0.4535646   1.0973344
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.8881579   0.5471347   1.4417372
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.0817238   0.7116113   1.6443335
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               1.0167579   0.6003362   1.7220296
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1817126   0.9309896   1.4999574
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1686486   0.9077250   1.5045743
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.2235376   1.0526852   1.4221196
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4349000   1.2622342   1.6311854
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.9381996   0.7193826   1.2235749
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.2260407   0.9673479   1.5539143
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0697492   0.8788372   1.3021335
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.2592019   1.0104833   1.5691396
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9745375   0.6524134   1.4557078
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.6491948   0.3780590   1.1147833
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.2385990   1.0813266   1.4187458
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.1201944   0.9546639   1.3144265
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.5812537   1.0862401   2.3018514
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.2632051   0.8896818   1.7935481
6-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0295938   0.8672850   1.2222781
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.2802357   1.0760624   1.5231491
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               0.9801594   0.8428156   1.1398845
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0614934   0.9176461   1.2278897
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.3660819   0.7274218   2.5654714
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.1918367   0.6331976   2.2433357
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0186884   0.9230558   1.1242291
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1340073   0.9971307   1.2896731


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0162824   -0.0439517    0.0765164
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0059826   -0.0585751    0.0466100
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.1367424   -0.2353165   -0.0381683
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0016266   -0.0292897    0.0260365
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0259637   -0.0722554    0.0203280
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0053016   -0.0627033    0.0521001
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0104934   -0.0516207    0.0306339
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0028172   -0.0382002    0.0325659
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.1217748   -0.0740239    0.3175734
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0204457    0.0027954    0.0380961
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0310745   -0.0228914    0.0850404
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0017638   -0.0377750    0.0413026
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0225552   -0.0560231    0.0109128
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0172364   -0.0489925    0.0145198
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0142502   -0.0070022    0.0355025
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0614172    0.0401846    0.0826498
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                 0.0054957   -0.0266250    0.0376165
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0124218   -0.0172489    0.0420925
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0237946   -0.0114629    0.0590520
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0035482   -0.0107074    0.0036111
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0000714   -0.0058999    0.0060428
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0157478   -0.0116492    0.0431449
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0098990   -0.0047371    0.0245350
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0000384   -0.0195822    0.0196590
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0141518   -0.0083418    0.0366454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0037535    0.0004854    0.0070216
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0307862   -0.0223943    0.0839667
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0098047   -0.0392512    0.0588606
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.1087121   -0.1967786   -0.0206457
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0316641   -0.0673265    0.0039983
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0015262   -0.0436926    0.0406402
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0206466   -0.0163311    0.0576243
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.0449723   -0.2335916    0.1436470
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0082705   -0.0032319    0.0197729
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0344290   -0.0070585    0.0759164
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0263003   -0.0644468    0.0118462
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0043012   -0.0350245    0.0264221
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0171140   -0.0466315    0.0124035
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0067577   -0.0105764    0.0240917
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0221459    0.0049879    0.0393039
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0103958   -0.0224772    0.0432688
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0030943   -0.0105413    0.0043527
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0064581   -0.0118697   -0.0010466
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0152635   -0.0452146    0.0146876
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0000169   -0.0138037    0.0137698
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0004934   -0.0174637    0.0164770
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0050413    0.0021449    0.0079378
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0041667   -0.0566671    0.0483338
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0056628   -0.0396619    0.0509875
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0237477   -0.0837145    0.0362192
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0074970   -0.0298698    0.0448638
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0352051   -0.0689125   -0.0014978
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.0871736   -0.0911217    0.2654688
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0218976    0.0033805    0.0404148
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0054389   -0.0473508    0.0582286
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0305872   -0.0093077    0.0704821
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0199768   -0.0482762    0.0083226
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0035695   -0.0198096    0.0269486
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0158313   -0.0044374    0.0361001
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0562191    0.0348074    0.0776307
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0124218   -0.0172489    0.0420925
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0267275   -0.0097167    0.0631717
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0007608   -0.0023738    0.0008522
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0070772    0.0022266    0.0119279
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0231655    0.0013601    0.0449710
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0095846   -0.0012894    0.0204586
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0031021   -0.0153212    0.0215255
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0104143   -0.0123890    0.0332176
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0020394   -0.0011687    0.0052474


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0492214   -0.1514556    0.2149241
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0127321   -0.1310904    0.0932411
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.4756258   -0.8647535   -0.1676994
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0188934   -0.3965670    0.2566460
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1327979   -0.3950809    0.0801745
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0432413   -0.6338939    0.3338904
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0170918   -0.0863699    0.0477684
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0042938   -0.0597001    0.0482156
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.2508693   -0.2841158    0.5629703
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0492586    0.0096142    0.0873160
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0659347   -0.0560335    0.1738160
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0036939   -0.0826502    0.0831519
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0641814   -0.1638435    0.0269465
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0520524   -0.1524671    0.0396131
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0601392   -0.0339219    0.1456431
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1620621    0.1041074    0.2162677
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                 0.0514768   -0.3020389    0.3090097
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0546766   -0.0868438    0.1777694
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0402369   -0.0213880    0.0981436
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0138277   -0.0424659    0.0140237
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0003045   -0.0254771    0.0254379
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0617481   -0.0520088    0.1632042
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0294692   -0.0150948    0.0720767
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0000951   -0.0497185    0.0475449
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1755875   -0.1521952    0.4101209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0145304    0.0017908    0.0271073
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.1372335   -0.1342629    0.3437447
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0312997   -0.1386561    0.1758880
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.6067653   -1.1705268   -0.1894323
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.3087248   -0.6933064   -0.0114889
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0029405   -0.0875644    0.0750987
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0379602   -0.0326014    0.1037000
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.1646072   -1.1067161    0.3561971
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0376045   -0.0124669    0.0851996
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1845039   -0.0685509    0.3776302
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0734513   -0.1855139    0.0280184
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0166345   -0.1426699    0.0954993
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0661859   -0.1865959    0.0420055
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0483621   -0.0840659    0.1646129
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1385555    0.0248022    0.2390399
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0351588   -0.0826591    0.1401554
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0123881   -0.0429681    0.0172954
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0357150   -0.0660637   -0.0062302
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0761743   -0.2363787    0.0632716
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                -0.0000677   -0.0567408    0.0535659
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                -0.0020946   -0.0767948    0.0674233
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0285893    0.0120527    0.0448491
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0227273   -0.3531580    0.2270148
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0407407   -0.3473936    0.3170679
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.2237762   -0.9353094    0.2261556
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0282463   -0.1232211    0.1592881
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.1136544   -0.2279668   -0.0099834
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.2680047   -0.5469618    0.6536326
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0715666    0.0129682    0.1266861
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0152898   -0.1448794    0.1530512
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.1043449   -0.0424305    0.2304541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.1240981   -0.3134381    0.0379474
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                 0.0271432   -0.1678542    0.1895817
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0984787   -0.0365550    0.2159213
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1753748    0.1059697    0.2393919
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0546766   -0.0868438    0.1777694
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0565205   -0.0238962    0.1306214
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0756169   -0.2475406    0.0726139
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0752742    0.0223794    0.1253071
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.1824662   -0.0066672    0.3360651
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0727579   -0.0134451    0.1516286
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0116339   -0.0599310    0.0783669
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1319810   -0.2084829    0.3765266
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0124226   -0.0073104    0.0317690
