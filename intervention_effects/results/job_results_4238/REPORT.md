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

**Outcome Variable:** sstunted

## Predictor Variables

**Intervention Variable:** tr

**Adjustment Set:**

unadjusted

## Stratifying Variables

The analysis was stratified on these variable(s):

* agecat
* studyid
* country
* intXnchldlt5

## Data Summary

agecat      studyid                    country                        intXnchldlt5    sstunted   n_cell       n
----------  -------------------------  -----------------------------  -------------  ---------  -------  ------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth                0    21292   24208
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth                1     2916   24208
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth               0      850     934
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth               1       84     934
6 months    iLiNS_DYADM_LNS            MALAWI                         1_6 months             0       41      42
6 months    iLiNS_DYADM_LNS            MALAWI                         1_6 months             1        1      42
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months            0       33      33
6 months    iLiNS_DYADM_LNS            MALAWI                         2+_6 months            1        0      33
6 months    ki1000107-Serrinha-VitA    BRAZIL                         1_6 months             0       15      16
6 months    ki1000107-Serrinha-VitA    BRAZIL                         1_6 months             1        1      16
6 months    ki1000107-Serrinha-VitA    BRAZIL                         2+_6 months            0        6       6
6 months    ki1000107-Serrinha-VitA    BRAZIL                         2+_6 months            1        0       6
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months             0       29      29
6 months    ki1017093b-PROVIDE         BANGLADESH                     1_6 months             1        0      29
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months             0     1161    1173
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months             1       12    1173
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months            0       52      53
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   2+_6 months            1        1      53
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months             0      785     845
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months             1       60     845
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months            0      132     150
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months            1       18     150
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months             0       58      60
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         1_6 months             1        2      60
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months            0       43      43
6 months    ki1148112-iLiNS-DYAD-M     MALAWI                         2+_6 months            1        0      43
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months             0      362     390
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months             1       28     390
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months            0       58      63
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months            1        5      63
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months             0    20252   21667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months             1     1415   21667
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months            0      677     719
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months            1       42     719
24 months   iLiNS_DYADM_LNS            MALAWI                         2+_24 months           0        1       2
24 months   iLiNS_DYADM_LNS            MALAWI                         2+_24 months           1        1       2
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months            0       45      50
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months            1        5      50
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months           0       19      29
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months           1       10      29
24 months   ki1017093b-PROVIDE         BANGLADESH                     1_24 months            0        1       1
24 months   ki1017093b-PROVIDE         BANGLADESH                     1_24 months            1        0       1
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_24 months            0        3       4
24 months   ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_24 months            1        1       4
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months            0      284     347
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months            1       63     347
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months           0       37      59
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months           1       22      59
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_24 months           0        1       2
24 months   ki1148112-iLiNS-DYAD-M     MALAWI                         2+_24 months           1        1       2
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months            0      166     181
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months            1       15     181
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months           0       26      26
24 months   ki1148112-LCNI-5           MALAWI                         2+_24 months           1        0      26
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months            0       90     121
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months            1       31     121
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_24 months           0        3       5
24 months   kiGH5241-JiVitA-3          BANGLADESH                     2+_24 months           1        2       5


The following strata were considered:

* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_24 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DOSE, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_6 months
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 1_Birth
* agecat: Birth, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_Birth

### Dropped Strata

Some strata were dropped due to rare outcomes:

* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1000107-Serrinha-VitA, country: BRAZIL, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 2+_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 1_6 months
* agecat: 6 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_6 months
* agecat: 24 months, studyid: iLiNS_DYADM_LNS, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1017093b-PROVIDE, country: BANGLADESH, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1066203-TanzaniaChild2, country: TANZANIA, UNITED REPUBLIC OF, intXnchldlt5: 1_24 months
* agecat: 24 months, studyid: ki1148112-iLiNS-DYAD-M, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: ki1148112-LCNI-5, country: MALAWI, intXnchldlt5: 2+_24 months
* agecat: 24 months, studyid: kiGH5241-JiVitA-3, country: BANGLADESH, intXnchldlt5: 2+_24 months

## Methods Detail

We're interested in the causal parameters $E[Y_a]$ for all values of $a \in \mathcal{A}$. These parameters represent the mean outcome if, possibly contrary to fact, we intervened to set all units to have $A=a$. Under the randomization and positivity assumptions, these are identified by the statistical parameters $\psi_a=E_W[E_{Y|A,W}(Y|A=a,W)]$.  In addition, we're interested in the mean of $Y$, $E[Y]$ under no intervention (the observed mean). We will estimate these parameters by using SuperLearner to fit the relevant likelihood factors -- $E_{Y|A,W}(Y|A=a,W)$ and $p(A=a|W)$, and then updating our likelihood fit using a joint TMLE.

