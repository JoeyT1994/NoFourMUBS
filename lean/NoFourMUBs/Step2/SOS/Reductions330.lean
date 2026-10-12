import NoFourMUBs.Step2.SOS.Canonical038
import NoFourMUBs.Step2.SOS.Canonical072
import NoFourMUBs.Step2.SOS.Canonical092
import NoFourMUBs.Step2.SOS.Canonical093
import NoFourMUBs.Step2.SOS.Canonical094
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical222
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical281
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical299
import NoFourMUBs.Step2.SOS.Canonical300
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical403
import NoFourMUBs.Step2.SOS.Canonical406
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions018
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions021
import NoFourMUBs.Step2.SOS.Reductions055
import NoFourMUBs.Step2.SOS.Reductions056
import NoFourMUBs.Step2.SOS.Reductions057
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions141
import NoFourMUBs.Step2.SOS.Reductions194
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions234
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions313
import NoFourMUBs.Step2.SOS.Reductions329
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical173
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical174
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical188
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical217
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical218
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical235
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes13
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes37
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10560 : Integer.Sparse (Fin 1613) := [(3, 16), (19, 16), (20, -7), (94, 1), (104, -32), (105, -16), (108, -32), (241, -32), (243, -16), (246, -16), (1054, 48), (1251, 4)]

def reductionPivot10560 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -3, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -1, 1, -1]]

theorem reductionSound10560 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7218).moment H =
      Integer.Sparse.eval reductionProjection10560 (momentVector H) := by
  have heq : reductionPivot10560 = (fun u v => (normalNode7218).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7218).moment H = injectiveMoment H reductionPivot10560 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7218).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10560 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10560 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10560 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1177, reductionProjection10551, reductionProjection631, oldProjection890] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10560 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1177⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10560 (1 : Fin 4)) = canonicalInput14286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10551 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14286 hH))).trans (reductionSound10551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10560 (2 : Fin 4)) = (normalNode7220).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection631 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10560 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10560 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7218).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10560 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7218).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10560 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10560 ![oldProjection1177, reductionProjection10551, reductionProjection631, oldProjection890]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10561 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -28), (19, -88), (20, 12), (23, -48), (94, 35), (104, 64), (105, 16), (108, 208), (113, 144), (241, 32), (243, 32), (246, 32), (247, 96), (252, 288), (698, 16), (703, 16), (704, 96), (1054, -96), (1251, 32), (1278, -144), (1324, 288)]

def reductionPivot10561 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound10561 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7157).moment H =
      Integer.Sparse.eval reductionProjection10561 (momentVector H) := by
  have heq : reductionPivot10561 = (fun u v => (normalNode7157).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7157).moment H = injectiveMoment H reductionPivot10561 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7157).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10561 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10561 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10561 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection641, reductionProjection10558, reductionProjection10558, reductionProjection10559, reductionProjection10560] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10561 (0 : Fin 5)) = canonicalInput2440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection641 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2440 hH))).trans (reductionSound641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10561 (1 : Fin 5)) = (normalNode7173).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10558 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10561 (2 : Fin 5)) = canonicalInput14266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10558 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14266 hH))).trans (reductionSound10558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10561 (3 : Fin 5)) = canonicalInput14270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10559 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14270 hH))).trans (reductionSound10559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10561 (4 : Fin 5)) = canonicalInput14271.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10560 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10561 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10560 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14271 hH))).trans (reductionSound10560 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7157).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10561 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7157).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10561 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 1440, 1440, 288] ![2, 1, 1, 1, 5] reductionProjection10561 ![reductionProjection641, reductionProjection10558, reductionProjection10558, reductionProjection10559, reductionProjection10560]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10562 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 16), (20, -3), (94, -7), (104, -48), (108, -32), (247, -16), (263, -144), (703, -16), (704, -16), (1251, -4)]

def reductionPivot10562 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -3, 5], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 1, -2]]

theorem reductionSound10562 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7169).moment H =
      Integer.Sparse.eval reductionProjection10562 (momentVector H) := by
  have heq : reductionPivot10562 = (fun u v => (normalNode7169).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7169).moment H = injectiveMoment H reductionPivot10562 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7169).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10562 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10562 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10562 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection675, reductionProjection1817, oldProjection890, reductionProjection1778] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10562 (0 : Fin 4)) = canonicalInput6019.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection675 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection675 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6019 hH))).trans (reductionSound675 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10562 (1 : Fin 4)) = canonicalInput14225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1817 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14225 hH))).trans (reductionSound1817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10562 (2 : Fin 4)) = canonicalInput14268.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14268 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10562 (3 : Fin 4)) = canonicalInput14275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10562 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14275 hH))).trans (reductionSound1778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7169).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10562 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7169).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10562 (j : Fin 4)))
      2 288 288 2 ![144, 1, 144, 72] ![2, 288, 2, 4] reductionProjection10562 ![reductionProjection675, reductionProjection1817, oldProjection890, reductionProjection1778]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10563 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 4), (20, -1), (94, -1), (104, -16), (108, -64), (247, -8), (1278, 24)]

def reductionPivot10563 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, 0, 0, -1]]

