import NoFourMUBs.Step2.SOS.Canonical062
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical209
import NoFourMUBs.Step2.SOS.Canonical236
import NoFourMUBs.Step2.SOS.Canonical237
import NoFourMUBs.Step2.SOS.Canonical238
import NoFourMUBs.Step2.SOS.Canonical240
import NoFourMUBs.Step2.SOS.Canonical241
import NoFourMUBs.Step2.SOS.Canonical264
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical374
import NoFourMUBs.Step2.SOS.Canonical386
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes007
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions093
import NoFourMUBs.Step2.SOS.Reductions111
import NoFourMUBs.Step2.SOS.Reductions123
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions146
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions221
import NoFourMUBs.Step2.SOS.Reductions222
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions342
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical192
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical193
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical194
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical196
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical203
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical204
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical220
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical64
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical65
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes12
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes26
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes39
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes7
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10976 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -36), (20, 5), (94, 11), (241, 16), (243, 64), (247, 16), (483, 144), (682, -240), (697, -96), (698, 192), (704, 112), (1226, 64), (1227, 48), (1251, -17), (1321, -192), (1333, 144), (1389, -144)]

def reductionPivot10976 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound10976 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7720).moment H =
      Integer.Sparse.eval reductionProjection10976 (momentVector H) := by
  have heq : reductionPivot10976 = (fun u v => (normalNode7720).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7720).moment H = injectiveMoment H reductionPivot10976 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7720).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10976 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10976 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 72, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10976 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1678, reductionProjection10945, reductionProjection10871, reductionProjection10942, reductionProjection10975] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10976 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1678⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1678 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1678 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1678 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10976 (1 : Fin 5)) = (normalNode7744).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10945 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10976 (2 : Fin 5)) = canonicalInput15371.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10871 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10871 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15371 hH))).trans (reductionSound10871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10976 (3 : Fin 5)) = canonicalInput15378.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10942 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15378 hH))).trans (reductionSound10942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10976 (4 : Fin 5)) = canonicalInput15381.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10975 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10976 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15381 hH))).trans (reductionSound10975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7720).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10976 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7720).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10976 (j : Fin 5)))
      1 288 1440 5 ![720, 72, 288, 1440, 288] ![2, 20, 5, 1, 5] reductionProjection10976 ![oldProjection1678, reductionProjection10945, reductionProjection10871, reductionProjection10942, reductionProjection10975]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10977 : Integer.Sparse (Fin 1613) := [(0, -2), (76, 240), (94, -35), (682, 240), (698, -240), (1221, 240), (1226, -80), (1227, -80), (1251, 35), (1321, 240), (1323, 240), (1389, 480)]

def reductionPivot10977 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![0, -1, 2, -1], ![0, 1, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound10977 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7898).moment H =
      Integer.Sparse.eval reductionProjection10977 (momentVector H) := by
  have heq : reductionPivot10977 = (fun u v => (normalNode7898).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7898).moment H = injectiveMoment H reductionPivot10977 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7898).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10977 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10977 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10977 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1005, oldProjection948, oldProjection939, oldProjection941] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10977 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1005⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1005 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1005 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1005 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10977 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10977 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6218 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection939 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6218 hH))).trans (oldProjectionSound939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10977 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node941⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection941 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10977 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7898).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10977 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7898).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10977 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 720, 3] ![4, 2, 2, 480] reductionProjection10977 ![oldProjection1005, oldProjection948, oldProjection939, oldProjection941]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10978 : Integer.Sparse (Fin 1613) := [(0, 2), (76, -60), (94, 35), (483, 180), (484, 180), (549, 180), (610, 180), (682, -60), (697, -60), (698, 180), (704, 20), (1221, -60), (1226, 20), (1227, 60), (1251, -35), (1321, -120), (1323, -120), (1333, 180), (1343, -360), (1389, -300)]

def reductionPivot10978 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound10978 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode7721).moment H =
      Integer.Sparse.eval reductionProjection10978 (momentVector H) := by
  have heq : reductionPivot10978 = (fun u v => (normalNode7721).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7721).moment H = injectiveMoment H reductionPivot10978 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7721).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10978 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10978 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10978 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1679, reductionProjection1985, oldProjection2509, reductionProjection10977, reductionProjection10943] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10978 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1679⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10978 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1343).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1985 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10978 (2 : Fin 5)) = canonicalInput15372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2509 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15372 hH))).trans (oldProjectionSound2509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10978 (3 : Fin 5)) = canonicalInput15379.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10977 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15379 hH))).trans (reductionSound10977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10978 (4 : Fin 5)) = canonicalInput15382.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10943 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10978 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15382 hH))).trans (reductionSound10943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7721).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10978 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7721).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10978 (j : Fin 5)))
      1 360 1440 4 ![288, 1, 1440, 1440, 1440] ![5, 1440, 1, 1, 1] reductionProjection10978 ![oldProjection1679, reductionProjection1985, oldProjection2509, reductionProjection10977, reductionProjection10943]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10979 : Integer.Sparse (Fin 1613) := [(0, 6), (94, -25), (243, -80), (698, -480), (700, -240), (704, -80), (1059, -240), (1117, -720), (1226, -80), (1227, -80), (1251, 45)]

def reductionPivot10979 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![1, -1, 2, -2], ![1, 1, -2, 0]]

