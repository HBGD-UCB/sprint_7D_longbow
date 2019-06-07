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

**Outcome Variable:** ever_swasted

## Predictor Variables

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         ever_swasted   n_cell       n
------------  -------------------------  -----------------------------  -----------  -------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       45     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        3     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      144     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       18     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       44     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      140     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        3     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       42     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       35     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        1     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       40     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        2     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0      131     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1       19     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       47     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        3     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       78     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        2     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       70     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        6     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        1     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0      104     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0      114     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1        1     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       69     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1        2     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      188     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        6     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       28     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        2     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       41     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        5     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       95     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        3     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       95     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       59     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       28     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1        3     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      293     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1       57     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0       73     460
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1        6     460
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       77     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        5     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      372     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       76     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       77     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       17     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      116     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1        4     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      401     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1       31     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0      111     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1        6     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      185     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1        7     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      355     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       51     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      149     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1        8     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1388    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       88    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      356    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       37    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      451    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       32    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      201     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1        7     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      284     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       17     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      256     779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       14     779
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     4535    6711
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1      454    6711
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      491    6711
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1       55    6711
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1068    6711
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1      108    6711
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5329   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      493   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2112   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      287   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2670   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      277   11168
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0      112     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        2     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      500     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1        4     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      217     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        3     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       45     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        3     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      149     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1       13     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       44     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      141     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       42     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       36     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        0     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       40     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        2     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   0      135     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                   1       15     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       47     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        3     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       78     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        2     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       72     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        4     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        1     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  0      104     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   0      115     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                   1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               0       70     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg               1        1     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      192     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        2     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       29     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        1     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       45     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        1     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       96     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        2     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       98     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       59     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       29     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1        2     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      330     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1       19     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0       76     459
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1        3     459
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       79     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        3     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      404     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       42     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       83     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1       11     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      116     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1        4     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      413     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1       19     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0      112     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1        5     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      186     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1        6     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      368     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       38     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      151     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1        6     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1431    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       45    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      376    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       17    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      466    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       17    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  0     4538    6711
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                  1      451    6711
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   0      492    6711
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                   1       54    6711
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1069    6711
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg               1      107    6711
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     5436   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      364   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2188   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      193   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2742   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1      193   11116
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   0      167     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                   1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               0       71     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  0       44     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                  1        0     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   0      150     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                   1        5     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg               1        0     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  0      134     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                  1        1     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                   1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               0       33     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg               1        1     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  0       40     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                  1        0     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   0      140     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                   1        5     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               0       49     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg               1        0     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  0       79     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                  1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   0       73     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                   1        2     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               0       81     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg               1        0     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  0      100     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                  1        0     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   0      104     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                   1        1     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               0       63     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg               1        1     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  0      178     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                  1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   0       29     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                   1        1     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               0       38     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg               1        4     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0       94     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1        1     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   0       89     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                   1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0       58     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1        0     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  0       30     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                  1        1     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   0      287     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                   1       43     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               0       67     431
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg               1        3     431
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  0       70     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                  1        2     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   0      348     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                   1       39     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               0       76     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg               1        6     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  0      114     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                  1        0     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   0      380     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                   1       12     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               0      107     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg               1        1     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  0      187     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                  1        1     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   0      374     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                   1       17     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               0      149     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg               1        2     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  0     1210    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                  1       45    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   0      289    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                   1       22    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               0      397    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg               1       15    1978
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  0      201     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                  1        7     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   0      284     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                   1       17     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               0      256     779
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg               1       14     779
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  0     4985    6709
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                  1        3    6709
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   0      545    6709
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                   1        1    6709
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               0     1174    6709
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg               1        1    6709
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  0     4861    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                  1      135    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   0     2017    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                   1      104    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               0     2493    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg               1       90    9700
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  0      112     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                  1        2     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   0      492     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                   1        4     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               0      211     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg               1        3     824


The following strata were considered:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 0-6 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1126311-ZVITAMBO, country: ZIMBABWE
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 0-6 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1000304b-SAS-CompFeed, country: INDIA
* agecat: 6-24 months, studyid: ki1017093-NIH-Birth, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1119695-PROBIT, country: BELARUS
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness



```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in fold_fun(n, ...): n <= V so using leave-one-out CV
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_mean is
## not a cv-aware learner, so self$predict_fold reverts to self$predict
```

```
## Warning in learner$predict_fold(learner_task, fold_number): Lrnr_glm_TRUE
## is not a cv-aware learner, so self$predict_fold reverts to self$predict
```




# Results Detail