theorem reductionSound10563 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7185).moment H =
      Integer.Sparse.eval reductionProjection10563 (momentVector H) := by
  have heq : reductionPivot10563 = (fun u v => (normalNode7185).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7185).moment H = injectiveMoment H reductionPivot10563 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7185).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10563 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10563 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 144, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10563 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection755, oldProjection890, oldProjection890, reductionProjection640] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10563 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node755⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection755 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10563 (1 : Fin 4)) = canonicalInput14264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14264 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10563 (2 : Fin 4)) = canonicalInput14280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14280 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10563 (3 : Fin 4)) = (normalNode7227).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection640 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10563 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7185).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10563 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7185).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10563 (j : Fin 4)))
      2 144 144 2 ![9, 144, 144, 72] ![16, 1, 1, 2] reductionProjection10563 ![oldProjection755, oldProjection890, oldProjection890, reductionProjection640]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10564 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -70), (19, -110), (20, 15), (94, 45), (104, 200), (108, 440), (113, 180), (247, 140), (263, 360), (703, 40), (704, 40), (1251, 35), (1278, -120)]

def reductionPivot10564 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![-1, -1, -3, 5], ![0, 1, 1, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound10564 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode7158).moment H =
      Integer.Sparse.eval reductionProjection10564 (momentVector H) := by
  have heq : reductionPivot10564 = (fun u v => (normalNode7158).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7158).moment H = injectiveMoment H reductionPivot10564 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7158).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10564 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10564 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 288, 144, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10564 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1451, reductionProjection10562, reductionProjection10562, reductionProjection10563, reductionProjection10556] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10564 (0 : Fin 5)) = canonicalInput2458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1451 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound2458 hH))).trans (oldProjectionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10564 (1 : Fin 5)) = canonicalInput14220.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10562 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14220 hH))).trans (reductionSound10562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10564 (2 : Fin 5)) = canonicalInput14278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10562 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14278 hH))).trans (reductionSound10562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10564 (3 : Fin 5)) = canonicalInput14282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10563 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14282 hH))).trans (reductionSound10563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10564 (4 : Fin 5)) = canonicalInput14283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10556 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10564 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10556 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14283 hH))).trans (reductionSound10556 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7158).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10564 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7158).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10564 (j : Fin 5)))
      1 360 1440 4 ![720, 288, 288, 144, 720] ![2, 5, 5, 10, 2] reductionProjection10564 ![oldProjection1451, reductionProjection10562, reductionProjection10562, reductionProjection10563, reductionProjection10556]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10565 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (94, 1), (104, 48), (108, 32), (703, 16), (704, 16), (1251, 1)]

def reductionPivot10565 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![1, -2, 2, -1], ![1, 3, -5, 1]]

theorem reductionSound10565 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9373).moment H =
      Integer.Sparse.eval reductionProjection10565 (momentVector H) := by
  have heq : reductionPivot10565 = (fun u v => (normalNode9373).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9373).moment H = injectiveMoment H reductionPivot10565 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9373).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9373).entries)).symm
  have hshape : reductionPivot10565 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10565 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 48, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10565 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection72, oldProjection119, oldProjection78] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10565 (0 : Fin 3)) = canonicalInput5913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10565 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection72 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10565 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection72 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5913 hH))).trans (oldProjectionSound72 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10565 (1 : Fin 3)) = canonicalInput19122.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10565 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection119 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10565 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19122 hH))).trans (oldProjectionSound119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10565 (2 : Fin 3)) = canonicalInput19143.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10565 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection78 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10565 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection78 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19143 hH))).trans (oldProjectionSound78 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9373).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10565 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9373).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10565 (j : Fin 3)))
      3 144 144 3 ![3, 48, 3] ![48, 3, 48] reductionProjection10565 ![oldProjection72, oldProjection119, oldProjection78]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10566 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 32), (20, -3), (94, -11), (104, -80), (108, -32), (246, -48), (703, -80), (704, -64), (1251, -8)]

def reductionPivot10566 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -3, 5], ![-1, 0, 2, -1], ![1, -1, 0, 0], ![1, 1, 1, -3]]

theorem reductionSound10566 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7160).moment H =
      Integer.Sparse.eval reductionProjection10566 (momentVector H) := by
  have heq : reductionPivot10566 = (fun u v => (normalNode7160).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7160).moment H = injectiveMoment H reductionPivot10566 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7160).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10566 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10566 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10566 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection985, reductionProjection10565, reductionProjection6715, reductionProjection2507] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10566 (0 : Fin 4)) = canonicalInput19200.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection985 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection985 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19200 hH))).trans (oldProjectionSound985 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10566 (1 : Fin 4)) = canonicalInput14221.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10565 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10565 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14221 hH))).trans (reductionSound10565 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10566 (2 : Fin 4)) = canonicalInput14210.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14210 hH))).trans (reductionSound6715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10566 (3 : Fin 4)) = canonicalInput14208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2507 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10566 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2507 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14208 hH))).trans (reductionSound2507 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7160).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10566 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7160).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10566 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 36] ![4, 2, 2, 8] reductionProjection10566 ![oldProjection985, reductionProjection10565, reductionProjection6715, reductionProjection2507]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10567 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -3), (105, 16), (106, 16), (243, 32), (1218, -48), (1225, 16)]

def reductionPivot10567 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![-3, 3, -1, 1], ![5, -3, -1, -1]]