theorem reductionSound10979 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7798).moment H =
      Integer.Sparse.eval reductionProjection10979 (momentVector H) := by
  have heq : reductionPivot10979 = (fun u v => (normalNode7798).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7798).moment H = injectiveMoment H reductionPivot10979 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7798).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10979 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10979 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10979 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1049, oldProjection680, oldProjection967, oldProjection971] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10979 (0 : Fin 4)) = canonicalInput6706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1049 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1049 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6706 hH))).trans (oldProjectionSound1049 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10979 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6184 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection680 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6184 hH))).trans (oldProjectionSound680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10979 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node967⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection967 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10979 (3 : Fin 4)) = canonicalInput15394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection971 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10979 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15394 hH))).trans (oldProjectionSound971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7798).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10979 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7798).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10979 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 720, 720] ![2, 1440, 2, 2] reductionProjection10979 ![oldProjection1049, oldProjection680, oldProjection967, oldProjection971]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10980 : Integer.Sparse (Fin 1613) := [(81, -120), (94, 17), (243, 8), (489, 72), (697, -24), (698, 160), (700, 72), (704, 8), (1058, -24), (1059, 48), (1117, 72), (1226, 8), (1227, 40), (1251, -19), (1389, -72)]

def reductionPivot10980 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound10980 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7722).moment H =
      Integer.Sparse.eval reductionProjection10980 (momentVector H) := by
  have heq : reductionPivot10980 = (fun u v => (normalNode7722).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7722).moment H = injectiveMoment H reductionPivot10980 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7722).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10980 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10980 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 288, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10980 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1686, oldProjection2515, reductionProjection10979, reductionProjection10963, oldProjection2536] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10980 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1686⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1686 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1686 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1686 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10980 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2515⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2515 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10980 (2 : Fin 5)) = canonicalInput15373.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10979 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10979 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15373 hH))).trans (reductionSound10979 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10980 (3 : Fin 5)) = canonicalInput15386.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10963 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10963 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15386 hH))).trans (reductionSound10963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10980 (4 : Fin 5)) = canonicalInput15387.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2536 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10980 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2536 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15387 hH))).trans (oldProjectionSound2536 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7722).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10980 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7722).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10980 (j : Fin 5)))
      1 144 1440 10 ![360, 288, 1440, 288, 1440] ![4, 5, 1, 5, 1] reductionProjection10980 ![oldProjection1686, oldProjection2515, reductionProjection10979, reductionProjection10963, oldProjection2536]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10981 : Integer.Sparse (Fin 1613) := [(94, -1), (683, 96), (696, 24), (697, 24), (698, -8), (699, 24), (704, -8), (1251, -1), (1321, 48), (1323, 48)]

def reductionPivot10981 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, 2, -3], ![1, 1, -3, 1]]

theorem reductionSound10981 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7745).moment H =
      Integer.Sparse.eval reductionProjection10981 (momentVector H) := by
  have heq : reductionPivot10981 = (fun u v => (normalNode7745).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7745).moment H = injectiveMoment H reductionPivot10981 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7745).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10981 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10981 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 3, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10981 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection152, reductionProjection1074, reductionProjection1074, reductionProjection4269] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10981 (0 : Fin 4)) = canonicalInput23977.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection152 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23977 hH))).trans (reductionSound152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10981 (1 : Fin 4)) = (normalNode7904).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10981 (2 : Fin 4)) = canonicalInput15156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15156 hH))).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10981 (3 : Fin 4)) = canonicalInput15147.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4269 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10981 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15147 hH))).trans (reductionSound4269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7745).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10981 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7745).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10981 (j : Fin 4)))
      2 144 144 2 ![72, 3, 3, 3] ![2, 48, 48, 48] reductionProjection10981 ![reductionProjection152, reductionProjection1074, reductionProjection1074, reductionProjection4269]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10982 : Integer.Sparse (Fin 1613) := [(94, 1), (243, 8), (698, 8), (700, 16), (701, 8), (703, 8), (704, 16), (1251, 1)]

def reductionPivot10982 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![0, 2, -3, 1], ![1, -1, 3, -3]]

theorem reductionSound10982 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7970).moment H =
      Integer.Sparse.eval reductionProjection10982 (momentVector H) := by
  have heq : reductionPivot10982 = (fun u v => (normalNode7970).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7970).moment H = injectiveMoment H reductionPivot10982 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7970).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10982 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10982 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![24, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10982 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection187, oldProjection170, oldProjection80] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10982 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6556 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10982 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection187 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10982 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6556 hH))).trans (oldProjectionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10982 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6330 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10982 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection170 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10982 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6330 hH))).trans (oldProjectionSound170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10982 (2 : Fin 3)) = canonicalInput15473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10982 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10982 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15473 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7970).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10982 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7970).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10982 (j : Fin 3)))
      3 72 72 3 ![24, 3, 3] ![3, 24, 24] reductionProjection10982 ![oldProjection187, oldProjection170, oldProjection80]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10983 : Integer.Sparse (Fin 1613) := [(1357, 1)]

theorem reductionSound10983 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1357).moment H =
      Integer.Sparse.eval reductionProjection10983 (momentVector H) := by
  have hc : coordinates (1357 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1357) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection10983, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection10984 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (700, 16), (701, 8), (1251, 3)]

def reductionPivot10984 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![0, 0, 3, -3], ![1, 1, -3, 1]]

