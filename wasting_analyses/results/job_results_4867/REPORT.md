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

**Intervention Variable:** nchldlt5

**Adjustment Set:**

* arm
* W_mage
* meducyrs
* feducyrs
* hhwealth_quart
* hfoodsec
* W_mhtcm
* W_nrooms
* W_parity
* impfloor
* impsan
* safeh20
* delta_W_mage
* delta_meducyrs
* delta_feducyrs
* delta_hhwealth_quart
* delta_hfoodsec
* delta_W_mhtcm
* delta_W_nrooms
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

agecat        studyid                    country                        nchldlt5    ever_wasted   n_cell       n
------------  -------------------------  -----------------------------  ---------  ------------  -------  ------
0-24 months   ki1000108-IRC              INDIA                          1                     0       25     291
0-24 months   ki1000108-IRC              INDIA                          1                     1       64     291
0-24 months   ki1000108-IRC              INDIA                          2+                    0       69     291
0-24 months   ki1000108-IRC              INDIA                          2+                    1      133     291
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      327     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1      185     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        6     524
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        6     524
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      368     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      173     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     547
0-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     547
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1242    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      395    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       61    1716
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       18    1716
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      620    1917
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      224    1917
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      366     454
0-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       25     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       58     454
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5     454
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    25440   35671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     8968   35671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      933   35671
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      330   35671
0-6 months    ki1000108-IRC              INDIA                          1                     0       37     291
0-6 months    ki1000108-IRC              INDIA                          1                     1       52     291
0-6 months    ki1000108-IRC              INDIA                          2+                    0       95     291
0-6 months    ki1000108-IRC              INDIA                          2+                    1      107     291
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     0      375     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     1                     1      137     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8     524
0-6 months    ki1017093b-PROVIDE         BANGLADESH                     2+                    1        4     524
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      404     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     1                     1      137     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     547
0-6 months    ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        2     547
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1407    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      230    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       64    1716
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1       15    1716
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     0      121     145
0-6 months    ki1148112-LCNI-5           MALAWI                         1                     1        1     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    0       23     145
0-6 months    ki1148112-LCNI-5           MALAWI                         2+                    1        0     145
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     0    28092   35554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                     1     6202   35554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    0     1042   35554
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      218   35554
6-24 months   ki1000108-IRC              INDIA                          1                     0       56     291
6-24 months   ki1000108-IRC              INDIA                          1                     1       33     291
6-24 months   ki1000108-IRC              INDIA                          2+                    0      134     291
6-24 months   ki1000108-IRC              INDIA                          2+                    1       68     291
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     0      380     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                     1       68     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    0        8     458
6-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                    1        2     458
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     0      460     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     1                     1       60     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    0        4     525
6-24 months   ki1017093c-NIH-Crypto      BANGLADESH                     2+                    1        1     525
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     0     1154    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                     1      229    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    0       58    1447
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                    1        6    1447
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     0      838    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                     1      235    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    0      620    1917
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                    1      224    1917
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     0      360     446
6-24 months   ki1148112-LCNI-5           MALAWI                         1                     1       24     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    0       57     446
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                    1        5     446
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     0    18794   23113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                     1     3570   23113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    0      613   23113
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                    1      136   23113


The following strata were considered:

* agecat: 0-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 0-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 0-6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1000108-IRC, country: INDIA
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF
* agecat: 6-24 months, studyid: ki1112895-iLiNS-Zinc, country: BURKINA FASO
* agecat: 6-24 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 0-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH
* agecat: 0-6 months, studyid: ki1148112-LCNI-5, country: MALAWI
* agecat: 6-24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH
* agecat: 6-24 months, studyid: ki1017093c-NIH-Crypto, country: BANGLADESH

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/15d9f915-beae-4725-b2dd-039bcebacf61/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/15d9f915-beae-4725-b2dd-039bcebacf61/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/15d9f915-beae-4725-b2dd-039bcebacf61/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/15d9f915-beae-4725-b2dd-039bcebacf61/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                0.7242733   0.6379759   0.8105707
0-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.6597752   0.5954000   0.7241504
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                0.3613281   0.3196779   0.4029784
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   NA                0.5000000   0.2168332   0.7831668
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.2412875   0.2205547   0.2620204
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.2279946   0.1355167   0.3204726
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2074664   0.1695639   0.2453688
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2404552   0.2029184   0.2779921
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0639386   0.0396629   0.0882144
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0793651   0.0125438   0.1461864
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.2593093   0.2517965   0.2668222
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2398334   0.2117087   0.2679580
0-6 months    ki1000108-IRC              INDIA                          1                    NA                0.5927712   0.5003293   0.6852131
0-6 months    ki1000108-IRC              INDIA                          2+                   NA                0.5275824   0.4598808   0.5952841
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1404966   0.1236578   0.1573354
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.1899669   0.1034928   0.2764409
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1804237   0.1737794   0.1870680
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.2136367   0.1895390   0.2377343
6-24 months   ki1000108-IRC              INDIA                          1                    NA                0.3697562   0.2800664   0.4594461
6-24 months   ki1000108-IRC              INDIA                          2+                   NA                0.3303069   0.2670079   0.3936060
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                0.1655821   0.1459852   0.1851789
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   NA                0.0937500   0.0223139   0.1651861
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                0.2074645   0.1695714   0.2453577
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   NA                0.2404289   0.2029091   0.2779488
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                0.0625000   0.0382621   0.0867379
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   NA                0.0806452   0.0127919   0.1484984
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                0.1587238   0.1514445   0.1660030
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   NA                0.1667130   0.1428306   0.1905954