theorem reductionSound10567 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7224).moment H =
      Integer.Sparse.eval reductionProjection10567 (momentVector H) := by
  have heq : reductionPivot10567 = (fun u v => (normalNode7224).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7224).moment H = injectiveMoment H reductionPivot10567 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7224).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7224).entries)).symm
  have hshape : reductionPivot10567 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10567 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10567 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection121, reductionProjection6392, oldProjection221] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10567 (0 : Fin 3)) = canonicalInput9335.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10567 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection121 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10567 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9335 hH))).trans (oldProjectionSound121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10567 (1 : Fin 3)) = canonicalInput22369.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10567 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6392 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10567 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22369 hH))).trans (reductionSound6392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10567 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7520 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10567 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10567 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7520 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7224).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10567 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7224).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10567 (j : Fin 3)))
      3 144 144 3 ![3, 1, 48] ![48, 144, 3] reductionProjection10567 ![oldProjection121, reductionProjection6392, oldProjection221]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10568 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (20, -3), (94, -7), (105, 16), (106, 16), (243, 16), (1251, 1)]

def reductionPivot10568 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -3, 5], ![0, 0, 3, -3], ![1, 1, -1, -1]]

theorem reductionSound10568 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7209).moment H =
      Integer.Sparse.eval reductionProjection10568 (momentVector H) := by
  have heq : reductionPivot10568 = (fun u v => (normalNode7209).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7209).moment H = injectiveMoment H reductionPivot10568 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7209).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10568 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10568 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10568 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection248, oldProjection236, oldProjection129] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10568 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6094 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10568 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection248 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10568 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection248 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6094 hH))).trans (oldProjectionSound248 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10568 (1 : Fin 3)) = canonicalInput14265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10568 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection236 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10568 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14265 hH))).trans (oldProjectionSound236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10568 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6000 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10568 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10568 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6000 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7209).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10568 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7209).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10568 (j : Fin 3)))
      3 144 144 3 ![48, 48, 24] ![3, 3, 6] reductionProjection10568 ![oldProjection248, oldProjection236, oldProjection129]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10569 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 2), (20, 2), (94, 4), (105, -32), (106, -16), (108, -8), (243, -24), (1218, 24), (1225, -8), (1251, -1)]

def reductionPivot10569 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -3, 5], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound10569 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7170).moment H =
      Integer.Sparse.eval reductionProjection10569 (momentVector H) := by
  have heq : reductionPivot10569 = (fun u v => (normalNode7170).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7170).moment H = injectiveMoment H reductionPivot10569 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7170).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10569 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10569 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10569 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1852, reductionProjection10567, reductionProjection692, reductionProjection10568] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10569 (0 : Fin 4)) = canonicalInput6020.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1852 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6020 hH))).trans (reductionSound1852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10569 (1 : Fin 4)) = canonicalInput14226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10567 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10567 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14226 hH))).trans (reductionSound10567 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10569 (2 : Fin 4)) = canonicalInput14269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection692 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14269 hH))).trans (reductionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10569 (3 : Fin 4)) = canonicalInput14276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10568 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10569 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10568 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14276 hH))).trans (reductionSound10568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7170).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10569 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7170).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10569 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection10569 ![reductionProjection1852, reductionProjection10567, reductionProjection692, reductionProjection10568]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10570 : Integer.Sparse (Fin 1613) := [(3, 12), (4, -1), (19, 8), (26, -32), (94, -3), (105, -48), (106, -16), (243, -32), (703, -32)]

def reductionPivot10570 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -3, 5], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10570 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7197).moment H =
      Integer.Sparse.eval reductionProjection10570 (momentVector H) := by
  have heq : reductionPivot10570 = (fun u v => (normalNode7197).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7197).moment H = injectiveMoment H reductionPivot10570 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7197).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10570 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10570 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10570 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection919, reductionProjection692, reductionProjection693, reductionProjection670] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10570 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7002 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7002 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10570 (1 : Fin 4)) = (normalNode7223).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection692 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10570 (2 : Fin 4)) = canonicalInput14239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection693 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14239 hH))).trans (reductionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10570 (3 : Fin 4)) = canonicalInput14238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10570 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14238 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7197).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10570 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7197).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10570 (j : Fin 4)))
      2 288 288 2 ![144, 144, 9, 144] ![2, 2, 32, 2] reductionProjection10570 ![oldProjection919, reductionProjection692, reductionProjection693, reductionProjection670]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10571 : Integer.Sparse (Fin 1613) := [(3, -8), (20, 3), (94, -1), (105, 48), (106, 16), (108, 16), (243, 16)]

def reductionPivot10571 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 2, -1], ![1, -3, 3, -1], ![1, 3, -5, 1]]

theorem reductionSound10571 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9443).moment H =
      Integer.Sparse.eval reductionProjection10571 (momentVector H) := by
  have heq : reductionPivot10571 = (fun u v => (normalNode9443).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9443).moment H = injectiveMoment H reductionPivot10571 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9443).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9443).entries)).symm
  have hshape : reductionPivot10571 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10571 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10571 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection121, oldProjection129, oldProjection128] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10571 (0 : Fin 3)) = canonicalInput9461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10571 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection121 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10571 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9461 hH))).trans (oldProjectionSound121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10571 (1 : Fin 3)) = canonicalInput22390.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10571 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection129 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10571 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection129 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22390 hH))).trans (oldProjectionSound129 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10571 (2 : Fin 3)) = canonicalInput22414.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10571 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection128 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10571 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22414 hH))).trans (oldProjectionSound128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9443).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10571 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9443).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10571 (j : Fin 3)))
      3 144 144 3 ![3, 24, 48] ![48, 6, 3] reductionProjection10571 ![oldProjection121, oldProjection129, oldProjection128]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10572 : Integer.Sparse (Fin 1613) := [(3, 12), (19, 12), (20, -8), (26, -64), (94, 9), (104, -16), (105, -80), (106, -16), (108, -16), (243, -64), (703, -48), (1251, -3)]

