import NoFourMUBs.Step2.SOS.Canonical029
import NoFourMUBs.Step2.SOS.Canonical030
import NoFourMUBs.Step2.SOS.Canonical032
import NoFourMUBs.Step2.SOS.Canonical033
import NoFourMUBs.Step2.SOS.Canonical034
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical197
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical209
import NoFourMUBs.Step2.SOS.Canonical210
import NoFourMUBs.Step2.SOS.Canonical213
import NoFourMUBs.Step2.SOS.Canonical214
import NoFourMUBs.Step2.SOS.Canonical215
import NoFourMUBs.Step2.SOS.Canonical216
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical264
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical314
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical372
import NoFourMUBs.Step2.SOS.Canonical376
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes003
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions046
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions099
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions125
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions275
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions310
import NoFourMUBs.Step2.SOS.Reductions322
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical180
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical222
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical226
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical244
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10336 : Integer.Sparse (Fin 1613) := [(565, -1), (596, -1), (610, -1), (618, -1)]

def reductionPivot10336 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]

theorem reductionSound10336 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6875).moment H =
      Integer.Sparse.eval reductionProjection10336 (momentVector H) := by
  have heq : reductionPivot10336 = (fun u v => (normalNode6875).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6875).moment H = injectiveMoment H reductionPivot10336 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6875).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10336 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10336 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10336 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection509, oldProjection505, oldProjection513, oldProjection515] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10336 (0 : Fin 4)) = canonicalInput12623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12623 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10336 (1 : Fin 4)) = canonicalInput13691.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13691 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10336 (2 : Fin 4)) = canonicalInput13739.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13739 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10336 (3 : Fin 4)) = canonicalInput13741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection515 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10336 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13741 hH))).trans (oldProjectionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6875).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10336 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6875).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10336 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10336 ![oldProjection509, oldProjection505, oldProjection513, oldProjection515]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10337 : Integer.Sparse (Fin 1613) := [(0, 1), (88, -80), (90, -240), (94, -10), (243, -80), (698, -800), (700, -80), (1059, -80), (1226, -560), (1227, -400), (1251, 85)]

def reductionPivot10337 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 1, 2], ![0, 1, 0, -1], ![0, 1, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound10337 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6939).moment H =
      Integer.Sparse.eval reductionProjection10337 (momentVector H) := by
  have heq : reductionPivot10337 = (fun u v => (normalNode6939).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6939).moment H = injectiveMoment H reductionPivot10337 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6939).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10337 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10337 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10337 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5436, reductionProjection4008, oldProjection839, oldProjection838] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10337 (0 : Fin 4)) = canonicalInput12766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5436 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12766 hH))).trans (reductionSound5436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10337 (1 : Fin 4)) = (normalNode7037).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4008 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10337 (2 : Fin 4)) = canonicalInput13917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection839 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13917 hH))).trans (oldProjectionSound839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10337 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5789 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection838 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10337 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5789 hH))).trans (oldProjectionSound838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6939).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10337 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6939).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10337 (j : Fin 4)))
      2 1440 1440 2 ![9, 720, 720, 720] ![160, 2, 2, 2] reductionProjection10337 ![reductionProjection5436, reductionProjection4008, oldProjection839, oldProjection838]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10338 : Integer.Sparse (Fin 1613) := [(0, 2), (62, -48), (87, -96), (88, 16), (90, 48), (94, 3), (241, 16), (243, 32), (405, 144), (434, 144), (565, 288), (596, 144), (610, 144), (618, 144), (698, 304), (700, 16), (808, 144), (1047, -48), (1055, -96), (1058, -96), (1059, 32), (1219, -96), (1226, 176), (1227, 192), (1251, -51)]

def reductionPivot10338 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, -1, 1, 0], ![0, 1, 0, -1], ![1, 1, -3, 1], ![1, 1, 0, -2]]

theorem reductionSound10338 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6848).moment H =
      Integer.Sparse.eval reductionProjection10338 (momentVector H) := by
  have heq : reductionPivot10338 = (fun u v => (normalNode6848).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6848).moment H = injectiveMoment H reductionPivot10338 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6848).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10338 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10338 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10338 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1492, reductionProjection10332, reductionProjection10336, reductionProjection9191, reductionProjection10337] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10338 (0 : Fin 5)) = canonicalInput1860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1492 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1860 hH))).trans (reductionSound1492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10338 (1 : Fin 5)) = (normalNode6844).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10332 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10338 (2 : Fin 5)) = canonicalInput13840.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10336 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13840 hH))).trans (reductionSound10336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10338 (3 : Fin 5)) = canonicalInput13842.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9191 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13842 hH))).trans (reductionSound9191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10338 (4 : Fin 5)) = canonicalInput13843.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10337 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10338 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13843 hH))).trans (reductionSound10337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6848).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10338 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6848).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10338 (j : Fin 5)))
      1 288 1440 5 ![1440, 2, 2, 1440, 1440] ![1, 720, 720, 1, 1] reductionProjection10338 ![reductionProjection1492, reductionProjection10332, reductionProjection10336, reductionProjection9191, reductionProjection10337]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10339 : Integer.Sparse (Fin 1613) := [(0, 2), (94, -15), (698, -40), (1103, -360), (1250, -30), (1251, 5), (1321, 120), (1389, 240), (1397, -360)]