theorem reductionSound10984 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode7964).moment H =
      Integer.Sparse.eval reductionProjection10984 (momentVector H) := by
  have heq : reductionPivot10984 = (fun u v => (normalNode7964).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7964).moment H = injectiveMoment H reductionPivot10984 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7964).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10984 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10984 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10984 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection188, oldProjection90, oldProjection188] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10984 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6519 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10984 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10984 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6519 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10984 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6299 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10984 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10984 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6299 hH))).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10984 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6298 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10984 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection188 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10984 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6298 hH))).trans (oldProjectionSound188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7964).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10984 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7964).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10984 (j : Fin 3)))
      3 72 144 6 ![48, 24, 48] ![3, 6, 3] reductionProjection10984 ![oldProjection188, oldProjection90, oldProjection188]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10985 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -2), (243, -16), (698, -16), (700, -48), (701, -24), (703, -16), (704, -32), (1251, -5), (1357, -72)]

def reductionPivot10985 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![1, -1, 3, -3], ![1, 1, -3, 1]]

theorem reductionSound10985 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7799).moment H =
      Integer.Sparse.eval reductionProjection10985 (momentVector H) := by
  have heq : reductionPivot10985 = (fun u v => (normalNode7799).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7799).moment H = injectiveMoment H reductionPivot10985 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7799).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10985 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10985 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10985 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10982, reductionProjection10983, reductionProjection10984, reductionProjection10982] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10985 (0 : Fin 4)) = canonicalInput6707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10982 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6707 hH))).trans (reductionSound10982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10985 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1357).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10983 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10985 (2 : Fin 4)) = (normalNode7964).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10984 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10984 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10984 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10985 (3 : Fin 4)) = canonicalInput15395.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10982 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10985 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15395 hH))).trans (reductionSound10982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7799).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10985 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7799).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10985 (j : Fin 4)))
      2 144 144 2 ![72, 1, 72, 72] ![2, 144, 2, 2] reductionProjection10985 ![reductionProjection10982, reductionProjection10983, reductionProjection10984, reductionProjection10982]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10986 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -15), (42, -80), (90, -80), (94, -30), (243, -80), (683, 240), (698, -240), (700, -240), (701, -80), (704, -160), (1226, -80), (1251, -45), (1321, 240), (1323, 240)]

def reductionPivot10986 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 1, -3, 1]]

theorem reductionSound10986 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7886).moment H =
      Integer.Sparse.eval reductionProjection10986 (momentVector H) := by
  have heq : reductionPivot10986 = (fun u v => (normalNode7886).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7886).moment H = injectiveMoment H reductionPivot10986 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7886).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10986 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10986 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 3, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10986 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4355, reductionProjection1074, reductionProjection10984, oldProjection968] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10986 (0 : Fin 4)) = (normalNode6778).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4355 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10986 (1 : Fin 4)) = (normalNode7904).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10986 (2 : Fin 4)) = (normalNode7964).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10984 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10984 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10984 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10986 (3 : Fin 4)) = canonicalInput15390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection968 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10986 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15390 hH))).trans (oldProjectionSound968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7886).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10986 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7886).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10986 (j : Fin 4)))
      2 1440 1440 2 ![72, 3, 72, 720] ![20, 480, 20, 2] reductionProjection10986 ![reductionProjection4355, reductionProjection1074, reductionProjection10984, oldProjection968]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10987 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -140), (20, 35), (42, 320), (90, 320), (94, 115), (243, 400), (493, 720), (683, -1200), (696, -240), (697, -240), (698, 960), (699, -240), (700, 1200), (701, 400), (703, 160), (704, 720), (1059, 80), (1226, 240), (1251, 135), (1321, -960), (1323, -720), (1357, 720)]

def reductionPivot10987 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound10987 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7723).moment H =
      Integer.Sparse.eval reductionProjection10987 (momentVector H) := by
  have heq : reductionPivot10987 = (fun u v => (normalNode7723).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7723).moment H = injectiveMoment H reductionPivot10987 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7723).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10987 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10987 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 144, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10987 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4685, reductionProjection10981, reductionProjection10985, reductionProjection10986, reductionProjection10975] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10987 (0 : Fin 5)) = (normalNode2033).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4685 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10987 (1 : Fin 5)) = (normalNode7745).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10981 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10987 (2 : Fin 5)) = canonicalInput15374.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10985 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15374 hH))).trans (reductionSound10985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10987 (3 : Fin 5)) = canonicalInput15388.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10986 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10986 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15388 hH))).trans (reductionSound10986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10987 (4 : Fin 5)) = canonicalInput15389.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10975 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10987 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10975 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15389 hH))).trans (reductionSound10975 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7723).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10987 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7723).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10987 (j : Fin 5)))
      1 1440 1440 1 ![72, 144, 144, 1440, 288] ![20, 10, 10, 1, 5] reductionProjection10987 ![reductionProjection4685, reductionProjection10981, reductionProjection10985, reductionProjection10986, reductionProjection10975]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10988 : Integer.Sparse (Fin 1613) := [(87, 48), (88, -16), (90, -64), (94, -3), (698, -128), (700, -16), (1226, -112), (1227, -48), (1251, 9)]