def reductionPivot10572 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -3, 5], ![-1, 0, 3, -2], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound10572 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7164).moment H =
      Integer.Sparse.eval reductionProjection10572 (momentVector H) := by
  have heq : reductionPivot10572 = (fun u v => (normalNode7164).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7164).moment H = injectiveMoment H reductionPivot10572 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7164).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10572 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10572 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10572 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1075, reductionProjection10571, reductionProjection670, reductionProjection4521] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10572 (0 : Fin 4)) = canonicalInput19212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19212 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10572 (1 : Fin 4)) = canonicalInput14224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10571 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10571 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14224 hH))).trans (reductionSound10571 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10572 (2 : Fin 4)) = canonicalInput14215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection670 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection670 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14215 hH))).trans (reductionSound670 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10572 (3 : Fin 4)) = canonicalInput14214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4521 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10572 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14214 hH))).trans (reductionSound4521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7164).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10572 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7164).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10572 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 9] ![4, 2, 2, 32] reductionProjection10572 ![oldProjection1075, reductionProjection10571, reductionProjection670, reductionProjection4521]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10573 : Integer.Sparse (Fin 1613) := [(3, -36), (4, 3), (19, -36), (20, 3), (26, 144), (94, -2), (104, 32), (105, 208), (106, 80), (108, 32), (241, 16), (243, 144), (258, 144), (703, 112), (1218, -48), (1225, 32), (1226, 16), (1251, 2)]

def reductionPivot10573 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -3, 5], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound10573 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7163).moment H =
      Integer.Sparse.eval reductionProjection10573 (momentVector H) := by
  have heq : reductionPivot10573 = (fun u v => (normalNode7163).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7163).moment H = injectiveMoment H reductionPivot10573 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7163).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10573 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10573 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![72, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10573 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2766, reductionProjection10569, reductionProjection7519, reductionProjection10570, reductionProjection10572] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10573 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6973 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2766 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6973 hH))).trans (oldProjectionSound2766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10573 (1 : Fin 5)) = canonicalInput14223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10569 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10569 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14223 hH))).trans (reductionSound10569 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10573 (2 : Fin 5)) = canonicalInput14213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7519 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14213 hH))).trans (reductionSound7519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10573 (3 : Fin 5)) = canonicalInput14212.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10570 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10570 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14212 hH))).trans (reductionSound10570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10573 (4 : Fin 5)) = (normalNode7164).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10572 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10573 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10572 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10572 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7163).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10573 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7163).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10573 (j : Fin 5)))
      1 288 288 1 ![72, 144, 288, 288, 288] ![4, 2, 1, 1, 1] reductionProjection10573 ![oldProjection2766, reductionProjection10569, reductionProjection7519, reductionProjection10570, reductionProjection10572]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10574 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -40), (4, 5), (19, -80), (20, 20), (94, 40), (104, 80), (1251, 30)]

def reductionPivot10574 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound10574 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7206).moment H =
      Integer.Sparse.eval reductionProjection10574 (momentVector H) := by
  have heq : reductionPivot10574 = (fun u v => (normalNode7206).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7206).moment H = injectiveMoment H reductionPivot10574 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7206).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot10574 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10574 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![240, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10574 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection253, oldProjection119, oldProjection237] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10574 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6083 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10574 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10574 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6083 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10574 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5999 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10574 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection119 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10574 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5999 hH))).trans (oldProjectionSound119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10574 (2 : Fin 3)) = canonicalInput14261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10574 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection237 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10574 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection237 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14261 hH))).trans (oldProjectionSound237 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7206).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10574 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7206).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10574 (j : Fin 3)))
      3 720 720 3 ![240, 48, 48] ![3, 15, 15] reductionProjection10574 ![oldProjection253, oldProjection119, oldProjection237]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10575 : Integer.Sparse (Fin 1613) := [(3, 24), (4, -1), (19, 48), (20, -9), (94, -18), (104, -48), (105, -32), (241, -48), (1251, -6)]

def reductionPivot10575 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound10575 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7201).moment H =
      Integer.Sparse.eval reductionProjection10575 (momentVector H) := by
  have heq : reductionPivot10575 = (fun u v => (normalNode7201).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7201).moment H = injectiveMoment H reductionPivot10575 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7201).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10575 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10575 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10575 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection906, oldProjection888, oldProjection888, reductionProjection10574] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10575 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node906⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection906 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10575 (1 : Fin 4)) = canonicalInput14263.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection888 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14263 hH))).trans (oldProjectionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10575 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node888⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection888 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10575 (3 : Fin 4)) = (normalNode7206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10574 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10575 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10574 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7201).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10575 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7201).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10575 (j : Fin 4)))
      2 288 1440 10 ![720, 144, 144, 720] ![2, 10, 10, 2] reductionProjection10575 ![oldProjection906, oldProjection888, oldProjection888, reductionProjection10574]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10576 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -200), (4, 5), (19, -520), (20, 60), (94, 200), (104, 880), (105, 480), (106, 80), (108, 640), (241, 800), (243, 320), (246, 80), (247, 320), (262, 2880), (326, 1440), (698, 240), (703, 160), (704, 320), (1054, -240), (1251, 80), (1324, 1440)]