def reductionPivot10339 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -1, 2], ![-1, 1, 2, -2], ![1, -1, -2, 2], ![1, -1, 1, -1]]

theorem reductionSound10339 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10206).moment H =
      Integer.Sparse.eval reductionProjection10339 (momentVector H) := by
  have heq : reductionPivot10339 = (fun u v => (normalNode10206).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10206).moment H = injectiveMoment H reductionPivot10339 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10206).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10339 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10339 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10339 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1365, oldProjection676, oldProjection1333, oldProjection1331] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10339 (0 : Fin 4)) = canonicalInput22733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22733 hH))).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10339 (1 : Fin 4)) = canonicalInput20144.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection676 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20144 hH))).trans (oldProjectionSound676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10339 (2 : Fin 4)) = canonicalInput20130.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20130 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10339 (3 : Fin 4)) = canonicalInput20127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10339 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20127 hH))).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10206).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10339 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10206).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10339 (j : Fin 4)))
      2 720 720 2 ![1, 1, 720, 720] ![720, 720, 1, 1] reductionProjection10339 ![reductionProjection1365, oldProjection676, oldProjection1333, oldProjection1331]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10340 : Integer.Sparse (Fin 1613) := [(1309, 1)]

theorem reductionSound10340 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1309).moment H =
      Integer.Sparse.eval reductionProjection10340 (momentVector H) := by
  have hc : coordinates (1309 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1309) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10340, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10341 : Integer.Sparse (Fin 1613) := [(1144, -1), (1309, -1), (1313, -1), (1397, -1)]

def reductionPivot10341 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -2, 1, 2], ![-1, 1, 1, -1], ![1, -1, -2, 2], ![1, 2, -1, -2]]

theorem reductionSound10341 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6880).moment H =
      Integer.Sparse.eval reductionProjection10341 (momentVector H) := by
  have heq : reductionPivot10341 = (fun u v => (normalNode6880).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6880).moment H = injectiveMoment H reductionPivot10341 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6880).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10341 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10341 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10341 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10340, reductionProjection1366, reductionProjection1365, reductionProjection1384] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10341 (0 : Fin 4)) = canonicalInput14041.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14041 hH))).trans (reductionSound10340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10341 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1313).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10341 (2 : Fin 4)) = canonicalInput13736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13736 hH))).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10341 (3 : Fin 4)) = canonicalInput13735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10341 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13735 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6880).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10341 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6880).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10341 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10341 ![reductionProjection10340, reductionProjection1366, reductionProjection1365, reductionProjection1384]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10342 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (20, -5), (94, -15), (698, -80), (704, -40), (1227, -40), (1250, -30), (1251, 5), (1321, 120), (1389, 120)]

def reductionPivot10342 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound10342 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode11022).moment H =
      Integer.Sparse.eval reductionProjection10342 (momentVector H) := by
  have heq : reductionPivot10342 = (fun u v => (normalNode11022).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11022).moment H = injectiveMoment H reductionPivot10342 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11022).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10342 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10342 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10342 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection835, reductionProjection4055, oldProjection1331, oldProjection1326] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10342 (0 : Fin 4)) = canonicalInput22751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22751 hH))).trans (oldProjectionSound835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10342 (1 : Fin 4)) = canonicalInput22635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4055 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22635 hH))).trans (reductionSound4055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10342 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1331⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1331 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1331 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1331 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10342 (3 : Fin 4)) = canonicalInput22634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1326 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10342 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22634 hH))).trans (oldProjectionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11022).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10342 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11022).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10342 (j : Fin 4)))
      2 720 720 2 ![720, 720, 720, 720] ![1, 1, 1, 1] reductionProjection10342 ![oldProjection835, reductionProjection4055, oldProjection1331, oldProjection1326]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10343 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 8), (94, -5), (697, 48), (698, -16), (1058, 48), (1250, -24), (1251, 6), (1389, 48)]

def reductionPivot10343 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, -1, 1]]

theorem reductionSound10343 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11032).moment H =
      Integer.Sparse.eval reductionProjection10343 (momentVector H) := by
  have heq : reductionPivot10343 = (fun u v => (normalNode11032).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11032).moment H = injectiveMoment H reductionPivot10343 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11032).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10343 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10343 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10343 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1222, oldProjection1333, reductionProjection4055, reductionProjection776] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10343 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10343 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1333⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10343 (2 : Fin 4)) = canonicalInput22669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4055 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22669 hH))).trans (reductionSound4055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10343 (3 : Fin 4)) = (normalNode11072).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10343 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11032).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10343 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11032).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10343 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection10343 ![oldProjection1222, oldProjection1333, reductionProjection4055, reductionProjection776]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10344 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -40), (20, 5), (94, 45), (218, 360), (697, -120), (698, 160), (704, 40), (1058, -120), (1103, 720), (1143, 360), (1144, 360), (1227, 40), (1250, 150), (1251, -30), (1309, 360), (1313, 360), (1321, -360), (1389, -600), (1397, 720)]