def reductionPivot10988 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 1, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound10988 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7832).moment H =
      Integer.Sparse.eval reductionProjection10988 (momentVector H) := by
  have heq : reductionPivot10988 = (fun u v => (normalNode7832).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7832).moment H = injectiveMoment H reductionPivot10988 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7832).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10988 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10988 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10988 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection950, oldProjection942, reductionProjection304, reductionProjection365] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10988 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7068 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection950 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7068 hH))).trans (oldProjectionSound950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10988 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node942⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection942 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10988 (2 : Fin 4)) = (normalNode7838).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10988 (3 : Fin 4)) = canonicalInput15256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10988 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15256 hH))).trans (reductionSound365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7832).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10988 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7832).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10988 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 9, 144] ![2, 2, 160, 10] reductionProjection10988 ![oldProjection950, oldProjection942, reductionProjection304, reductionProjection365]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10989 : Integer.Sparse (Fin 1613) := [(0, 1), (87, 240), (88, -80), (90, -80), (94, -5), (698, -320), (1226, -320), (1227, -240), (1251, 30)]

def reductionPivot10989 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -1, 3], ![0, -2, 3, -1], ![0, 2, -1, -1], ![1, 0, -1, 0]]

theorem reductionSound10989 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7836).moment H =
      Integer.Sparse.eval reductionProjection10989 (momentVector H) := by
  have heq : reductionPivot10989 = (fun u v => (normalNode7836).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7836).moment H = injectiveMoment H reductionPivot10989 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7836).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10989 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10989 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10989 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection946, oldProjection952, reductionProjection4145, reductionProjection304] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10989 (0 : Fin 4)) = canonicalInput20179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection946 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection946 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20179 hH))).trans (oldProjectionSound946 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10989 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node952⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection952 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10989 (2 : Fin 4)) = (normalNode7841).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4145 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10989 (3 : Fin 4)) = (normalNode7838).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection304 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10989 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7836).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10989 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7836).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10989 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 9, 9] ![2, 160, 160, 160] reductionProjection10989 ![oldProjection946, oldProjection952, reductionProjection4145, reductionProjection304]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10990 : Integer.Sparse (Fin 1613) := [(0, -3), (79, -240), (81, -480), (87, -960), (88, 160), (90, 1040), (94, 40), (618, 720), (640, 720), (698, 2160), (700, 320), (768, 720), (1226, 1680), (1227, 800), (1251, -125), (1341, 720), (1389, -240)]

def reductionPivot10990 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound10990 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7724).moment H =
      Integer.Sparse.eval reductionProjection10990 (momentVector H) := by
  have heq : reductionPivot10990 = (fun u v => (normalNode7724).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7724).moment H = injectiveMoment H reductionPivot10990 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7724).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10990 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10990 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 18, 18, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10990 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2270, reductionProjection353, reductionProjection355, reductionProjection10988, reductionProjection10989] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10990 (0 : Fin 5)) = canonicalInput4018.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2270 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2270 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4018 hH))).trans (reductionSound2270 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10990 (1 : Fin 5)) = (normalNode7747).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection353 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10990 (2 : Fin 5)) = canonicalInput15376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection355 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15376 hH))).trans (reductionSound355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10990 (3 : Fin 5)) = canonicalInput15391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10988 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15391 hH))).trans (reductionSound10988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10990 (4 : Fin 5)) = canonicalInput15392.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10989 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10990 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15392 hH))).trans (reductionSound10989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7724).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10990 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7724).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10990 (j : Fin 5)))
      1 1440 1440 1 ![720, 18, 18, 288, 1440] ![2, 80, 80, 5, 1] reductionProjection10990 ![reductionProjection2270, reductionProjection353, reductionProjection355, reductionProjection10988, reductionProjection10989]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10991 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (76, 240), (94, -60), (241, -80), (697, 480), (698, -240), (1052, 240), (1059, -80), (1250, -60), (1251, 45), (1323, 240)]

def reductionPivot10991 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, 1, 0, -2]]

theorem reductionSound10991 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7888).moment H =
      Integer.Sparse.eval reductionProjection10991 (momentVector H) := by
  have heq : reductionPivot10991 = (fun u v => (normalNode7888).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7888).moment H = injectiveMoment H reductionPivot10991 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7888).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10991 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10991 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10991 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection804, oldProjection948, oldProjection959, oldProjection973] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10991 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node804⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection804 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection804 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound804 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10991 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node948⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10991 (2 : Fin 4)) = canonicalInput15399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection959 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection959 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15399 hH))).trans (oldProjectionSound959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10991 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node973⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10991 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7888).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10991 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7888).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10991 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 360] ![2, 2, 2, 4] reductionProjection10991 ![oldProjection804, oldProjection948, oldProjection959, oldProjection973]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10992 : Integer.Sparse (Fin 1613) := [(0, -11), (19, -100), (76, -1200), (94, 195), (241, 480), (243, 80), (484, 720), (549, 720), (697, -1440), (698, 1120), (700, 80), (704, 80), (1050, -240), (1052, -960), (1055, -240), (1058, -240), (1059, 240), (1226, 80), (1250, 180), (1251, -150), (1323, -960), (1389, -240)]