def reductionPivot10576 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 0, -2]]

theorem reductionSound10576 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7165).moment H =
      Integer.Sparse.eval reductionProjection10576 (momentVector H) := by
  have heq : reductionPivot10576 = (fun u v => (normalNode7165).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7165).moment H = injectiveMoment H reductionPivot10576 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7165).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10576 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10576 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10576 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6222, reductionProjection10549, reductionProjection10549, reductionProjection10575, reductionProjection7503] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10576 (0 : Fin 5)) = canonicalInput5979.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6222 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5979 hH))).trans (reductionSound6222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10576 (1 : Fin 5)) = (normalNode7172).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10549 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10576 (2 : Fin 5)) = canonicalInput14240.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10549 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10549 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14240 hH))).trans (reductionSound10549 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10576 (3 : Fin 5)) = (normalNode7201).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10575 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10576 (4 : Fin 5)) = canonicalInput14247.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7503 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10576 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14247 hH))).trans (reductionSound7503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7165).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10576 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7165).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10576 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 288, 1440] ![1, 720, 720, 5, 1] reductionProjection10576 ![reductionProjection6222, reductionProjection10549, reductionProjection10549, reductionProjection10575, reductionProjection7503]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10577 : Integer.Sparse (Fin 1613) := [(3, 24), (4, -1), (19, 28), (20, -5), (94, -8), (104, -16), (108, -64), (247, -32), (1251, -4)]

def reductionPivot10577 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound10577 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7203).moment H =
      Integer.Sparse.eval reductionProjection10577 (momentVector H) := by
  have heq : reductionPivot10577 = (fun u v => (normalNode7203).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7203).moment H = injectiveMoment H reductionPivot10577 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7203).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10577 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10577 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10577 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection910, oldProjection890, oldProjection889, reductionProjection6714] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10577 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node910⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection910 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10577 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10577 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node889⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection889 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection889 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound889 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10577 (3 : Fin 4)) = (normalNode7213).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6714 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10577 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7203).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10577 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7203).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10577 (j : Fin 4)))
      2 288 1440 10 ![720, 144, 720, 144] ![2, 10, 2, 10] reductionProjection10577 ![oldProjection910, oldProjection890, oldProjection889, reductionProjection6714]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10578 : Integer.Sparse (Fin 1613) := [(0, -6), (3, -220), (4, 5), (19, -600), (20, 70), (94, 240), (104, 320), (108, 1120), (246, 80), (247, 800), (252, 1440), (263, 720), (294, 720), (703, 80), (704, 240), (1155, 720), (1251, 205), (1278, -480), (1324, 720)]

def reductionPivot10578 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, 1, -2]]

theorem reductionSound10578 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7166).moment H =
      Integer.Sparse.eval reductionProjection10578 (momentVector H) := by
  have heq : reductionPivot10578 = (fun u v => (normalNode7166).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7166).moment H = injectiveMoment H reductionPivot10578 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7166).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10578 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10578 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 2, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10578 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6225, reductionProjection10558, reductionProjection9040, reductionProjection10577, reductionProjection10552] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10578 (0 : Fin 5)) = canonicalInput5983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6225 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5983 hH))).trans (reductionSound6225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10578 (1 : Fin 5)) = (normalNode7173).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10558 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10578 (2 : Fin 5)) = canonicalInput14242.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9040 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14242 hH))).trans (reductionSound9040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10578 (3 : Fin 5)) = canonicalInput14249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10577 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14249 hH))).trans (reductionSound10577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10578 (4 : Fin 5)) = canonicalInput14251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10552 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10578 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14251 hH))).trans (reductionSound10552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7166).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10578 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7166).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10578 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 2, 288, 1440] ![2, 1, 720, 5, 1] reductionProjection10578 ![reductionProjection6225, reductionProjection10558, reductionProjection9040, reductionProjection10577, reductionProjection10552]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10579 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, -15), (104, -240), (105, -80), (108, -320), (241, -80), (247, -160), (1251, -15)]

def reductionPivot10579 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, -1, 1], ![0, 2, 3, -5], ![1, -1, -2, 2]]

theorem reductionSound10579 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10598).moment H =
      Integer.Sparse.eval reductionProjection10579 (momentVector H) := by
  have heq : reductionPivot10579 = (fun u v => (normalNode10598).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10598).moment H = injectiveMoment H reductionPivot10579 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10598).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot10579 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10579 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10579 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1807, reductionProjection684, reductionProjection6400, oldProjection123] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10579 (0 : Fin 4)) = canonicalInput17229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1807 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1807 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17229 hH))).trans (reductionSound1807 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10579 (1 : Fin 4)) = canonicalInput25472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection684 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection684 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25472 hH))).trans (reductionSound684 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10579 (2 : Fin 4)) = canonicalInput25855.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6400 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25855 hH))).trans (reductionSound6400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10579 (3 : Fin 4)) = canonicalInput25987.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection123 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10579 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection123 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25987 hH))).trans (oldProjectionSound123 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10598).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10579 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10598).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10579 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 48] ![10, 10, 2, 30] reductionProjection10579 ![reductionProjection1807, reductionProjection684, reductionProjection6400, oldProjection123]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10580 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 32), (20, -7), (94, -6), (100, 48), (104, -16), (108, -16), (243, -16), (246, -16), (262, -144), (703, -16), (704, -48), (1251, -7)]