def reductionPivot10344 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 0, -1, 1], ![0, 1, 1, -2], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound10344 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6849).moment H =
      Integer.Sparse.eval reductionProjection10344 (momentVector H) := by
  have heq : reductionPivot10344 = (fun u v => (normalNode6849).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6849).moment H = injectiveMoment H reductionPivot10344 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6849).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10344 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10344 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 2, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10344 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1655, reductionProjection10339, reductionProjection10341, reductionProjection10342, reductionProjection10343] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10344 (0 : Fin 5)) = (normalNode897).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1655 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1655 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1655 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10344 (1 : Fin 5)) = canonicalInput13676.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13676 hH))).trans (reductionSound10339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10344 (2 : Fin 5)) = canonicalInput13857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10341 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13857 hH))).trans (reductionSound10341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10344 (3 : Fin 5)) = canonicalInput13867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10342 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13867 hH))).trans (reductionSound10342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10344 (4 : Fin 5)) = canonicalInput13868.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10343 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10344 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10343 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13868 hH))).trans (reductionSound10343 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6849).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10344 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6849).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10344 (j : Fin 5)))
      1 720 1440 2 ![1440, 720, 2, 720, 288] ![1, 2, 720, 2, 5] reductionProjection10344 ![reductionProjection1655, reductionProjection10339, reductionProjection10341, reductionProjection10342, reductionProjection10343]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10345 : Integer.Sparse (Fin 1613) := [(553, -1), (610, -1), (1144, -1), (1397, -1)]

def reductionPivot10345 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 1, 2], ![-1, 0, 2, -1], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound10345 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6858).moment H =
      Integer.Sparse.eval reductionProjection10345 (momentVector H) := by
  have heq : reductionPivot10345 = (fun u v => (normalNode6858).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6858).moment H = injectiveMoment H reductionPivot10345 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6858).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10345 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10345 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10345 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection513, reductionProjection1365, oldProjection503, reductionProjection1384] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10345 (0 : Fin 4)) = canonicalInput16942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16942 hH))).trans (oldProjectionSound513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10345 (1 : Fin 4)) = canonicalInput13736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13736 hH))).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10345 (2 : Fin 4)) = canonicalInput13688.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13688 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10345 (3 : Fin 4)) = canonicalInput13687.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10345 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13687 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6858).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10345 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6858).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10345 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection10345 ![oldProjection513, reductionProjection1365, oldProjection503, reductionProjection1384]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10346 : Integer.Sparse (Fin 1613) := [(0, 4), (94, 15), (698, -160), (1251, 15), (1389, 240), (1397, -720)]

def reductionPivot10346 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 1, 2, -2], ![0, 1, -1, 0], ![1, -1, -2, 2], ![1, -1, 1, -1]]

theorem reductionSound10346 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10497).moment H =
      Integer.Sparse.eval reductionProjection10346 (momentVector H) := by
  have heq : reductionPivot10346 = (fun u v => (normalNode10497).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10497).moment H = injectiveMoment H reductionPivot10346 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10497).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot10346 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10346 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10346 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1333, reductionProjection1365, oldProjection1334, reductionProjection4055] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10346 (0 : Fin 4)) = canonicalInput11666.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1333 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11666 hH))).trans (oldProjectionSound1333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10346 (1 : Fin 4)) = canonicalInput23384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23384 hH))).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10346 (2 : Fin 4)) = canonicalInput23415.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1334 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23415 hH))).trans (oldProjectionSound1334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10346 (3 : Fin 4)) = canonicalInput23416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4055 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10346 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23416 hH))).trans (reductionSound4055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10497).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10346 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10497).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10346 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 360, 720] ![2, 1440, 4, 2] reductionProjection10346 ![oldProjection1333, reductionProjection1365, oldProjection1334, reductionProjection4055]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10347 : Integer.Sparse (Fin 1613) := [(0, 1), (20, 5), (94, -30), (1251, -60)]

def reductionPivot10347 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![1, -1, 2, -2]]