### Parameter: E(Y)


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ----------
0-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.6769759   0.6231548   0.7307971
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     NA                   NA                0.3645038   0.3232556   0.4057520
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.2406760   0.2204437   0.2609083
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2394366   0.2104280   0.2684452
0-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0660793   0.0432029   0.0889556
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.2606599   0.2531488   0.2681711
0-6 months    ki1000108-IRC              INDIA                          NA                   NA                0.5463918   0.4890935   0.6036900
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1427739   0.1262166   0.1593311
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1805704   0.1739574   0.1871834
6-24 months   ki1000108-IRC              INDIA                          NA                   NA                0.3470790   0.2922900   0.4018681
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   NA                   NA                0.1624050   0.1433950   0.1814149
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   NA                   NA                0.2394366   0.2104280   0.2684452
6-24 months   ki1148112-LCNI-5           MALAWI                         NA                   NA                0.0650224   0.0421137   0.0879311
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     NA                   NA                0.1603427   0.1531124   0.1675729


### Parameter: RR


agecat        studyid                    country                        intervention_level   baseline_level     estimate    ci_lower   ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  ----------  ----------  ---------
0-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.9109479   0.7809059   1.062645
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     2+                   1                 1.3837838   0.7763718   2.466418
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.9449084   0.6242060   1.430380
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1590082   0.9056790   1.483197
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
0-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2412698   0.4928942   3.125926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 0.9248930   0.8210937   1.041814
0-6 months    ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1000108-IRC              INDIA                          2+                   1                 0.8900271   0.7272936   1.089173
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 1.3521099   0.8444711   2.164907
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.1840832   1.0554780   1.328358
6-24 months   ki1000108-IRC              INDIA                          1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1000108-IRC              INDIA                          2+                   1                 0.8933100   0.6573209   1.214023
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+                   1                 0.5661845   0.2618570   1.224198
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   2+                   1                 1.1588916   0.9056796   1.482897
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    1                 1.0000000   1.0000000   1.000000
6-24 months   ki1148112-LCNI-5           MALAWI                         2+                   1                 1.2903226   0.5109108   3.258753
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    1                 1.0000000   1.0000000   1.000000
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+                   1                 1.0503341   0.9029355   1.221795


### Parameter: PAR


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0472974   -0.1213128   0.0267181
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0031757   -0.0036156   0.0099670
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0006116   -0.0049768   0.0037537
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0319703    0.0067142   0.0572264
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0021407   -0.0077370   0.0120184
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0013506    0.0000599   0.0026413
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0463794   -0.1244066   0.0316477
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0022773   -0.0018087   0.0063633
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0001467   -0.0009403   0.0012337
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0226772   -0.0969473   0.0515929
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0031771   -0.0065407   0.0001865
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.0319721    0.0067203   0.0572239
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0025224   -0.0075108   0.0125556
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0016189    0.0002207   0.0030171


### Parameter: PAF


agecat        studyid                    country                        intervention_level   baseline_level      estimate     ci_lower    ci_upper
------------  -------------------------  -----------------------------  -------------------  ---------------  -----------  -----------  ----------
0-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0698656   -0.1858497   0.0347744
0-24 months   ki1017093b-PROVIDE         BANGLADESH                     1                    NA                 0.0087124   -0.0100992   0.0271736
0-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0025410   -0.0208428   0.0154328
0-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1335229    0.0204876   0.2335140
0-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0323956   -0.1288281   0.1705926
0-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0051815    0.0002280   0.0101105
0-6 months    ki1000108-IRC              INDIA                          1                    NA                -0.0848831   -0.2387626   0.0498814
0-6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                 0.0159502   -0.0130474   0.0441178
0-6 months    kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0008124   -0.0052240   0.0068125
6-24 months   ki1000108-IRC              INDIA                          1                    NA                -0.0653372   -0.3033644   0.1292202
6-24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1                    NA                -0.0195628   -0.0404074   0.0008642
6-24 months   ki1112895-iLiNS-Zinc       BURKINA FASO                   1                    NA                 0.1335304    0.0205210   0.2335012
6-24 months   ki1148112-LCNI-5           MALAWI                         1                    NA                 0.0387931   -0.1279697   0.1809011
6-24 months   kiGH5241-JiVitA-3          BANGLADESH                     1                    NA                 0.0100965    0.0013541   0.0187624