For unadjusted analyses ($W=\{\}$), initial likelihoods were estimated using Lrnr_glm to estimate the simple $E(Y|A)$ and Lrnr_mean to estimate $p(A)$. For adjusted analyses, a small library containing Lrnr_glmnet, Lrnr_xgboost, and Lrnr_mean was used.

Having estimated these parameters, we will then use the delta method to estimate relative risks and attributable risks relative to a prespecified baseline level of $A$.

todo: add detail about dropping strata with rare outcomes, handling missingness







# Results Detail

## Results Plots
![](/tmp/5809a46c-d049-470b-be7c-6ff85ddca8e9/REPORT_files/figure-html/plot_tsm-1.png)<!-- -->

![](/tmp/5809a46c-d049-470b-be7c-6ff85ddca8e9/REPORT_files/figure-html/plot_rr-1.png)<!-- -->



![](/tmp/5809a46c-d049-470b-be7c-6ff85ddca8e9/REPORT_files/figure-html/plot_paf-1.png)<!-- -->

![](/tmp/5809a46c-d049-470b-be7c-6ff85ddca8e9/REPORT_files/figure-html/plot_par-1.png)<!-- -->

## Results Table

### Parameter: TSM


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level     estimate     ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  -----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              NA                0.1304710    0.1211751   0.1397669
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Maternal             NA                0.1105824    0.1021352   0.1190297
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              NA                0.0962343    0.0553435   0.1371251
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Maternal             NA                0.0833333    0.0431163   0.1235503
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                0.0238095    0.0063753   0.0412437
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                NA                0.0032680   -0.0031294   0.0096653
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 NA                0.0069808    0.0001608   0.0138009
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              NA                0.0814815    0.0353060   0.1276570
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     LNS                  NA                0.0690141    0.0503582   0.0876700
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              NA                0.0769231   -0.0258457   0.1796919
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    LNS                  NA                0.1290323    0.0698298   0.1882347
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              NA                0.0510204    0.0073997   0.0946411
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     LNS                  NA                0.0995025    0.0580676   0.1409373
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Other                NA                0.0329670   -0.0037650   0.0696991
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              NA                0.0000000    0.0000000   0.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    LNS                  NA                0.0967742   -0.0081365   0.2016849
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Other                NA                0.1428571   -0.0419148   0.3276291
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              NA                0.0704278    0.0627585   0.0780971
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Maternal             NA                0.0603047    0.0536995   0.0669099
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              NA                0.0655738    0.0329384   0.0982091
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Maternal             NA                0.0509915    0.0091749   0.0928081
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              NA                0.1428571    0.0119288   0.2737855
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    VitA                 NA                0.0454545   -0.0424701   0.1333792
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              NA                0.3333333    0.1117049   0.5549618
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   VitA                 NA                0.3636364    0.0743299   0.6529428
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              NA                0.1833333    0.0852845   0.2813821
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    LNS                  NA                0.1811847    0.1365587   0.2258106
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              NA                0.2857143   -0.0518162   0.6232448
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   LNS                  NA                0.3846154    0.2512494   0.5179814
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              NA                0.0961538    0.0158049   0.1765028
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    LNS                  NA                0.0795455    0.0228539   0.1362370
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Other                NA                0.0731707   -0.0067626   0.1531040
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              NA                0.2452830    0.0943659   0.3962001
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Maternal             NA                0.2647059    0.1284863   0.4009254


### Parameter: E(Y)


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level     estimate    ci_lower    ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  ----------  ----------  ----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        NA                   NA                0.1204560   0.1141342   0.1267779
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       NA                   NA                0.0899358   0.0612299   0.1186416
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     NA                   NA                0.0102302   0.0044692   0.0159911
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     NA                   NA                0.0710059   0.0536786   0.0883332
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    NA                   NA                0.1200000   0.0678221   0.1721779
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     NA                   NA                0.0717949   0.0461416   0.0974481
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    NA                   NA                0.0793651   0.0120813   0.1466489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     NA                   NA                0.0653067   0.0602324   0.0703810
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    NA                   NA                0.0584145   0.0320194   0.0848096
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    NA                   NA                0.1000000   0.0160015   0.1839985
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   NA                   NA                0.3448276   0.1687728   0.5208824
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    NA                   NA                0.1815562   0.1409390   0.2221734
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   NA                   NA                0.3728814   0.2484315   0.4973312
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    NA                   NA                0.0828729   0.0425982   0.1231477
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    NA                   NA                0.2561983   0.1550059   0.3573908