def reductionPivot10580 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -3, 5], ![-1, 1, 1, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound10580 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7174).moment H =
      Integer.Sparse.eval reductionProjection10580 (momentVector H) := by
  have heq : reductionPivot10580 = (fun u v => (normalNode7174).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7174).moment H = injectiveMoment H reductionPivot10580 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7174).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10580 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10580 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10580 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection922, reductionProjection10030, reductionProjection10551, reductionProjection1812] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10580 (0 : Fin 4)) = canonicalInput19225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19225 hH))).trans (oldProjectionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10580 (1 : Fin 4)) = canonicalInput14228.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10030 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14228 hH))).trans (reductionSound10030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10580 (2 : Fin 4)) = canonicalInput14219.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10551 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14219 hH))).trans (reductionSound10551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10580 (3 : Fin 4)) = canonicalInput14217.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1812 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10580 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1812 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14217 hH))).trans (reductionSound1812 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7174).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10580 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7174).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10580 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection10580 ![oldProjection922, reductionProjection10030, reductionProjection10551, reductionProjection1812]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10581 : Integer.Sparse (Fin 1613) := [(3, 24), (4, -1), (19, 8), (20, -1), (94, -3), (104, -32), (105, -16), (108, -32), (241, -16), (1251, -3)]

def reductionPivot10581 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -3, 5], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10581 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7207).moment H =
      Integer.Sparse.eval reductionProjection10581 (momentVector H) := by
  have heq : reductionPivot10581 = (fun u v => (normalNode7207).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7207).moment H = injectiveMoment H reductionPivot10581 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7207).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10581 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10581 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10581 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection915, reductionProjection692, oldProjection890, oldProjection890] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10581 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node915⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection915 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10581 (1 : Fin 4)) = (normalNode7223).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection692 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10581 (2 : Fin 4)) = canonicalInput14264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14264 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10581 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node890⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10581 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7207).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10581 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7207).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10581 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10581 ![oldProjection915, reductionProjection692, oldProjection890, oldProjection890]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10582 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 60), (4, -5), (19, 140), (20, -10), (94, -10), (104, -160), (105, -80), (106, -80), (108, -160), (241, -80), (243, -160), (698, -80), (703, -160), (704, -160), (1251, -10)]

def reductionPivot10582 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound10582 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7210).moment H =
      Integer.Sparse.eval reductionProjection10582 (momentVector H) := by
  have heq : reductionPivot10582 = (fun u v => (normalNode7210).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7210).moment H = injectiveMoment H reductionPivot10582 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7210).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10582 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10582 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10582 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection907, reductionProjection1778, reductionProjection1778, reductionProjection10568] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10582 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6104 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection907 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6104 hH))).trans (oldProjectionSound907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10582 (1 : Fin 4)) = canonicalInput14281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14281 hH))).trans (reductionSound1778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10582 (2 : Fin 4)) = canonicalInput14273.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1778 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14273 hH))).trans (reductionSound1778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10582 (3 : Fin 4)) = canonicalInput14272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10568 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10582 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10568 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14272 hH))).trans (reductionSound10568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7210).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10582 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7210).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10582 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 72, 144] ![2, 20, 20, 10] reductionProjection10582 ![oldProjection907, reductionProjection1778, reductionProjection1778, reductionProjection10568]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10583 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -220), (4, 10), (19, -440), (20, 60), (94, 65), (100, -480), (104, 720), (105, 320), (106, 160), (108, 720), (241, 320), (243, 560), (246, 80), (247, 160), (262, 720), (263, 720), (698, 240), (703, 320), (704, 560), (1218, -240), (1223, -240), (1225, 80), (1226, 80), (1251, 65)]

def reductionPivot10583 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound10583 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7167).moment H =
      Integer.Sparse.eval reductionProjection10583 (momentVector H) := by
  have heq : reductionPivot10583 = (fun u v => (normalNode7167).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7167).moment H = injectiveMoment H reductionPivot10583 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7167).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10583 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10583 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10583 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10579, reductionProjection10580, reductionProjection9127, reductionProjection10581, reductionProjection10582] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10583 (0 : Fin 5)) = canonicalInput5984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10579 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10579 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5984 hH))).trans (reductionSound10579 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10583 (1 : Fin 5)) = (normalNode7174).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10580 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10580 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10580 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10583 (2 : Fin 5)) = canonicalInput14243.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9127 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9127 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14243 hH))).trans (reductionSound9127 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10583 (3 : Fin 5)) = canonicalInput14250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10581 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10581 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14250 hH))).trans (reductionSound10581 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10583 (4 : Fin 5)) = canonicalInput14252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10582 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10583 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14252 hH))).trans (reductionSound10582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7167).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10583 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7167).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10583 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 288, 1440] ![1, 5, 5, 5, 1] reductionProjection10583 ![reductionProjection10579, reductionProjection10580, reductionProjection9127, reductionProjection10581, reductionProjection10582]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10584 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -12), (20, 3), (94, 4), (100, -48), (246, 16), (704, 16), (1251, 1)]