theorem reductionSound10347 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9969).moment H =
      Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
  have heq : reductionPivot10347 = (fun u v => (normalNode9969).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9969).moment H = injectiveMoment H reductionPivot10347 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9969).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10347 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10347 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![240, 240, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10347 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection284, oldProjection272, oldProjection269] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10347 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7241 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10347 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection284 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10347 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7241 hH))).trans (oldProjectionSound284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10347 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7117 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10347 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection272 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10347 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7117 hH))).trans (oldProjectionSound272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10347 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7114 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10347 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10347 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7114 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9969).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10347 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9969).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10347 (j : Fin 3)))
      3 720 720 3 ![240, 240, 48] ![3, 3, 15] reductionProjection10347 ![oldProjection284, oldProjection272, oldProjection269]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10348 : Integer.Sparse (Fin 1613) := [(0, 9), (20, 5), (94, -20), (1251, 30)]

def reductionPivot10348 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound10348 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode11061).moment H =
      Integer.Sparse.eval reductionProjection10348 (momentVector H) := by
  have heq : reductionPivot10348 = (fun u v => (normalNode11061).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11061).moment H = injectiveMoment H reductionPivot10348 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11061).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10348 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10348 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![240, 60, 240] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10348 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection267, oldProjection46, oldProjection283] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10348 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7781 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10348 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection267 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10348 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7781 hH))).trans (oldProjectionSound267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10348 (1 : Fin 3)) = canonicalInput22661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((60 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10348 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection46 (momentVector H)
      have hh : (60 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10348 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection46 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (60 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22661 hH))).trans (oldProjectionSound46 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10348 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7823 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10348 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection283 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10348 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7823 hH))).trans (oldProjectionSound283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11061).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10348 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11061).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10348 (j : Fin 3)))
      3 720 720 3 ![240, 60, 240] ![3, 12, 3] reductionProjection10348 ![oldProjection267, oldProjection46, oldProjection283]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10349 : Integer.Sparse (Fin 1613) := [(0, -9), (19, 20), (20, -5), (94, 10), (1251, 20)]

def reductionPivot10349 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, 2, -2]]

theorem reductionSound10349 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode11030).moment H =
      Integer.Sparse.eval reductionProjection10349 (momentVector H) := by
  have heq : reductionPivot10349 = (fun u v => (normalNode11030).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11030).moment H = injectiveMoment H reductionPivot10349 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11030).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10349 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10349 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10349 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10347, oldProjection1335, reductionProjection10348, oldProjection1261] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10349 (0 : Fin 4)) = (normalNode9969).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10349 (1 : Fin 4)) = canonicalInput22638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1335 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22638 hH))).trans (oldProjectionSound1335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10349 (2 : Fin 4)) = canonicalInput22662.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10348 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10348 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22662 hH))).trans (reductionSound10348 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10349 (3 : Fin 4)) = canonicalInput22664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1261 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10349 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22664 hH))).trans (oldProjectionSound1261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11030).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10349 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11030).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10349 (j : Fin 4)))
      2 720 720 2 ![720, 144, 720, 720] ![1, 5, 1, 1] reductionProjection10349 ![reductionProjection10347, oldProjection1335, reductionProjection10348, oldProjection1261]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10350 : Integer.Sparse (Fin 1613) := [(94, 3), (698, -48), (1059, -16), (1226, -16), (1251, -1)]

def reductionPivot10350 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 1, -2, 2], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, -1, 1]]

theorem reductionSound10350 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11039).moment H =
      Integer.Sparse.eval reductionProjection10350 (momentVector H) := by
  have heq : reductionPivot10350 = (fun u v => (normalNode11039).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11039).moment H = injectiveMoment H reductionPivot10350 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11039).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10350 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10350 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![240, 360, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10350 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1265, oldProjection1334, reductionProjection4055, oldProjection840] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10350 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1265⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1265 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10350 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1334 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10350 (2 : Fin 4)) = canonicalInput22669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4055 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22669 hH))).trans (reductionSound4055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10350 (3 : Fin 4)) = canonicalInput22672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10350 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22672 hH))).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11039).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10350 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11039).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10350 (j : Fin 4)))
      2 288 1440 10 ![240, 360, 720, 360] ![6, 4, 2, 4] reductionProjection10350 ![oldProjection1265, oldProjection1334, reductionProjection4055, oldProjection840]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10351 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -60), (20, 10), (94, -5), (553, 720), (610, 720), (697, -240), (698, 480), (1058, -240), (1059, 80), (1144, 720), (1226, 80), (1250, 180), (1251, -60), (1321, -480), (1323, -240), (1389, -720), (1397, 1440)]