### Parameter: RR


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level            estimate           ci_lower            ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  -----------------  -----------------  ------------------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Maternal             Control                  0.8475637          0.7634743           0.9409147
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              Control                  1.0000000          1.0000000           1.0000000
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Maternal             Control                  0.8659420          0.4552350           1.6471835
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Other                Control                  0.1372549          0.0169757           1.1097587
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Zinc                 Control                  0.2931937          0.0864801           0.9940160
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     LNS                  Control                  0.8469910          0.4520621           1.5869364
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    LNS                  Control                  1.6774194          0.4084736           6.8884158
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     LNS                  Control                  1.9502488          0.7534983           5.0477489
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Other                Control                  0.6461538          0.1586353           2.6319162
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    LNS                  Control           30422517.6962105    9601071.5951496    96398571.1182292
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Other                Control           44909430.8848821   11619557.2206079   173574340.5804649
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Maternal             Control                  0.8562630          0.7337229           0.9992687
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              Control                  1.0000000          1.0000000           1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Maternal             Control                  0.7776204          0.2981530           2.0281316
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    VitA                 Control                  0.3181818          0.0374177           2.7056618
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   VitA                 Control                  1.0909091          0.3868067           3.0766855
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    LNS                  Control                  0.9882800          0.5484873           1.7807109
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   LNS                  Control                  1.3461538          0.3930010           4.6110070
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              Control                  1.0000000          1.0000000           1.0000000
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    LNS                  Control                  0.8272727          0.2758505           2.4809819
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Other                Control                  0.7609756          0.1923323           3.0108507
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              Control                  1.0000000          1.0000000           1.0000000
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Maternal             Control                  1.0791855          0.4838765           2.4068979


### Parameter: PAR


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              NA                -0.0100149   -0.0164178   -0.0036120
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              NA                -0.0062985   -0.0343107    0.0217136
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                -0.0135793   -0.0271726    0.0000139
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              NA                -0.0104756   -0.0523220    0.0313709
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              NA                 0.0430769   -0.0550183    0.1411721
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              NA                 0.0207745   -0.0192829    0.0608318
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              NA                 0.0793651    0.0120812    0.1466489
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              NA                -0.0051211   -0.0102606    0.0000183
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              NA                -0.0071593   -0.0331901    0.0188715
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              NA                -0.0428571   -0.1135584    0.0278442
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              NA                 0.0114943   -0.1268493    0.1498378
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              NA                -0.0017771   -0.0908768    0.0873225
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              NA                 0.0871671   -0.2328034    0.4071376
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              NA                -0.0132809   -0.0793756    0.0528138
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              NA                 0.0109153   -0.1033260    0.1251567


### Parameter: PAF


agecat      studyid                    country                        intXnchldlt5   intervention_level   baseline_level      estimate     ci_lower     ci_upper
----------  -------------------------  -----------------------------  -------------  -------------------  ---------------  -----------  -----------  -----------
Birth       kiGH5241-JiVitA-3          BANGLADESH                     1_Birth        Control              NA                -0.0831416   -0.1375021   -0.0313790
Birth       kiGH5241-JiVitA-3          BANGLADESH                     2+_Birth       Control              NA                -0.0700339   -0.4314668    0.2001404
6 months    ki1066203-TanzaniaChild2   TANZANIA, UNITED REPUBLIC OF   1_6 months     Control              NA                -1.3273810   -2.7508431   -0.4441292
6 months    ki1148112-iLiNS-DOSE       MALAWI                         1_6 months     Control              NA                -0.1475309   -0.9162916    0.3128253
6 months    ki1148112-iLiNS-DOSE       MALAWI                         2+_6 months    Control              NA                 0.3589744   -1.2506573    0.8174249
6 months    ki1148112-LCNI-5           MALAWI                         1_6 months     Control              NA                 0.2893586   -0.5394816    0.6719602
6 months    ki1148112-LCNI-5           MALAWI                         2+_6 months    Control              NA                 1.0000000    0.9999999    1.0000000
6 months    kiGH5241-JiVitA-3          BANGLADESH                     1_6 months     Control              NA                -0.0784163   -0.1594717   -0.0030273
6 months    kiGH5241-JiVitA-3          BANGLADESH                     2+_6 months    Control              NA                -0.1225605   -0.6930051    0.2556774
24 months   ki1000107-Serrinha-VitA    BRAZIL                         1_24 months    Control              NA                -0.4285714   -1.2381857    0.0881828
24 months   ki1000107-Serrinha-VitA    BRAZIL                         2+_24 months   Control              NA                 0.0333333   -0.4639462    0.3616948
24 months   ki1148112-iLiNS-DOSE       MALAWI                         1_24 months    Control              NA                -0.0097884   -0.6417064    0.3788947
24 months   ki1148112-iLiNS-DOSE       MALAWI                         2+_24 months   Control              NA                 0.2337662   -1.3471871    0.7498648
24 months   ki1148112-LCNI-5           MALAWI                         1_24 months    Control              NA                -0.1602564   -1.3012002    0.4150031
24 months   kiGH5241-JiVitA-3          BANGLADESH                     1_24 months    Control              NA                 0.0426050   -0.5252434    0.3990433
