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

**Intervention Variable:** mwtkg

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        mwtkg         ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  -----------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       39     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        9     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0       97     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       65     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       33     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       11     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      132     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1       11     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       40     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       30     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        6     221
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       33     242
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        9     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       66     242
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       84     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       28     242
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       22     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       67     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1       13     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       39     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       37     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       63     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       19     238
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0       96     290
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        8     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0      102     290
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1       13     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       66     290
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        5     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      156     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       38     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       25     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        5     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       34     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1       12     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       92     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        6     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       78     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       21     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       54     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        5     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       78    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       31    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      632    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      520    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      162    1497
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       74    1497
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       49     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       33     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      224     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      224     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       53     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       41     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0       92     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       28     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      256     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      176     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       80     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       37     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      148     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       44     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      240     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      166     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      117     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       40     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1147    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      329    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      292    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1      101    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      355    2352
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1      128    2352
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      761    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      170    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      855    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      334    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      840    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      218    3178
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0     7427   13772
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2852   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0      796   13772
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1      335   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0     1670   13772
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1      692   13772
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4550   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1     1272   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1684   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      715   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2211   11168
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      736   11168
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     838
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      457     838
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       47     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      206     838
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       14     838
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        7     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      122     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       40     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       34     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1       10     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      134     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        9     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       40     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       33     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        3     221
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       34     242
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        8     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  0       98     242
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg                  1       52     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       34     242
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       16     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       73     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        7     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       52     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       24     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       70     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       12     238
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 0      100     290
0-6 months    ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  0      110     290
0-6 months    ki0047075b-MAL-ED          PERU                           <52 kg                  1        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              0       69     290
0-6 months    ki0047075b-MAL-ED          PERU                           [52-58) kg              1        2     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      177     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       17     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       27     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        3     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       40     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        6     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       94     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       94     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1        5     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       57     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        2     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       90    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       19    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      875    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      271    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      196    1490
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       39    1490
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       60     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       22     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      274     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      172     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       66     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       28     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0       96     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1       24     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      306     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1      126     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       91     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       26     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      158     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       34     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      275     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1      131     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      127     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       30     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1284    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      192    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      335    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       58    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      403    2352
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       80    2352
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 0     7491   13772
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg                 1     2788   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  0      806   13772
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg                  1      325   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              0     1693   13772
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg              1      669   13772
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4847   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      953   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1868   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      513   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2396   11116
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      539   11116
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 0       33     271
0-6 months    ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  0      164     271
0-6 months    ki1148112-LCNI-5           MALAWI                         <52 kg                  1        3     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              0       70     271
0-6 months    ki1148112-LCNI-5           MALAWI                         [52-58) kg              1        1     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 0       41     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg                 1        3     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  0      118     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg                  1       37     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              0       37     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg              1        4     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 0      133     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         >=58 kg                 1        2     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  0       37     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         <52 kg                  1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              0       30     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         [52-58) kg              1        4     206
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 0       37     234
6-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg                 1        3     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  0       94     234
6-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg                  1       51     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              0       39     234
6-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg              1       10     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 0       72     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg                 1        7     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  0       57     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg                  1       18     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              0       70     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg              1       11     235
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 0       96     269
6-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg                 1        4     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  0       96     269
6-24 months   ki0047075b-MAL-ED          PERU                           <52 kg                  1        9     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              0       60     269
6-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg              1        4     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 0      157     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg                 1       25     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  0       26     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg                  1        4     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              0       35     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg              1        7     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0       91     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1        4     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  0       75     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       17     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0       53     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1        5     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 0       84    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg                 1       18    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  0      699    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg                  1      361    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              0      175    1381
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg              1       44    1381
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 0       55     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg                 1       17     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  0      264     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg                  1      123     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              0       63     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg              1       19     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 0      107     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg                 1        7     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  0      313     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg                  1       79     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              0       95     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg              1       13     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 0      174     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg                 1       14     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  0      324     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg                  1       67     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              0      136     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg              1       15     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 0     1066    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg                 1      189    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  0      246    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg                  1       65    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              0      347    1978
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg              1       65    1978
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 0      761    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg                 1      170    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  0      855    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg                  1      334    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              0      840    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg              1      218    3178
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 0    10177   13764
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg                 1       95   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  0     1117   13764
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg                  1       14   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              0     2328   13764
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg              1       33   13764
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 0     4596    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg                 1      400    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  0     1841    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg                  1      280    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              0     2319    9700
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg              1      264    9700
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 0      109     824
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg                 1        5     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  0      451     824
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg                  1       45     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              0      201     824
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg              1       13     824


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

* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: INDIA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF

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
![](/tmp/36ad0cbd-8940-4ecc-ace0-fff180e61ca4/b2f4b047-cfae-4b93-a806-ab2c1442c9de/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/36ad0cbd-8940-4ecc-ace0-fff180e61ca4/b2f4b047-cfae-4b93-a806-ab2c1442c9de/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/36ad0cbd-8940-4ecc-ace0-fff180e61ca4/b2f4b047-cfae-4b93-a806-ab2c1442c9de/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/36ad0cbd-8940-4ecc-ace0-fff180e61ca4/b2f4b047-cfae-4b93-a806-ab2c1442c9de/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1875000   0.0768640   0.2981360
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.4012346   0.3256079   0.4768612
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2500000   0.1218027   0.3781973
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2142857   0.0899341   0.3386374
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.5600000   0.4803984   0.6396016
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.4400000   0.3021259   0.5778741
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1625000   0.0814904   0.2435096
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.4868421   0.3742326   0.5994516
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2317073   0.1401931   0.3232216
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0769231   0.0256217   0.1282244
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1130435   0.0550708   0.1710161
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.0704225   0.0108059   0.1300392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1958763   0.1399256   0.2518270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.1666667   0.0330604   0.3002730
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2608696   0.1337398   0.3879993
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0612245   0.0136660   0.1087830
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2121212   0.1314345   0.2928079
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0847458   0.0135422   0.1559493
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2844037   0.1966022   0.3722051
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4513889   0.3856278   0.5171500
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3135593   0.2399261   0.3871925
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.4024390   0.2962131   0.5086650
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.5000000   0.4536631   0.5463369
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4361702   0.3358394   0.5365011
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2333333   0.1576023   0.3090644
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4074074   0.3610388   0.4537760
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.3162393   0.2319175   0.4005611
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2291667   0.1696770   0.2886563
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.4088670   0.3610143   0.4567197
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2547771   0.1865731   0.3229810
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2228997   0.2016629   0.2441366
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2569975   0.2137855   0.3002094
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2650104   0.2256428   0.3043779
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1825994   0.1323999   0.2327988
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2809083   0.2546927   0.3071239
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2060491   0.1748248   0.2372735
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2774589   0.2148665   0.3400513
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2961981   0.2274084   0.3649878
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2929721   0.2315177   0.3544265
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2184816   0.2078669   0.2290963
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2980409   0.2797368   0.3163449
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2497455   0.2341165   0.2653745
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0438597   0.0062458   0.0814735
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.0932540   0.0678519   0.1186560
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.0636364   0.0313610   0.0959117
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1458333   0.0457910   0.2458757
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               NA                0.2469136   0.1803798   0.3134473
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           NA                0.2272727   0.1032032   0.3513423
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1904762   0.0714732   0.3094792
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               NA                0.3466667   0.2703490   0.4229843
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           NA                0.3200000   0.1904338   0.4495662
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0875000   0.0254506   0.1495494
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.3157895   0.2110647   0.4205142
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1463415   0.0696793   0.2230037
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1743119   0.1161048   0.2325190
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2364747   0.1826432   0.2903062
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1659574   0.1297524   0.2021625
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2682927   0.1723165   0.3642689
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3856502   0.3404402   0.4308602
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2978723   0.2053479   0.3903968
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2000000   0.1283787   0.2716213
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2916667   0.2487730   0.3345603
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2222222   0.1468343   0.2976101
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1770833   0.1230512   0.2311155
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3226601   0.2771562   0.3681640
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1910828   0.1295440   0.2526216
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1300813   0.1129163   0.1472463
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1475827   0.1125085   0.1826569
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1656315   0.1324713   0.1987917
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2712326   0.2078236   0.3346416
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2873563   0.2171121   0.3576006
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2832345   0.2214621   0.3450070
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1643103   0.1547734   0.1738473
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2154557   0.1989408   0.2319706
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1836457   0.1696371   0.1976542
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0886076   0.0258092   0.1514060
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2400000   0.1431375   0.3368625
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1358025   0.0610386   0.2105664
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1764706   0.1000137   0.2529275
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3405660   0.2887553   0.3923768
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2009132   0.1362909   0.2655356
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2361111   0.1379235   0.3342988
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3178295   0.2713953   0.3642637
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2317073   0.1403010   0.3231136
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0614035   0.0172987   0.1055083
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2015306   0.1617878   0.2412734
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1203704   0.0589518   0.1817890
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0744681   0.0369148   0.1120213
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1713555   0.1339797   0.2087313
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.0993377   0.0515963   0.1470792
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1505976   0.1308051   0.1703902
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2090032   0.1638029   0.2542035
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1577670   0.1225596   0.1929744
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1825994   0.1323999   0.2327988
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2809083   0.2546927   0.3071239
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2060491   0.1748248   0.2372735
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0092484   0.0055299   0.0129670
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0123784   0.0053547   0.0194022
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0139771   0.0082366   0.0197177
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0800641   0.0725382   0.0875899
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1320132   0.1176065   0.1464199
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1022067   0.0905242   0.1138892
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0438597   0.0062454   0.0814739
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               NA                0.0907258   0.0654338   0.1160178
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           NA                0.0607477   0.0287248   0.0927706


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.2899160   0.2321510   0.3476810
0-24 months   ki0047075b-MAL-ED          PERU                           NA                   NA                0.0896552   0.0567177   0.1225926
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   NA                   NA                0.2037037   0.1555745   0.2518329
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1250000   0.0844083   0.1655917
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4175017   0.3589990   0.4760043
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2372449   0.2200495   0.2544403
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816584   0.2197582   0.3435586
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2438216   0.2358577   0.2517856
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0787590   0.0605107   0.0970072
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1806723   0.1316889   0.2296556
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2208054   0.1758216   0.2657892
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1403061   0.1262673   0.1543450
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746152   0.2119692   0.3372611
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1803706   0.1732226   0.1875186
6-24 months   ki0047075b-MAL-ED          NEPAL                          NA                   NA                0.1531915   0.1070438   0.1993392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3062998   0.2626026   0.3499970
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612740   0.1450620   0.1774860
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0103168   0.0071373   0.0134962
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0973196   0.0914209   0.1032182
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0764563   0.0583018   0.0946108


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           2.1399177   1.1518112   3.975693
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.3333333   0.6101437   2.913704
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           2.6133333   1.4378705   4.749740
0-24 months   ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           2.0533333   1.0617947   3.970803
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.9959514   1.7292600   5.190501
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.4258912   0.7548649   2.693417
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               >=58 kg           1.4695652   0.6336052   3.408466
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           >=58 kg           0.9154930   0.3116133   2.689640
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               >=58 kg           0.8508772   0.3633111   1.992760
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           >=58 kg           1.3318078   0.7570416   2.342952
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           3.4646465   1.4589079   8.227918
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3841808   0.4408035   4.346509
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.5871416   1.1929861   2.111524
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.1025150   0.7210266   1.685846
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.2424242   0.9392374   1.643480
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0838169   0.7636604   1.538196
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.7460317   1.2378883   2.462764
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.3553114   0.8904640   2.062822
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.7841469   1.3420330   2.371909
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.1117545   0.7657067   1.614193
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.1529734   0.9503598   1.398784
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.1889218   0.9965737   1.418395
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5383862   1.1705154   2.021872
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1284221   0.8690462   1.465212
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0675385   0.9448829   1.206116
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0559116   0.9995263   1.115478
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3641461   1.2613981   1.475264
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1430962   1.0560287   1.237342
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.1261904   0.8646020   5.228632
0-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.4509090   0.5357128   3.929600
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     <52 kg               >=58 kg           1.6931217   0.8102155   3.538147
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     [52-58) kg           >=58 kg           1.5584416   0.6485470   3.744895
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          INDIA                          <52 kg               >=58 kg           1.8200000   0.9383983   3.529845
0-6 months    ki0047075b-MAL-ED          INDIA                          [52-58) kg           >=58 kg           1.6800000   0.7979572   3.537032
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           3.6090226   1.6496917   7.895441
0-6 months    ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.6724739   0.6925717   4.038815
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.3566180   1.0799298   1.704196
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.9520717   0.5935646   1.527114
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4374236   0.9864958   2.094471
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.1102515   0.6913015   1.783098
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.4583333   0.9902143   2.147753
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.1111111   0.6784652   1.819648
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8220806   1.3019216   2.550060
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.0790558   0.6924251   1.681570
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.1345420   0.8644991   1.488938
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2732919   1.0018275   1.618315
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0594461   0.9283933   1.208998
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0442496   0.9878648   1.103853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3112728   1.1910690   1.443608
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1176756   1.0155184   1.230109
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7085714   1.1982188   6.122721
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.5326279   0.6247240   3.759977
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.9298742   1.2097510   3.078662
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.1385084   0.6454131   2.008328
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.3461012   0.8662703   2.091712
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9813486   0.5532052   1.740846
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           3.2820700   1.5583331   6.912504
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.9603175   0.8122410   4.731163
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.3010596   1.3283439   3.986072
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3339640   0.6646702   2.677208
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3878256   1.0775274   1.787481
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0476062   0.8085781   1.357295
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5383862   1.1705154   2.021872
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1284221   0.8690462   1.465212
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.3384336   0.7026549   2.549480
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.5112954   0.8655664   2.638750
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.6488449   1.4276689   1.904286
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.2765621   1.1009589   1.480174
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0685483   0.8395155   5.096859
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3850467   0.5061464   3.790117


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1471457    0.0422895   0.2520018
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2609209    0.1422996   0.3795422
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1274160    0.0533380   0.2014940
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0127321   -0.0300353   0.0554995
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0078274   -0.0229668   0.0386217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0637755    0.0171086   0.1104424
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1330980    0.0501065   0.2160895
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0751251   -0.0241559   0.1744060
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1269058    0.0561735   0.1976382
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1019592    0.0484107   0.1555076
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0143452    0.0009053   0.0277850
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0445876    0.0129305   0.0762446
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0041995    0.0000900   0.0083091
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0253400    0.0176835   0.0329965
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0348993   -0.0020178   0.0718164
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.0785761   -0.0155963   0.1727486
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1235734    0.0109686   0.2361782
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0931723    0.0326646   0.1536799
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0464934    0.0053360   0.0876509
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0886205   -0.0019473   0.1791883
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0630792   -0.0032855   0.1294439
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0811948    0.0320969   0.1302928
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0102248   -0.0008172   0.0212669
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0033826   -0.0010049   0.0077700
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0160603    0.0091949   0.0229257
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0645839    0.0060879   0.1230799
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1298292    0.0437584   0.2159000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0577891   -0.0346823   0.1502605
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0998343    0.0543326   0.1453359
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0570388    0.0211819   0.0928957
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0106764   -0.0018722   0.0232250
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0445876    0.0129305   0.0762446
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0010683   -0.0004570   0.0025937
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0172555    0.0115032   0.0230078
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0325967   -0.0041856   0.0693789


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4397059    0.0269915   0.6773620
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.5490683    0.2190253   0.7396338
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4394928    0.1287317   0.6394126
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1420118   -0.4918851   0.5065681
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0384255   -0.1251152   0.1781948
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.5102041    0.0189072   0.7554767
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.3187963    0.0973921   0.4858915
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1573089   -0.0787476   0.3417104
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.3522822    0.1241081   0.5210158
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3079167    0.1269471   0.4513742
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0604657    0.0021480   0.1153750
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1962593    0.0293775   0.3344487
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0149100   -0.0005939   0.0301737
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1039285    0.0720500   0.1347118
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4431153   -0.2685075   0.7555233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.3501462   -0.2304051   0.6567716
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3934837   -0.0893866   0.6623219
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5156977    0.0793411   0.7452382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2105630   -0.0010937   0.3774701
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2482971   -0.0532266   0.4634989
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2397727   -0.0582110   0.4538466
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3143697    0.0979374   0.4788733
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0728751   -0.0090047   0.1481104
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0123174   -0.0044277   0.0287834
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0890405    0.0502736   0.1262250
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4215893   -0.0867215   0.6921392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4238632    0.0972969   0.6322892
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1966282   -0.1880018   0.4567296
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.6191742    0.2410369   0.8089126
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.4337323    0.0997469   0.6438122
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0662004   -0.0147437   0.1406878
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1962593    0.0293775   0.3344487
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1035524   -0.0664498   0.2464546
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1773079    0.1168946   0.2335884
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4263436   -0.3046507   0.7477626