def reductionPivot10584 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 1, 1], ![-3, 2, 2, -1], ![5, -1, -3, -1]]

theorem reductionSound10584 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7194).moment H =
      Integer.Sparse.eval reductionProjection10584 (momentVector H) := by
  have heq : reductionPivot10584 = (fun u v => (normalNode7194).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7194).moment H = injectiveMoment H reductionPivot10584 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7194).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7194).entries)).symm
  have hshape : reductionPivot10584 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10584 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10584 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection576, oldProjection233, oldProjection245] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10584 (0 : Fin 3)) = canonicalInput4642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10584 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection576 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10584 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound4642 hH))).trans (reductionSound576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10584 (1 : Fin 3)) = canonicalInput17986.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10584 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection233 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10584 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection233 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17986 hH))).trans (oldProjectionSound233 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10584 (2 : Fin 3)) = canonicalInput17991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10584 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection245 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10584 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17991 hH))).trans (oldProjectionSound245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7194).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10584 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7194).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10584 (j : Fin 3)))
      3 144 144 3 ![1, 48, 48] ![144, 3, 3] reductionProjection10584 ![reductionProjection576, oldProjection233, oldProjection245]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10585 : Integer.Sparse (Fin 1613) := [(3, 28), (4, -1), (19, 44), (20, -11), (94, -7), (100, 48), (104, -16), (105, -16), (108, -64), (246, -32), (704, -16), (1251, -5)]

def reductionPivot10585 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -3, 5], ![0, 1, 2, -3], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound10585 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7171).moment H =
      Integer.Sparse.eval reductionProjection10585 (momentVector H) := by
  have heq : reductionPivot10585 = (fun u v => (normalNode7171).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7171).moment H = injectiveMoment H reductionPivot10585 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7171).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10585 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10585 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10585 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1931, reductionProjection10584, reductionProjection6714, reductionProjection10551] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10585 (0 : Fin 4)) = canonicalInput6040.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1931 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6040 hH))).trans (reductionSound1931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10585 (1 : Fin 4)) = canonicalInput14229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10584 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10584 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14229 hH))).trans (reductionSound10584 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10585 (2 : Fin 4)) = canonicalInput14285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6714 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14285 hH))).trans (reductionSound6714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10585 (3 : Fin 4)) = canonicalInput14288.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10551 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10585 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14288 hH))).trans (reductionSound10551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7171).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10585 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7171).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10585 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10585 ![reductionProjection1931, reductionProjection10584, reductionProjection6714, reductionProjection10551]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10586 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -360), (4, 10), (19, -800), (20, 125), (23, -480), (26, 160), (94, 275), (104, 720), (105, 400), (108, 800), (241, 560), (243, 480), (246, 160), (247, 480), (698, 320), (703, 320), (704, 640), (1251, 135), (1278, -480)]

def reductionPivot10586 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound10586 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7175).moment H =
      Integer.Sparse.eval reductionProjection10586 (momentVector H) := by
  have heq : reductionPivot10586 = (fun u v => (normalNode7175).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7175).moment H = injectiveMoment H reductionPivot10586 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7175).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10586 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10586 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10586 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2385, reductionProjection10550, reductionProjection10550, reductionProjection10575, reductionProjection10577] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10586 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2385⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2385 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10586 (1 : Fin 5)) = (normalNode7190).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10550 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10586 (2 : Fin 5)) = canonicalInput14244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10550 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10550 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14244 hH))).trans (reductionSound10550 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10586 (3 : Fin 5)) = (normalNode7201).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10575 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10575 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10575 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10586 (4 : Fin 5)) = (normalNode7203).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10577 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10586 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7175).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10586 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7175).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10586 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 288] ![1, 1, 1, 5, 5] reductionProjection10586 ![oldProjection2385, reductionProjection10550, reductionProjection10550, reductionProjection10575, reductionProjection10577]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10587 : Integer.Sparse (Fin 1613) := [(23, 3), (26, -1), (104, -1), (105, -1), (106, -1), (241, -1), (243, -2), (246, -1), (703, -3), (704, -1), (1054, 3)]

def reductionPivot10587 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -3, 5], ![0, -1, 2, -1], ![0, 2, 0, -2], ![1, 0, 0, -1]]

theorem reductionSound10587 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode7191).moment H =
      Integer.Sparse.eval reductionProjection10587 (momentVector H) := by
  have heq : reductionPivot10587 = (fun u v => (normalNode7191).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7191).moment H = injectiveMoment H reductionPivot10587 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7191).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10587 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10587 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 9, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10587 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection774, reductionProjection693, reductionProjection1822, oldProjection887] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10587 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6044 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection774 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection774 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6044 hH))).trans (oldProjectionSound774 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10587 (1 : Fin 4)) = canonicalInput14239.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection693 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14239 hH))).trans (reductionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10587 (2 : Fin 4)) = (normalNode7196).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1822 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10587 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node887⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection887 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10587 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7191).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10587 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7191).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10587 (j : Fin 4)))
      2 18 18 2 ![9, 9, 9, 9] ![2, 2, 2, 2] reductionProjection10587 ![oldProjection774, reductionProjection693, reductionProjection1822, oldProjection887]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10588 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -180), (4, 5), (19, -320), (20, 40), (23, -480), (26, 160), (94, 90), (104, 880), (105, 560), (106, 240), (108, 480), (241, 640), (243, 640), (246, 240), (247, 160), (698, 240), (703, 640), (704, 480), (1054, -720), (1251, 40)]