def reductionPivot10992 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 0, 2, -2], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound10992 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7725).moment H =
      Integer.Sparse.eval reductionProjection10992 (momentVector H) := by
  have heq : reductionPivot10992 = (fun u v => (normalNode7725).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7725).moment H = injectiveMoment H reductionPivot10992 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7725).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10992 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10992 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 144, 1440, 360] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10992 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1694, oldProjection2516, reductionProjection7446, reductionProjection10991, reductionProjection10948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10992 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1694⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1694 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1694 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1694 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10992 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2516⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2516 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10992 (2 : Fin 5)) = canonicalInput15397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7446 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7446 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15397 hH))).trans (reductionSound7446 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10992 (3 : Fin 5)) = canonicalInput15402.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10991 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10991 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15402 hH))).trans (reductionSound10991 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10992 (4 : Fin 5)) = canonicalInput15403.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10948 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10992 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15403 hH))).trans (reductionSound10948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7725).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10992 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7725).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10992 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 144, 1440, 360] ![1, 2, 10, 1, 4] reductionProjection10992 ![oldProjection1694, oldProjection2516, reductionProjection7446, reductionProjection10991, reductionProjection10948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10993 : Integer.Sparse (Fin 1613) := [(0, -11), (81, -480), (90, 160), (94, 65), (698, 1520), (700, 160), (1059, 80), (1117, 720), (1226, 640), (1227, 400), (1251, -80)]

def reductionPivot10993 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, -1, 0]]

theorem reductionSound10993 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7727).moment H =
      Integer.Sparse.eval reductionProjection10993 (momentVector H) := by
  have heq : reductionPivot10993 = (fun u v => (normalNode7727).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7727).moment H = injectiveMoment H reductionPivot10993 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7727).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10993 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10993 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![360, 1440, 1440, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10993 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1718, oldProjection1768, oldProjection2527, oldProjection2545, oldProjection1116] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10993 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1718⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1718 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10993 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6175 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6175 hH))).trans (oldProjectionSound1768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10993 (2 : Fin 5)) = canonicalInput15434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2527 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15434 hH))).trans (oldProjectionSound2527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10993 (3 : Fin 5)) = canonicalInput15444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2545 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2545 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15444 hH))).trans (oldProjectionSound2545 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10993 (4 : Fin 5)) = canonicalInput15445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10993 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15445 hH))).trans (oldProjectionSound1116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7727).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10993 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7727).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10993 (j : Fin 5)))
      1 1440 1440 1 ![360, 1440, 1440, 1440, 720] ![4, 1, 1, 1, 2] reductionProjection10993 ![oldProjection1718, oldProjection1768, oldProjection2527, oldProjection2545, oldProjection1116]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10994 : Integer.Sparse (Fin 1613) := [(0, -3), (81, -240), (94, 135), (489, 720), (698, 800), (1117, 720), (1226, 400), (1227, 320), (1251, -170), (1389, -240)]

def reductionPivot10994 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound10994 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7728).moment H =
      Integer.Sparse.eval reductionProjection10994 (momentVector H) := by
  have heq : reductionPivot10994 = (fun u v => (normalNode7728).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7728).moment H = injectiveMoment H reductionPivot10994 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7728).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10994 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10994 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10994 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1719, oldProjection2511, oldProjection2527, oldProjection2541, oldProjection936] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10994 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node1719⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1719 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10994 (1 : Fin 5)) = canonicalInput15211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2511 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15211 hH))).trans (oldProjectionSound2511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10994 (2 : Fin 5)) = canonicalInput15435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2527 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2527 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15435 hH))).trans (oldProjectionSound2527 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10994 (3 : Fin 5)) = canonicalInput15446.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2541 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2541 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15446 hH))).trans (oldProjectionSound2541 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10994 (4 : Fin 5)) = canonicalInput15447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection936 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10994 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15447 hH))).trans (oldProjectionSound936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7728).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10994 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7728).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10994 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 720] ![1, 1, 1, 2, 2] reductionProjection10994 ![oldProjection1719, oldProjection2511, oldProjection2527, oldProjection2541, oldProjection936]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10995 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 35), (698, 160), (1226, 80), (1227, 160), (1251, -40), (1356, 360)]

def reductionPivot10995 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound10995 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode7731).moment H =
      Integer.Sparse.eval reductionProjection10995 (momentVector H) := by
  have heq : reductionPivot10995 = (fun u v => (normalNode7731).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7731).moment H = injectiveMoment H reductionPivot10995 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7731).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10995 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10995 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![120, 1440, 1440, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10995 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2640, oldProjection2512, oldProjection2512, oldProjection2542, oldProjection966] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10995 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw2059 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2640 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2059 hH))).trans (oldProjectionSound2640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10995 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6180 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6180 hH))).trans (oldProjectionSound2512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10995 (2 : Fin 5)) = canonicalInput15453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2512 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2512 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15453 hH))).trans (oldProjectionSound2512 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10995 (3 : Fin 5)) = canonicalInput15455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2542 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15455 hH))).trans (oldProjectionSound2542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10995 (4 : Fin 5)) = canonicalInput15456.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection966 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10995 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection966 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15456 hH))).trans (oldProjectionSound966 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7731).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10995 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7731).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10995 (j : Fin 5)))
      1 360 1440 4 ![120, 1440, 1440, 720, 720] ![12, 1, 1, 2, 2] reductionProjection10995 ![oldProjection2640, oldProjection2512, oldProjection2512, oldProjection2542, oldProjection966]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10996 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -25), (493, -720), (683, 240), (698, -160), (704, -80), (1251, -30), (1321, 480), (1323, 240), (1357, -720)]

def reductionPivot10996 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 1, -3, 1]]