def reductionPivot10351 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound10351 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6850).moment H =
      Integer.Sparse.eval reductionProjection10351 (momentVector H) := by
  have heq : reductionPivot10351 = (fun u v => (normalNode6850).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6850).moment H = injectiveMoment H reductionPivot10351 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6850).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10351 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10351 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 2, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10351 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1607, reductionProjection10345, reductionProjection10346, reductionProjection10349, reductionProjection10350] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10351 (0 : Fin 5)) = canonicalInput1973.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1607 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1607 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1973 hH))).trans (reductionSound1607 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10351 (1 : Fin 5)) = (normalNode6858).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10345 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10351 (2 : Fin 5)) = canonicalInput13878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10346 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10346 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13878 hH))).trans (reductionSound10346 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10351 (3 : Fin 5)) = canonicalInput13887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10349 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13887 hH))).trans (reductionSound10349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10351 (4 : Fin 5)) = canonicalInput13888.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10350 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10351 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13888 hH))).trans (reductionSound10350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6850).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10351 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6850).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10351 (j : Fin 5)))
      1 1440 1440 1 ![288, 2, 1440, 720, 288] ![5, 720, 1, 2, 5] reductionProjection10351 ![reductionProjection1607, reductionProjection10345, reductionProjection10346, reductionProjection10349, reductionProjection10350]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10352 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (682, 240), (698, -160), (1143, -720), (1221, 480), (1226, -80), (1227, -80), (1251, 30), (1380, -720), (1389, 240)]

def reductionPivot10352 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 2, -1, -2]]

theorem reductionSound10352 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6851).moment H =
      Integer.Sparse.eval reductionProjection10352 (momentVector H) := by
  have heq : reductionPivot10352 = (fun u v => (normalNode6851).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6851).moment H = injectiveMoment H reductionPivot10352 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6851).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10352 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10352 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10352 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1381, reductionProjection1398, oldProjection822, oldProjection1111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10352 (0 : Fin 4)) = canonicalInput2054.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1381 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1381 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2054 hH))).trans (reductionSound1381 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10352 (1 : Fin 4)) = canonicalInput13713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1398 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1398 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13713 hH))).trans (reductionSound1398 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10352 (2 : Fin 4)) = canonicalInput13903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection822 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13903 hH))).trans (oldProjectionSound822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10352 (3 : Fin 4)) = canonicalInput13907.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10352 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13907 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6851).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10352 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6851).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10352 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 3, 720] ![1440, 1440, 480, 2] reductionProjection10352 ![reductionProjection1381, reductionProjection1398, oldProjection822, oldProjection1111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10353 : Integer.Sparse (Fin 1613) := [(1316, 1)]

theorem reductionSound10353 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1316).moment H =
      Integer.Sparse.eval reductionProjection10353 (momentVector H) := by
  have hc : coordinates (1316 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1316) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10353, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10354 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (635, -720), (698, -160), (1175, -720), (1221, 240), (1226, -80), (1227, -80), (1251, 30), (1316, -720)]

def reductionPivot10354 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 1, 2], ![-1, 2, 1, -2], ![1, -1, 1, -1], ![1, 1, -2, 0]]

theorem reductionSound10354 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6905).moment H =
      Integer.Sparse.eval reductionProjection10354 (momentVector H) := by
  have heq : reductionPivot10354 = (fun u v => (normalNode6905).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6905).moment H = injectiveMoment H reductionPivot10354 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6905).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10354 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10354 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10354 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection690, oldProjection517, oldProjection1111, reductionProjection10353] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10354 (0 : Fin 4)) = canonicalInput13468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection690 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13468 hH))).trans (oldProjectionSound690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10354 (1 : Fin 4)) = canonicalInput13784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13784 hH))).trans (oldProjectionSound517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10354 (2 : Fin 4)) = canonicalInput13792.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13792 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10354 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1316).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10353 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10354 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6905).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10354 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6905).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10354 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection10354 ![oldProjection690, oldProjection517, oldProjection1111, reductionProjection10353]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10355 : Integer.Sparse (Fin 1613) := [(0, 4), (76, 240), (81, 480), (94, -15), (682, 240), (698, -400), (1059, -160), (1221, 480), (1226, -160), (1227, -80), (1251, 25)]

def reductionPivot10355 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, -2, 1]]

theorem reductionSound10355 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6946).moment H =
      Integer.Sparse.eval reductionProjection10355 (momentVector H) := by
  have heq : reductionPivot10355 = (fun u v => (normalNode6946).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6946).moment H = injectiveMoment H reductionPivot10355 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6946).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10355 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10355 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 360, 144, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10355 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1010, oldProjection840, oldProjection824, reductionProjection2405] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10355 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1010⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1010 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1010 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1010 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10355 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node840⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10355 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10355 (3 : Fin 4)) = (normalNode6951).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2405 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10355 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6946).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10355 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6946).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10355 (j : Fin 4)))
      2 1440 1440 2 ![360, 360, 144, 3] ![4, 4, 10, 480] reductionProjection10355 ![oldProjection1010, oldProjection840, oldProjection824, reductionProjection2405]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10356 : Integer.Sparse (Fin 1613) := [(0, -1), (698, -160), (1221, 120), (1226, -80), (1227, -80), (1251, -15)]

