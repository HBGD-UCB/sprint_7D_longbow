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

**Outcome Variable:** ever_stunted

## Predictor Variables

**Intervention Variable:** birthwtXexclfeed6

**Adjustment Set:**

* arm
* sex
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* vagbrth
* W_nrooms
* W_nchldlt5
* brthmon
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_vagbrth
* delta_W_nrooms
* delta_W_nchldlt5
* delta_brthmon
* delta_W_parity
* delta_impfloor
* delta_impsan
* delta_safeh20

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country

## Data Summary

agecat        studyid                    country                        birthwtXexclfeed6                      ever_stunted   n_cell       n
------------  -------------------------  -----------------------------  ------------------------------------  -------------  -------  ------
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X EBF                  0       17     153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X EBF                  1       18     153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X EBF                            0        2     153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X EBF                            1        1     153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X No EBF               0       62     153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Normal or high birthweight X No EBF               1       44     153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X No EBF                         0        6     153
6-24 months   ki0047075b-MAL-ED          BANGLADESH                     Low birth weight X No EBF                         1        3     153
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X EBF                  0       12     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X EBF                  1        1     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X EBF                            0        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X EBF                            1        0     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X No EBF               0      145     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Normal or high birthweight X No EBF               1        8     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X No EBF                         0        2     168
6-24 months   ki0047075b-MAL-ED          BRAZIL                         Low birth weight X No EBF                         1        0     168
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X EBF                  0        2     149
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X EBF                  1        1     149
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X EBF                            0        0     149
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X EBF                            1        0     149
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X No EBF               0       74     149
6-24 months   ki0047075b-MAL-ED          INDIA                          Normal or high birthweight X No EBF               1       57     149
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X No EBF                         0       10     149
6-24 months   ki0047075b-MAL-ED          INDIA                          Low birth weight X No EBF                         1        5     149
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X EBF                  0       11     189
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X EBF                  1        2     189
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X EBF                            0        0     189
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X EBF                            1        0     189
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X No EBF               0      136     189
6-24 months   ki0047075b-MAL-ED          NEPAL                          Normal or high birthweight X No EBF               1       34     189
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X No EBF                         0        5     189
6-24 months   ki0047075b-MAL-ED          NEPAL                          Low birth weight X No EBF                         1        1     189
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X EBF                  0        2     147
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X EBF                  1        4     147
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X EBF                            0        0     147
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X EBF                            1        0     147
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X No EBF               0       87     147
6-24 months   ki0047075b-MAL-ED          PERU                           Normal or high birthweight X No EBF               1       54     147
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X No EBF                         0        0     147
6-24 months   ki0047075b-MAL-ED          PERU                           Low birth weight X No EBF                         1        0     147
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X EBF                  0        0     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X EBF                  1        0     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X EBF                            0        0     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X EBF                            1        0     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X No EBF               0       95     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Normal or high birthweight X No EBF               1       53     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X No EBF                         0        0     149
6-24 months   ki0047075b-MAL-ED          SOUTH AFRICA                   Low birth weight X No EBF                         1        1     149
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X EBF                  0        0      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X EBF                  1        1      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X EBF                            0        0      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X EBF                            1        0      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X No EBF               0       20      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Normal or high birthweight X No EBF               1       59      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X No EBF                         0        0      80
6-24 months   ki0047075b-MAL-ED          TANZANIA, UNITED REPUBLIC OF   Low birth weight X No EBF                         1        0      80
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X EBF                  0        1      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X EBF                  1       10      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X EBF                            0        0      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X EBF                            1        0      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X No EBF               0        0      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Normal or high birthweight X No EBF               1        0      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X No EBF                         0        0      11
6-24 months   ki1000108-CMC-V-BCS-2002   INDIA                          Low birth weight X No EBF                         1        0      11
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X EBF                  0        0       8
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X EBF                  1        0       8
6-24 months   ki1000108-IRC              INDIA                          Low birth weight X EBF                            0        0       8
6-24 months   ki1000108-IRC              INDIA                          Low birth weight X EBF                            1        0       8
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X No EBF               0        4       8
6-24 months   ki1000108-IRC              INDIA                          Normal or high birthweight X No EBF               1        3       8
6-24 months   ki1000108-IRC              INDIA                          Low birth weight X No EBF                         0        0       8
6-24 months   ki1000108-IRC              INDIA                          Low birth weight X No EBF                         1        1       8
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight X EBF                  0       26     194
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight X EBF                  1       60     194
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight X EBF                            0        2     194
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight X EBF                            1        4     194
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight X No EBF               0       32     194
6-24 months   ki1000109-EE               PAKISTAN                       Normal or high birthweight X No EBF               1       52     194
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight X No EBF                         0        2     194
6-24 months   ki1000109-EE               PAKISTAN                       Low birth weight X No EBF                         1       16     194
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X EBF                  0       98     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X EBF                  1      116     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X EBF                            0        5     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X EBF                            1        8     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X No EBF               0        4     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Normal or high birthweight X No EBF               1        4     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X No EBF                         0        1     236
6-24 months   ki1000304b-SAS-CompFeed    INDIA                          Low birth weight X No EBF                         1        0     236
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X EBF                  0       67     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X EBF                  1       30     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X EBF                            0       13     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X EBF                            1        9     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X No EBF               0      222     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Normal or high birthweight X No EBF               1       81     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X No EBF                         0       18     457
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     Low birth weight X No EBF                         1       17     457
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X EBF                  0      255    1179
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X EBF                  1      137    1179
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X EBF                            0        3    1179
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X EBF                            1        5    1179
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X No EBF               0      450    1179
6-24 months   ki1101329-Keneba           GAMBIA                         Normal or high birthweight X No EBF               1      296    1179
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X No EBF                         0       15    1179
6-24 months   ki1101329-Keneba           GAMBIA                         Low birth weight X No EBF                         1       18    1179
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X EBF                  0    11662   20788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X EBF                  1     2892   20788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X EBF                            0     1772   20788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X EBF                            1      772   20788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X No EBF               0     2456   20788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Normal or high birthweight X No EBF               1      624   20788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X No EBF                         0      410   20788
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     Low birth weight X No EBF                         1      200   20788
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X EBF                  0     2460    5154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X EBF                  1     1318    5154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X EBF                            0      234    5154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X EBF                            1      214    5154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X No EBF               0      500    5154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Normal or high birthweight X No EBF               1      320    5154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X No EBF                         0       52    5154
6-24 months   kiGH5241-JiVitA-4          BANGLADESH                     Low birth weight X No EBF                         1       56    5154


