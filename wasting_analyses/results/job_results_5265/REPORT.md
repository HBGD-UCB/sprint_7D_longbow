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
![](/tmp/db013318-1f1a-4a7b-9313-644d927bdcfb/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/db013318-1f1a-4a7b-9313-644d927bdcfb/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/db013318-1f1a-4a7b-9313-644d927bdcfb/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/db013318-1f1a-4a7b-9313-644d927bdcfb/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.3159020   0.2341526   0.3976514
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.3215371   0.2267325   0.4163418
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3894919   0.2497687   0.5292152
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                0.4758621   0.3944102   0.5573140
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.5060241   0.3982483   0.6137999
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2857143   0.0921103   0.4793182
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.4434284   0.3374704   0.5493863
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.2364142   0.1655996   0.3072287
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.2467620   0.1333419   0.3601820
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                0.0877193   0.0452493   0.1301893
0-24 months   ki0047075b-MAL-ED          PERU                           [25-30)              NA                0.0937500   0.0222200   0.1652800
0-24 months   ki0047075b-MAL-ED          PERU                           >=30                 NA                0.0746269   0.0115984   0.1376554
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.2214765   0.1546957   0.2882573
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.2068966   0.1024792   0.3113139
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1523810   0.0835290   0.2212329
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1279070   0.0571839   0.1986300
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0869565   0.0203443   0.1535687
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1415094   0.0750297   0.2079892
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.6254863   0.5618299   0.6891426
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.6065265   0.5157673   0.6972856
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.5689699   0.4218847   0.7160550
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.6586488   0.6008037   0.7164938
0-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.6591827   0.5759535   0.7424119
0-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.6233188   0.4479688   0.7986687
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.3617912   0.1696699   0.5539125
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.4689109   0.3862155   0.5516063
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.5090278   0.4419094   0.5761462
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.3930880   0.3444844   0.4416916
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.4336657   0.3652741   0.5020573
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.4655041   0.3648293   0.5661788
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.4577649   0.3875581   0.5279716
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.4763019   0.3974385   0.5551653
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.6178557   0.5236420   0.7120695
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.4714300   0.4159722   0.5268878
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.4348647   0.3635167   0.5062128
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.5044124   0.4206993   0.5881255
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.3694762   0.3203632   0.4185893
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.3055223   0.2435514   0.3674933
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.3749652   0.2905971   0.4593332
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.3425962   0.2966453   0.3885472
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2933214   0.2362615   0.3503813
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.3016602   0.2253123   0.3780082
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.2286721   0.2027079   0.2546363
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.2556933   0.2266731   0.2847136
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.2551816   0.2232364   0.2871267
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.3233111   0.2962663   0.3503560
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3592457   0.3237142   0.3947772
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.4512857   0.4210278   0.4815436
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                0.1012658   0.0541420   0.1483897
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              NA                0.0937500   0.0222112   0.1652888
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 NA                0.1355932   0.0480799   0.2231066
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.2085136   0.1687657   0.2482614
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1918590   0.1556052   0.2281128
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2499744   0.2189635   0.2809853
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.5655676   0.5124120   0.6187231
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.5846923   0.5130024   0.6563822
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.6702820   0.5750463   0.7655178
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.2606284   0.2030693   0.3181874
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2558445   0.1947414   0.3169476
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2428467   0.1888126   0.2968807
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.2347777   0.2256074   0.2439479
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.2343471   0.2205510   0.2481432
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.2239705   0.2077034   0.2402376
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2426219   0.2085257   0.2767180
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.2648815   0.2180070   0.3117560
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.2599311   0.2237346   0.2961275
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.3173051   0.2986771   0.3359332
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.3219988   0.3005597   0.3434379
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.3829128   0.3572572   0.4085684
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.4017900   0.3758402   0.4277399
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.4065827   0.3744040   0.4387615
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.4131524   0.3806159   0.4456890
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0664452   0.0382879   0.0946025
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0935673   0.0498851   0.1372494
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0909091   0.0508365   0.1309817
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.2546433   0.2474249   0.2618617
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.2571243   0.2431305   0.2711181
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2952160   0.2772819   0.3131500
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1981068   0.1291170   0.2670965
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.2462816   0.1609409   0.3316223
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.3132011   0.1874735   0.4389286
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                0.3034483   0.2284663   0.3784303
0-6 months    ki0047075b-MAL-ED          INDIA                          [25-30)              NA                0.3493976   0.2466195   0.4521757
0-6 months    ki0047075b-MAL-ED          INDIA                          >=30                 NA                0.2380952   0.0555637   0.4206268
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                0.2878788   0.1784165   0.3973411
0-6 months    ki0047075b-MAL-ED          NEPAL                          [25-30)              NA                0.1328125   0.0738975   0.1917275
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=30                 NA                0.1521739   0.0481581   0.2561897
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.1342282   0.0794036   0.1890528
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.0862069   0.0138590   0.1585548
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.0666667   0.0188782   0.1144552
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.5204929   0.4543262   0.5866596
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.5414563   0.4473390   0.6355737
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.4344915   0.2852157   0.5837674
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                0.5232558   0.4622364   0.5842753
0-6 months    ki1000108-IRC              INDIA                          [25-30)              NA                0.5853659   0.4981949   0.6725369
0-6 months    ki1000108-IRC              INDIA                          >=30                 NA                0.5517241   0.3705013   0.7329470
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                0.3165587   0.1305420   0.5025754
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              NA                0.1918253   0.1265074   0.2571432
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 NA                0.3222280   0.2594441   0.3850119
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2109345   0.1708152   0.2510539
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.2217068   0.1793041   0.2641095
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.2482266   0.1561340   0.3403192
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.1531091   0.1043705   0.2018477
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.1917606   0.1340151   0.2495061
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3070936   0.2316887   0.3824986
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.3776996   0.3233092   0.4320899
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.3181496   0.2497801   0.3865190
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3130316   0.2329041   0.3931591
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.2571422   0.2125994   0.3016851
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.2248484   0.1683166   0.2813801
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.2625153   0.1846963   0.3403344
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.2712547   0.2281740   0.3143355
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.2235753   0.1711993   0.2759513
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.2387909   0.1673378   0.3102439
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1320277   0.1110250   0.1530304
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1510542   0.1271048   0.1750036
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1371186   0.1117925   0.1624447
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                0.1372463   0.1155008   0.1589918
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.1297285   0.1016767   0.1577802
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 NA                0.1994273   0.1733991   0.2254556
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.2822521   0.2339025   0.3306018
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.2788615   0.2130540   0.3446689
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.3327213   0.2370455   0.4283972
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                0.2533898   0.1951064   0.3116731
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.2487404   0.1868219   0.3106588
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 NA                0.2382473   0.1832486   0.2932460
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.1870104   0.1785431   0.1954778
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1715376   0.1592043   0.1838710
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.1660493   0.1514746   0.1806240
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.2129967   0.1752154   0.2507779
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1716668   0.1264453   0.2168882
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1897037   0.1531223   0.2262850
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                0.2460313   0.2284698   0.2635929
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              NA                0.2351022   0.2153682   0.2548362
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 NA                0.2790450   0.2551149   0.3029750
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2335480   0.2111558   0.2559402
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2408219   0.2128210   0.2688228
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2356754   0.2076192   0.2637315
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1716134   0.1654629   0.1777639
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1784127   0.1663004   0.1905249
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.2193699   0.2032479   0.2354919
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                0.1892519   0.1168852   0.2616187
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              NA                0.1500303   0.0749166   0.2251441
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 NA                0.2360174   0.1089849   0.3630499
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                0.1333333   0.0723947   0.1942720
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              NA                0.1818182   0.0676342   0.2960022
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 NA                0.1263158   0.0593840   0.1932476
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1298701   0.0546321   0.2051082
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.0769231   0.0120108   0.1418353
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1067961   0.0470279   0.1665644
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                0.2599587   0.2026676   0.3172499
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              NA                0.2481132   0.1680879   0.3281386
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 NA                0.3352648   0.1934182   0.4771115
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                0.3449612   0.2868865   0.4030360
6-24 months   ki1000108-IRC              INDIA                          [25-30)              NA                0.2357724   0.1606648   0.3108799
6-24 months   ki1000108-IRC              INDIA                          >=30                 NA                0.3103448   0.1417603   0.4789293
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                0.2374491   0.0637759   0.4111223
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              NA                0.3576649   0.2778884   0.4374414
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 NA                0.3126342   0.2499024   0.3753659
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                0.2814384   0.2434385   0.3194384
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              NA                0.3294053   0.2774378   0.3813727
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 NA                0.3353090   0.2588084   0.4118095
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                0.3519395   0.2825563   0.4213227
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              NA                0.3429920   0.2653376   0.4206464
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 NA                0.3956561   0.2964219   0.4948902
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                0.2645415   0.2117293   0.3173537
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              NA                0.2852773   0.2172965   0.3532581
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 NA                0.3691872   0.2842705   0.4541040
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                0.1792911   0.1368781   0.2217042
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              NA                0.1292812   0.0816826   0.1768798
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 NA                0.1617647   0.0939060   0.2296234
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                0.1317963   0.0979559   0.1656367
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              NA                0.1356563   0.0911286   0.1801840
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 NA                0.1300641   0.0708977   0.1892304
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                0.1527331   0.1286348   0.1768313
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              NA                0.1818220   0.1544987   0.2091452
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 NA                0.1820262   0.1523318   0.2117207
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                0.2645976   0.2380324   0.2911629
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              NA                0.3182416   0.2827601   0.3537231
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 NA                0.3852004   0.3548370   0.4155639
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                0.2084927   0.1688348   0.2481505
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              NA                0.1920052   0.1558576   0.2281528
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 NA                0.2500516   0.2191833   0.2809199
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                0.4479659   0.3940940   0.5018378
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              NA                0.4787748   0.4053402   0.5522093
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 NA                0.5810837   0.4817202   0.6804472
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                0.0107653   0.0074301   0.0141004
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              NA                0.0104347   0.0067459   0.0141236
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 NA                0.0069061   0.0028320   0.0109801
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                0.0869008   0.0798738   0.0939278
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              NA                0.1062308   0.0947896   0.1176720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 NA                0.0950690   0.0821232   0.1080147
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                0.1022495   0.0769603   0.1275388
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              NA                0.1596272   0.1186257   0.2006287
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 NA                0.1292583   0.0998105   0.1587060
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                0.1157844   0.1025006   0.1290682
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              NA                0.1266384   0.1109084   0.1423683
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 NA                0.1591887   0.1392652   0.1791121
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                0.2611175   0.2370954   0.2851396
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              NA                0.2617259   0.2319914   0.2914605
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 NA                0.2806631   0.2503262   0.3110000
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                0.0684932   0.0394995   0.0974868
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              NA                0.0935673   0.0498845   0.1372500
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 NA                0.0816327   0.0432716   0.1199937
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                0.1618377   0.1550516   0.1686239
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              NA                0.1662446   0.1514344   0.1810548
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 NA                0.1846401   0.1659035   0.2033767


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               1.0178383   0.6880629   1.5056687
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.2329518   0.7929686   1.9170623
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          [25-30)              <25               1.0633840   0.8091383   1.3975182
0-24 months   ki0047075b-MAL-ED          INDIA                          >=30                 <25               0.6004141   0.2984855   1.2077540
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          [25-30)              <25               0.5331507   0.3653275   0.7780682
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=30                 <25               0.5564867   0.3328008   0.9305188
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
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9696878   0.8099799   1.1608862
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.9096440   0.6892481   1.2005145
0-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               1.0008107   0.8579340   1.1674814
0-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.9463599   0.7049028   1.2705255
0-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               1.2960817   0.7407388   2.2677736
0-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               1.4069659   0.8141400   2.4314651
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1032280   1.0005210   1.2164781
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1842235   1.0347353   1.3553083
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.0404946   0.8305051   1.3035792
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.3497229   1.0873136   1.6754613
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.9224376   0.7539508   1.1285765
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.0699624   0.8732560   1.3109783
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8269066   0.6493876   1.0529529
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0148560   0.7822973   1.3165489
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.8561723   0.6759724   1.0844096
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8805124   0.6611956   1.1725761
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1181657   0.9523147   1.3129005
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1159276   0.9423735   1.3214448
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.1111454   0.9762828   1.2646378
0-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.3958249   1.2540276   1.5536557
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      [25-30)              <25               0.9257813   0.3787434   2.2629334
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      >=30                 <25               1.3389830   0.6042496   2.9671110
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.9201273   0.7174931   1.1799894
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.1988398   0.9681691   1.4844688
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0338151   0.8859078   1.2064165
0-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.1851494   0.9994532   1.4053475
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9816448   0.9161409   1.0518323
0-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9317737   0.8566985   1.0134280
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9981661   0.9301989   1.0710995
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.9539685   0.8785674   1.0358408
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.0917462   0.8719983   1.3668718
0-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.0713423   0.8804804   1.3035774
0-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0147922   0.9287246   1.1088360
0-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.2067651   1.1041361   1.3189334
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0119284   0.9137230   1.1206887
0-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0282795   0.9287805   1.1384376
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.4081871   0.7496139   2.6453498
0-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.3681818   0.7423192   2.5217205
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0097431   0.9523171   1.0706320
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1593313   1.0846390   1.2391673
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               1.2431759   0.7607751   2.0314627
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.5809709   0.9292807   2.6896812
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
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               1.0402762   0.8390742   1.2897244
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               0.8347694   0.5786316   1.2042895
0-6 months    ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000108-IRC              INDIA                          [25-30)              <25               1.1186992   0.9259110   1.3516287
0-6 months    ki1000108-IRC              INDIA                          >=30                 <25               1.0544061   0.7441033   1.4941101
0-6 months    ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000109-EE               PAKISTAN                       [25-30)              <25               0.6059707   0.3072801   1.1950025
0-6 months    ki1000109-EE               PAKISTAN                       >=30                 <25               1.0179092   0.5481276   1.8903245
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.0510692   0.9535757   1.1585304
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1767945   0.9072372   1.5264424
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               1.2524441   0.8115949   1.9327578
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               2.0057175   1.3470616   2.9864282
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               0.8423350   0.6502617   1.0911426
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               0.8287847   0.6179562   1.1115416
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.8744125   0.6442659   1.1867727
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               1.0208954   0.7242159   1.4391115
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               0.8242264   0.6210008   1.0939587
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.8803197   0.6273541   1.2352875
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1441098   0.9139682   1.4322022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.0385592   0.8138883   1.3252497
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1101329-Keneba           GAMBIA                         [25-30)              <25               0.9452236   0.7231656   1.2354676
0-6 months    ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4530614   1.1834497   1.7840956
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               0.9879871   0.7381340   1.3224137
0-6 months    ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.1788089   0.8434567   1.6474948
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9816511   0.9125939   1.0559340
0-6 months    ki1119695-PROBIT           BELARUS                        >=30                 <25               0.9402403   0.8598054   1.0281999
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               0.9172624   0.8426219   0.9985145
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               0.8879147   0.8045000   0.9799783
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               0.8059599   0.5871922   1.1062329
0-6 months    ki1135781-COHORTS          GUATEMALA                      >=30                 <25               0.8906415   0.6864535   1.1555658
0-6 months    ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          INDIA                          [25-30)              <25               0.9555783   0.8561230   1.0665873
0-6 months    ki1135781-COHORTS          INDIA                          >=30                 <25               1.1341847   1.0146832   1.2677603
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0311453   0.8869925   1.1987255
0-6 months    ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0091089   0.8661090   1.1757190
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0396198   0.9661434   1.1186842
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.2782797   1.1807267   1.3838927
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [25-30)              <25               0.7927546   0.4232113   1.4849792
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=30                 <25               1.2471070   0.6455144   2.4093587
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [25-30)              <25               1.3636364   0.6271565   2.9649762
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=30                 <25               0.9473684   0.4705653   1.9072952
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               0.5923077   0.2128189   1.6484833
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=30                 <25               0.8223301   0.3674695   1.8402258
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          [25-30)              <25               0.9544332   0.6477442   1.4063309
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          >=30                 <25               1.2896847   0.8015979   2.0749640
6-24 months   ki1000108-IRC              INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000108-IRC              INDIA                          [25-30)              <25               0.6834749   0.4766970   0.9799473
6-24 months   ki1000108-IRC              INDIA                          >=30                 <25               0.8996513   0.5094344   1.5887667
6-24 months   ki1000109-EE               PAKISTAN                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000109-EE               PAKISTAN                       [25-30)              <25               1.5062803   0.7011847   3.2357813
6-24 months   ki1000109-EE               PAKISTAN                       >=30                 <25               1.3166367   0.6167324   2.8108336
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [25-30)              <25               1.1704345   1.0413839   1.3154775
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=30                 <25               1.1914114   0.9715057   1.4610940
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          [25-30)              <25               0.9745767   0.7218237   1.3158334
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          >=30                 <25               1.1242161   0.8171543   1.5466626
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [25-30)              <25               1.0783838   0.7925876   1.4672342
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=30                 <25               1.3955738   1.0310743   1.8889291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [25-30)              <25               0.7210688   0.4658953   1.1160023
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=30                 <25               0.9022459   0.5577606   1.4594932
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [25-30)              <25               1.0292875   0.6788926   1.5605306
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=30                 <25               0.9868567   0.5850266   1.6646872
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [25-30)              <25               1.1904560   0.9581222   1.4791282
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=30                 <25               1.1917932   0.9503512   1.4945749
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1101329-Keneba           GAMBIA                         [25-30)              <25               1.2027378   1.0352529   1.3973188
6-24 months   ki1101329-Keneba           GAMBIA                         >=30                 <25               1.4557970   1.2813496   1.6539942
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [25-30)              <25               0.9209209   0.7186971   1.1800456
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=30                 <25               1.1993306   0.9694843   1.4836690
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1113344-GMS-Nepal        NEPAL                          [25-30)              <25               1.0687750   0.8795457   1.2987160
6-24 months   ki1113344-GMS-Nepal        NEPAL                          >=30                 <25               1.2971606   1.0525174   1.5986677
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        [25-30)              <25               0.9692950   0.6485452   1.4486773
6-24 months   ki1119695-PROBIT           BELARUS                        >=30                 <25               0.6415116   0.3767165   1.0924316
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [25-30)              <25               1.2224373   1.0686379   1.3983716
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=30                 <25               1.0939939   0.9340024   1.2813914
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          GUATEMALA                      [25-30)              <25               1.5611534   1.0959583   2.2238071
6-24 months   ki1135781-COHORTS          GUATEMALA                      >=30                 <25               1.2641455   0.9059498   1.7639650
6-24 months   ki1135781-COHORTS          INDIA                          <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          INDIA                          [25-30)              <25               1.0937427   0.9238839   1.2948305
6-24 months   ki1135781-COHORTS          INDIA                          >=30                 <25               1.3748709   1.1607357   1.6285103
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1135781-COHORTS          PHILIPPINES                    [25-30)              <25               1.0023301   0.8665041   1.1594470
6-24 months   ki1135781-COHORTS          PHILIPPINES                    >=30                 <25               1.0748537   0.9330339   1.2382299
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   ki1148112-LCNI-5           MALAWI                         [25-30)              <25               1.3660819   0.7274218   2.5654714
6-24 months   ki1148112-LCNI-5           MALAWI                         >=30                 <25               1.1918367   0.6331976   2.2433357
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  <25               1.0000000   1.0000000   1.0000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     [25-30)              <25               1.0272303   0.9333942   1.1305000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     >=30                 <25               1.1408963   1.0196218   1.2765953


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0148965   -0.0449964    0.0747894
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0059826   -0.0585751    0.0466100
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.1559284   -0.2428505   -0.0690063
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0016266   -0.0292897    0.0260365
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0259637   -0.0722554    0.0203280
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0053016   -0.0627033    0.0521001
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0115453   -0.0521804    0.0290898
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0025512   -0.0379628    0.0328603
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.1236200   -0.0632796    0.3105196
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0219814    0.0039315    0.0400313
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0135270   -0.0392211    0.0662751
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0060620   -0.0332162    0.0453402
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0180477   -0.0511086    0.0150133
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0114617   -0.0426405    0.0197172
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0082807   -0.0123653    0.0289268
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0556620    0.0338727    0.0774512
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                 0.0054957   -0.0266250    0.0376165
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0186733   -0.0079507    0.0452973
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0257946   -0.0094085    0.0609976
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0040300   -0.0109652    0.0029053
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0001902   -0.0061105    0.0057301
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0124117   -0.0140438    0.0388672
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0186044    0.0043976    0.0328111
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0018224   -0.0176589    0.0213038
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0141518   -0.0083418    0.0366454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0036776    0.0004290    0.0069263
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0262278   -0.0264695    0.0789251
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0098047   -0.0392512    0.0588606
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.1087121   -0.1967786   -0.0206457
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.0316641   -0.0673265    0.0039983
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0014711   -0.0434591    0.0405169
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0206466   -0.0163311    0.0576243
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.0433492   -0.2233244    0.1366261
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0089990   -0.0024439    0.0204420
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0334938   -0.0053200    0.0723075
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0196351   -0.0577146    0.0184445
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0014292   -0.0290282    0.0318866
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0126795   -0.0416432    0.0162842
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0077029   -0.0089900    0.0243959
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0225881    0.0047970    0.0403792
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0134289   -0.0193439    0.0462018
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0036117   -0.0108564    0.0036330
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0061863   -0.0115538   -0.0008189
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0126204   -0.0413689    0.0161282
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0040667   -0.0092665    0.0173998
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0019974   -0.0148145    0.0188092
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0047236    0.0018399    0.0076072
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0059186   -0.0579592    0.0461220
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0056628   -0.0396619    0.0509875
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0237477   -0.0837145    0.0362192
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0054568   -0.0312313    0.0421449
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0352051   -0.0689125   -0.0014978
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.0878197   -0.0820443    0.2576837
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0245371    0.0056220    0.0434522
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0037819   -0.0482885    0.0558523
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0285939   -0.0103155    0.0675033
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0183155   -0.0464499    0.0098189
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0002895   -0.0239761    0.0233971
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0080258   -0.0114834    0.0275350
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.0559676    0.0341619    0.0777733
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0186943   -0.0078645    0.0452530
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0249155   -0.0114228    0.0612538
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0007038   -0.0022834    0.0008757
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0071187    0.0023092    0.0119281
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0247084    0.0040679    0.0453489
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0159485    0.0055630    0.0263340
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0055254   -0.0124964    0.0235473
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.0104143   -0.0123890    0.0332176
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0023284   -0.0008471    0.0055039


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.0450319   -0.1543200    0.2099556
0-24 months   ki0047075b-MAL-ED          INDIA                          <25                  NA                -0.0127321   -0.1310904    0.0932411
0-24 months   ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.5423596   -0.8945744   -0.2556239
0-24 months   ki0047075b-MAL-ED          PERU                           <25                  NA                -0.0188934   -0.3965670    0.2566460
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.1327979   -0.3950809    0.0801745
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.0432413   -0.6338939    0.3338904
0-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0188052   -0.0872270    0.0453107
0-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.0038885   -0.0593418    0.0486621
0-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.2546707   -0.2495847    0.5554396
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0529584    0.0124557    0.0917998
0-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0287019   -0.0898701    0.1343740
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0126955   -0.0730912    0.0916241
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.0513551   -0.1497631    0.0386302
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0346133   -0.1332315    0.0554228
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0349467   -0.0561049    0.1181484
0-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1468758    0.0875209    0.2023698
0-24 months   ki1112895-Guatemala BSC    GUATEMALA                      <25                  NA                 0.0514768   -0.3020389    0.3090097
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0821937   -0.0444335    0.1934685
0-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0436189   -0.0179230    0.1014401
0-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0157053   -0.0433831    0.0112383
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0008109   -0.0263689    0.0241108
0-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.0486669   -0.0607097    0.1467650
0-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.0553851    0.0121757    0.0967043
0-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0045153   -0.0449389    0.0516290
0-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1755875   -0.1521952    0.4101209
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0142367    0.0015770    0.0267359
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                 0.1169138   -0.1504500    0.3221424
0-6 months    ki0047075b-MAL-ED          INDIA                          <25                  NA                 0.0312997   -0.1386561    0.1758880
0-6 months    ki0047075b-MAL-ED          NEPAL                          <25                  NA                -0.6067653   -1.1705268   -0.1894323
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                -0.3087248   -0.6933064   -0.0114889
0-6 months    ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                -0.0028344   -0.0870858    0.0748873
0-6 months    ki1000108-IRC              INDIA                          <25                  NA                 0.0379602   -0.0326014    0.1037000
0-6 months    ki1000109-EE               PAKISTAN                       <25                  NA                -0.1586664   -1.0462328    0.3439125
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0409170   -0.0087494    0.0881380
0-6 months    ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.1794922   -0.0527789    0.3605181
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                -0.0548366   -0.1667226    0.0463197
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                 0.0055273   -0.1195267    0.1166125
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0490361   -0.1672604    0.0572141
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0551270   -0.0719339    0.1671268
0-6 months    ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1413216    0.0232456    0.2451239
0-6 months    ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0454169   -0.0720944    0.1500479
0-6 months    ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0144598   -0.0441551    0.0143910
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                -0.0342120   -0.0643203   -0.0049553
0-6 months    ki1135781-COHORTS          GUATEMALA                      <25                  NA                -0.0629834   -0.2166840    0.0713006
0-6 months    ki1135781-COHORTS          INDIA                          <25                  NA                 0.0162603   -0.0385009    0.0681340
0-6 months    ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0084797   -0.0655186    0.0773389
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0267872    0.0103300    0.0429707
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <25                  NA                -0.0322833   -0.3589071    0.2158340
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <25                  NA                 0.0407407   -0.3473936    0.3170679
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <25                  NA                -0.2237762   -0.9353094    0.2261556
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          <25                  NA                 0.0205595   -0.1278557    0.1494446
6-24 months   ki1000108-IRC              INDIA                          <25                  NA                -0.1136544   -0.2279668   -0.0099834
6-24 months   ki1000109-EE               PAKISTAN                       <25                  NA                 0.2699912   -0.4910760    0.6425985
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <25                  NA                 0.0801930    0.0204458    0.1362960
6-24 months   ki1000304b-SAS-FoodSuppl   INDIA                          <25                  NA                 0.0106316   -0.1471079    0.1466803
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <25                  NA                 0.0975451   -0.0451508    0.2207585
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <25                  NA                -0.1137782   -0.3020372    0.0472608
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <25                  NA                -0.0022013   -0.1995264    0.1626634
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <25                  NA                 0.0499245   -0.0791089    0.1635288
6-24 months   ki1101329-Keneba           GAMBIA                         <25                  NA                 0.1745904    0.1040491    0.2395777
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <25                  NA                 0.0822858   -0.0439935    0.1932906
6-24 months   ki1113344-GMS-Nepal        NEPAL                          <25                  NA                 0.0526886   -0.0274278    0.1265578
6-24 months   ki1119695-PROBIT           BELARUS                        <25                  NA                -0.0699538   -0.2383561    0.0755477
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <25                  NA                 0.0757150    0.0233059    0.1253120
6-24 months   ki1135781-COHORTS          GUATEMALA                      <25                  NA                 0.1946189    0.0176447    0.3397107
6-24 months   ki1135781-COHORTS          INDIA                          <25                  NA                 0.1210667    0.0390376    0.1960937
6-24 months   ki1135781-COHORTS          PHILIPPINES                    <25                  NA                 0.0207222   -0.0492304    0.0860111
6-24 months   ki1148112-LCNI-5           MALAWI                         <25                  NA                 0.1319810   -0.2084829    0.3765266
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     <25                  NA                 0.0141832   -0.0053381    0.0333254