## Results Plots
![](/tmp/0cf9468c-0665-4271-9d06-7ee0f37b1460/24f9d568-57c3-41ea-9109-51421c1ea443/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/0cf9468c-0665-4271-9d06-7ee0f37b1460/24f9d568-57c3-41ea-9109-51421c1ea443/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/0cf9468c-0665-4271-9d06-7ee0f37b1460/24f9d568-57c3-41ea-9109-51421c1ea443/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/0cf9468c-0665-4271-9d06-7ee0f37b1460/24f9d568-57c3-41ea-9109-51421c1ea443/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0609756   0.0091427   0.1128086
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.1696429   0.1348606   0.2044251
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.1808511   0.1029803   0.2587218
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0364583   0.0099295   0.0629872
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1256158   0.0933571   0.1578744
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0509554   0.0165343   0.0853765
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0596206   0.0475384   0.0717028
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0941476   0.0652689   0.1230263
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0662526   0.0440664   0.0884388
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0336538   0.0102586   0.0570491
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0564784   0.0255451   0.0874117
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0518519   0.0260252   0.0776785
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0910002   0.0311508   0.1508496
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.1007326   0.0223575   0.1791077
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0918367   0.0346014   0.1490721
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0846788   0.0775272   0.0918304
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1196332   0.1066461   0.1326202
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0939939   0.0834575   0.1045303
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0312500   0.0066227   0.0558773
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.0935961   0.0652454   0.1219467
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0382166   0.0082076   0.0682255
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0304878   0.0217150   0.0392606
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0432570   0.0231397   0.0633743
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0351967   0.0187591   0.0516342
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0903989   0.0304884   0.1503094
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0989011   0.0215278   0.1762744
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0909864   0.0336699   0.1483029
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0627586   0.0565167   0.0690005
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0810584   0.0700953   0.0920214
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0657581   0.0567907   0.0747255
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0358566   0.0255671   0.0461460
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.0707395   0.0422374   0.0992417
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0364078   0.0183172   0.0544984
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0336538   0.0102586   0.0570491
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.0564784   0.0255451   0.0874117
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.0518519   0.0260252   0.0776785
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0270216   0.0225252   0.0315180
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.0490335   0.0398432   0.0582238
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.0348432   0.0277708   0.0419156


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.1570513   0.1284803   0.1856223
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0874172   0.0672569   0.1075775
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0667517   0.0566626   0.0768408
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0487805   0.0359763   0.0615847
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0919386   0.0319275   0.1519497
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0946454   0.0892162   0.1000747
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.0662252   0.0484753   0.0839750
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0335884   0.0263056   0.0408712
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.0911936   0.0310515   0.1513356
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0674703   0.0628071   0.0721335
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.0414560   0.0326689   0.0502431
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.0487805   0.0359763   0.0615847
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0339175   0.0303150   0.0375200


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level    estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ---------  ----------  ---------
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           2.782143   1.1604223   6.670261
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           2.965957   1.1437460   7.691309
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           3.445461   1.5926859   7.453573
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.397634   0.5178396   3.772175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.579112   1.0933282   2.280737
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.111237   0.7513046   1.643603
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.678216   0.6407698   4.395349
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.540741   0.7012644   3.385145
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.106949   0.7704850   1.590345
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.009193   0.8564137   1.189226
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.412788   1.2312428   1.621101
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.110005   0.9646529   1.277258
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.995074   1.2874825   6.967448
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.222930   0.4020223   3.720086
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.418829   0.8211469   2.451543
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.154451   0.6670277   1.998055
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.094052   0.7885868   1.517842
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.006499   0.8555227   1.184119
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.291590   1.0919795   1.527688
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.047794   0.8850604   1.240449
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.972847   1.2029996   3.235352
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.015372   0.5720418   1.802282
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.678216   0.6407698   4.395349
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.540741   0.7012644   3.385145
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.814602   1.4123137   2.331479
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.289457   0.9917875   1.676467


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0960757    0.0431904   0.1489609
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0509589    0.0235314   0.0783864
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0071311   -0.0009032   0.0151654
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0151266   -0.0059278   0.0361811
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0009384   -0.0036250   0.0055018
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0099666    0.0047420   0.0151912
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0349752    0.0102146   0.0597358
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0031006   -0.0026792   0.0088804
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0007947   -0.0034389   0.0050283
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0047117    0.0002341   0.0091893
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0055994   -0.0013818   0.0125807
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0151266   -0.0059278   0.0361811
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0068959    0.0033789   0.0104129


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.6117471    0.1133348   0.8299919
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.5829388    0.1719680   0.7899356
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1068303   -0.0209323   0.2186043
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3100962   -0.2871483   0.6302156
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0102069   -0.0406502   0.0585786
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1053047    0.0486506   0.1585851
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.5281250    0.0134939   0.7742883
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0923124   -0.0958350   0.2481562
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0087143   -0.0386464   0.0539153
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0698336    0.0012084   0.1337436
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1350695   -0.0480923   0.2862224
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.3100962   -0.2871483   0.6302156
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2033140    0.0950102   0.2986567