The following strata were considered:

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
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-4, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

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
* agecat: 6-24 months, studyid: ki1101329-Keneba, country: GAMBIA

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/91efe45d-403e-4b32-bd34-ebf65fd57367/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/91efe45d-403e-4b32-bd34-ebf65fd57367/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/91efe45d-403e-4b32-bd34-ebf65fd57367/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/91efe45d-403e-4b32-bd34-ebf65fd57367/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid              country      intervention_level                    baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  ------------------------------------  ---------------  ----------  ----------  ----------
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      NA                0.3092784   0.2171986   0.4013581
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                NA                0.4090909   0.2034154   0.6147665
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   NA                0.2673267   0.2174407   0.3172127
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             NA                0.4857143   0.3199533   0.6514753
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      NA                0.1982837   0.1878771   0.2086903
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                NA                0.3138817   0.2885977   0.3391657
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   NA                0.1986383   0.1790361   0.2182404
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             NA                0.3256942   0.2845208   0.3668677
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      NA                0.3486127   0.3232367   0.3739888
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                NA                0.4972561   0.4230045   0.5715076
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   NA                0.3997488   0.3454993   0.4539984
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             NA                0.5625526   0.4285250   0.6965803


### Parameter: E(Y)


agecat        studyid              country      intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------  -----------  -------------------  ---------------  ----------  ----------  ----------
6-24 months   ki1017093b-PROVIDE   BANGLADESH   NA                   NA                0.2997812   0.2577294   0.3418330
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   NA                   NA                0.2158938   0.2063850   0.2254026
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   NA                   NA                0.3701979   0.3479106   0.3924853


### Parameter: RR


agecat        studyid              country      intervention_level                    baseline_level                       estimate    ci_lower   ci_upper
------------  -------------------  -----------  ------------------------------------  ---------------------------------  ----------  ----------  ---------
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000   1.000000
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.3227273   0.7374129   2.372629
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    0.8643564   0.6082656   1.228266
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.5704762   0.9984926   2.470119
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.5829927   1.4462611   1.732651
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.0017880   0.8986080   1.116815
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.6425667   1.4355760   1.879403
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF      Normal or high birthweight X EBF    1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X EBF                Normal or high birthweight X EBF    1.4263853   1.2090663   1.682765
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X No EBF   Normal or high birthweight X EBF    1.1466846   0.9851635   1.334688
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Low birth weight X No EBF             Normal or high birthweight X EBF    1.6136893   1.2578534   2.070188


### Parameter: PAR


agecat        studyid              country      intervention_level                 baseline_level      estimate     ci_lower    ci_upper
------------  -------------------  -----------  ---------------------------------  ---------------  -----------  -----------  ----------
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                -0.0094972   -0.0910310   0.0720367
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0176101    0.0121456   0.0230745
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0215852    0.0083236   0.0348468


### Parameter: PAF


agecat        studyid              country      intervention_level                 baseline_level      estimate     ci_lower    ci_upper
------------  -------------------  -----------  ---------------------------------  ---------------  -----------  -----------  ----------
6-24 months   ki1017093b-PROVIDE   BANGLADESH   Normal or high birthweight X EBF   NA                -0.0316803   -0.3428725   0.2073973
6-24 months   kiGH5241-JiVitA-3    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0815682    0.0560695   0.1063780
6-24 months   kiGH5241-JiVitA-4    BANGLADESH   Normal or high birthweight X EBF   NA                 0.0583071    0.0217921   0.0934591
