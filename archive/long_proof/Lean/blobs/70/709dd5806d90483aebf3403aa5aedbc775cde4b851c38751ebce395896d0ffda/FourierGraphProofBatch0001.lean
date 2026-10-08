import FourierGraphProofBatch0000

import GraphLiteralAssembly

/- Preserved declarations from candidate module FourierPilotRows0040. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_40 : ∀ j : Fin 48,
    (40 : Fin 48) = j ∨ O 40 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 40) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_40 : ∀ j : Fin 48,
    (40 : Fin 48) = j ∨ U 40 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 40) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_41 : ∀ j : Fin 48,
    (41 : Fin 48) = j ∨ O 41 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 41) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_41 : ∀ j : Fin 48,
    (41 : Fin 48) = j ∨ U 41 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 41) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_42 : ∀ j : Fin 48,
    (42 : Fin 48) = j ∨ O 42 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 42) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_42 : ∀ j : Fin 48,
    (42 : Fin 48) = j ∨ U 42 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 42) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_43 : ∀ j : Fin 48,
    (43 : Fin 48) = j ∨ O 43 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 43) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_43 : ∀ j : Fin 48,
    (43 : Fin 48) = j ∨ U 43 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 43) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_44 : ∀ j : Fin 48,
    (44 : Fin 48) = j ∨ O 44 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 44) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_44 : ∀ j : Fin 48,
    (44 : Fin 48) = j ∨ U 44 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 44) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_45 : ∀ j : Fin 48,
    (45 : Fin 48) = j ∨ O 45 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 45) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_45 : ∀ j : Fin 48,
    (45 : Fin 48) = j ∨ U 45 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 45) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_46 : ∀ j : Fin 48,
    (46 : Fin 48) = j ∨ O 46 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 46) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_46 : ∀ j : Fin 48,
    (46 : Fin 48) = j ∨ U 46 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 46) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_47 : ∀ j : Fin 48,
    (47 : Fin 48) = j ∨ O 47 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 47) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_47 : ∀ j : Fin 48,
    (47 : Fin 48) = j ∨ U 47 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 47) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_40
#print axioms unbiased_row_40
#print axioms orth_row_41
#print axioms unbiased_row_41
#print axioms orth_row_42
#print axioms unbiased_row_42
#print axioms orth_row_43
#print axioms unbiased_row_43
#print axioms orth_row_44
#print axioms unbiased_row_44
#print axioms orth_row_45
#print axioms unbiased_row_45
#print axioms orth_row_46
#print axioms unbiased_row_46
#print axioms orth_row_47
#print axioms unbiased_row_47
end FourierPilot