def reductionPivot10356 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, 1, 1], ![0, 0, -2, 2], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound10356 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9452).moment H =
      Integer.Sparse.eval reductionProjection10356 (momentVector H) := by
  have heq : reductionPivot10356 = (fun u v => (normalNode9452).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9452).moment H = injectiveMoment H reductionPivot10356 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9452).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10356 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10356 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10356 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1284, oldProjection1122, oldProjection1111, oldProjection1110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10356 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1284⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1284 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10356 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1122 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10356 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1111⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10356 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1110⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1110 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10356 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9452).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10356 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9452).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10356 (j : Fin 4)))
      2 720 720 2 ![720, 720, 720, 720] ![1, 1, 1, 1] reductionProjection10356 ![oldProjection1284, oldProjection1122, oldProjection1111, oldProjection1110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10357 : Integer.Sparse (Fin 1613) := [(0, -7), (76, -240), (81, -480), (94, 35), (593, 720), (602, 1440), (635, 720), (682, -240), (698, 1280), (1050, -240), (1058, -240), (1059, 320), (1116, 720), (1175, 1440), (1221, -1200), (1226, 560), (1227, 400), (1251, -50), (1316, 720)]

def reductionPivot10357 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 1, -1, 0], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound10357 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6852).moment H =
      Integer.Sparse.eval reductionProjection10357 (momentVector H) := by
  have heq : reductionPivot10357 = (fun u v => (normalNode6852).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6852).moment H = injectiveMoment H reductionPivot10357 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6852).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10357 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10357 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10357 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1391, reductionProjection9207, reductionProjection10354, reductionProjection10355, reductionProjection10356] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10357 (0 : Fin 5)) = (normalNode942).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1391 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10357 (1 : Fin 5)) = canonicalInput13722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9207 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13722 hH))).trans (reductionSound9207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10357 (2 : Fin 5)) = canonicalInput13908.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10354 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13908 hH))).trans (reductionSound10354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10357 (3 : Fin 5)) = canonicalInput13913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10355 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13913 hH))).trans (reductionSound10355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10357 (4 : Fin 5)) = canonicalInput13914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10356 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10357 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13914 hH))).trans (reductionSound10356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6852).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10357 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6852).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10357 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 720] ![1, 1, 1, 1, 2] reductionProjection10357 ![reductionProjection1391, reductionProjection9207, reductionProjection10354, reductionProjection10355, reductionProjection10356]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10358 : Integer.Sparse (Fin 1613) := [(1312, 1)]

theorem reductionSound10358 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1312).moment H =
      Integer.Sparse.eval reductionProjection10358 (momentVector H) := by
  have hc : coordinates (1312 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1312) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10358, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10359 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 480), (94, -5), (682, 240), (697, 240), (698, -320), (1059, -80), (1221, 240), (1226, -80), (1227, -240), (1251, 70), (1389, 480)]

def reductionPivot10359 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -2, 1, 2], ![0, -1, 2, -1], ![0, 2, -1, -1], ![1, 0, -2, 1]]

theorem reductionSound10359 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6949).moment H =
      Integer.Sparse.eval reductionProjection10359 (momentVector H) := by
  have heq : reductionPivot10359 = (fun u v => (normalNode6949).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6949).moment H = injectiveMoment H reductionPivot10359 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6949).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10359 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10359 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10359 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1078, oldProjection844, oldProjection824, oldProjection1276] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10359 (0 : Fin 4)) = canonicalInput18219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1078 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1078 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18219 hH))).trans (oldProjectionSound1078 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10359 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node844⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection844 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection844 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound844 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10359 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10359 (3 : Fin 4)) = canonicalInput13850.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1276 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10359 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1276 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13850 hH))).trans (oldProjectionSound1276 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6949).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10359 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6949).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10359 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 144, 720] ![2, 2, 10, 2] reductionProjection10359 ![oldProjection1078, oldProjection844, oldProjection824, oldProjection1276]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10360 : Integer.Sparse (Fin 1613) := [(0, 14), (81, -480), (94, 35), (546, 720), (602, 720), (635, 1440), (638, 720), (682, -240), (697, -240), (698, 640), (1027, 720), (1059, 160), (1116, 720), (1175, 720), (1221, -240), (1226, 160), (1227, 400), (1251, -215), (1312, -1440), (1389, -480)]

def reductionPivot10360 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 1, 0, -1], ![0, 2, -1, -1], ![1, -1, 1, -1], ![1, 0, -2, 1]]

theorem reductionSound10360 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6853).moment H =
      Integer.Sparse.eval reductionProjection10360 (momentVector H) := by
  have heq : reductionPivot10360 = (fun u v => (normalNode6853).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6853).moment H = injectiveMoment H reductionPivot10360 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6853).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10360 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10360 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 2, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10360 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1405, reductionProjection10358, reductionProjection2102, reductionProjection10359, reductionProjection3734] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10360 (0 : Fin 5)) = canonicalInput2125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1405 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2125 hH))).trans (reductionSound1405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10360 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1312).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10358 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10360 (2 : Fin 5)) = canonicalInput13916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2102 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13916 hH))).trans (reductionSound2102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10360 (3 : Fin 5)) = canonicalInput13920.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10359 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13920 hH))).trans (reductionSound10359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10360 (4 : Fin 5)) = canonicalInput13921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3734 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10360 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13921 hH))).trans (reductionSound3734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6853).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10360 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6853).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10360 (j : Fin 5)))
      1 1440 1440 1 ![2, 1, 2, 1440, 288] ![720, 1440, 720, 1, 5] reductionProjection10360 ![reductionProjection1405, reductionProjection10358, reductionProjection2102, reductionProjection10359, reductionProjection3734]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10361 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (81, 480), (90, -80), (94, -15), (597, -720), (611, -720), (698, -240), (1226, -160), (1227, -80), (1251, -20)]

