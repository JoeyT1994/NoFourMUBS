import CriticalZeroCompactCoefficients000
import CriticalZeroCompactCoefficients001
import CriticalZeroCompactCoefficients002
import CriticalZeroCompactCoefficients003
import CriticalZeroCompactCoefficients004
import CriticalZeroCompactCoefficients005
import CriticalZeroCompactCoefficients006
import CriticalZeroCompactCoefficients007
import CriticalZeroCompactCoefficients008
import CriticalZeroCompactCoefficients009
import CriticalZeroCompactCoefficients010
import CriticalZeroCompactCoefficients011
import CriticalZeroCompactCoefficients012
import CriticalZeroCompactCoefficients013
import CriticalZeroCompactCoefficients014
import CriticalZeroCompactCoefficients015
import CriticalZeroCompactCoefficients016
import CriticalZeroCompactCoefficients017
import CriticalZeroCompactCoefficients018
import CriticalZeroCompactCoefficients019
import CriticalZeroCompactCoefficients020
import CriticalZeroCompactCoefficients021
import CriticalZeroCompactCoefficients022
import CriticalZeroCompactCoefficients023
import CriticalZeroCompactCoefficients024
import CriticalZeroCompactCoefficients025
import CriticalZeroCompactCoefficients026
import CriticalZeroCompactCoefficients027
import CriticalZeroCompactCoefficients028
import CriticalZeroCompactCoefficients029
import CriticalZeroCompactCoefficients030
import CriticalZeroCompactCoefficients031
import CriticalZeroCompactCoefficients032
import CriticalZeroCompactCoefficients033
import CriticalZeroCompactCoefficients034
import CriticalZeroCompactCoefficients035
import CriticalZeroCompactCoefficients036
import CriticalZeroCompactCoefficients037
import CriticalZeroCompactCoefficients038
import CriticalZeroCompactCoefficients039
import CriticalZeroCompactCoefficients040
import CriticalZeroCompactCoefficients041
import CriticalZeroCompactCoefficients042
import CriticalZeroCompactCoefficients043
import CriticalZeroCompactCoefficients044
set_option autoImplicit false
set_option maxRecDepth 10000
set_option maxHeartbeats 1500000
namespace CriticalZeroSplitReduction20261003
noncomputable section
variable {R : Type*} [CommRing R]
theorem num_certificate_zero (X Y : R) : Coefficients.allZero2 (numCertificate X Y) := by
  exact ⟨⟨numZero_00_00 X Y,⟨numZero_00_01 X Y,⟨numZero_00_02 X Y,⟨numZero_00_03 X Y,⟨numZero_00_04 X Y,⟨numZero_00_05 X Y,⟨numZero_00_06 X Y,⟨numZero_00_07 X Y,⟨numZero_00_08 X Y,⟨numZero_00_09 X Y,⟨numZero_00_10 X Y,⟨numZero_00_11 X Y,⟨numZero_00_12 X Y,⟨numZero_00_13 X Y,⟨numZero_00_14 X Y,⟨numZero_00_15 X Y,⟨numZero_00_16 X Y,⟨numZero_00_17 X Y,⟨numZero_00_18 X Y,⟨numZero_00_19 X Y,⟨numZero_00_20 X Y,⟨numZero_00_21 X Y,⟨numZero_00_22 X Y,⟨numZero_00_23 X Y,⟨numZero_00_24 X Y,⟨numZero_00_25 X Y,⟨numZero_00_26 X Y,⟨numZero_00_27 X Y,⟨numZero_00_28 X Y,⟨numZero_00_29 X Y,⟨numZero_00_30 X Y,⟨numZero_00_31 X Y,⟨numZero_00_32 X Y,⟨numZero_00_33 X Y,⟨numZero_00_34 X Y,⟨numZero_00_35 X Y,⟨numZero_00_36 X Y,⟨numZero_00_37 X Y,⟨numZero_00_38 X Y,⟨numZero_00_39 X Y,⟨numZero_00_40 X Y,⟨numZero_00_41 X Y,⟨numZero_00_42 X Y,⟨numZero_00_43 X Y,⟨numZero_00_44 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_01_00 X Y,⟨numZero_01_01 X Y,⟨numZero_01_02 X Y,⟨numZero_01_03 X Y,⟨numZero_01_04 X Y,⟨numZero_01_05 X Y,⟨numZero_01_06 X Y,⟨numZero_01_07 X Y,⟨numZero_01_08 X Y,⟨numZero_01_09 X Y,⟨numZero_01_10 X Y,⟨numZero_01_11 X Y,⟨numZero_01_12 X Y,⟨numZero_01_13 X Y,⟨numZero_01_14 X Y,⟨numZero_01_15 X Y,⟨numZero_01_16 X Y,⟨numZero_01_17 X Y,⟨numZero_01_18 X Y,⟨numZero_01_19 X Y,⟨numZero_01_20 X Y,⟨numZero_01_21 X Y,⟨numZero_01_22 X Y,⟨numZero_01_23 X Y,⟨numZero_01_24 X Y,⟨numZero_01_25 X Y,⟨numZero_01_26 X Y,⟨numZero_01_27 X Y,⟨numZero_01_28 X Y,⟨numZero_01_29 X Y,⟨numZero_01_30 X Y,⟨numZero_01_31 X Y,⟨numZero_01_32 X Y,⟨numZero_01_33 X Y,⟨numZero_01_34 X Y,⟨numZero_01_35 X Y,⟨numZero_01_36 X Y,⟨numZero_01_37 X Y,⟨numZero_01_38 X Y,⟨numZero_01_39 X Y,⟨numZero_01_40 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_02_00 X Y,⟨numZero_02_01 X Y,⟨numZero_02_02 X Y,⟨numZero_02_03 X Y,⟨numZero_02_04 X Y,⟨numZero_02_05 X Y,⟨numZero_02_06 X Y,⟨numZero_02_07 X Y,⟨numZero_02_08 X Y,⟨numZero_02_09 X Y,⟨numZero_02_10 X Y,⟨numZero_02_11 X Y,⟨numZero_02_12 X Y,⟨numZero_02_13 X Y,⟨numZero_02_14 X Y,⟨numZero_02_15 X Y,⟨numZero_02_16 X Y,⟨numZero_02_17 X Y,⟨numZero_02_18 X Y,⟨numZero_02_19 X Y,⟨numZero_02_20 X Y,⟨numZero_02_21 X Y,⟨numZero_02_22 X Y,⟨numZero_02_23 X Y,⟨numZero_02_24 X Y,⟨numZero_02_25 X Y,⟨numZero_02_26 X Y,⟨numZero_02_27 X Y,⟨numZero_02_28 X Y,⟨numZero_02_29 X Y,⟨numZero_02_30 X Y,⟨numZero_02_31 X Y,⟨numZero_02_32 X Y,⟨numZero_02_33 X Y,⟨numZero_02_34 X Y,⟨numZero_02_35 X Y,⟨numZero_02_36 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_03_00 X Y,⟨numZero_03_01 X Y,⟨numZero_03_02 X Y,⟨numZero_03_03 X Y,⟨numZero_03_04 X Y,⟨numZero_03_05 X Y,⟨numZero_03_06 X Y,⟨numZero_03_07 X Y,⟨numZero_03_08 X Y,⟨numZero_03_09 X Y,⟨numZero_03_10 X Y,⟨numZero_03_11 X Y,⟨numZero_03_12 X Y,⟨numZero_03_13 X Y,⟨numZero_03_14 X Y,⟨numZero_03_15 X Y,⟨numZero_03_16 X Y,⟨numZero_03_17 X Y,⟨numZero_03_18 X Y,⟨numZero_03_19 X Y,⟨numZero_03_20 X Y,⟨numZero_03_21 X Y,⟨numZero_03_22 X Y,⟨numZero_03_23 X Y,⟨numZero_03_24 X Y,⟨numZero_03_25 X Y,⟨numZero_03_26 X Y,⟨numZero_03_27 X Y,⟨numZero_03_28 X Y,⟨numZero_03_29 X Y,⟨numZero_03_30 X Y,⟨numZero_03_31 X Y,⟨numZero_03_32 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_04_00 X Y,⟨numZero_04_01 X Y,⟨numZero_04_02 X Y,⟨numZero_04_03 X Y,⟨numZero_04_04 X Y,⟨numZero_04_05 X Y,⟨numZero_04_06 X Y,⟨numZero_04_07 X Y,⟨numZero_04_08 X Y,⟨numZero_04_09 X Y,⟨numZero_04_10 X Y,⟨numZero_04_11 X Y,⟨numZero_04_12 X Y,⟨numZero_04_13 X Y,⟨numZero_04_14 X Y,⟨numZero_04_15 X Y,⟨numZero_04_16 X Y,⟨numZero_04_17 X Y,⟨numZero_04_18 X Y,⟨numZero_04_19 X Y,⟨numZero_04_20 X Y,⟨numZero_04_21 X Y,⟨numZero_04_22 X Y,⟨numZero_04_23 X Y,⟨numZero_04_24 X Y,⟨numZero_04_25 X Y,⟨numZero_04_26 X Y,⟨numZero_04_27 X Y,⟨numZero_04_28 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_05_00 X Y,⟨numZero_05_01 X Y,⟨numZero_05_02 X Y,⟨numZero_05_03 X Y,⟨numZero_05_04 X Y,⟨numZero_05_05 X Y,⟨numZero_05_06 X Y,⟨numZero_05_07 X Y,⟨numZero_05_08 X Y,⟨numZero_05_09 X Y,⟨numZero_05_10 X Y,⟨numZero_05_11 X Y,⟨numZero_05_12 X Y,⟨numZero_05_13 X Y,⟨numZero_05_14 X Y,⟨numZero_05_15 X Y,⟨numZero_05_16 X Y,⟨numZero_05_17 X Y,⟨numZero_05_18 X Y,⟨numZero_05_19 X Y,⟨numZero_05_20 X Y,⟨numZero_05_21 X Y,⟨numZero_05_22 X Y,⟨numZero_05_23 X Y,⟨numZero_05_24 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_06_00 X Y,⟨numZero_06_01 X Y,⟨numZero_06_02 X Y,⟨numZero_06_03 X Y,⟨numZero_06_04 X Y,⟨numZero_06_05 X Y,⟨numZero_06_06 X Y,⟨numZero_06_07 X Y,⟨numZero_06_08 X Y,⟨numZero_06_09 X Y,⟨numZero_06_10 X Y,⟨numZero_06_11 X Y,⟨numZero_06_12 X Y,⟨numZero_06_13 X Y,⟨numZero_06_14 X Y,⟨numZero_06_15 X Y,⟨numZero_06_16 X Y,⟨numZero_06_17 X Y,⟨numZero_06_18 X Y,⟨numZero_06_19 X Y,⟨numZero_06_20 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_07_00 X Y,⟨numZero_07_01 X Y,⟨numZero_07_02 X Y,⟨numZero_07_03 X Y,⟨numZero_07_04 X Y,⟨numZero_07_05 X Y,⟨numZero_07_06 X Y,⟨numZero_07_07 X Y,⟨numZero_07_08 X Y,⟨numZero_07_09 X Y,⟨numZero_07_10 X Y,⟨numZero_07_11 X Y,⟨numZero_07_12 X Y,⟨numZero_07_13 X Y,⟨numZero_07_14 X Y,⟨numZero_07_15 X Y,⟨numZero_07_16 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_08_00 X Y,⟨numZero_08_01 X Y,⟨numZero_08_02 X Y,⟨numZero_08_03 X Y,⟨numZero_08_04 X Y,⟨numZero_08_05 X Y,⟨numZero_08_06 X Y,⟨numZero_08_07 X Y,⟨numZero_08_08 X Y,⟨numZero_08_09 X Y,⟨numZero_08_10 X Y,⟨numZero_08_11 X Y,⟨numZero_08_12 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_09_00 X Y,⟨numZero_09_01 X Y,⟨numZero_09_02 X Y,⟨numZero_09_03 X Y,⟨numZero_09_04 X Y,⟨numZero_09_05 X Y,⟨numZero_09_06 X Y,⟨numZero_09_07 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨numZero_10_00 X Y,⟨numZero_10_01 X Y,True.intro⟩⟩,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩

theorem den_certificate_zero (X Y : R) : Coefficients.allZero2 (denCertificate X Y) := by
  exact ⟨⟨denZero_00_00 X Y,⟨denZero_00_01 X Y,⟨denZero_00_02 X Y,⟨denZero_00_03 X Y,⟨denZero_00_04 X Y,⟨denZero_00_05 X Y,⟨denZero_00_06 X Y,⟨denZero_00_07 X Y,⟨denZero_00_08 X Y,⟨denZero_00_09 X Y,⟨denZero_00_10 X Y,⟨denZero_00_11 X Y,⟨denZero_00_12 X Y,⟨denZero_00_13 X Y,⟨denZero_00_14 X Y,⟨denZero_00_15 X Y,⟨denZero_00_16 X Y,⟨denZero_00_17 X Y,⟨denZero_00_18 X Y,⟨denZero_00_19 X Y,⟨denZero_00_20 X Y,⟨denZero_00_21 X Y,⟨denZero_00_22 X Y,⟨denZero_00_23 X Y,⟨denZero_00_24 X Y,⟨denZero_00_25 X Y,⟨denZero_00_26 X Y,⟨denZero_00_27 X Y,⟨denZero_00_28 X Y,⟨denZero_00_29 X Y,⟨denZero_00_30 X Y,⟨denZero_00_31 X Y,⟨denZero_00_32 X Y,⟨denZero_00_33 X Y,⟨denZero_00_34 X Y,⟨denZero_00_35 X Y,⟨denZero_00_36 X Y,⟨denZero_00_37 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨denZero_01_00 X Y,⟨denZero_01_01 X Y,⟨denZero_01_02 X Y,⟨denZero_01_03 X Y,⟨denZero_01_04 X Y,⟨denZero_01_05 X Y,⟨denZero_01_06 X Y,⟨denZero_01_07 X Y,⟨denZero_01_08 X Y,⟨denZero_01_09 X Y,⟨denZero_01_10 X Y,⟨denZero_01_11 X Y,⟨denZero_01_12 X Y,⟨denZero_01_13 X Y,⟨denZero_01_14 X Y,⟨denZero_01_15 X Y,⟨denZero_01_16 X Y,⟨denZero_01_17 X Y,⟨denZero_01_18 X Y,⟨denZero_01_19 X Y,⟨denZero_01_20 X Y,⟨denZero_01_21 X Y,⟨denZero_01_22 X Y,⟨denZero_01_23 X Y,⟨denZero_01_24 X Y,⟨denZero_01_25 X Y,⟨denZero_01_26 X Y,⟨denZero_01_27 X Y,⟨denZero_01_28 X Y,⟨denZero_01_29 X Y,⟨denZero_01_30 X Y,⟨denZero_01_31 X Y,⟨denZero_01_32 X Y,⟨denZero_01_33 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨denZero_02_00 X Y,⟨denZero_02_01 X Y,⟨denZero_02_02 X Y,⟨denZero_02_03 X Y,⟨denZero_02_04 X Y,⟨denZero_02_05 X Y,⟨denZero_02_06 X Y,⟨denZero_02_07 X Y,⟨denZero_02_08 X Y,⟨denZero_02_09 X Y,⟨denZero_02_10 X Y,⟨denZero_02_11 X Y,⟨denZero_02_12 X Y,⟨denZero_02_13 X Y,⟨denZero_02_14 X Y,⟨denZero_02_15 X Y,⟨denZero_02_16 X Y,⟨denZero_02_17 X Y,⟨denZero_02_18 X Y,⟨denZero_02_19 X Y,⟨denZero_02_20 X Y,⟨denZero_02_21 X Y,⟨denZero_02_22 X Y,⟨denZero_02_23 X Y,⟨denZero_02_24 X Y,⟨denZero_02_25 X Y,⟨denZero_02_26 X Y,⟨denZero_02_27 X Y,⟨denZero_02_28 X Y,⟨denZero_02_29 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨denZero_03_00 X Y,⟨denZero_03_01 X Y,⟨denZero_03_02 X Y,⟨denZero_03_03 X Y,⟨denZero_03_04 X Y,⟨denZero_03_05 X Y,⟨denZero_03_06 X Y,⟨denZero_03_07 X Y,⟨denZero_03_08 X Y,⟨denZero_03_09 X Y,⟨denZero_03_10 X Y,⟨denZero_03_11 X Y,⟨denZero_03_12 X Y,⟨denZero_03_13 X Y,⟨denZero_03_14 X Y,⟨denZero_03_15 X Y,⟨denZero_03_16 X Y,⟨denZero_03_17 X Y,⟨denZero_03_18 X Y,⟨denZero_03_19 X Y,⟨denZero_03_20 X Y,⟨denZero_03_21 X Y,⟨denZero_03_22 X Y,⟨denZero_03_23 X Y,⟨denZero_03_24 X Y,⟨denZero_03_25 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨denZero_04_00 X Y,⟨denZero_04_01 X Y,⟨denZero_04_02 X Y,⟨denZero_04_03 X Y,⟨denZero_04_04 X Y,⟨denZero_04_05 X Y,⟨denZero_04_06 X Y,⟨denZero_04_07 X Y,⟨denZero_04_08 X Y,⟨denZero_04_09 X Y,⟨denZero_04_10 X Y,⟨denZero_04_11 X Y,⟨denZero_04_12 X Y,⟨denZero_04_13 X Y,⟨denZero_04_14 X Y,⟨denZero_04_15 X Y,⟨denZero_04_16 X Y,⟨denZero_04_17 X Y,⟨denZero_04_18 X Y,⟨denZero_04_19 X Y,⟨denZero_04_20 X Y,⟨denZero_04_21 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,⟨⟨denZero_05_00 X Y,⟨denZero_05_01 X Y,⟨denZero_05_02 X Y,⟨denZero_05_03 X Y,⟨denZero_05_04 X Y,⟨denZero_05_05 X Y,⟨denZero_05_06 X Y,⟨denZero_05_07 X Y,⟨denZero_05_08 X Y,⟨denZero_05_09 X Y,⟨denZero_05_10 X Y,⟨denZero_05_11 X Y,⟨denZero_05_12 X Y,⟨denZero_05_13 X Y,⟨denZero_05_14 X Y,⟨denZero_05_15 X Y,⟨denZero_05_16 X Y,⟨denZero_05_17 X Y,True.intro⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩⟩,True.intro⟩⟩⟩⟩⟩⟩
theorem raw_numerator_reduced (X Y z K : R)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    rawNumerator X Y z=Coefficients.eval2 K z (numReducedTable X Y) := by
  have h := Coefficients.ideal_reduction X Y z K [numeratorCoefficients X Y]
    (numYTable X Y) (numXTable X Y) (numReducedTable X Y)
    (num_certificate_zero X Y) hy hx
  simpa only [Coefficients.eval2,zero_mul,mul_zero,add_zero,rawNumerator] using h
theorem raw_denominator_reduced (X Y z K : R)
    (hy : fy X Y z K=0) (hx : fx X z K=0) :
    rawDenominator X Y z=Coefficients.eval2 K z (denReducedTable X Y) := by
  have h := Coefficients.ideal_reduction X Y z K [denominatorCoefficients X Y]
    (denYTable X Y) (denXTable X Y) (denReducedTable X Y)
    (den_certificate_zero X Y) hy hx
  simpa only [Coefficients.eval2,zero_mul,mul_zero,add_zero,rawDenominator] using h
#print axioms num_certificate_zero
#print axioms den_certificate_zero
#print axioms raw_numerator_reduced
#print axioms raw_denominator_reduced
end
end CriticalZeroSplitReduction20261003