/- Preserved declarations from candidate module FourierPilotStates. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def s0 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
def s1 : Finset (Fin 48) := {1, 4, 10, 16, 22, 27, 28, 29, 30, 32, 36, 42}
def s2 : Finset (Fin 48) := {0, 2, 8, 13, 18, 31, 38, 40, 44, 46}
def s3 : Finset (Fin 48) := ∅
def s4 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
def s5 : Finset (Fin 48) := {0, 7, 12, 25, 27, 29, 32, 38, 41, 42, 47}
def s6 : Finset (Fin 48) := {1, 9, 14, 21, 24, 28, 33, 35, 43, 45}
def s7 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
def s8 : Finset (Fin 48) := {13, 20, 29, 32, 33, 35, 39, 42, 44, 46}
def s9 : Finset (Fin 48) := {8, 9, 12, 15, 18, 21, 26, 30, 40, 47}
def s10 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
def s11 : Finset (Fin 48) := {3, 5, 8, 14, 23, 32, 37, 40, 42}
def s12 : Finset (Fin 48) := {0, 10, 15, 22, 24, 26, 33, 35, 38, 41}
def s13 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 28, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
def s14 : Finset (Fin 48) := {2, 9, 19, 21, 24, 31, 34, 42}
def s15 : Finset (Fin 48) := {5, 10, 14, 22, 23, 41, 43, 44, 45, 46}
def s16 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 28, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47}
def s17 : Finset (Fin 48) := {11, 15, 17, 18, 26, 43, 45}
def s18 : Finset (Fin 48) := {1, 2, 5, 12, 13, 23, 28, 30, 31, 47}
def s19 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 13, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 28, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47}
def s20 : Finset (Fin 48) := {2, 14, 18, 20, 24, 30, 31, 39, 41, 44, 46}
def s21 : Finset (Fin 48) := {4, 6, 10, 19, 22, 34, 36, 42, 43, 45}
def s22 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 14, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 28, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47}
def s23 : Finset (Fin 48) := {3, 5, 18, 23, 24, 30, 37, 41, 43, 45}
def s24 : Finset (Fin 48) := {2, 11, 12, 16, 17, 19, 31, 32, 34, 47}
def s25 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 28, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47}
def s26 : Finset (Fin 48) := {8, 11, 15, 17, 24, 26, 30, 40, 41}
def s27 : Finset (Fin 48) := {3, 6, 10, 20, 22, 27, 33, 35, 37, 39}
def s28 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 24, 25, 26, 28, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47}
def s29 : Finset (Fin 48) := {9, 19, 21, 30, 33, 34, 35, 41}
def s30 : Finset (Fin 48) := {7, 8, 12, 16, 20, 25, 29, 39, 40, 47}
def s31 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 26, 28, 30, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47}
def s32 : Finset (Fin 48) := {1, 4, 12, 28, 36, 41, 47}
def s33 : Finset (Fin 48) := {7, 11, 17, 25, 27, 33, 35, 42, 43, 45}
def s34 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 26, 28, 31, 33, 34, 35, 36, 37, 38, 39, 40, 41, 43, 44, 45, 46, 47}
def s35 : Finset (Fin 48) := {0, 7, 10, 22, 25, 38}
def s36 : Finset (Fin 48) := {2, 3, 4, 8, 29, 31, 32, 36, 37, 40}
def s37 : Finset (Fin 48) := {0, 1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 26, 28, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 46, 47}
def s38 : Finset (Fin 48) := {2, 5, 7, 9, 25, 26, 28, 38, 40, 46}
def s39 : Finset (Fin 48) := {1, 6, 10, 21, 22, 23, 29, 33, 34, 37, 43}
def s40 : Finset (Fin 48) := {1, 2, 3, 4, 5, 7, 8, 9, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 26, 28, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 46, 47}
def s41 : Finset (Fin 48) := {3, 9, 23, 26, 28, 31, 37, 46, 47}
def s42 : Finset (Fin 48) := {7, 15, 21, 22, 32, 34, 35, 38, 42, 43, 45}
def s43 : Finset (Fin 48) := {1, 2, 3, 4, 7, 8, 9, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 26, 28, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 46, 47}
def s44 : Finset (Fin 48) := {8, 12, 19, 21, 26, 28, 34, 46}
def s45 : Finset (Fin 48) := {7, 10, 16, 23, 27, 33, 35, 37, 38, 44, 45}
def s46 : Finset (Fin 48) := {1, 2, 3, 4, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 26, 28, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 46, 47}
def s47 : Finset (Fin 48) := {10, 11, 15, 17, 28, 33, 46}
def s48 : Finset (Fin 48) := {1, 2, 8, 12, 20, 23, 27, 29, 36, 40, 44}
def s49 : Finset (Fin 48) := {1, 2, 3, 4, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 28, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 46, 47}
def s50 : Finset (Fin 48) := {1, 4, 35, 36, 45, 46}
def s51 : Finset (Fin 48) := {8, 11, 12, 15, 16, 20, 31, 38, 42, 44, 47}
def s52 : Finset (Fin 48) := {1, 2, 3, 4, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 46, 47}
def s53 : Finset (Fin 48) := {20, 22, 39, 43, 44}
def s54 : Finset (Fin 48) := {1, 2, 6, 11, 15, 21, 31, 32, 36, 40, 47}
def s55 : Finset (Fin 48) := {1, 2, 3, 4, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 47}
def s56 : Finset (Fin 48) := {4, 15, 21, 23, 33, 36, 38, 43, 44}
def s57 : Finset (Fin 48) := {0, 2, 12, 16, 17, 26, 39, 40, 42, 46, 47}
def s58 : Finset (Fin 48) := {2, 3, 4, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 47}
def s59 : Finset (Fin 48) := {3, 8, 17, 19, 25, 31, 36, 39}
def s60 : Finset (Fin 48) := {7, 10, 11, 13, 15, 20, 22, 35, 41, 44, 45}
def s61 : Finset (Fin 48) := {2, 3, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 31, 33, 34, 35, 36, 37, 38, 39, 40, 43, 44, 45, 47}
def s62 : Finset (Fin 48) := {2, 7, 11, 20, 34, 37, 40}
def s63 : Finset (Fin 48) := {10, 13, 17, 22, 25, 26, 33, 39, 41, 43, 46}
def s64 : Finset (Fin 48) := {2, 3, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 31, 33, 34, 35, 37, 38, 39, 40, 43, 44, 45, 47}
def s65 : Finset (Fin 48) := {17, 19, 22, 23, 25, 35, 37, 39}
def s66 : Finset (Fin 48) := {7, 8, 11, 18, 21, 31, 34, 38, 40, 41, 47}
def s67 : Finset (Fin 48) := {2, 7, 8, 10, 11, 12, 15, 17, 19, 20, 21, 22, 23, 25, 31, 33, 34, 35, 37, 38, 39, 40, 43, 44, 45, 47}
def s68 : Finset (Fin 48) := {2, 11, 12, 15, 19, 25, 39}
def s69 : Finset (Fin 48) := {1, 10, 14, 20, 30, 33, 36, 37, 43, 44, 45}
def s70 : Finset (Fin 48) := {2, 7, 8, 10, 11, 12, 15, 19, 20, 21, 22, 23, 25, 31, 33, 34, 35, 37, 38, 39, 40, 43, 44, 45, 47}
def s71 : Finset (Fin 48) := {10, 21, 25, 34, 39, 45}
def s72 : Finset (Fin 48) := {2, 7, 8, 12, 13, 14, 20, 23, 31, 37, 38}
def s73 : Finset (Fin 48) := {2, 7, 8, 10, 11, 12, 15, 20, 21, 22, 23, 25, 31, 33, 34, 35, 37, 38, 39, 40, 43, 44, 45, 47}
def s74 : Finset (Fin 48) := {7, 33, 38, 39, 43}
def s75 : Finset (Fin 48) := {2, 12, 21, 23, 24, 30, 34, 36, 37, 40, 47}
def s76 : Finset (Fin 48) := {2, 7, 8, 10, 11, 12, 15, 20, 21, 22, 23, 31, 33, 34, 35, 37, 38, 39, 40, 43, 44, 45, 47}
def s77 : Finset (Fin 48) := {20, 40, 44, 47}
def s78 : Finset (Fin 48) := {1, 11, 15, 18, 22, 24, 33, 34, 35, 36, 43}
def s79 : Finset (Fin 48) := {2, 7, 8, 10, 11, 12, 15, 20, 21, 22, 23, 31, 33, 34, 35, 37, 38, 40, 43, 44, 45, 47}
def s80 : Finset (Fin 48) := {11, 20, 34, 35, 37, 38, 45}
def s81 : Finset (Fin 48) := {3, 4, 5, 8, 9, 12, 19, 24, 30, 31, 47}
def s82 : Finset (Fin 48) := {2, 8, 10, 11, 12, 15, 20, 21, 22, 23, 31, 33, 34, 35, 37, 38, 40, 43, 44, 45, 47}
def s83 : Finset (Fin 48) := {15, 20, 31, 34, 37, 47}
def s84 : Finset (Fin 48) := {3, 4, 14, 22, 28, 30, 35, 39, 43, 45, 46}
def s85 : Finset (Fin 48) := {2, 8, 10, 12, 15, 20, 21, 22, 23, 31, 33, 34, 35, 37, 38, 40, 43, 44, 45, 47}
def s86 : Finset (Fin 48) := {8, 12, 34, 37, 44}
def s87 : Finset (Fin 48) := {4, 10, 17, 18, 19, 24, 26, 28, 33, 35, 45}
def s88 : Finset (Fin 48) := {2, 8, 10, 12, 15, 21, 22, 23, 31, 33, 34, 35, 37, 38, 40, 43, 44, 45, 47}
def s89 : Finset (Fin 48) := {21, 22, 37, 43}
def s90 : Finset (Fin 48) := {0, 2, 3, 5, 13, 14, 25, 31, 39, 40, 47}
def s91 : Finset (Fin 48) := {2, 8, 10, 12, 15, 21, 22, 23, 31, 33, 35, 37, 38, 40, 43, 44, 45, 47}
def s92 : Finset (Fin 48) := {10, 23, 33}
def s93 : Finset (Fin 48) := {0, 2, 8, 9, 12, 17, 18, 19, 25, 40, 41}
def s94 : Finset (Fin 48) := {2, 8, 10, 12, 15, 21, 22, 23, 31, 33, 35, 38, 40, 43, 44, 45, 47}
def s95 : Finset (Fin 48) := {21, 22, 23, 35, 38, 44}
def s96 : Finset (Fin 48) := {4, 5, 8, 27, 28, 29, 31, 39, 40, 46, 47}
def s97 : Finset (Fin 48) := {2, 8, 10, 12, 21, 22, 23, 31, 33, 35, 38, 40, 43, 44, 45, 47}
def s98 : Finset (Fin 48) := {23, 38, 40, 44, 47}
def s99 : Finset (Fin 48) := {0, 3, 5, 16, 22, 25, 27, 33, 35, 43, 46}
def s100 : Finset (Fin 48) := {2, 8, 10, 12, 22, 23, 31, 33, 35, 38, 40, 43, 44, 45, 47}
def s101 : Finset (Fin 48) := {2, 12, 38, 44}
def s102 : Finset (Fin 48) := {0, 9, 10, 19, 25, 26, 32, 33, 42, 43, 45}
def s103 : Finset (Fin 48) := {2, 8, 10, 12, 22, 31, 33, 35, 38, 40, 43, 44, 45, 47}
def s104 : Finset (Fin 48) := {8, 31, 44}
def s105 : Finset (Fin 48) := {3, 5, 6, 9, 10, 19, 22, 28, 29, 35, 45}
def s106 : Finset (Fin 48) := {2, 8, 10, 12, 22, 31, 33, 35, 40, 43, 44, 45, 47}
def s107 : Finset (Fin 48) := {10, 45}
def s108 : Finset (Fin 48) := {2, 4, 6, 8, 9, 12, 17, 26, 28, 31, 32}
def s109 : Finset (Fin 48) := {2, 8, 10, 12, 22, 31, 33, 35, 40, 43, 45, 47}
def s110 : Finset (Fin 48) := {8, 10, 22, 33, 35, 43, 45, 47}
def s111 : Finset (Fin 48) := {1, 6, 14, 19, 25, 26, 34, 37, 41, 42, 44, 46}
def s112 : Finset (Fin 48) := {8, 10, 12, 22, 31, 33, 35, 40, 43, 45, 47}
def s113 : Finset (Fin 48) := {10, 22, 33, 35, 43, 45, 47}
def s114 : Finset (Fin 48) := {3, 6, 7, 15, 19, 24, 26, 27, 28, 37, 41, 44}
def s115 : Finset (Fin 48) := {10, 12, 22, 31, 33, 35, 40, 43, 45, 47}
def s116 : Finset (Fin 48) := {12, 31, 35, 40, 43, 47}
def s117 : Finset (Fin 48) := {0, 4, 9, 13, 17, 18, 20, 23, 29, 32, 36, 38}
def s118 : Finset (Fin 48) := {12, 22, 31, 33, 35, 40, 43, 45, 47}
def s119 : Finset (Fin 48) := {12, 31, 40, 43, 47}
def s120 : Finset (Fin 48) := {4, 5, 9, 11, 16, 18, 20, 21, 29, 30, 38, 39}
def s121 : Finset (Fin 48) := {12, 22, 31, 33, 40, 43, 45, 47}
def s122 : Finset (Fin 48) := {12, 31, 40, 47}
def s123 : Finset (Fin 48) := {0, 5, 11, 13, 16, 17, 21, 23, 30, 32, 36, 39}
def s124 : Finset (Fin 48) := {12, 22, 31, 33, 40, 45, 47}
def s125 : Finset (Fin 48) := {22, 33, 45}
def s126 : Finset (Fin 48) := {1, 3, 7, 14, 15, 24, 25, 27, 28, 34, 42, 46}
def s127 : Finset (Fin 48) := {12, 22, 31, 33, 40, 45}
def s128 : Finset (Fin 48) := {22, 31, 33, 40, 45}
def s129 : Finset (Fin 48) := {1, 7, 14, 19, 24, 25, 26, 27, 28, 37, 42, 44}
def s130 : Finset (Fin 48) := {31, 33, 40, 45}
def s131 : Finset (Fin 48) := {0, 4, 5, 11, 13, 18, 21, 29, 32, 36, 38, 39}