theorem reductionSound10996 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7732).moment H =
      Integer.Sparse.eval reductionProjection10996 (momentVector H) := by
  have heq : reductionPivot10996 = (fun u v => (normalNode7732).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7732).moment H = injectiveMoment H reductionPivot10996 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7732).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10996 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10996 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10996 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection492, reductionProjection10983, reductionProjection1074, oldProjection984] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10996 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node492⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection492 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10996 (1 : Fin 4)) = canonicalInput15234.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10983 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15234 hH))).trans (reductionSound10983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10996 (2 : Fin 4)) = canonicalInput15462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1074 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15462 hH))).trans (reductionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10996 (3 : Fin 4)) = canonicalInput15465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection984 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10996 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection984 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15465 hH))).trans (oldProjectionSound984 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7732).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10996 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7732).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10996 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 3, 720] ![1440, 1440, 480, 2] reductionProjection10996 ![oldProjection492, reductionProjection10983, reductionProjection1074, oldProjection984]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10997 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, 1), (701, 24), (703, 16), (704, 16)]

def reductionPivot10997 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![1, -3, 1, 1], ![1, 4, -4, -1]]

theorem reductionSound10997 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9361).moment H =
      Integer.Sparse.eval reductionProjection10997 (momentVector H) := by
  have heq : reductionPivot10997 = (fun u v => (normalNode9361).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9361).moment H = injectiveMoment H reductionPivot10997 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9361).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9361).entries)).symm
  have hshape : reductionPivot10997 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10997 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10997 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection80, oldProjection80, oldProjection90] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10997 (0 : Fin 3)) = canonicalInput5910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10997 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10997 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5910 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10997 (1 : Fin 3)) = canonicalInput19115.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10997 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection80 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10997 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection80 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19115 hH))).trans (oldProjectionSound80 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10997 (2 : Fin 3)) = canonicalInput19140.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10997 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection90 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10997 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection90 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19140 hH))).trans (oldProjectionSound90 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9361).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10997 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9361).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10997 (j : Fin 3)))
      3 72 72 3 ![3, 3, 24] ![24, 24, 3] reductionProjection10997 ![oldProjection80, oldProjection80, oldProjection90]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10998 : Integer.Sparse (Fin 1613) := [(19, 28), (20, -7), (42, -64), (94, -13), (243, -48), (700, -16), (701, -80), (703, -32), (704, -80), (1251, -6)]

def reductionPivot10998 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -1, 3], ![0, 1, 3, -4], ![1, -1, 0, 0], ![1, 1, -3, 1]]

theorem reductionSound10998 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7734).moment H =
      Integer.Sparse.eval reductionProjection10998 (momentVector H) := by
  have heq : reductionPivot10998 = (fun u v => (normalNode7734).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7734).moment H = injectiveMoment H reductionPivot10998 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7734).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10998 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10998 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 72, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10998 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1106, reductionProjection10997, reductionProjection10606, oldProjection985] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10998 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw2093 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1106 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical2093 hH))).trans (oldProjectionSound1106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10998 (1 : Fin 4)) = canonicalInput15237.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10997 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10997 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15237 hH))).trans (reductionSound10997 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10998 (2 : Fin 4)) = canonicalInput15467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10606 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15467 hH))).trans (reductionSound10606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10998 (3 : Fin 4)) = canonicalInput15472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection985 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10998 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15472 hH))).trans (oldProjectionSound985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7734).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10998 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7734).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10998 (j : Fin 4)))
      2 288 288 2 ![9, 72, 144, 72] ![32, 4, 2, 4] reductionProjection10998 ![oldProjection1106, reductionProjection10997, reductionProjection10606, oldProjection985]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10999 : Integer.Sparse (Fin 1613) := [(0, 1), (87, -480), (90, 160), (94, 45), (426, 720), (434, 720), (698, 1440), (700, 80), (955, 720), (1015, 720), (1219, -480), (1226, 1120), (1227, 800), (1251, -160), (1341, 720), (1345, -1440)]

def reductionPivot10999 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 2, -1, -1], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound10999 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7735).moment H =
      Integer.Sparse.eval reductionProjection10999 (momentVector H) := by
  have heq : reductionPivot10999 = (fun u v => (normalNode7735).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7735).moment H = injectiveMoment H reductionPivot10999 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7735).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10999 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10999 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 1, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10999 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2793, reductionProjection373, oldProjection2070, reductionProjection3945, oldProjection2069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10999 (0 : Fin 5)) = canonicalInput13412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2793 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2793 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13412 hH))).trans (reductionSound2793 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10999 (1 : Fin 5)) = (normalNode7689).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection373 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10999 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6131 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6131 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10999 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1345).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3945 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10999 (4 : Fin 5)) = canonicalInput15148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10999 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15148 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7735).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10999 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7735).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10999 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 1440, 1, 144] ![1, 80, 1, 1440, 10] reductionProjection10999 ![reductionProjection2793, reductionProjection373, oldProjection2070, reductionProjection3945, oldProjection2069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11000 : Integer.Sparse (Fin 1613) := [(0, -1), (79, -240), (81, -480), (87, -480), (88, 240), (90, 640), (94, 10), (243, 160), (618, 720), (640, 1440), (642, 720), (698, 1280), (700, 240), (782, 720), (1015, 720), (1024, 720), (1058, -240), (1059, 160), (1226, 1120), (1227, 400), (1251, -85)]

def reductionPivot11000 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound11000 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7736).moment H =
      Integer.Sparse.eval reductionProjection11000 (momentVector H) := by
  have heq : reductionPivot11000 = (fun u v => (normalNode7736).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7736).moment H = injectiveMoment H reductionPivot11000 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7736).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11000 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11000 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 144, 288, 18] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11000 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2764, reductionProjection4967, oldProjection2069, reductionProjection4980, reductionProjection353] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11000 (0 : Fin 5)) = canonicalInput13416.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2764 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2764 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13416 hH))).trans (reductionSound2764 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11000 (1 : Fin 5)) = (normalNode7690).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4967 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11000 (2 : Fin 5)) = canonicalInput15148.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15148 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11000 (3 : Fin 5)) = (normalNode7746).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4980 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11000 (4 : Fin 5)) = (normalNode7747).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection353 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11000 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7736).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11000 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7736).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11000 (j : Fin 5)))
      1 1440 1440 1 ![1440, 18, 144, 288, 18] ![1, 80, 10, 5, 80] reductionProjection11000 ![reductionProjection2764, reductionProjection4967, oldProjection2069, reductionProjection4980, reductionProjection353]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11001 : Integer.Sparse (Fin 1613) := [(0, -1), (76, -120), (87, -120), (88, 120), (90, 240), (94, 10), (241, 40), (243, 160), (426, 360), (642, 360), (698, 720), (700, 120), (782, 720), (1024, 360), (1058, -120), (1205, 360), (1226, 400), (1227, 240), (1251, -45)]