def reductionPivot10361 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 2, -3, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound10361 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6854).moment H =
      Integer.Sparse.eval reductionProjection10361 (momentVector H) := by
  have heq : reductionPivot10361 = (fun u v => (normalNode6854).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6854).moment H = injectiveMoment H reductionPivot10361 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6854).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10361 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10361 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10361 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1380, reductionProjection1109, oldProjection823, oldProjection851] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10361 (0 : Fin 4)) = canonicalInput2159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1380 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1380 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2159 hH))).trans (reductionSound1380 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10361 (1 : Fin 4)) = canonicalInput13761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13761 hH))).trans (reductionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10361 (2 : Fin 4)) = canonicalInput13930.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13930 hH))).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10361 (3 : Fin 4)) = canonicalInput13933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection851 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10361 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13933 hH))).trans (oldProjectionSound851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6854).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10361 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6854).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10361 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 9] ![1440, 1440, 2, 160] reductionProjection10361 ![reductionProjection1380, reductionProjection1109, oldProjection823, oldProjection851]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10362 : Integer.Sparse (Fin 1613) := [(0, 1), (81, 240), (90, -80), (243, -80), (593, -720), (698, -400), (700, -240), (1059, -160), (1117, -720), (1226, -80), (1227, -80), (1251, 15)]

def reductionPivot10362 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 2, -2, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]

theorem reductionSound10362 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6855).moment H =
      Integer.Sparse.eval reductionProjection10362 (momentVector H) := by
  have heq : reductionPivot10362 = (fun u v => (normalNode6855).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6855).moment H = injectiveMoment H reductionPivot10362 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6855).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10362 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10362 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10362 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1322, oldProjection680, oldProjection971, oldProjection852] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10362 (0 : Fin 4)) = canonicalInput2164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2164 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10362 (1 : Fin 4)) = canonicalInput13775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection680 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13775 hH))).trans (oldProjectionSound680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10362 (2 : Fin 4)) = canonicalInput13934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection971 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13934 hH))).trans (oldProjectionSound971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10362 (3 : Fin 4)) = canonicalInput13936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection852 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10362 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13936 hH))).trans (oldProjectionSound852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6855).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10362 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6855).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10362 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 9] ![1440, 1440, 2, 160] reductionProjection10362 ![reductionProjection1322, oldProjection680, oldProjection971, oldProjection852]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10363 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (81, 240), (94, -5), (593, -720), (698, -160), (1221, 480), (1226, -80), (1227, -80), (1251, 30), (1316, -720)]

def reductionPivot10363 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -2, 1, 2], ![0, 2, 0, -2], ![1, -1, 1, -1], ![1, 1, -3, 1]]

theorem reductionSound10363 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6856).moment H =
      Integer.Sparse.eval reductionProjection10363 (momentVector H) := by
  have heq : reductionPivot10363 = (fun u v => (normalNode6856).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6856).moment H = injectiveMoment H reductionPivot10363 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6856).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10363 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10363 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10363 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1322, reductionProjection10353, reductionProjection2405, oldProjection1111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10363 (0 : Fin 4)) = canonicalInput2176.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1322 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2176 hH))).trans (reductionSound1322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10363 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1316).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10353 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10363 (2 : Fin 4)) = canonicalInput13940.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2405 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13940 hH))).trans (reductionSound2405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10363 (3 : Fin 4)) = canonicalInput13942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1111 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10363 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13942 hH))).trans (oldProjectionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6856).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10363 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6856).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10363 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 3, 720] ![1440, 1440, 480, 2] reductionProjection10363 ![reductionProjection1322, reductionProjection10353, reductionProjection2405, oldProjection1111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10364 : Integer.Sparse (Fin 1613) := [(0, 3), (94, 25), (631, -720), (698, -160), (1058, 240), (1144, -720), (1226, -80), (1251, 50)]

def reductionPivot10364 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, -1, 1]]

