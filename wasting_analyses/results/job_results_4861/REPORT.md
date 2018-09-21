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

* arm
* W_mage
* meducyrs
* feducyrs
* single
* brthmon
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_single
* delta_brthmon

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
![](/tmp/160b2102-0c53-4cef-9bbc-b4d4a6bab874/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/160b2102-0c53-4cef-9bbc-b4d4a6bab874/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/160b2102-0c53-4cef-9bbc-b4d4a6bab874/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/160b2102-0c53-4cef-9bbc-b4d4a6bab874/REPORT_files/figure-html/plot_par-1.png)<!-- -->

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
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1718428   0.0908197   0.2528659
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.4703612   0.3580278   0.5826946
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.2314986   0.1406483   0.3223489
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0769231   0.0256217   0.1282244
0-24 months   ki0047075b-MAL-ED          PERU                           <52 kg               NA                0.1130435   0.0550708   0.1710161
0-24 months   ki0047075b-MAL-ED          PERU                           [52-58) kg           NA                0.0704225   0.0108059   0.1300392
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.1958763   0.1399256   0.2518270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   <52 kg               NA                0.1666667   0.0330604   0.3002730
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   [52-58) kg           NA                0.2608696   0.1337398   0.3879993
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0612245   0.0136660   0.1087830
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2121212   0.1314345   0.2928079
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.0847458   0.0135422   0.1559493
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.3025869   0.2172108   0.3879631
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.4519633   0.3861473   0.5177793
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.3192838   0.2463686   0.3921989
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.3935953   0.2892872   0.4979034
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.4993970   0.4531286   0.5456653
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.4237094   0.3258087   0.5216101
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.2158916   0.1480917   0.2836916
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.4022480   0.3568379   0.4476580
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.2808862   0.2066704   0.3551020
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.2220327   0.1651676   0.2788979
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.4108995   0.3635525   0.4582465
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.2519083   0.1851386   0.3186779
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.2228527   0.2018672   0.2438382
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2866697   0.2458844   0.3274549
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.2757591   0.2379689   0.3135493
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1796338   0.1307483   0.2285192
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2826700   0.2576133   0.3077267
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2070811   0.1765013   0.2376608
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2778010   0.2152931   0.3403090
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2954217   0.2336602   0.3571832
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2895867   0.2295102   0.3496633
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.2205480   0.2099281   0.2311679
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.3055167   0.2875489   0.3234844
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.2546542   0.2392394   0.2700690
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
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1839055   0.1279190   0.2398919
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.2366228   0.1830437   0.2902020
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.1649424   0.1289947   0.2008901
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2699222   0.1771316   0.3627128
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3833310   0.3383091   0.4283529
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2779538   0.1922141   0.3636935
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1744338   0.1111100   0.2377576
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2852667   0.2433957   0.3271377
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1889989   0.1225293   0.2554684
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1703659   0.1180272   0.2227047
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.3221388   0.2768661   0.3674114
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1839989   0.1245956   0.2434022
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1325264   0.1154194   0.1496333
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.1848572   0.1497191   0.2199953
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1839258   0.1515693   0.2162824
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.2716260   0.2083223   0.3349297
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.2860323   0.2230960   0.3489686
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.2805311   0.2202995   0.3407628
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1677105   0.1580972   0.1773238
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.2221182   0.2058491   0.2383874
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1876732   0.1738322   0.2015142
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0886076   0.0258092   0.1514060
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               NA                0.2400000   0.1431375   0.3368625
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           NA                0.1358025   0.0610386   0.2105664
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1782988   0.1013594   0.2552383
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               NA                0.3403177   0.2885320   0.3921034
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           NA                0.2000522   0.1385653   0.2615391
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2219184   0.1309383   0.3128986
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               NA                0.3194944   0.2731594   0.3658295
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           NA                0.2128272   0.1310710   0.2945834
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0614035   0.0172987   0.1055083
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               NA                0.2015306   0.1617878   0.2412734
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           NA                0.1203704   0.0589518   0.1817890
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0763523   0.0402036   0.1125010
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               NA                0.1825662   0.1448849   0.2202476
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           NA                0.1047202   0.0570077   0.1524328
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.1501440   0.1306170   0.1696711
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               NA                0.2323336   0.1898187   0.2748486
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           NA                0.1647355   0.1306898   0.1987812
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.1797221   0.1304566   0.2289876
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               NA                0.2825808   0.2575077   0.3076540
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           NA                0.2069346   0.1763806   0.2374886
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0092437   0.0055255   0.0129619
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               NA                0.0125850   0.0063220   0.0188481
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           NA                0.0125365   0.0072039   0.0178691
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0792679   0.0718333   0.0867025
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               NA                0.1366995   0.1224939   0.1509051
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           NA                0.1048471   0.0932288   0.1164653
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
0-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7371598   1.6141551   4.641465
0-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.3471535   0.7303046   2.485022
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
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.4936644   1.1560694   1.929844
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.0551803   0.7163771   1.554217
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.2688082   0.9582943   1.679937
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0765102   0.7575636   1.529739
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.8631942   1.3350664   2.600240
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.3010520   0.8652422   1.956373
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8506257   1.3975226   2.450633
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.1345545   0.7847868   1.640208
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.2863640   1.0848484   1.525312
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.2374054   1.0482074   1.460753
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5735908   1.2111751   2.044451
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1527959   0.8974454   1.480801
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0634291   0.9538919   1.185545
0-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0424250   0.9854455   1.102699
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3852616   1.2839163   1.494607
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1546429   1.0687560   1.247432
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
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.2866546   1.0571238   1.566023
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           0.8968869   0.5844777   1.376282
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4201536   0.9876786   2.041997
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           1.0297551   0.6491543   1.633503
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           1.6353866   1.1053932   2.419491
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.0834992   0.6553213   1.791443
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           1.8908637   1.3488161   2.650743
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.0800217   0.6916272   1.686525
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.3948715   1.1082561   1.755611
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.3878434   1.1158241   1.726177
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.0530372   0.9374291   1.182903
0-6 months    ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.0327847   0.9759302   1.092951
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.3244144   1.2067660   1.453532
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.1190304   1.0193220   1.228492
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki0047075b-MAL-ED          NEPAL                          <52 kg               >=58 kg           2.7085714   1.1982188   6.122721
6-24 months   ki0047075b-MAL-ED          NEPAL                          [52-58) kg           >=58 kg           1.5326279   0.6247240   3.759977
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          <52 kg               >=58 kg           1.9086931   1.1950449   3.048513
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          [52-58) kg           >=58 kg           1.1220053   0.6456800   1.949721
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     <52 kg               >=58 kg           1.4396931   0.9323696   2.223063
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     [52-58) kg           >=58 kg           0.9590335   0.5468915   1.681769
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     <52 kg               >=58 kg           3.2820700   1.5583331   6.912504
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     [52-58) kg           >=58 kg           1.9603175   0.8122410   4.731163
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     <52 kg               >=58 kg           2.3911035   1.4266056   4.007678
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     [52-58) kg           >=58 kg           1.3715398   0.7109377   2.645972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   <52 kg               >=58 kg           1.5474050   1.2365533   1.936400
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   [52-58) kg           >=58 kg           1.0971831   0.8597897   1.400122
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   <52 kg               >=58 kg           1.5723212   1.2074555   2.047441
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   [52-58) kg           >=58 kg           1.1514143   0.8939942   1.482957
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1119695-PROBIT           BELARUS                        <52 kg               >=58 kg           1.3614687   0.7534247   2.460229
6-24 months   ki1119695-PROBIT           BELARUS                        [52-58) kg           >=58 kg           1.3562198   0.7711875   2.385065
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       <52 kg               >=58 kg           1.7245250   1.4993940   1.983459
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       [52-58) kg           >=58 kg           1.3226924   1.1440210   1.529268
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              >=58 kg           1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         <52 kg               >=58 kg           2.0685483   0.8395155   5.096859
6-24 months   ki1148112-LCNI-5           MALAWI                         [52-58) kg           >=58 kg           1.3850467   0.5061464   3.790117


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.1471457    0.0422895   0.2520018
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.2609209    0.1422996   0.3795422
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.1180732    0.0444222   0.1917241
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.0127321   -0.0300353   0.0554995
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0078274   -0.0229668   0.0386217
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0637755    0.0171086   0.1104424
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1149147    0.0368064   0.1930231
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0839688   -0.0135253   0.1814629
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.1443476    0.0801915   0.2085036
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.1090931    0.0572179   0.1609683
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0143922    0.0010172   0.0277673
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0475531    0.0173461   0.0777602
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0038574   -0.0003205   0.0080353
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0232736    0.0155479   0.0309993
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0348993   -0.0020178   0.0718164
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.0785761   -0.0155963   0.1727486
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.1235734    0.0109686   0.2361782
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0931723    0.0326646   0.1536799
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.0368999   -0.0006848   0.0744845
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0869910   -0.0007349   0.1747168
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0886454    0.0291244   0.1481665
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0879122    0.0395278   0.1362966
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0077798   -0.0033396   0.0188991
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0029892   -0.0014020   0.0073803
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0126601    0.0056794   0.0196408
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.0645839    0.0060879   0.1230799
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1280010    0.0413580   0.2146439
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.0719817   -0.0141395   0.1581029
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.0998343    0.0543326   0.1453359
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.0551545    0.0200410   0.0902681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0111300   -0.0013213   0.0235813
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.0474648    0.0168884   0.0780412
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0010730   -0.0004513   0.0025974
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0180517    0.0123149   0.0237885
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.0325967   -0.0041856   0.0693789


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level     estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  -----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.4397059    0.0269915   0.6773620
0-24 months   ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.5490683    0.2190253   0.7396338
0-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4072669    0.1024716   0.6085555
0-24 months   ki0047075b-MAL-ED          PERU                           >=58 kg              NA                0.1420118   -0.4918851   0.5065681
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   >=58 kg              NA                0.0384255   -0.1251152   0.1781948
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.5102041    0.0189072   0.7554767
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.2752438    0.0689320   0.4358397
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.1758273   -0.0560881   0.3568144
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.4006992    0.1969939   0.5527289
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3294611    0.1555901   0.4675306
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0606639    0.0027264   0.1152356
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2093128    0.0487555   0.3427703
0-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0136953   -0.0018902   0.0290383
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0954535    0.0633185   0.1264861
0-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4431153   -0.2685075   0.7555233
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     >=58 kg              NA                0.3501462   -0.2304051   0.6567716
0-6 months    ki0047075b-MAL-ED          INDIA                          >=58 kg              NA                0.3934837   -0.0893866   0.6623219
0-6 months    ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.5156977    0.0793411   0.7452382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.1671150   -0.0221932   0.3213637
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2437315   -0.0458433   0.4531283
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.3369534    0.0714485   0.5265413
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.3403780    0.1282045   0.5009138
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0554485   -0.0268898   0.1311848
0-6 months    ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.0108850   -0.0057158   0.0272117
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.0701894    0.0307820   0.1079946
6-24 months   ki0047075b-MAL-ED          NEPAL                          >=58 kg              NA                0.4215893   -0.0867215   0.6921392
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          >=58 kg              NA                0.4178944    0.0889422   0.6280731
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     >=58 kg              NA                0.2449190   -0.1112812   0.4869460
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     >=58 kg              NA                0.6191742    0.2410369   0.8089126
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     >=58 kg              NA                0.4194044    0.1004892   0.6252504
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   >=58 kg              NA                0.0690128   -0.0111400   0.1428120
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   >=58 kg              NA                0.2089241    0.0463790   0.3437634
6-24 months   ki1119695-PROBIT           BELARUS                        >=58 kg              NA                0.1040095   -0.0659532   0.2468723
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       >=58 kg              NA                0.1854885    0.1254309   0.2414218
6-24 months   ki1148112-LCNI-5           MALAWI                         >=58 kg              NA                0.4263436   -0.3046507   0.7477626