def reductionPivot11001 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound11001 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7737).moment H =
      Integer.Sparse.eval reductionProjection11001 (momentVector H) := by
  have heq : reductionPivot11001 = (fun u v => (normalNode7737).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7737).moment H = injectiveMoment H reductionPivot11001 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7737).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11001 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11001 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 72, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11001 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2752, reductionProjection4967, oldProjection1993, reductionProjection4981, reductionProjection8163] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11001 (0 : Fin 5)) = canonicalInput13419.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2752 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13419 hH))).trans (reductionSound2752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11001 (1 : Fin 5)) = canonicalInput15109.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4967 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15109 hH))).trans (reductionSound4967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11001 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6140 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1993 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6140 hH))).trans (oldProjectionSound1993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11001 (3 : Fin 5)) = (normalNode7748).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4981 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11001 (4 : Fin 5)) = canonicalInput15152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8163 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11001 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15152 hH))).trans (reductionSound8163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7737).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11001 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7737).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11001 (j : Fin 5)))
      1 720 1440 2 ![1440, 18, 72, 1440, 288] ![1, 80, 20, 1, 5] reductionProjection11001 ![reductionProjection2752, reductionProjection4967, oldProjection1993, reductionProjection4981, reductionProjection8163]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11002 : Integer.Sparse (Fin 1613) := [(0, -4), (76, -960), (94, 135), (243, 80), (682, -960), (697, -720), (698, 1120), (700, 80), (704, 240), (1058, -240), (1059, 160), (1221, -960), (1226, 400), (1227, 400), (1251, -145), (1321, -480), (1323, -480), (1343, -1440), (1389, -960)]

def reductionPivot11002 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, -2, 1], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound11002 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7738).moment H =
      Integer.Sparse.eval reductionProjection11002 (momentVector H) := by
  have heq : reductionPivot11002 = (fun u v => (normalNode7738).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7738).moment H = injectiveMoment H reductionPivot11002 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7738).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11002 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11002 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![9, 720, 1440, 1, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11002 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1986, oldProjection2516, oldProjection2063, reductionProjection1985, reductionProjection10945] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11002 (0 : Fin 5)) = canonicalInput16933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1986 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1986 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16933 hH))).trans (reductionSound1986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11002 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2516⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2516 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2516 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2516 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11002 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6127 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2063 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6127 hH))).trans (oldProjectionSound2063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11002 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1343).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1985 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11002 (4 : Fin 5)) = (normalNode7744).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10945 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11002 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7738).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11002 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7738).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11002 (j : Fin 5)))
      1 1440 1440 1 ![9, 720, 1440, 1, 72] ![160, 2, 1, 1440, 20] reductionProjection11002 ![reductionProjection1986, oldProjection2516, oldProjection2063, reductionProjection1985, reductionProjection10945]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11003 : Integer.Sparse (Fin 1613) := [(0, 23), (90, 320), (94, 125), (618, 720), (698, 2400), (700, 80), (1059, 80), (1226, 1200), (1227, 1200), (1251, -430), (1356, 720)]

def reductionPivot11003 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound11003 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7739).moment H =
      Integer.Sparse.eval reductionProjection11003 (momentVector H) := by
  have heq : reductionPivot11003 = (fun u v => (normalNode7739).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7739).moment H = injectiveMoment H reductionPivot11003 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7739).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11003 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11003 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11003 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2084, oldProjection2517, oldProjection2070, oldProjection2513, oldProjection2063] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11003 (0 : Fin 5)) = canonicalInput16934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2084 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2084 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16934 hH))).trans (oldProjectionSound2084 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11003 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2517⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2517 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11003 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6131 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6131 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11003 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2513⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2513 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11003 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6127 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2063 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11003 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2063 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6127 hH))).trans (oldProjectionSound2063 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7739).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11003 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7739).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11003 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 1440, 1440] ![2, 1, 1, 1, 1] reductionProjection11003 ![oldProjection2084, oldProjection2517, oldProjection2070, oldProjection2513, oldProjection2063]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11004 : Integer.Sparse (Fin 1613) := [(0, 27), (90, 80), (94, 65), (483, 720), (549, 720), (596, 720), (610, 720), (617, 720), (698, 1360), (1226, 720), (1227, 880), (1251, -270), (1344, -1440), (1352, 720), (1389, -240)]

def reductionPivot11004 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 1, -1, -1]]