theorem reductionSound10364 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6859).moment H =
      Integer.Sparse.eval reductionProjection10364 (momentVector H) := by
  have heq : reductionPivot10364 = (fun u v => (normalNode6859).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6859).moment H = injectiveMoment H reductionPivot10364 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6859).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10364 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10364 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10364 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1347, oldProjection1334, reductionProjection1384, reductionProjection4679] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10364 (0 : Fin 4)) = canonicalInput24081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24081 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10364 (1 : Fin 4)) = canonicalInput13893.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1334 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13893 hH))).trans (oldProjectionSound1334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10364 (2 : Fin 4)) = canonicalInput13694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13694 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10364 (3 : Fin 4)) = canonicalInput13686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10364 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13686 hH))).trans (reductionSound4679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6859).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10364 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6859).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10364 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 1, 1] ![2, 4, 1440, 1440] reductionProjection10364 ![oldProjection1347, oldProjection1334, reductionProjection1384, reductionProjection4679]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10365 : Integer.Sparse (Fin 1613) := [(72, 12), (81, 12), (94, 1), (553, -36), (631, -36), (682, 24), (698, -4), (1226, -4), (1251, 1)]

def reductionPivot10365 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, 0, -2, 1]]

theorem reductionSound10365 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode6860).moment H =
      Integer.Sparse.eval reductionProjection10365 (momentVector H) := by
  have heq : reductionPivot10365 = (fun u v => (normalNode6860).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6860).moment H = injectiveMoment H reductionPivot10365 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6860).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10365 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10365 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10365 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection989, oldProjection824, oldProjection503, reductionProjection4679] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10365 (0 : Fin 4)) = canonicalInput23853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection989 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23853 hH))).trans (oldProjectionSound989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10365 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node824⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10365 (2 : Fin 4)) = canonicalInput13693.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13693 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10365 (3 : Fin 4)) = canonicalInput13686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4679 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10365 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13686 hH))).trans (reductionSound4679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6860).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10365 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6860).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10365 (j : Fin 4)))
      2 72 144 4 ![144, 144, 1, 1] ![1, 1, 144, 144] reductionProjection10365 ![oldProjection989, oldProjection824, oldProjection503, reductionProjection4679]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10366 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -40), (72, -240), (81, -240), (94, -20), (243, 240), (553, 720), (631, 1440), (682, -480), (697, -240), (698, 560), (700, 240), (704, 160), (1005, 720), (1058, -720), (1059, 80), (1144, 720), (1205, 720), (1226, 320), (1250, 60), (1251, -55)]

def reductionPivot10366 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 1, 2], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10366 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6857).moment H =
      Integer.Sparse.eval reductionProjection10366 (momentVector H) := by
  have heq : reductionPivot10366 = (fun u v => (normalNode6857).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6857).moment H = injectiveMoment H reductionPivot10366 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6857).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10366 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10366 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10366 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2752, oldProjection1630, reductionProjection8817, reductionProjection10364, reductionProjection10365] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10366 (0 : Fin 5)) = canonicalInput13419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2752 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13419 hH))).trans (reductionSound2752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10366 (1 : Fin 5)) = canonicalInput13677.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1630 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13677 hH))).trans (oldProjectionSound1630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10366 (2 : Fin 5)) = canonicalInput13685.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8817 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13685 hH))).trans (reductionSound8817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10366 (3 : Fin 5)) = (normalNode6859).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10364 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10364 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10364 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10366 (4 : Fin 5)) = (normalNode6860).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10365 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10366 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6857).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10366 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6857).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10366 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 72] ![1, 1, 1, 1, 20] reductionProjection10366 ![reductionProjection2752, oldProjection1630, reductionProjection8817, reductionProjection10364, reductionProjection10365]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10367 : Integer.Sparse (Fin 1613) := [(0, 9), (94, 95), (241, 160), (247, 80), (483, 720), (549, 720), (596, 720), (610, 720), (617, 720), (623, 720), (698, 1120), (1055, -720), (1059, 80), (1219, -240), (1226, 160), (1227, 800), (1251, -230), (1306, -1440), (1389, -240)]

def reductionPivot10367 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -2, 1, 2], ![-1, 1, -1, 1], ![0, 0, 1, -1], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound10367 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6861).moment H =
      Integer.Sparse.eval reductionProjection10367 (momentVector H) := by
  have heq : reductionPivot10367 = (fun u v => (normalNode6861).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6861).moment H = injectiveMoment H reductionPivot10367 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6861).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10367 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10367 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 1, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10367 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9924, reductionProjection3191, reductionProjection3767, oldProjection1789, oldProjection1795] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10367 (0 : Fin 5)) = (normalNode6153).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9924 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10367 (1 : Fin 5)) = canonicalInput13674.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3191 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13674 hH))).trans (reductionSound3191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10367 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1306).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3767 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10367 (3 : Fin 5)) = canonicalInput13700.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1789 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1789 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13700 hH))).trans (oldProjectionSound1789 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10367 (4 : Fin 5)) = canonicalInput13701.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1795 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10367 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13701 hH))).trans (oldProjectionSound1795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6861).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10367 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6861).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10367 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 1, 288, 1440] ![10, 1, 1440, 5, 1] reductionProjection10367 ![reductionProjection9924, reductionProjection3191, reductionProjection3767, oldProjection1789, oldProjection1795]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