def reductionPivot10588 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, 0, 0, -1]]

theorem reductionSound10588 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7176).moment H =
      Integer.Sparse.eval reductionProjection10588 (momentVector H) := by
  have heq : reductionPivot10588 = (fun u v => (normalNode7176).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7176).moment H = injectiveMoment H reductionPivot10588 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7176).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10588 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10588 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 18, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10588 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2386, reductionProjection10587, reductionProjection10587, reductionProjection10577, reductionProjection7503] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10588 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2386⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2386 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10588 (1 : Fin 5)) = (normalNode7191).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10587 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10588 (2 : Fin 5)) = canonicalInput14245.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10587 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14245 hH))).trans (reductionSound10587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10588 (3 : Fin 5)) = canonicalInput14246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10577 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14246 hH))).trans (reductionSound10577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10588 (4 : Fin 5)) = (normalNode7204).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7503 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10588 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7176).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10588 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7176).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10588 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 18, 288, 1440] ![5, 80, 80, 5, 1] reductionProjection10588 ![oldProjection2386, reductionProjection10587, reductionProjection10587, reductionProjection10577, reductionProjection7503]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10589 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -400), (4, 15), (19, -640), (20, 90), (23, -240), (94, 205), (104, 720), (105, 160), (106, 80), (108, 1360), (241, 240), (243, 240), (246, 80), (247, 640), (698, 160), (703, 240), (704, 480), (1054, -240), (1251, 125)]

def reductionPivot10589 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -3, 5], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound10589 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7177).moment H =
      Integer.Sparse.eval reductionProjection10589 (momentVector H) := by
  have heq : reductionPivot10589 = (fun u v => (normalNode7177).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7177).moment H = injectiveMoment H reductionPivot10589 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7177).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10589 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10589 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10589 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2385, reductionProjection10559, reductionProjection10577, reductionProjection10577, reductionProjection10582] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10589 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5559 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2385 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5559 hH))).trans (oldProjectionSound2385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10589 (1 : Fin 5)) = (normalNode7192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10559 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10559 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10559 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10589 (2 : Fin 5)) = (normalNode7203).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10577 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10589 (3 : Fin 5)) = canonicalInput14249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10577 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10577 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14249 hH))).trans (reductionSound10577 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10589 (4 : Fin 5)) = (normalNode7210).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10582 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10589 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10582 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10582 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7177).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10589 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7177).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10589 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 288, 1440] ![1, 1, 5, 5, 1] reductionProjection10589 ![oldProjection2385, reductionProjection10559, reductionProjection10577, reductionProjection10577, reductionProjection10582]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10590 : Integer.Sparse (Fin 1613) := [(3, 28), (4, -3), (19, 28), (20, -1), (94, 8), (104, -16), (105, -32), (106, -16), (108, -32), (241, -16), (243, -16), (1251, 2)]

def reductionPivot10590 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound10590 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7182).moment H =
      Integer.Sparse.eval reductionProjection10590 (momentVector H) := by
  have heq : reductionPivot10590 = (fun u v => (normalNode7182).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7182).moment H = injectiveMoment H reductionPivot10590 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7182).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10590 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10590 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10590 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection888, reductionProjection6714, reductionProjection6714, reductionProjection10568] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10590 (0 : Fin 4)) = canonicalInput12873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection888 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12873 hH))).trans (oldProjectionSound888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10590 (1 : Fin 4)) = (normalNode7213).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6714 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10590 (2 : Fin 4)) = canonicalInput14267.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6714 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14267 hH))).trans (reductionSound6714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10590 (3 : Fin 4)) = canonicalInput14272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10568 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10590 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10568 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14272 hH))).trans (reductionSound10568 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7182).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10590 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7182).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10590 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10590 ![oldProjection888, reductionProjection6714, reductionProjection6714, reductionProjection10568]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10591 : Integer.Sparse (Fin 1613) := [(3, 32), (4, -2), (19, 24), (20, -4), (94, -7), (104, -16), (105, -16), (108, -48), (246, -16), (1251, -1)]

def reductionPivot10591 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, -3, 5], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, 0, -1]]

theorem reductionSound10591 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7184).moment H =
      Integer.Sparse.eval reductionProjection10591 (momentVector H) := by
  have heq : reductionPivot10591 = (fun u v => (normalNode7184).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7184).moment H = injectiveMoment H reductionPivot10591 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7184).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10591 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10591 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10591 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection890, reductionProjection6714, reductionProjection692, reductionProjection10551] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10591 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5571 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection890 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5571 hH))).trans (oldProjectionSound890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10591 (1 : Fin 4)) = canonicalInput14256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6714 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14256 hH))).trans (reductionSound6714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10591 (2 : Fin 4)) = canonicalInput14269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection692 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection692 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14269 hH))).trans (reductionSound692 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10591 (3 : Fin 4)) = (normalNode7226).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10551 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10591 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7184).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10591 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7184).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10591 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10591 ![oldProjection890, reductionProjection6714, reductionProjection692, reductionProjection10551]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