theorem reductionSound11004 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7740).moment H =
      Integer.Sparse.eval reductionProjection11004 (momentVector H) := by
  have heq : reductionPivot11004 = (fun u v => (normalNode7740).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7740).moment H = injectiveMoment H reductionPivot11004 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7740).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11004 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11004 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11004 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3580, oldProjection2518, reductionProjection2978, oldProjection2070, oldProjection2059] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11004 (0 : Fin 5)) = canonicalInput16935.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16935 hH))).trans (reductionSound3580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11004 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2518⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11004 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1344).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2978 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11004 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6131 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6131 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11004 (4 : Fin 5)) = canonicalInput15145.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2059 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11004 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2059 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15145 hH))).trans (oldProjectionSound2059 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7740).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11004 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7740).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11004 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1, 1440, 720] ![5, 1, 1440, 1, 2] reductionProjection11004 ![reductionProjection3580, oldProjection2518, reductionProjection2978, oldProjection2070, oldProjection2059]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11005 : Integer.Sparse (Fin 1613) := [(0, 3), (81, -600), (90, 160), (94, 60), (243, 40), (618, 360), (697, -120), (698, 960), (700, 200), (704, 40), (1058, -120), (1059, 200), (1117, 360), (1226, 320), (1227, 400), (1251, -115), (1389, -480)]

def reductionPivot11005 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 1, -2, 0]]

theorem reductionSound11005 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7741).moment H =
      Integer.Sparse.eval reductionProjection11005 (momentVector H) := by
  have heq : reductionPivot11005 = (fun u v => (normalNode7741).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7741).moment H = injectiveMoment H reductionPivot11005 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7741).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11005 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11005 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11005 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2065, oldProjection2519, oldProjection2515, oldProjection2514, oldProjection2070] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11005 (0 : Fin 5)) = canonicalInput16936.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16936 hH))).trans (oldProjectionSound2065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11005 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2519⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2519 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11005 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2515⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2515 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11005 (3 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2514⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2514 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11005 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6131 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2070 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11005 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2070 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6131 hH))).trans (oldProjectionSound2070 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7741).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11005 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7741).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11005 (j : Fin 5)))
      1 720 1440 2 ![1440, 1440, 288, 288, 1440] ![1, 1, 5, 5, 1] reductionProjection11005 ![oldProjection2065, oldProjection2519, oldProjection2515, oldProjection2514, oldProjection2070]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11006 : Integer.Sparse (Fin 1613) := [(42, -1), (56, 6), (81, 3), (84, 3), (90, -2), (441, -9), (442, -9), (698, -1), (700, -1), (1226, -1)]

def reductionPivot11006 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -1, 3], ![-1, 0, 3, -2], ![0, 3, -2, -1], ![1, -2, 0, 1]]

theorem reductionSound11006 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7758).moment H =
      Integer.Sparse.eval reductionProjection11006 (momentVector H) := by
  have heq : reductionPivot11006 = (fun u v => (normalNode7758).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7758).moment H = injectiveMoment H reductionPivot11006 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7758).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11006 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11006 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11006 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4126, reductionProjection4316, reductionProjection4312, reductionProjection310] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11006 (0 : Fin 4)) = canonicalInput24706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4126 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4126 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24706 hH))).trans (reductionSound4126 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11006 (1 : Fin 4)) = canonicalInput15412.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4316 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15412 hH))).trans (reductionSound4316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11006 (2 : Fin 4)) = canonicalInput15169.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4312 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15169 hH))).trans (reductionSound4312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11006 (3 : Fin 4)) = canonicalInput15168.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection310 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11006 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15168 hH))).trans (reductionSound310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7758).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11006 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7758).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11006 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 1] ![2, 2, 18, 18] reductionProjection11006 ![reductionProjection4126, reductionProjection4316, reductionProjection4312, reductionProjection310]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11007 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 20), (56, -120), (76, -60), (79, -60), (81, -240), (84, -60), (90, 60), (94, 10), (243, 20), (441, 180), (442, 180), (461, 180), (465, 180), (640, 180), (642, 180), (698, 220), (700, 100), (782, 180), (809, 180), (1058, -120), (1059, 60), (1226, 100), (1227, 40), (1251, -5), (1346, -360)]

def reductionPivot11007 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, 0, 2, -1], ![0, 3, -2, -1], ![1, -2, 0, 1], ![1, 0, 0, -1]]

theorem reductionSound11007 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode7742).moment H =
      Integer.Sparse.eval reductionProjection11007 (momentVector H) := by
  have heq : reductionPivot11007 = (fun u v => (normalNode7742).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7742).moment H = injectiveMoment H reductionPivot11007 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7742).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11007 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11007 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 288, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11007 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6863, reductionProjection11006, reductionProjection7115, reductionProjection4980, reductionProjection7076] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11007 (0 : Fin 5)) = canonicalInput16937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6863 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6863 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16937 hH))).trans (reductionSound6863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11007 (1 : Fin 5)) = (normalNode7758).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11006 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11006 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11006 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11007 (2 : Fin 5)) = canonicalInput15151.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7115 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7115 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15151 hH))).trans (reductionSound7115 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11007 (3 : Fin 5)) = (normalNode7746).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4980 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11007 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1346).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7076 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11007 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7742).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11007 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7742).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11007 (j : Fin 5)))
      1 360 1440 4 ![1440, 18, 1440, 288, 1] ![1, 80, 1, 5, 1440] reductionProjection11007 ![reductionProjection6863, reductionProjection11006, reductionProjection7115, reductionProjection4980, reductionProjection7076]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
