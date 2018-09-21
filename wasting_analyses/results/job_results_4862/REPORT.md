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

**Intervention Variable:** mbmi

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

agecat        studyid                    country                        mbmi                   ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  --------------------  ------------  -------  ------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0      105     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       58     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0       15     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1       17     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0       49     254
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1       10     254
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0       81     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        7     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        8     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        2     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0      113     221
0-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1       10     221
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    0       69     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    1       73     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      0       20     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      1       29     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0       38     242
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1       13     242
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    0       85     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       49     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0       84     238
0-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       20     238
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    0      143     290
0-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    1       16     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      0        3     290
0-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      1        2     290
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              0      118     290
0-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        8     290
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0       79     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       30     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        8     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0      128     270
0-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       25     270
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      153     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1       24     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0       10     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        4     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       61     256
0-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        4     256
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      619    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      349    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      152    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1      195    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       47    1389
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1       27    1389
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0      234     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      208     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       44     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       60     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0       48     624
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       30     624
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0      275     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1      148     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       64     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       63     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0       89     669
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       30     669
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0      312     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1      171     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       36     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       32     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0      157     755
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       47     755
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      932    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      303    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0       25    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1       13    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0      832    2345
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      240    2345
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    0     1982    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    1      559    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      0      320    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      1      131    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              0      154    3178
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              1       32    3178
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    0     5813   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    1     2338   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      0      346   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      1      177   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              0     3702   13728
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              1     1352   13728
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0     4989    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1     1724    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0      348    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1      168    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0     2059    9797
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      509    9797
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    0      611     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    1       41     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      0      120     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      1       25     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0       40     837
0-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     837
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0      127     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       36     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0       19     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1       13     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0       51     254
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1        8     254
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0       84     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        4     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        8     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        2     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0      115     221
0-6 months    ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1        8     221
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                    0       96     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight                    1       46     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                      0       28     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight                      1       21     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0       42     242
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1        9     242
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                    0      102     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       32     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0       93     238
0-6 months    ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       11     238
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                    0      153     290
0-6 months    ki0047075b-MAL-ED          PERU                           Normal weight                    1        6     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                      0        5     290
0-6 months    ki0047075b-MAL-ED          PERU                           Underweight                      1        0     290
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese              0      121     290
0-6 months    ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        5     290
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0       95     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       14     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        8     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0      141     270
0-6 months    ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       12     270
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      170     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1        7     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0       13     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        1     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       62     256
0-6 months    ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        3     256
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      782    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      182    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      243    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1      101    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       59    1382
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1       15    1382
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0      285     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      156     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       59     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       44     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0       56     622
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       22     622
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0      317     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1      106     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       79     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       48     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0       97     669
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       22     669
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0      345     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1      138     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       48     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       20     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0      167     755
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       37     755
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0     1059    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      176    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0       30    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1        8    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0      927    2345
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      145    2345
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                    0     5872   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight                    1     2279   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                      0      351   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight                      1      172   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese              0     3734   13728
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese              1     1320   13728
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0     5413    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1     1279    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0      391    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1      118    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0     2174    9759
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      384    9759
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                    0      211     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Normal weight                    1        4     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                      0       47     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Underweight                      1        0     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0        9     271
0-6 months    ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     271
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    0      123     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight                    1       31     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      0       22     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight                      1        9     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              0       51     240
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese              1        4     240
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    0       77     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal weight                    1        4     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      0        9     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Underweight                      1        0     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              0      114     206
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Overweight or Obese              1        2     206
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    0       96     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight                    1       41     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      0       32     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight                      1       16     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              0       42     234
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese              1        7     234
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    0      106     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal weight                    1       26     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      0        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Underweight                      1        0     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              0       93     235
6-24 months   ki0047075b-MAL-ED          NEPAL                          Overweight or Obese              1       10     235
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    0      135     269
6-24 months   ki0047075b-MAL-ED          PERU                           Normal weight                    1       12     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      0        3     269
6-24 months   ki0047075b-MAL-ED          PERU                           Underweight                      1        2     269
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              0      114     269
6-24 months   ki0047075b-MAL-ED          PERU                           Overweight or Obese              1        3     269
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    0       82     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal weight                    1       21     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      0        7     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Underweight                      1        0     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              0      129     254
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Overweight or Obese              1       15     254
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      150     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal weight                    1       20     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      0       10     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Underweight                      1        3     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0       59     245
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1        3     245
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    0      649    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight                    1      238    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      0      182    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight                      1      139    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              0       52    1276
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese              1       16    1276
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    0      268     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight                    1      109     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      0       56     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight                      1       37     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              0       58     541
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese              1       13     541
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    0      329     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight                    1       62     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      0       81     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight                      1       27     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              0      105     614
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese              1       10     614
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    0      400     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight                    1       64     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      0       49     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight                      1       18     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              0      185     730
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese              1       14     730
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    0      844    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight                    1      180    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      0       24    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight                      1        6    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              0      786    1972
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese              1      132    1972
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    0     1982    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight                    1      559    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      0      320    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight                      1      131    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              0      154    3178
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese              1       32    3178
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    0     8058   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight                    1       88   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      0      513   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight                      1       10   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              0     5008   13720
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese              1       43   13720
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    0     5270    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight                    1      596    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      0      382    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight                      1       75    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              0     2081    8559
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese              1      155    8559
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    0      606     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Normal weight                    1       38     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      0      114     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Underweight                      1       25     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              0       40     823
6-24 months   ki1148112-LCNI-5           MALAWI                         Overweight or Obese              1        0     823


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
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 0-6 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BANGLADESH
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: BRAZIL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: NEPAL
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: PERU
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: SOUTH AFRICA
* agecat: 6-24 months, studyid: ki0047075b-MAL-ED, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI

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
![](/tmp/a3da50a3-9b2d-40d2-858a-ed9481e302c6/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/a3da50a3-9b2d-40d2-858a-ed9481e302c6/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/a3da50a3-9b2d-40d2-858a-ed9481e302c6/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/a3da50a3-9b2d-40d2-858a-ed9481e302c6/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.3540013   0.2810565   0.4269461
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.4220854   0.2908449   0.5533259
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.1497432   0.0624200   0.2370664
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.5095815   0.4278478   0.5913153
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.5884013   0.4536074   0.7231953
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.2479076   0.1350495   0.3607656
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.3599601   0.3054453   0.4144748
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.5635066   0.4859147   0.6410986
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.3657463   0.1949551   0.5365374
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.4701186   0.4236763   0.5165609
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.5781405   0.4844308   0.6718501
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.3820641   0.2769070   0.4872212
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.3480476   0.3033829   0.3927124
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.4915608   0.4166497   0.5664719
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.2279562   0.1636099   0.2923026
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.3518430   0.3091723   0.3945138
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.5190794   0.4201872   0.6179716
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.2209882   0.1641417   0.2778348
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.2494011   0.2251019   0.2737003
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.3872075   0.2984769   0.4759382
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.2271224   0.2017518   0.2524930
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.2201553   0.1939821   0.2463285
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.2876211   0.2272621   0.3479802
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.1513624   0.0058102   0.2969145
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.2875430   0.2259158   0.3491702
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.3497780   0.2824717   0.4170843
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.2699939   0.2071520   0.3328358
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.2588855   0.2483992   0.2693718
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.3378774   0.3019926   0.3737622
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.2012309   0.1855361   0.2169258
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.2208589   0.1570507   0.2846671
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.4062500   0.2357485   0.5767515
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.1355932   0.0480633   0.2231232
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.3239437   0.2468126   0.4010747
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.4285714   0.2897227   0.5674201
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.1764706   0.0716280   0.2813132
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.1889624   0.1474097   0.2305151
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.2931633   0.2255284   0.3607983
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2020595   0.1411498   0.2629692
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.3527992   0.3082235   0.3973750
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4431703   0.3508726   0.5354681
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.2994934   0.2024574   0.3965293
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.2444856   0.2042876   0.2846836
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.3752064   0.3030769   0.4473358
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1504276   0.0935372   0.2073180
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.2821354   0.2421384   0.3221324
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.2854131   0.1943060   0.3765202
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.1702309   0.1194529   0.2210089
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.1425101   0.1230097   0.1620106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2105263   0.0808768   0.3401758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1352612   0.1147839   0.1557385
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.2801680   0.2180835   0.3422524
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                0.3309748   0.2657490   0.3962006
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.2641832   0.2003649   0.3280014
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.1919351   0.1824848   0.2013853
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.2341274   0.2019931   0.2662617
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.1532512   0.1390490   0.1674534
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.2992701   0.2224235   0.3761167
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.3333333   0.1996888   0.4669779
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.1428571   0.0446693   0.2410450
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.2685823   0.2267583   0.3104063
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.4323043   0.3575771   0.5070314
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2347507   0.0610037   0.4084977
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.2884182   0.2429207   0.3339156
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4015651   0.3041851   0.4989451
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.1790150   0.0910968   0.2669332
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.1593894   0.1231308   0.1956479
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.2426678   0.1689419   0.3163937
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1038686   0.0516804   0.1560568
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.1415949   0.1098281   0.1733617
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.3871073   0.2971027   0.4771119
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.0734169   0.0382915   0.1085423
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.1757813   0.1524619   0.1991006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2000000   0.0568282   0.3431718
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1437908   0.1210874   0.1664943
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.2202214   0.1940422   0.2464007
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.2877201   0.2275699   0.3478703
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.1505624   0.0080287   0.2930961
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.0106888   0.0073678   0.0140097
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.0185162   0.0081742   0.0288582
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.0083995   0.0038163   0.0129827
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.1036076   0.0957946   0.1114207
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.1845027   0.1536526   0.2153529
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.0713720   0.0606475   0.0820965


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.3346457   0.2765014   0.3927899
0-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.4752066   0.4121581   0.5382551
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.4110871   0.3516836   0.4704906
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.4775641   0.4383415   0.5167867
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3602392   0.3238339   0.3966444
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.3311258   0.2975342   0.3647175
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2371002   0.2198828   0.2543177
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
0-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.2816871   0.2197838   0.3435903
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.2450750   0.2365573   0.2535928
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     NA                   NA                0.2244094   0.1730022   0.2758167
0-6 months    ki0047075b-MAL-ED          INDIA                          NA                   NA                0.3140496   0.2554513   0.3726479
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.2156295   0.1693905   0.2618686
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.3569132   0.3192325   0.3945938
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.2630792   0.2296894   0.2964690
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.2582781   0.2270370   0.2895193
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1402985   0.1262390   0.1543580
0-6 months    ki1119695-PROBIT           BELARUS                        NA                   NA                0.2746941   0.2120609   0.3373272
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.1824982   0.1748345   0.1901620
6-24 months   ki0047075b-MAL-ED          INDIA                          NA                   NA                0.2735043   0.2162683   0.3307402
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          NA                   NA                0.3079937   0.2595409   0.3564465
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     NA                   NA                0.2939002   0.2554778   0.3323226
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.1612378   0.1321259   0.1903497
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     NA                   NA                0.1315068   0.1069744   0.1560393
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1612576   0.1450216   0.1774936
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2271869   0.2003867   0.2539871
6-24 months   ki1119695-PROBIT           BELARUS                        NA                   NA                0.0102770   0.0071241   0.0134298
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       NA                   NA                0.0965066   0.0902505   0.1027627


### Parameter: RR


agecat        studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.1923272   0.8225148   1.7284116
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.4230018   0.2282517   0.7839177
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.1546756   0.8726677   1.5278162
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.4864925   0.3002408   0.7882837
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.5654699   1.4425747   1.6988347
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.0160745   0.6114926   1.6883400
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2297757   1.0172935   1.4866392
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.8126973   0.6068057   1.0884488
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.4123377   1.1580637   1.7224422
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6549570   0.4811810   0.8914913
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.4753154   1.1770237   1.8492027
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.6280876   0.4726006   0.8347302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.5525493   1.2107440   1.9908496
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9106712   0.7852916   1.0560689
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.3064469   1.0199337   1.6734454
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.6875256   0.2649284   1.7842233
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.2164372   1.0656926   1.3885049
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9389688   0.8815809   1.0000925
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.3051227   1.1649502   1.4621615
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7772970   0.7119231   0.8486740
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.8394097   1.1050848   3.0616909
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.6139360   0.3026736   1.2452930
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.3229814   0.8849930   1.9777328
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.5447570   0.2872336   1.0331667
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.5514378   1.3454054   1.7890214
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.0693108   0.7695862   1.4857667
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2561545   0.9853124   1.6014456
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.8489059   0.5995922   1.2018857
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.5346767   1.1922976   1.9753730
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6152822   0.4077025   0.9285499
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.0116174   0.7131337   1.4350323
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.6033658   0.4337415   0.8393254
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.4772727   0.7861116   2.7761132
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9491339   0.7739316   1.1639985
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.1813442   1.0322723   1.3519438
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9429457   0.8837108   1.0061510
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2198261   1.0543739   1.4112412
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7984533   0.7189323   0.8867701
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.1138211   0.6918981   1.7930351
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.4773519   0.2291872   0.9942303
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.6095787   1.4332173   1.8076418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.8740365   0.4054881   1.8840006
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.3923017   1.0429587   1.8586584
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.6206787   0.3709045   1.0386558
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.5224842   1.0422434   2.2240083
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6516658   0.3752746   1.1316200
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     2.7339077   1.9803003   3.7743020
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.5184999   0.3056630   0.8795377
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.1377778   0.5493769   2.3563755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.8180102   0.6655736   1.0053593
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.3065035   1.0209236   1.6719677
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.6836864   0.2676869   1.7461707
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.7323075   0.9217730   3.2555620
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.7858251   0.5240348   1.1783971
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.7807831   1.4825171   2.1390571
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.6888678   0.5822627   0.8149911


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0193556   -0.0618506    0.0231394
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0343749   -0.0868803    0.0181305
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0511271    0.0378448    0.0644093
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0074455   -0.0176375    0.0325285
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0121915   -0.0149912    0.0393743
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0207172   -0.0458237    0.0043893
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0123009   -0.0290421    0.0044403
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0070317   -0.0089697    0.0230330
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0058559   -0.0127301    0.0010182
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0138105   -0.0196105   -0.0080105
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0035506   -0.0350317    0.0421328
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0098941   -0.0588967    0.0391085
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0266672    0.0168443    0.0364900
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0041140   -0.0199044    0.0281324
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0185936   -0.0065887    0.0437759
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0238573   -0.0466885   -0.0010260
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0022116   -0.0155307    0.0111075
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0054739   -0.0122467    0.0012989
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0094369   -0.0146304   -0.0042433
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0257658   -0.0733734    0.0218418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0394115    0.0212895    0.0575334
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0054820   -0.0198084    0.0307724
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0018484   -0.0203629    0.0240597
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0100880   -0.0288615    0.0086855
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0145236   -0.0301009    0.0010536
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0069655   -0.0088263    0.0227573
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0004118   -0.0016851    0.0008615
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0071010   -0.0113630   -0.0028390


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0578392   -0.1929005    0.0619304
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0723367   -0.1892629    0.0330935
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1243704    0.0951311    0.1526648
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0155905   -0.0383678    0.0667449
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0338429   -0.0445939    0.1063900
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0625659   -0.1411929    0.0106438
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0518806   -0.1249241    0.0164199
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0309509   -0.0408728    0.0978186
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0207888   -0.0463567    0.0041544
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0563522   -0.0802918   -0.0329430
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0158218   -0.1720176    0.1735561
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0315048   -0.1999522    0.1132962
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1236712    0.0850623    0.1606509
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0115265   -0.0581167    0.0765859
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0706769   -0.0298260    0.1613715
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0923705   -0.1843387   -0.0075439
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0157636   -0.1152660    0.0748613
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0199273   -0.0459189    0.0054183
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0517093   -0.0805400   -0.0236479
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0942062   -0.2826501    0.0665520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1279619    0.0752752    0.1776467
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0186526   -0.0712588    0.1010176
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0114638   -0.1363212    0.1400286
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0767110   -0.2292102    0.0568687
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0900649   -0.1908023    0.0021506
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0306597   -0.0401997    0.0966920
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0400698   -0.1732473    0.0779904
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0735809   -0.1185842   -0.0303882
