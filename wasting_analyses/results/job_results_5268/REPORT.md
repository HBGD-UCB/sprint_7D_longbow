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
![](/tmp/e14d9160-a50c-49c6-b250-5e7ac56b4ccf/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/e14d9160-a50c-49c6-b250-5e7ac56b4ccf/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/e14d9160-a50c-49c6-b250-5e7ac56b4ccf/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/e14d9160-a50c-49c6-b250-5e7ac56b4ccf/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level    baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  --------------------  ---------------  ----------  ----------  ----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.3543574   0.2813559   0.4273588
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.4151556   0.2866193   0.5436919
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.1480512   0.0618381   0.2342643
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.5095563   0.4280837   0.5910290
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.5916900   0.4590300   0.7243499
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.2388427   0.1291534   0.3485320
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.3599601   0.3054453   0.4144748
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.5635066   0.4859147   0.6410986
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.3657463   0.1949551   0.5365374
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.4701081   0.4236683   0.5165478
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.5781679   0.4844864   0.6718494
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.3820063   0.2769097   0.4871029
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.3481633   0.3035242   0.3928024
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.4946384   0.4204018   0.5688750
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.2283205   0.1642112   0.2924297
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.3518433   0.3092644   0.3944222
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.5316485   0.4354288   0.6278681
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.2205319   0.1644336   0.2766302
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.2494016   0.2251168   0.2736863
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.3871893   0.2982099   0.4761688
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.2271170   0.2017707   0.2524632
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.2202782   0.1940653   0.2464911
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.2876746   0.2270652   0.3482840
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.1525961   0.0103939   0.2947982
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.2875519   0.2258843   0.3492195
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.3498227   0.2828153   0.4168301
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.2700316   0.2071124   0.3329507
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.2588718   0.2483952   0.2693484
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.3377484   0.3018607   0.3736362
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.2012381   0.1856155   0.2168607
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight         NA                0.2208589   0.1570507   0.2846671
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Underweight           NA                0.4062500   0.2357485   0.5767515
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   NA                0.1355932   0.0480633   0.2231232
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.3239437   0.2468126   0.4010747
0-6 months    ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.4285714   0.2897227   0.5674201
0-6 months    ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.1764706   0.0716280   0.2813132
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.1889624   0.1474097   0.2305151
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.2931633   0.2255284   0.3607983
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2020595   0.1411498   0.2629692
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.3530045   0.3083656   0.3976434
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4413448   0.3476856   0.5350040
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.3007976   0.2020831   0.3995121
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.2446099   0.2043904   0.2848293
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.3742295   0.3018984   0.4465605
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1507549   0.0938415   0.2076683
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.2821654   0.2421698   0.3221609
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.2873164   0.1962891   0.3783437
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.1700472   0.1192427   0.2208516
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.1425101   0.1230097   0.1620106
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2105263   0.0808768   0.3401758
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1352612   0.1147839   0.1557385
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.2803664   0.2181420   0.3425909
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           NA                0.3389927   0.2722785   0.4057068
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.2638625   0.1999813   0.3277437
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.1919358   0.1824850   0.2013867
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.2341295   0.2019955   0.2662636
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.1532529   0.1390459   0.1674599
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         NA                0.2992701   0.2224235   0.3761167
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           NA                0.3333333   0.1996888   0.4669779
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   NA                0.1428571   0.0446693   0.2410450
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         NA                0.2685823   0.2267583   0.3104063
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           NA                0.4323043   0.3575771   0.5070314
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   NA                0.2347507   0.0610037   0.4084977
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         NA                0.2883727   0.2428812   0.3338642
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           NA                0.4014584   0.3041310   0.4987859
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   NA                0.1791653   0.0913020   0.2670285
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         NA                0.1593374   0.1229921   0.1956827
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           NA                0.2454352   0.1711310   0.3197394
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   NA                0.1006220   0.0461811   0.1550629
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         NA                0.1416655   0.1098304   0.1735006
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           NA                0.3938095   0.3043333   0.4832857
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   NA                0.0732035   0.0378111   0.1085960
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         NA                0.1757813   0.1524619   0.1991006
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           NA                0.2000000   0.0568282   0.3431718
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   NA                0.1437908   0.1210874   0.1664943
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         NA                0.2202270   0.1940430   0.2464109
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           NA                0.2877032   0.2274774   0.3479289
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   NA                0.1508949   0.0083064   0.2934834
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         NA                0.0106888   0.0073679   0.0140097
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           NA                0.0185165   0.0081741   0.0288589
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   NA                0.0083995   0.0038165   0.0129825
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         NA                0.1036045   0.0957951   0.1114139
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           NA                0.1844013   0.1535623   0.2152403
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   NA                0.0713837   0.0606775   0.0820899


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
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Underweight           Normal weight     1.1715732   0.8089540   1.6967389
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Overweight or Obese   Normal weight     0.4178020   0.2255920   0.7737797
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.1611865   0.8813743   1.5298314
0-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.4687267   0.2881848   0.7623745
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.5654699   1.4425747   1.6988347
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     1.0160745   0.6114926   1.6883400
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2298617   1.0174179   1.4866653
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.8125925   0.6067984   1.0881812
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.4207081   1.1671007   1.7294236
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6557856   0.4824687   0.8913631
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.5110377   1.2152018   1.8788935
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.6267902   0.4728904   0.8307758
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.5524735   1.2099838   1.9919060
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9106478   0.7853633   1.0559181
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.3059606   1.0186119   1.6743700
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.6927426   0.2755283   1.7417173
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.2165550   1.0656042   1.3888891
0-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9390708   0.8815457   1.0003497
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.3046937   1.1645280   1.4617301
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7773657   0.7122260   0.8484630
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
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.2502526   0.9770831   1.5997939
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.8521069   0.5994638   1.2112263
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.5299032   1.1876252   1.9708270
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6163075   0.4086328   0.9295264
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     1.0182555   0.7193922   1.4412781
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.6026507   0.4330468   0.8386805
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.4772727   0.7861116   2.7761132
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.9491339   0.7739316   1.1639985
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.2091057   1.0540326   1.3869937
0-6 months    ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.9411343   0.8818891   1.0043595
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.2198323   1.0543805   1.4112464
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.7984589   0.7189173   0.8868011
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki0047075b-MAL-ED          INDIA                          Underweight           Normal weight     1.1138211   0.6918981   1.7930351
6-24 months   ki0047075b-MAL-ED          INDIA                          Overweight or Obese   Normal weight     0.4773519   0.2291872   0.9942303
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Underweight           Normal weight     1.6095787   1.4332173   1.8076418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Overweight or Obese   Normal weight     0.8740365   0.4054881   1.8840006
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Underweight           Normal weight     1.3921513   1.0429028   1.8583566
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Overweight or Obese   Normal weight     0.6212977   0.3715348   1.0389627
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Underweight           Normal weight     1.5403487   1.0546585   2.2497085
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Overweight or Obese   Normal weight     0.6315028   0.3510538   1.1359962
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Underweight           Normal weight     2.7798539   2.0207766   3.8240682
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Overweight or Obese   Normal weight     0.5167351   0.3031864   0.8806963
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Underweight           Normal weight     1.1377778   0.5493769   2.3563755
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Overweight or Obese   Normal weight     0.8180102   0.6655736   1.0053593
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Underweight           Normal weight     1.3063939   1.0205165   1.6723541
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Overweight or Obese   Normal weight     0.6851791   0.2687608   1.7467964
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1119695-PROBIT           BELARUS                        Underweight           Normal weight     1.7323279   0.9217724   3.2556410
6-24 months   ki1119695-PROBIT           BELARUS                        Overweight or Obese   Normal weight     0.7858234   0.5240410   1.1783782
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight         Normal weight     1.0000000   1.0000000   1.0000000
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Underweight           Normal weight     1.7798580   1.4817241   2.1379787
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Overweight or Obese   Normal weight     0.6890019   0.5825305   0.8149335


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0197117   -0.0623805    0.0229572
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0343497   -0.0866749    0.0179754
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0511271    0.0378448    0.0644093
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0074561   -0.0176250    0.0325371
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0120759   -0.0151117    0.0392635
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0207175   -0.0457737    0.0043387
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0123014   -0.0290271    0.0044244
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0069088   -0.0087596    0.0225771
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0058648   -0.0127731    0.0010434
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0137968   -0.0195838   -0.0080098
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0035506   -0.0350317    0.0421328
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0098941   -0.0588967    0.0391085
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0266672    0.0168443    0.0364900
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0039087   -0.0201769    0.0279942
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0184693   -0.0067140    0.0436527
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0238872   -0.0467199   -0.0010546
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0022116   -0.0155307    0.0111075
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0056724   -0.0124337    0.0010890
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0094376   -0.0146320   -0.0042433
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0257658   -0.0733734    0.0218418
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.0394115    0.0212895    0.0575334
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0055275   -0.0197572    0.0308122
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0019004   -0.0203752    0.0241760
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0101587   -0.0290046    0.0086873
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0145236   -0.0301009    0.0010536
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0069599   -0.0088212    0.0227411
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0004118   -0.0016851    0.0008615
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0070979   -0.0113554   -0.0028404


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower     ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  -----------
0-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                -0.0589032   -0.1945677    0.0613542
0-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0722838   -0.1888290    0.0328361
0-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1243704    0.0951311    0.1526648
0-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0156127   -0.0383413    0.0667631
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0335218   -0.0449234    0.1060779
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0625667   -0.1410520    0.0105201
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0518825   -0.1248574    0.0163581
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0304100   -0.0398913    0.0959587
0-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0208204   -0.0464863    0.0042161
0-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0562962   -0.0801828   -0.0329379
0-6 months    ki0047075b-MAL-ED          BANGLADESH                     Normal weight        NA                 0.0158218   -0.1720176    0.1735561
0-6 months    ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0315048   -0.1999522    0.1132962
0-6 months    ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1236712    0.0850623    0.1606509
0-6 months    ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0109514   -0.0588926    0.0761885
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0702045   -0.0303093    0.1609124
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0924864   -0.1844626   -0.0076524
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0157636   -0.1152660    0.0748613
0-6 months    ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0206498   -0.0465563    0.0046154
0-6 months    ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0517136   -0.0805488   -0.0236479
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal weight        NA                -0.0942062   -0.2826501    0.0665520
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal weight        NA                 0.1279619    0.0752752    0.1776467
6-24 months   ki1017093-NIH-Birth        BANGLADESH                     Normal weight        NA                 0.0188074   -0.0710832    0.1011539
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal weight        NA                 0.0117861   -0.1364667    0.1406993
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     Normal weight        NA                -0.0772483   -0.2303479    0.0568002
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   Normal weight        NA                -0.0900649   -0.1908023    0.0021506
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   Normal weight        NA                 0.0306353   -0.0401765    0.0966264
6-24 months   ki1119695-PROBIT           BELARUS                        Normal weight        NA                -0.0400713   -0.1732479    0.0779883
6-24 months   ki1126311-ZVITAMBO         ZIMBABWE                       Normal weight        NA                -0.0735484   -0.1185045   -0.0303991
