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

* arm
* meducyrs
* feducyrs
* hhwealth_quart
* W_mhtcm
* W_nrooms
* W_nchldlt5
* impfloor
* impsan
* safeh20
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_W_mhtcm
* delta_W_nrooms
* delta_W_nchldlt5
* delta_impfloor
* delta_impsan
* delta_safeh20

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
![](/tmp/5a221558-5f01-4345-a5e2-0797fdc960d4/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5a221558-5f01-4345-a5e2-0797fdc960d4/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5a221558-5f01-4345-a5e2-0797fdc960d4/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5a221558-5f01-4345-a5e2-0797fdc960d4/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.3311343   0.2517760   0.4104926
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.3455902   0.2549942   0.4361862
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.4611038   0.3358458   0.5863617
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.4758621   0.3944102   0.5573140
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5060241   0.3982483   0.6137999
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2857143   0.0921103   0.4793182
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.4403649   0.3301780   0.5505518
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.2377837   0.1659117   0.3096557
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.2456621   0.1269669   0.3643573
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.0877193   0.0452493   0.1301893
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.0937500   0.0222200   0.1652800
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.0746269   0.0115984   0.1376554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.2215840   0.1552909   0.2878772
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2085649   0.1060460   0.3110837
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1526029   0.0846352   0.2205705
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1279070   0.0571839   0.1986300
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0869565   0.0203443   0.1535687
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1415094   0.0750297   0.2079892
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6252593   0.5615636   0.6889551
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6064292   0.5154917   0.6973667
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5745442   0.4272799   0.7218084
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.6587208   0.6008578   0.7165838
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6589996   0.5755908   0.7424085
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.6225776   0.4468426   0.7983126
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.3617911   0.1696690   0.5539132
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.4689109   0.3862156   0.5516063
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.5090278   0.4419094   0.5761462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.3930880   0.3444844   0.4416916
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4336657   0.3652741   0.5020573
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4655041   0.3648293   0.5661788
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.4583330   0.3873303   0.5293357
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4751833   0.3952569   0.5551096
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.6135012   0.5165920   0.7104104
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.4713528   0.4158064   0.5268992
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.4351360   0.3635322   0.5067397
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5040791   0.4199042   0.5882540
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3690461   0.3199477   0.4181445
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3059496   0.2439879   0.3679114
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3755048   0.2912208   0.4597888
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.3427299   0.2967625   0.3886972
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2933240   0.2361872   0.3504607
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3014935   0.2250185   0.3779685
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2281166   0.2021564   0.2540767
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2552768   0.2263132   0.2842403
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2546740   0.2228071   0.2865409
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.3232457   0.2962488   0.3502426
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3593381   0.3238094   0.3948669
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4513720   0.4211849   0.4815592
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.1012658   0.0541420   0.1483897
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.0937500   0.0222112   0.1652888
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1355932   0.0480799   0.2231066
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.2085434   0.1689152   0.2481716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1920610   0.1559318   0.2281902
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2500259   0.2191668   0.2808850
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5653279   0.5121537   0.6185020
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5835927   0.5117028   0.6554826
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6707659   0.5759239   0.7656079
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.2606285   0.2030694   0.3181875
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2558448   0.1947418   0.3169477
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2428466   0.1888122   0.2968810
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2347778   0.2256075   0.2439480
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2343478   0.2205517   0.2481439
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2239715   0.2077043   0.2402387
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2427338   0.2087824   0.2766853
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.2643823   0.2177986   0.3109660
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2594029   0.2234059   0.2953999
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.3173820   0.2987524   0.3360117
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3219984   0.3005600   0.3434367
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3829065   0.3572596   0.4085533
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.4016006   0.3756381   0.4275630
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.4067755   0.3745997   0.4389512
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4132846   0.3807507   0.4458184
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0664452   0.0382879   0.0946025
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0935673   0.0498851   0.1372494
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0909091   0.0508365   0.1309817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2546434   0.2474250   0.2618618
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2571255   0.2431310   0.2711200
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2952174   0.2772836   0.3131511
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
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5210003   0.4547887   0.5872120
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5425650   0.4486091   0.6365209
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4487899   0.2984164   0.5991634
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.5232131   0.4622104   0.5842158
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.5855528   0.4985203   0.6725853
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5524402   0.3714433   0.7334372
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.3165584   0.1305420   0.5025748
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.1918254   0.1265074   0.2571433
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.3222280   0.2594441   0.3850119
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2109345   0.1708152   0.2510539
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2217068   0.1793041   0.2641095
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2482266   0.1561340   0.3403192
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1567489   0.1072308   0.2062669
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1957186   0.1362772   0.2551599
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3096456   0.2299962   0.3892951
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.3777059   0.3233460   0.4320659
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3180907   0.2498059   0.3863755
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3129989   0.2330264   0.3929714
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.2554393   0.2107847   0.3000940
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2262450   0.1692005   0.2832894
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2632041   0.1846209   0.3417873
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2710283   0.2285675   0.3134891
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2228912   0.1721263   0.2736561
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2421513   0.1732310   0.3110717
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1316358   0.1107057   0.1525658
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1508989   0.1270337   0.1747641
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1365621   0.1113740   0.1617503
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.1371208   0.1155196   0.1587220
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1299354   0.1019217   0.1579491
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1996001   0.1737222   0.2254779
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.2827016   0.2341961   0.3312070
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2797742   0.2135307   0.3460177
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3320992   0.2340016   0.4301967
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.2533900   0.1951065   0.3116734
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2487405   0.1868223   0.3106587
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2382471   0.1832487   0.2932455
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1870104   0.1785430   0.1954778
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1715374   0.1592040   0.1838708
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1660492   0.1514744   0.1806239
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2135498   0.1759448   0.2511548
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1715927   0.1267753   0.2164102
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1894244   0.1531255   0.2257234
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.2460635   0.2284977   0.2636292
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2350858   0.2153530   0.2548185
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2790202   0.2551115   0.3029289
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2336251   0.2112372   0.2560129
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2408460   0.2128477   0.2688444
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2357795   0.2077144   0.2638446
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1716100   0.1654601   0.1777598
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1783963   0.1663106   0.1904821
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2192920   0.2031553   0.2354287
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1898092   0.1174032   0.2622151
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1497926   0.0749541   0.2246312
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2351222   0.1087546   0.3614899
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.1333333   0.0723947   0.1942720
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1818182   0.0676342   0.2960022
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1263158   0.0593840   0.1932476
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1298701   0.0546321   0.2051082
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0769231   0.0120108   0.1418353
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1067961   0.0470279   0.1665644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.2604113   0.2031452   0.3176775
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2482255   0.1682487   0.3282022
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3395745   0.1974976   0.4816515
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.3449612   0.2868865   0.4030360
6-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.2357724   0.1606648   0.3108799
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3103448   0.1417603   0.4789293
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.2368781   0.0631971   0.4105592
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3577676   0.2780032   0.4375320
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.3125996   0.2498769   0.3753223
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2814384   0.2434385   0.3194384
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3294053   0.2774378   0.3813727
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3353090   0.2588084   0.4118095
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.3524776   0.2836730   0.4212823
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.3438385   0.2670563   0.4206207
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3972718   0.2999249   0.4946187
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2661877   0.2139791   0.3183963
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2847809   0.2181900   0.3513718
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3689466   0.2853659   0.4525272
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1790308   0.1370546   0.2210069
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1286475   0.0822041   0.1750909
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1634915   0.0969402   0.2300428
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.1317952   0.0979546   0.1656359
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1356578   0.0911300   0.1801855
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1300641   0.0708978   0.1892305
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1531836   0.1288191   0.1775481
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1814686   0.1539790   0.2089583
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1822777   0.1522381   0.2123174
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.2646216   0.2381189   0.2911244
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3183479   0.2828718   0.3538239
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3851464   0.3549110   0.4153818
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.2088385   0.1691154   0.2485616
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1924151   0.1562254   0.2286047
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2502649   0.2193765   0.2811532
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.4477847   0.3939765   0.5015929
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4775909   0.4045121   0.5506697
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5845307   0.4864211   0.6826403
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0107668   0.0074376   0.0140960
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0104467   0.0067628   0.0141305
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0069221   0.0028351   0.0110091
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0869000   0.0798822   0.0939178
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1061553   0.0947922   0.1175183
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0951240   0.0822984   0.1079496
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.1024836   0.0770942   0.1278731
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1592458   0.1179577   0.2005339
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1288670   0.0993065   0.1584275
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.1158776   0.1025752   0.1291800
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1266579   0.1109330   0.1423829
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1590717   0.1391932   0.1789503
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2609914   0.2369684   0.2850144
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2616421   0.2319376   0.2913466
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2807286   0.2504445   0.3110126
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0678380   0.0388521   0.0968239
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0921823   0.0485040   0.1358607
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0804460   0.0421462   0.1187457
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1618456   0.1550588   0.1686323
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1662160   0.1514320   0.1809999
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1846328   0.1658521   0.2034136


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               1.0436558   0.7319474   1.4881090
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.3924977   0.9701326   1.9987474
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               1.0633840   0.8091383   1.3975182
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               0.6004141   0.2984855   1.2077540
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.5399697   0.3668389   0.7948100
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               0.5578604   0.3252898   0.9567106
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              <25               1.0687500   0.4329446   2.6382743
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 <25               0.8507463   0.3213726   2.2521189
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               0.9412451   0.5307805   1.6691315
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.6886907   0.4037081   1.1748460
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.6798419   0.2643078   1.7486620
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1063465   0.5355337   2.2855752
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9698843   0.8097423   1.1616975
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9188894   0.6976211   1.2103385
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               1.0004233   0.8574282   1.1672659
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.9451312   0.7033174   1.2700852
0-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               1.2960820   0.7407374   2.2677789
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               1.4069662   0.8141385   2.4314708
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1032280   1.0005210   1.2164781
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1842235   1.0347353   1.3553083
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0367642   0.8253137   1.3023896
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.3385489   1.0730442   1.6697479
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.9231640   0.7541554   1.1300480
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0694305   0.8719859   1.3115826
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8290282   0.6512077   1.0554049
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0175010   0.7847079   1.3193550
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.8558460   0.6755989   1.0841822
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8796826   0.6602727   1.1720030
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1190627   0.9530884   1.3139405
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1164204   0.9428039   1.3220082
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.1116564   0.9768396   1.2650795
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.3963744   1.2547822   1.5539440
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.9257813   0.3787434   2.2629334
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               1.3389830   0.6042496   2.9671110
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.9209644   0.7189156   1.1797983
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.1989153   0.9694206   1.4827393
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0323084   0.8841020   1.2053594
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.1865078   1.0011721   1.4061525
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9816456   0.9161425   1.0518321
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9317732   0.8566974   1.0134281
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9981687   0.9302014   1.0711022
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9539724   0.8785711   1.0358450
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0891861   0.8709603   1.3620899
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0686724   0.8793657   1.2987322
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0145451   0.9285052   1.1085578
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.2064528   1.1038738   1.3185641
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0128856   0.9145831   1.1217540
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0290936   0.9295000   1.1393584
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.4081871   0.7496139   2.6453498
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.3681818   0.7423192   2.5217205
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0097474   0.9523187   1.0706393
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1593365   1.0846454   1.2391710
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
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               1.0413909   0.8404573   1.2903629
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.8614004   0.6020529   1.2324675
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1191479   0.9264418   1.3519381
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.0558608   0.7457235   1.4949805
0-6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               0.6059715   0.3072807   1.1950034
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               1.0179101   0.5481284   1.8903254
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.0510692   0.9535757   1.1585304
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1767945   0.9072372   1.5264424
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.2486125   0.8072590   1.9312675
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.9754250   1.3168940   2.9632635
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.8421649   0.6502823   1.0906674
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.8286840   0.6181587   1.1109077
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8857092   0.6517930   1.2035735
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0303978   0.7292067   1.4559926
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.8223907   0.6237213   1.0843409
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8934540   0.6456266   1.2364112
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1463364   0.9162376   1.4342211
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0374241   0.8134231   1.3231108
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9475981   0.7257438   1.2372715
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4556509   1.1870456   1.7850362
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9896450   0.7387646   1.3257230
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.1747342   0.8347730   1.6531444
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9816509   0.9125945   1.0559329
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9402388   0.8598041   1.0281982
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9172614   0.8426208   0.9985138
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8879142   0.8044991   0.9799783
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8035256   0.5870183   1.0998862
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8870269   0.6850509   1.1485522
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9553866   0.8559473   1.0663783
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.1339358   1.0145102   1.2674199
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0309084   0.8868363   1.1983858
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0092216   0.8662438   1.1757987
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0395453   0.9662027   1.1184552
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.2778511   1.1802375   1.3835380
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.7891749   0.4221638   1.4752497
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.2387297   0.6421566   2.3895280
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               1.3636364   0.6271565   2.9649762
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9473684   0.4705653   1.9072952
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.5923077   0.2128189   1.6484833
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8223301   0.3674695   1.8402258
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9532053   0.6473307   1.4036107
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.3039929   0.8139794   2.0889931
6-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.6834749   0.4766970   0.9799473
6-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.8996513   0.5094344   1.5887667
6-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               1.5103446   0.7019113   3.2498991
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               1.3196642   0.6171025   2.8220817
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1704345   1.0413839   1.3154775
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1914114   0.9715057   1.4610940
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               0.9754903   0.7251120   1.3123234
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.1270837   0.8239507   1.5417398
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0698499   0.7925062   1.4442522
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.3860389   1.0304377   1.8643570
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.7185777   0.4676339   1.1041840
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9132031   0.5712612   1.4598225
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.0293069   0.6789049   1.5605613
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9868653   0.5850308   1.6647038
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1846476   0.9516611   1.4746742
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1899296   0.9467970   1.4954974
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.2030303   1.0357167   1.3973725
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4554608   1.2815538   1.6529670
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.9213581   0.7189568   1.1807396
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.1983656   0.9689944   1.4820312
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0665637   0.8780383   1.2955677
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.3053833   1.0619929   1.6045546
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9702657   0.6503138   1.4476326
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.6429103   0.3774614   1.0950354
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.2215803   1.0685179   1.3965685
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0946380   0.9356767   1.2806051
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.5538657   1.0885986   2.2179878
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.2574400   0.8998082   1.7572137
6-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0930318   0.9232792   1.2939950
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.3727561   1.1590538   1.6258602
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0024931   0.8666695   1.1596028
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0756237   0.9338217   1.2389586
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.3588598   0.7179660   2.5718487
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.1858542   0.6254254   2.2484701
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0270035   0.9333548   1.1300485
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1407965   1.0193038   1.2767701


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0003358   -0.0586725    0.0580009
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0059826   -0.0585751    0.0466100
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.1528649   -0.2432230   -0.0625067
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0016266   -0.0292897    0.0260365
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0260712   -0.0716624    0.0195199
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0053016   -0.0627033    0.0521001
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0113183   -0.0520299    0.0293932
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0026233   -0.0380239    0.0327774
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.1236201   -0.0632803    0.3105204
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0219814    0.0039315    0.0400313
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0129588   -0.0402531    0.0661708
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0061391   -0.0332002    0.0454785
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0176175   -0.0506587    0.0154236
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0115953   -0.0427779    0.0195873
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0088363   -0.0117726    0.0294451
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0557274    0.0339877    0.0774671
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                 0.0054957   -0.0266250    0.0376165
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0186435   -0.0078940    0.0451810
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0260342   -0.0091984    0.0612669
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0040300   -0.0109653    0.0029052
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0001903   -0.0061106    0.0057299
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0122997   -0.0140241    0.0386235
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0185275    0.0043217    0.0327332
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0020119   -0.0174905    0.0215143
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0141518   -0.0083418    0.0366454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0036776    0.0004289    0.0069263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0307862   -0.0223943    0.0839667
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0098047   -0.0392512    0.0588606
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.1087121   -0.1967786   -0.0206457
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0316641   -0.0673265    0.0039983
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0019786   -0.0439525    0.0399952
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0206893   -0.0162952    0.0576738
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.0433488   -0.2233238    0.1366261
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0089990   -0.0024439    0.0204420
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0298540   -0.0097423    0.0694503
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0196414   -0.0576993    0.0184165
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0031321   -0.0273784    0.0336426
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0124531   -0.0410124    0.0161062
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0080949   -0.0085251    0.0247149
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0227135    0.0050705    0.0403566
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0129795   -0.0198802    0.0458392
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0036119   -0.0108566    0.0036327
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0061863   -0.0115537   -0.0008188
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0131735   -0.0417865    0.0154394
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0040345   -0.0092962    0.0173653
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0019203   -0.0148802    0.0187207
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0047270    0.0018444    0.0076096
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0064758   -0.0584075    0.0454558
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0056628   -0.0396619    0.0509875
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0237477   -0.0837145    0.0362192
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0050042   -0.0316556    0.0416640
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0352051   -0.0689125   -0.0014978
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.0883907   -0.0814699    0.2582513
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0245371    0.0056220    0.0434522
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0032437   -0.0484156    0.0549031
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0269477   -0.0112475    0.0651429
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0180552   -0.0458794    0.0097690
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0002884   -0.0239752    0.0233984
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0075752   -0.0121350    0.0272854
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0559436    0.0342024    0.0776848
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0183484   -0.0082603    0.0449571
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0250967   -0.0112022    0.0613956
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0007053   -0.0022814    0.0008707
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0071195    0.0023128    0.0119263
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0244743    0.0037894    0.0451592
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0158553    0.0054636    0.0262469
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0056515   -0.0123932    0.0236962
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0110694   -0.0117324    0.0338713
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0023206   -0.0008543    0.0054955


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0010152   -0.1938655    0.1606832
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0127321   -0.1310904    0.0932411
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.5317040   -0.8937827   -0.2388523
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0188934   -0.3965670    0.2566460
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1333478   -0.3912059    0.0767166
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0432413   -0.6338939    0.3338904
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0184355   -0.0869904    0.0457957
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0039983   -0.0594338    0.0485366
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.2546708   -0.2495871    0.5554407
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0529584    0.0124557    0.0917998
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0274964   -0.0922117    0.1340843
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0128571   -0.0730715    0.0919047
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0501312   -0.1484796    0.0397953
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0350169   -0.1336446    0.0550302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0372913   -0.0535977    0.1203398
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1470484    0.0878370    0.2024162
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                 0.0514768   -0.3020389    0.3090097
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0820625   -0.0440947    0.1929763
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0440242   -0.0175734    0.1018930
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0157056   -0.0433834    0.0112379
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0008113   -0.0263692    0.0241102
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0482278   -0.0605590    0.1458558
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0551562    0.0119498    0.0964732
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0049847   -0.0445244    0.0521472
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1755875   -0.1521952    0.4101209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0142364    0.0015767    0.0267357
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.1372335   -0.1342629    0.3437447
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0312997   -0.1386561    0.1758880
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.6067653   -1.1705268   -0.1894323
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.3087248   -0.6933064   -0.0114889
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0038122   -0.0880303    0.0738871
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0380387   -0.0325343    0.1037881
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.1586652   -1.0462298    0.3439129
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0409170   -0.0087494    0.0881380
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1599868   -0.0773469    0.3450372
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0548544   -0.1666773    0.0462505
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0121131   -0.1132388    0.1233502
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0481605   -0.1647559    0.0567633
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0579320   -0.0685441    0.1694380
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1421067    0.0251117    0.2450613
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0438969   -0.0739524    0.1488142
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0144606   -0.0441557    0.0143900
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0342115   -0.0643199   -0.0049548
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0657439   -0.2186942    0.0680105
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0161318   -0.0386199    0.0679972
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0081524   -0.0657934    0.0769678
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0268066    0.0103555    0.0429841
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0353227   -0.3609940    0.2124190
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0407407   -0.3473936    0.3170679
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.2237762   -0.9353094    0.2261556
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0188542   -0.1294186    0.1476614
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.1136544   -0.2279668   -0.0099834
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.2717465   -0.4900603    0.6440727
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0801930    0.0204458    0.1362960
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0091188   -0.1472555    0.1441788
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0919291   -0.0478180    0.2130382
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.1121609   -0.2984602    0.0474086
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0021930   -0.1995198    0.1626725
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0471217   -0.0833713    0.1618967
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1745156    0.1042011    0.2393108
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0807635   -0.0457305    0.1919565
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0530718   -0.0269505    0.1268586
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0701040   -0.2381724    0.0751510
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0757240    0.0233541    0.1252857
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.1927751    0.0152609    0.3382897
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.1203592    0.0382644    0.1954464
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0211950   -0.0488483    0.0865608
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1402838   -0.2007465    0.3844563
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0141355   -0.0053822    0.0332743