#print axioms s0
end FourierPilot


/- Preserved declarations from candidate module FourierPilotNodes000000. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def colors0 (v : Fin 48) : Nat := if (8449 : Nat).testBit v.val then 0 else if (70643622346756 : Nat).testBit v.val then 1 else if (17594333528064 : Nat).testBit v.val then 2 else if (1099511627776 : Nat).testBit v.val then 3 else 0
def cert0 : CliqueCertificate (Fin 48) := (.color 4 colors0)
theorem checked0 : checkClique O s2 5 cert0 = true := by
  decide +kernel
def cert1 : PairCertificate (Fin 48) := .cross cert0
theorem checked1 : checkPair O U s1 s2 4 cert1 = true := by
  change checkClique O s2 5 cert0 = true
  exact checked0
def colors2 (v : Fin 48) : Nat := if (35184388866050 : Nat).testBit v.val then 0 else if (8860483584 : Nat).testBit v.val then 1 else if (34359738880 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert2 : CliqueCertificate (Fin 48) := (.color 4 colors2)
theorem checked2 : checkClique O s6 5 cert2 = true := by
  decide +kernel
def cert3 : PairCertificate (Fin 48) := .cross cert2
theorem checked3 : checkPair O U s5 s6 4 cert3 = true := by
  change checkClique O s6 5 cert2 = true
  exact checked2
def colors4 (v : Fin 48) : Nat := if (140737488617984 : Nat).testBit v.val then 0 else if (69210368 : Nat).testBit v.val then 1 else if (1100585402368 : Nat).testBit v.val then 2 else 0
def cert4 : CliqueCertificate (Fin 48) := (.color 3 colors4)
theorem checked4 : checkClique O s9 5 cert4 = true := by
  decide +kernel
def cert5 : PairCertificate (Fin 48) := .cross cert4
theorem checked5 : checkPair O U s8 s9 4 cert5 = true := by
  change checkClique O s9 5 cert4 = true
  exact checked4
def colors6 (v : Fin 48) : Nat := if (2207613222912 : Nat).testBit v.val then 0 else if (274965987328 : Nat).testBit v.val then 1 else if (1025 : Nat).testBit v.val then 2 else if (34359738368 : Nat).testBit v.val then 3 else 0
def cert6 : CliqueCertificate (Fin 48) := (.color 4 colors6)
theorem checked6 : checkClique O s12 5 cert6 = true := by
  decide +kernel
def cert7 : PairCertificate (Fin 48) := .cross cert6
theorem checked7 : checkPair O U s11 s12 4 cert7 = true := by
  change checkClique O s12 5 cert6 = true
  exact checked6
def colors8 (v : Fin 48) : Nat := if (17592190255104 : Nat).testBit v.val then 0 else if (105553124656128 : Nat).testBit v.val then 1 else if (10995116277792 : Nat).testBit v.val then 2 else 0
def cert8 : CliqueCertificate (Fin 48) := (.color 3 colors8)
theorem checked8 : checkClique O s15 5 cert8 = true := by
  decide +kernel
def cert9 : PairCertificate (Fin 48) := .cross cert8
theorem checked9 : checkPair O U s14 s15 4 cert9 = true := by
  change checkClique O s15 5 cert8 = true
  exact checked8
def colors10 (v : Fin 48) : Nat := if (1073741860 : Nat).testBit v.val then 0 else if (140737765187584 : Nat).testBit v.val then 1 else if (4098 : Nat).testBit v.val then 2 else if (2147483648 : Nat).testBit v.val then 3 else 0
def cert10 : CliqueCertificate (Fin 48) := (.color 4 colors10)
theorem checked10 : checkClique O s18 5 cert10 = true := by
  decide +kernel
def cert11 : PairCertificate (Fin 48) := .cross cert10
theorem checked11 : checkPair O U s17 s18 4 cert11 = true := by
  change checkClique O s18 5 cert10 = true
  exact checked10
def colors12 (v : Fin 48) : Nat := if (8796093546560 : Nat).testBit v.val then 0 else if (4415226381328 : Nat).testBit v.val then 1 else if (68723671040 : Nat).testBit v.val then 2 else if (35184372088832 : Nat).testBit v.val then 3 else 0
def cert12 : CliqueCertificate (Fin 48) := (.color 4 colors12)
theorem checked12 : checkClique O s21 5 cert12 = true := by
  decide +kernel
def cert13 : PairCertificate (Fin 48) := .cross cert12
theorem checked13 : checkPair O U s20 s21 4 cert13 = true := by
  change checkClique O s21 5 cert12 = true
  exact checked12
def colors14 (v : Fin 48) : Nat := if (4294973440 : Nat).testBit v.val then 0 else if (19327549440 : Nat).testBit v.val then 1 else if (524292 : Nat).testBit v.val then 2 else if (140737488355328 : Nat).testBit v.val then 3 else 0
def cert14 : CliqueCertificate (Fin 48) := (.color 4 colors14)
theorem checked14 : checkClique O s24 5 cert14 = true := by
  decide +kernel
def cert15 : PairCertificate (Fin 48) := .cross cert14
theorem checked15 : checkPair O U s23 s24 4 cert15 = true := by
  change checkClique O s24 5 cert14 = true
  exact checked14
def colors16 (v : Fin 48) : Nat := if (134218760 : Nat).testBit v.val then 0 else if (721554505792 : Nat).testBit v.val then 1 else if (5242880 : Nat).testBit v.val then 2 else if (8589934592 : Nat).testBit v.val then 3 else 0
def cert16 : CliqueCertificate (Fin 48) := (.color 4 colors16)
theorem checked16 : checkClique O s27 5 cert16 = true := by
  decide +kernel
def cert17 : PairCertificate (Fin 48) := .cross cert16
theorem checked17 : checkPair O U s26 s27 4 cert17 = true := by
  change checkClique O s27 5 cert16 = true
  exact checked16
def colors18 (v : Fin 48) : Nat := if (1099512741888 : Nat).testBit v.val then 0 else if (549755818368 : Nat).testBit v.val then 1 else if (140738058780672 : Nat).testBit v.val then 2 else 0
def cert18 : CliqueCertificate (Fin 48) := (.color 3 colors18)
theorem checked18 : checkClique O s30 5 cert18 = true := by
  decide +kernel
def cert19 : PairCertificate (Fin 48) := .cross cert18
theorem checked19 : checkPair O U s29 s30 4 cert19 = true := by
  change checkClique O s30 5 cert18 = true
  exact checked18
def colors20 (v : Fin 48) : Nat := if (4406636445824 : Nat).testBit v.val then 0 else if (35184539863040 : Nat).testBit v.val then 1 else if (34359869440 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert20 : CliqueCertificate (Fin 48) := (.color 4 colors20)
theorem checked20 : checkClique O s33 5 cert20 = true := by
  decide +kernel
def cert21 : PairCertificate (Fin 48) := .cross cert20
theorem checked21 : checkPair O U s32 s33 4 cert21 = true := by
  change checkClique O s33 5 cert20 = true
  exact checked20
def colors22 (v : Fin 48) : Nat := if (536870932 : Nat).testBit v.val then 0 else if (70866960648 : Nat).testBit v.val then 1 else if (1241245548544 : Nat).testBit v.val then 2 else 0
def cert22 : CliqueCertificate (Fin 48) := (.color 3 colors22)
theorem checked22 : checkClique O s36 5 cert22 = true := by
  decide +kernel
def cert23 : PairCertificate (Fin 48) := .cross cert22
theorem checked23 : checkPair O U s35 s36 4 cert23 = true := by
  change checkClique O s36 5 cert22 = true
  exact checked22
def colors24 (v : Fin 48) : Nat := if (137443147778 : Nat).testBit v.val then 0 else if (25778192448 : Nat).testBit v.val then 1 else if (538969088 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert24 : CliqueCertificate (Fin 48) := (.color 4 colors24)
theorem checked24 : checkClique O s39 5 cert24 = true := by
  decide +kernel
def cert25 : PairCertificate (Fin 48) := .cross cert24
theorem checked25 : checkPair O U s38 s39 4 cert25 = true := by
  change checkClique O s39 5 cert24 = true
  exact checked24
def colors26 (v : Fin 48) : Nat := if (35201551990784 : Nat).testBit v.val then 0 else if (4398052802688 : Nat).testBit v.val then 1 else if (313532612608 : Nat).testBit v.val then 2 else if (8796093022208 : Nat).testBit v.val then 3 else 0
def cert26 : CliqueCertificate (Fin 48) := (.color 4 colors26)
theorem checked26 : checkClique O s42 5 cert26 = true := by
  decide +kernel
def cert27 : PairCertificate (Fin 48) := .cross cert26
theorem checked27 : checkPair O U s41 s42 4 cert27 = true := by
  change checkClique O s42 5 cert26 = true
  exact checked26
def colors28 (v : Fin 48) : Nat := if (67637504 : Nat).testBit v.val then 0 else if (270532608 : Nat).testBit v.val then 1 else if (70385924046848 : Nat).testBit v.val then 2 else 0
def cert28 : PairCertificate (Fin 48) := .first (.color 3 colors28)
theorem checked28 : checkPair O U s44 s45 4 cert28 = true := by
  decide +kernel
def colors29 (v : Fin 48) : Nat := if (8858373120 : Nat).testBit v.val then 0 else if (70368744210432 : Nat).testBit v.val then 1 else if (131072 : Nat).testBit v.val then 2 else 0
def cert29 : PairCertificate (Fin 48) := .first (.color 3 colors29)
theorem checked29 : checkPair O U s47 s48 4 cert29 = true := by
  decide +kernel
def colors30 (v : Fin 48) : Nat := if (105587476004866 : Nat).testBit v.val then 0 else if (16 : Nat).testBit v.val then 1 else if (68719476736 : Nat).testBit v.val then 2 else 0
def cert30 : PairCertificate (Fin 48) := .first (.color 3 colors30)
theorem checked30 : checkPair O U s50 s51 4 cert30 = true := by
  decide +kernel
def colors31 (v : Fin 48) : Nat := if (8796098265088 : Nat).testBit v.val then 0 else if (549755813888 : Nat).testBit v.val then 1 else if (17592186044416 : Nat).testBit v.val then 2 else 0
def cert31 : PairCertificate (Fin 48) := .first (.color 3 colors31)
theorem checked31 : checkPair O U s53 s54 4 cert31 = true := by
  decide +kernel

#print axioms checked0
#print axioms checked1
#print axioms checked2
#print axioms checked3
#print axioms checked4
#print axioms checked5
#print axioms checked6
#print axioms checked7
#print axioms checked8
#print axioms checked9
#print axioms checked10
#print axioms checked11
#print axioms checked12
#print axioms checked13
#print axioms checked14
#print axioms checked15
#print axioms checked16
#print axioms checked17
#print axioms checked18
#print axioms checked19
#print axioms checked20
#print axioms checked21
#print axioms checked22
#print axioms checked23
#print axioms checked24
#print axioms checked25
#print axioms checked26
#print axioms checked27
#print axioms checked28
#print axioms checked29
#print axioms checked30
#print axioms checked31
end FourierPilot


/- Preserved declarations from candidate module FourierPilotNodes000032. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def colors32 (v : Fin 48) : Nat := if (140737488486401 : Nat).testBit v.val then 0 else if (549822988292 : Nat).testBit v.val then 1 else if (74766790692864 : Nat).testBit v.val then 2 else if (1099511627776 : Nat).testBit v.val then 3 else 0
def cert32 : CliqueCertificate (Fin 48) := (.color 4 colors32)
theorem checked32 : checkClique O s57 5 cert32 = true := by
  decide +kernel
def cert33 : PairCertificate (Fin 48) := .cross cert32
theorem checked33 : checkPair O U s56 s57 4 cert33 = true := by
  change checkClique O s57 5 cert32 = true
  exact checked32
def colors34 (v : Fin 48) : Nat := if (17592190238848 : Nat).testBit v.val then 0 else if (37383396425728 : Nat).testBit v.val then 1 else if (11264 : Nat).testBit v.val then 2 else if (34359738368 : Nat).testBit v.val then 3 else 0
def cert34 : CliqueCertificate (Fin 48) := (.color 4 colors34)
theorem checked34 : checkClique O s60 5 cert34 = true := by
  decide +kernel
def cert35 : PairCertificate (Fin 48) := .cross cert34
theorem checked35 : checkPair O U s59 s60 4 cert35 = true := by
  change checkClique O s60 5 cert34 = true
  exact checked34
def colors36 (v : Fin 48) : Nat := if (70368777733120 : Nat).testBit v.val then 0 else if (11544939200512 : Nat).testBit v.val then 1 else if (4333568 : Nat).testBit v.val then 2 else if (8589934592 : Nat).testBit v.val then 3 else 0
def cert36 : CliqueCertificate (Fin 48) := (.color 4 colors36)
theorem checked36 : checkClique O s63 5 cert36 = true := by
  decide +kernel
def cert37 : PairCertificate (Fin 48) := .cross cert36
theorem checked37 : checkPair O U s62 s63 4 cert37 = true := by
  change checkClique O s63 5 cert36 = true
  exact checked36
def colors38 (v : Fin 48) : Nat := if (1374389536768 : Nat).testBit v.val then 0 else if (2149843072 : Nat).testBit v.val then 1 else if (2216203124992 : Nat).testBit v.val then 2 else if (140737488355328 : Nat).testBit v.val then 3 else 0
def cert38 : CliqueCertificate (Fin 48) := (.color 4 colors38)
theorem checked38 : checkClique O s66 5 cert38 = true := by
  decide +kernel
def cert39 : PairCertificate (Fin 48) := .cross cert38
theorem checked39 : checkPair O U s65 s66 4 cert39 = true := by
  change checkClique O s66 5 cert38 = true
  exact checked38
def colors40 (v : Fin 48) : Nat := if (530436 : Nat).testBit v.val then 0 else if (33587200 : Nat).testBit v.val then 1 else if (549755813888 : Nat).testBit v.val then 2 else 0
def cert40 : PairCertificate (Fin 48) := .first (.color 3 colors40)
theorem checked40 : checkPair O U s68 s69 4 cert40 = true := by
  decide +kernel
def colors41 (v : Fin 48) : Nat := if (35184407741440 : Nat).testBit v.val then 0 else if (566935683072 : Nat).testBit v.val then 1 else 0
def cert41 : PairCertificate (Fin 48) := .first (.color 2 colors41)
theorem checked41 : checkPair O U s71 s72 4 cert41 = true := by
  decide +kernel
def colors42 (v : Fin 48) : Nat := if (9354438770816 : Nat).testBit v.val then 0 else if (274877906944 : Nat).testBit v.val then 1 else 0
def cert42 : PairCertificate (Fin 48) := .first (.color 2 colors42)
theorem checked42 : checkPair O U s74 s75 4 cert42 = true := by
  decide +kernel
def colors43 (v : Fin 48) : Nat := if (141837001031680 : Nat).testBit v.val then 0 else if (17592186044416 : Nat).testBit v.val then 1 else 0
def cert43 : PairCertificate (Fin 48) := .first (.color 2 colors43)
theorem checked43 : checkPair O U s77 s78 4 cert43 = true := by
  decide +kernel
def colors44 (v : Fin 48) : Nat := if (140737488355856 : Nat).testBit v.val then 0 else if (1074266400 : Nat).testBit v.val then 1 else if (16781320 : Nat).testBit v.val then 2 else if (2147483648 : Nat).testBit v.val then 3 else 0
def cert44 : CliqueCertificate (Fin 48) := (.color 4 colors44)
theorem checked44 : checkClique O s81 5 cert44 = true := by
  decide +kernel
def cert45 : PairCertificate (Fin 48) := .cross cert44
theorem checked45 : checkPair O U s80 s81 4 cert45 = true := by
  change checkClique O s81 5 cert44 = true
  exact checked44
def colors46 (v : Fin 48) : Nat := if (140739636920320 : Nat).testBit v.val then 0 else if (17179869184 : Nat).testBit v.val then 1 else if (137438953472 : Nat).testBit v.val then 2 else 0
def cert46 : PairCertificate (Fin 48) := .first (.color 3 colors46)
theorem checked46 : checkPair O U s83 s84 4 cert46 = true := by
  decide +kernel
def colors47 (v : Fin 48) : Nat := if (17609365917952 : Nat).testBit v.val then 0 else if (137438953472 : Nat).testBit v.val then 1 else 0
def cert47 : PairCertificate (Fin 48) := .first (.color 2 colors47)
theorem checked47 : checkPair O U s86 s87 4 cert47 = true := by
  decide +kernel
def colors48 (v : Fin 48) : Nat := if (8933538267136 : Nat).testBit v.val then 0 else 0
def cert48 : PairCertificate (Fin 48) := .first (.color 1 colors48)
theorem checked48 : checkPair O U s89 s90 4 cert48 = true := by
  decide +kernel
def cert49 : PairCertificate (Fin 48) := .first .size
theorem checked49 : checkPair O U s92 s93 4 cert49 = true := by
  decide +kernel
def colors50 (v : Fin 48) : Nat := if (549755814176 : Nat).testBit v.val then 0 else if (211106769403920 : Nat).testBit v.val then 1 else if (2550136832 : Nat).testBit v.val then 2 else if (1099511627776 : Nat).testBit v.val then 3 else 0
def cert50 : CliqueCertificate (Fin 48) := (.color 4 colors50)
theorem checked50 : checkClique O s96 5 cert50 = true := by
  decide +kernel
def cert51 : PairCertificate (Fin 48) := .cross cert50
theorem checked51 : checkPair O U s95 s96 4 cert51 = true := by
  change checkClique O s96 5 cert50 = true
  exact checked50
def colors52 (v : Fin 48) : Nat := if (141837008371712 : Nat).testBit v.val then 0 else if (274877906944 : Nat).testBit v.val then 1 else if (17592186044416 : Nat).testBit v.val then 2 else 0
def cert52 : PairCertificate (Fin 48) := .first (.color 3 colors52)
theorem checked52 : checkPair O U s98 s99 4 cert52 = true := by
  decide +kernel
def colors53 (v : Fin 48) : Nat := if (274877911044 : Nat).testBit v.val then 0 else if (17592186044416 : Nat).testBit v.val then 1 else 0
def cert53 : PairCertificate (Fin 48) := .first (.color 2 colors53)
theorem checked53 : checkPair O U s101 s102 4 cert53 = true := by
  decide +kernel
def cert54 : PairCertificate (Fin 48) := .first .size
theorem checked54 : checkPair O U s104 s105 4 cert54 = true := by
  decide +kernel
def cert55 : PairCertificate (Fin 48) := .first .size
theorem checked55 : checkPair O U s107 s108 4 cert55 = true := by
  decide +kernel
def colors56 (v : Fin 48) : Nat := if (67649538 : Nat).testBit v.val then 0 else if (17609399468096 : Nat).testBit v.val then 1 else if (77103252897792 : Nat).testBit v.val then 2 else 0
def cert56 : CliqueCertificate (Fin 48) := (.color 3 colors56)
theorem checked56 : checkClique O s111 5 cert56 = true := by
  decide +kernel
def cert57 : PairCertificate (Fin 48) := .cross cert56
theorem checked57 : checkPair O U s110 s111 4 cert57 = true := by
  change checkClique O s111 5 cert56 = true
  exact checked56
def colors58 (v : Fin 48) : Nat := if (16810184 : Nat).testBit v.val then 0 else if (2336664059904 : Nat).testBit v.val then 1 else if (17592454479872 : Nat).testBit v.val then 2 else 0
def cert58 : CliqueCertificate (Fin 48) := (.color 3 colors58)
theorem checked58 : checkClique O s114 5 cert58 = true := by
  decide +kernel
def cert59 : PairCertificate (Fin 48) := .cross cert58
theorem checked59 : checkPair O U s113 s114 4 cert59 = true := by
  change checkClique O s114 5 cert58 = true
  exact checked58
def colors60 (v : Fin 48) : Nat := if (4303364113 : Nat).testBit v.val then 0 else if (275415958016 : Nat).testBit v.val then 1 else if (68719738880 : Nat).testBit v.val then 2 else 0
def cert60 : CliqueCertificate (Fin 48) := (.color 3 colors60)
theorem checked60 : checkClique O s117 5 cert60 = true := by
  decide +kernel
def cert61 : PairCertificate (Fin 48) := .cross cert60
theorem checked61 : checkPair O U s116 s117 4 cert61 = true := by
  change checkClique O s117 5 cert60 = true
  exact checked60
def colors62 (v : Fin 48) : Nat := if (2164784 : Nat).testBit v.val then 0 else if (275416089088 : Nat).testBit v.val then 1 else if (550829555712 : Nat).testBit v.val then 2 else 0
def cert62 : CliqueCertificate (Fin 48) := (.color 3 colors62)
theorem checked62 : checkClique O s120 5 cert62 = true := by
  decide +kernel
def cert63 : PairCertificate (Fin 48) := .cross cert62
theorem checked63 : checkPair O U s119 s120 4 cert63 = true := by
  change checkClique O s120 5 cert62 = true
  exact checked62

#print axioms checked32
#print axioms checked33
#print axioms checked34
#print axioms checked35
#print axioms checked36
#print axioms checked37
#print axioms checked38
#print axioms checked39
#print axioms checked40
#print axioms checked41
#print axioms checked42
#print axioms checked43
#print axioms checked44
#print axioms checked45
#print axioms checked46
#print axioms checked47
#print axioms checked48
#print axioms checked49
#print axioms checked50
#print axioms checked51
#print axioms checked52
#print axioms checked53
#print axioms checked54
#print axioms checked55
#print axioms checked56
#print axioms checked57
#print axioms checked58
#print axioms checked59
#print axioms checked60
#print axioms checked61
#print axioms checked62
#print axioms checked63
end FourierPilot
