import NoFourMUBs.Step2.SOS.Canonical009
import NoFourMUBs.Step2.SOS.Canonical144
import NoFourMUBs.Step2.SOS.Canonical145
import NoFourMUBs.Step2.SOS.Canonical170
import NoFourMUBs.Step2.SOS.Canonical290
import NoFourMUBs.Step2.SOS.Canonical291
import NoFourMUBs.Step2.SOS.Canonical337
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes00
import NoFourMUBs.Step2.SOS.MomentCodes01
import NoFourMUBs.Step2.SOS.MomentCodes10
import NoFourMUBs.Step2.SOS.MomentCodes16
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes000
import NoFourMUBs.Step2.SOS.NormalizationNodes011
import NoFourMUBs.Step2.SOS.NormalizationNodes017
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes021
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions003
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions010
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions012
import NoFourMUBs.Step2.SOS.Reductions013
import NoFourMUBs.Step2.SOS.Reductions014
import NoFourMUBs.Step2.SOS.Reductions019
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions062
import NoFourMUBs.Step2.SOS.Reductions067
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions123
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions159
import NoFourMUBs.Step2.SOS.Reductions190
import NoFourMUBs.Step2.SOS.Reductions191
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions257
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical122
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical124
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical126
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical128
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical129
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical130
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical210
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes10
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes2
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes3
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes5
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes8
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes9
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection8256 : Integer.Sparse (Fin 1613) := [(3, 24), (19, 28), (20, -3), (23, 96), (38, 48), (94, -7), (104, -48), (105, -32), (106, -16), (108, -80), (241, -32), (243, -16), (247, -32), (679, 48), (703, -16), (1031, 48), (1033, 96), (1054, 96), (1251, -4), (1278, 96)]

def reductionPivot8256 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![-1, -1, 2], ![1, -1, 0], ![1, -1, 0], ![1, 4, -5]]

theorem reductionSound8256 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4582).moment H =
      Integer.Sparse.eval reductionProjection8256 (momentVector H) := by
  have heq : reductionPivot8256 = (fun u v => (normalNode4582).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4582).moment H = injectiveMoment H reductionPivot8256 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4582).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8256 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8256 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 2, 2, 24] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8256 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6107, reductionProjection8254, reductionProjection8255, reductionProjection8255, oldProjection322] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8256 (0 : Fin 5)) = (normalNode2986).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6107 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8256 (1 : Fin 5)) = (normalNode4581).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8254 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8256 (2 : Fin 5)) = (normalNode4586).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8255 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8256 (3 : Fin 5)) = canonicalInput9256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8255 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9256 hH))).trans (reductionSound8255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8256 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3904 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection322 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8256 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3904 hH))).trans (oldProjectionSound322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4582).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8256 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4582).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8256 (j : Fin 5)))
      1 96 96 1 ![96, 48, 2, 2, 24] ![1, 2, 48, 48, 4] reductionProjection8256 ![reductionProjection6107, reductionProjection8254, reductionProjection8255, reductionProjection8255, oldProjection322]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8257 : Integer.Sparse (Fin 1613) := [(38, -1), (679, -1), (1031, -1), (1033, -1)]

def reductionPivot8257 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![-1, -1, 2], ![1, 4, -5], ![2, -2, 0]]

theorem reductionSound8257 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4583).moment H =
      Integer.Sparse.eval reductionProjection8257 (momentVector H) := by
  have heq : reductionPivot8257 = (fun u v => (normalNode4583).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4583).moment H = injectiveMoment H reductionPivot8257 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4583).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8257 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8257 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8257 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2513, reductionProjection6206, oldProjection85, reductionProjection621] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8257 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code679).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2513 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2513 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2513 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8257 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1031).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6206 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8257 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3907 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3907 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8257 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1033).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection621 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8257 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection621 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound621 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4583).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8257 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4583).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8257 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8257 ![reductionProjection2513, reductionProjection6206, oldProjection85, reductionProjection621]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8258 : Integer.Sparse (Fin 1613) := [(38, -1), (61, -1), (1053, -1), (1061, -1)]

def reductionPivot8258 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![-1, -1, 2], ![0, 4, -4], ![2, -2, 0]]

theorem reductionSound8258 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4585).moment H =
      Integer.Sparse.eval reductionProjection8258 (momentVector H) := by
  have heq : reductionPivot8258 = (fun u v => (normalNode4585).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4585).moment H = injectiveMoment H reductionPivot8258 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4585).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8258 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8258 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8258 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection218, oldProjection199, oldProjection85, oldProjection99] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8258 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6733 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection218 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6733 hH))).trans (oldProjectionSound218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8258 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node199⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection199 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8258 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3907 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection85 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection85 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3907 hH))).trans (oldProjectionSound85 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8258 (3 : Fin 4)) = canonicalInput9253.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection99 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8258 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection99 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9253 hH))).trans (oldProjectionSound99 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4585).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8258 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4585).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8258 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8258 ![oldProjection218, oldProjection199, oldProjection85, oldProjection99]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8259 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -2), (38, 72), (61, 48), (94, -7), (241, -24), (243, -24), (244, -8), (247, -24), (1053, 72), (1061, 72), (1251, -5)]

def reductionPivot8259 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![-1, -1, 2], ![0, 4, -4], ![1, -1, 0], ![1, -1, 0]]

theorem reductionSound8259 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4584).moment H =
      Integer.Sparse.eval reductionProjection8259 (momentVector H) := by
  have heq : reductionPivot8259 = (fun u v => (normalNode4584).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4584).moment H = injectiveMoment H reductionPivot8259 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4584).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot8259 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8259 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 48, 24, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8259 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1134, oldProjection650, oldProjection322, reductionProjection8258, reductionProjection8258] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8259 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1134⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1134 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8259 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node650⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection650 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8259 (2 : Fin 5)) = canonicalInput9257.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection322 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9257 hH))).trans (oldProjectionSound322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8259 (3 : Fin 5)) = canonicalInput9252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8258 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9252 hH))).trans (reductionSound8258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8259 (4 : Fin 5)) = (normalNode4585).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8258 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8259 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8258 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8258 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4584).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8259 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4584).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8259 (j : Fin 5)))
      1 48 48 1 ![48, 48, 24, 2, 2] ![1, 1, 2, 24, 24] reductionProjection8259 ![oldProjection1134, oldProjection650, oldProjection322, reductionProjection8258, reductionProjection8258]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8260 : Integer.Sparse (Fin 1613) := [(244, 2), (700, 4), (701, 2), (1053, -3), (1059, 1)]

def reductionPivot8260 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -1, 1], ![0, 4, -4], ![2, -2, 0]]

theorem reductionSound8260 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4625).moment H =
      Integer.Sparse.eval reductionProjection8260 (momentVector H) := by
  have heq : reductionPivot8260 = (fun u v => (normalNode4625).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4625).moment H = injectiveMoment H reductionPivot8260 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4625).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8260 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8260 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 3, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8260 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection171, oldProjection199, oldProjection204, oldProjection171] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8260 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node171⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection171 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8260 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node199⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection199 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection199 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound199 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8260 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node204⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection204 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection204 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound204 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8260 (3 : Fin 4)) = canonicalInput9296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection171 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8260 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9296 hH))).trans (oldProjectionSound171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4625).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8260 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4625).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8260 (j : Fin 4)))
      2 6 6 2 ![3, 1, 3, 3] ![2, 6, 2, 2] reductionProjection8260 ![oldProjection171, oldProjection199, oldProjection204, oldProjection171]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8261 : Integer.Sparse (Fin 1613) := [(27, -1), (38, 6), (42, -2), (46, -2), (54, 3), (106, -1), (243, -2), (244, -2), (245, -1), (246, -1), (679, 6), (698, -1), (700, -5), (701, -4), (703, -2), (704, -2), (1031, 6), (1033, 6), (1053, 3), (1054, 3), (1059, -1)]

def reductionPivot8261 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![1, 4, -5], ![2, -2, 0]]

theorem reductionSound8261 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4587).moment H =
      Integer.Sparse.eval reductionProjection8261 (momentVector H) := by
  have heq : reductionPivot8261 = (fun u v => (normalNode4587).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4587).moment H = injectiveMoment H reductionPivot8261 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4587).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8261 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8261 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 2, 2, 6, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8261 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection328, reductionProjection8257, reductionProjection8257, reductionProjection8260, oldProjection652] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8261 (0 : Fin 5)) = (normalNode159).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection328 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection328 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound328 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8261 (1 : Fin 5)) = (normalNode4583).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8257 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8261 (2 : Fin 5)) = canonicalInput9289.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8257 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9289 hH))).trans (reductionSound8257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8261 (3 : Fin 5)) = (normalNode4625).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8260 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8261 (4 : Fin 5)) = canonicalInput9295.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection652 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8261 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9295 hH))).trans (oldProjectionSound652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4587).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8261 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4587).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8261 (j : Fin 5)))
      1 6 6 1 ![6, 2, 2, 6, 6] ![1, 3, 3, 1, 1] reductionProjection8261 ![reductionProjection328, reductionProjection8257, reductionProjection8257, reductionProjection8260, oldProjection652]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8262 : Integer.Sparse (Fin 1613) := [(57, -1), (231, -1), (238, -1), (1057, -1)]

def reductionPivot8262 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 0, 2], ![0, 2, -2], ![1, 2, -3], ![2, -4, 2]]

theorem reductionSound8262 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4588).moment H =
      Integer.Sparse.eval reductionProjection8262 (momentVector H) := by
  have heq : reductionPivot8262 = (fun u v => (normalNode4588).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4588).moment H = injectiveMoment H reductionPivot8262 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4588).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8262 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8262 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8262 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection336, oldProjection136, oldProjection151, oldProjection211] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8262 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code57).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection336 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8262 (1 : Fin 4)) = canonicalInput9272.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9272 hH))).trans (oldProjectionSound136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8262 (2 : Fin 4)) = canonicalInput9309.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection151 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9309 hH))).trans (oldProjectionSound151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8262 (3 : Fin 4)) = canonicalInput9311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8262 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9311 hH))).trans (oldProjectionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4588).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8262 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4588).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8262 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8262 ![reductionProjection336, oldProjection136, oldProjection151, oldProjection211]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8263 : Integer.Sparse (Fin 1613) := [(59, -3), (229, -3), (243, 1), (244, 1), (700, 1), (1060, -3)]

def reductionPivot8263 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 0, 2], ![0, 3, -3], ![1, 1, -2], ![2, -4, 2]]

theorem reductionSound8263 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode4589).moment H =
      Integer.Sparse.eval reductionProjection8263 (momentVector H) := by
  have heq : reductionPivot8263 = (fun u v => (normalNode4589).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4589).moment H = injectiveMoment H reductionPivot8263 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4589).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8263 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8263 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 3, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8263 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection335, oldProjection135, oldProjection147, oldProjection213] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8263 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code59).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection335 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection335 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound335 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8263 (1 : Fin 4)) = canonicalInput9276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection135 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection135 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9276 hH))).trans (oldProjectionSound135 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8263 (2 : Fin 4)) = canonicalInput9313.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection147 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9313 hH))).trans (oldProjectionSound147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8263 (3 : Fin 4)) = canonicalInput9316.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8263 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9316 hH))).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4589).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8263 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4589).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8263 (j : Fin 4)))
      2 6 6 2 ![1, 1, 3, 1] ![6, 6, 2, 6] reductionProjection8263 ![reductionProjection335, oldProjection135, oldProjection147, oldProjection213]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8264 : Integer.Sparse (Fin 1613) := [(27, -1), (106, -1), (244, -1)]

def reductionPivot8264 : Matrix (Fin 4) (Fin 3) ℤ := ![![-1, 0, 1], ![-2, 0, 2], ![1, 4, -5], ![2, -4, 2]]

theorem reductionSound8264 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode4590).moment H =
      Integer.Sparse.eval reductionProjection8264 (momentVector H) := by
  have heq : reductionPivot8264 = (fun u v => (normalNode4590).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4590).moment H = injectiveMoment H reductionPivot8264 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4590).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot8264 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8264 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8264 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection113, oldProjection33, oldProjection29] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8264 (0 : Fin 3)) = canonicalInput606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8264 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection113 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8264 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection113 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound606 hH))).trans (reductionSound113 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8264 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4151 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8264 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8264 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4151 hH))).trans (oldProjectionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8264 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4163 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8264 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection29 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8264 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection29 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4163 hH))).trans (oldProjectionSound29 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode4590).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8264 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4590).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8264 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection8264 ![reductionProjection113, oldProjection33, oldProjection29]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8265 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 4), (26, -4), (37, 12), (70, 12), (86, -4), (88, -4), (91, -4), (94, 1), (104, -4), (105, -12), (106, -8), (108, -4), (241, -8), (243, -20), (244, -4), (1045, 12), (1225, -8), (1251, -1)]

def reductionPivot8265 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, -3, 3], ![1, -1, 0], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound8265 {H : CMatrix} (hH : IsHadamard H) :
    (24 : ℝ) * (normalNode4591).moment H =
      Integer.Sparse.eval reductionProjection8265 (momentVector H) := by
  have heq : reductionPivot8265 = (fun u v => (normalNode4591).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4591).moment H = injectiveMoment H reductionPivot8265 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4591).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8265 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8265 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 96, 24] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8265 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection395, reductionProjection256, oldProjection195, oldProjection632, oldProjection637] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8265 (0 : Fin 5)) = (normalNode192).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection395 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8265 (1 : Fin 5)) = canonicalInput9248.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection256 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9248 hH))).trans (reductionSound256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8265 (2 : Fin 5)) = canonicalInput9280.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection195 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection195 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9280 hH))).trans (oldProjectionSound195 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8265 (3 : Fin 5)) = canonicalInput9282.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection632 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9282 hH))).trans (oldProjectionSound632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8265 (4 : Fin 5)) = canonicalInput9283.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection637 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8265 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9283 hH))).trans (oldProjectionSound637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4591).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8265 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4591).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8265 (j : Fin 5)))
      1 24 96 4 ![96, 96, 48, 96, 24] ![1, 1, 2, 1, 4] reductionProjection8265 ![reductionProjection395, reductionProjection256, oldProjection195, oldProjection632, oldProjection637]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8266 : Integer.Sparse (Fin 1613) := [(1035, 1)]

theorem reductionSound8266 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1035).moment H =
      Integer.Sparse.eval reductionProjection8266 (momentVector H) := by
  have hc : coordinates (1035 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1035) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection8266, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection8267 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (38, 240), (76, 240), (77, 240), (79, 240), (81, 240), (90, -80), (94, -25), (241, -160), (243, -80), (697, 240), (698, -400), (700, -320), (1035, -480), (1052, 480), (1053, 240), (1059, -160), (1226, -80), (1251, 30)]

def reductionPivot8267 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, -2, 2], ![0, 1, -1], ![1, 2, -3], ![2, -2, 0]]

theorem reductionSound8267 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4592).moment H =
      Integer.Sparse.eval reductionProjection8267 (momentVector H) := by
  have heq : reductionPivot8267 = (fun u v => (normalNode4592).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4592).moment H = injectiveMoment H reductionPivot8267 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4592).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8267 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8267 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 6, 1, 6, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8267 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection407, oldProjection529, reductionProjection8266, oldProjection643, oldProjection645] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8267 (0 : Fin 5)) = (normalNode200).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection407 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8267 (1 : Fin 5)) = canonicalInput9251.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection529 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection529 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9251 hH))).trans (oldProjectionSound529 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8267 (2 : Fin 5)) = canonicalInput9285.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9285 hH))).trans (reductionSound8266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8267 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node643⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection643 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8267 (4 : Fin 5)) = canonicalInput9286.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection645 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8267 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9286 hH))).trans (oldProjectionSound645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4592).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8267 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4592).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8267 (j : Fin 5)))
      1 480 480 1 ![6, 6, 1, 6, 480] ![80, 80, 480, 80, 1] reductionProjection8267 ![reductionProjection407, oldProjection529, reductionProjection8266, oldProjection643, oldProjection645]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8268 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (38, 480), (42, -320), (77, 240), (90, -160), (91, -80), (94, -30), (241, -80), (243, -320), (244, -160), (698, -400), (700, -960), (701, -400), (704, -320), (1053, 240), (1059, -240), (1251, -10)]

def reductionPivot8268 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, -1, 1], ![0, -1, 1], ![1, 3, -4], ![2, -2, 0]]

theorem reductionSound8268 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4593).moment H =
      Integer.Sparse.eval reductionProjection8268 (momentVector H) := by
  have heq : reductionPivot8268 = (fun u v => (normalNode4593).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4593).moment H = injectiveMoment H reductionPivot8268 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4593).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8268 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8268 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 6, 6, 6, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8268 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection418, oldProjection317, oldProjection317, reductionProjection8260, oldProjection653] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8268 (0 : Fin 5)) = (normalNode209).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection418 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8268 (1 : Fin 5)) = canonicalInput9260.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection317 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9260 hH))).trans (oldProjectionSound317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8268 (2 : Fin 5)) = canonicalInput9290.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection317 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9290 hH))).trans (oldProjectionSound317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8268 (3 : Fin 5)) = (normalNode4625).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8260 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8260 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8260 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8268 (4 : Fin 5)) = canonicalInput9294.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection653 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8268 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9294 hH))).trans (oldProjectionSound653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4593).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8268 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4593).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8268 (j : Fin 5)))
      1 480 480 1 ![6, 6, 6, 6, 480] ![80, 80, 80, 80, 1] reductionProjection8268 ![reductionProjection418, oldProjection317, oldProjection317, reductionProjection8260, oldProjection653]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8269 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (26, -32), (42, -32), (86, -16), (88, -32), (90, -16), (91, -32), (94, 6), (104, -16), (105, -32), (106, -32), (241, -32), (243, -96), (244, -32), (698, -32), (700, -32), (701, -16), (703, -32), (704, -32), (1225, -32), (1226, -32), (1251, -1)]

def reductionPivot8269 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, -1, 1], ![1, -3, 2], ![1, 0, -1], ![1, 3, -4]]

theorem reductionSound8269 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4594).moment H =
      Integer.Sparse.eval reductionProjection8269 (momentVector H) := by
  have heq : reductionPivot8269 = (fun u v => (normalNode4594).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4594).moment H = injectiveMoment H reductionPivot8269 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4594).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8269 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8269 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 96, 96, 6, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8269 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection413, oldProjection305, oldProjection639, oldProjection657, oldProjection664] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8269 (0 : Fin 5)) = (normalNode212).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection413 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection413 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8269 (1 : Fin 5)) = canonicalInput9261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection305 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection305 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9261 hH))).trans (oldProjectionSound305 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8269 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4052 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection639 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4052 hH))).trans (oldProjectionSound639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8269 (3 : Fin 5)) = canonicalInput9297.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection657 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9297 hH))).trans (oldProjectionSound657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8269 (4 : Fin 5)) = canonicalInput9298.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection664 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8269 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection664 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9298 hH))).trans (oldProjectionSound664 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4594).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8269 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4594).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8269 (j : Fin 5)))
      1 96 96 1 ![6, 96, 96, 6, 96] ![16, 1, 1, 16, 1] reductionProjection8269 ![reductionProjection413, oldProjection305, oldProjection639, oldProjection657, oldProjection664]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8270 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 100), (20, -15), (42, -160), (88, -80), (89, 240), (90, -80), (91, -80), (94, -65), (241, -160), (243, -480), (244, -80), (698, -320), (700, -160), (701, -80), (704, -320), (1061, 240), (1226, -80), (1251, -35)]

def reductionPivot8270 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, -1, 1], ![1, -2, 1], ![1, -1, 0], ![1, 3, -4]]

theorem reductionSound8270 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4595).moment H =
      Integer.Sparse.eval reductionProjection8270 (momentVector H) := by
  have heq : reductionPivot8270 = (fun u v => (normalNode4595).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4595).moment H = injectiveMoment H reductionPivot8270 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4595).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8270 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8270 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![6, 96, 480, 3, 48] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8270 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection370, oldProjection316, oldProjection653, oldProjection206, oldProjection665] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8270 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node370⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection370 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8270 (1 : Fin 5)) = canonicalInput9262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection316 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection316 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9262 hH))).trans (oldProjectionSound316 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8270 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node653⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection653 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8270 (3 : Fin 5)) = canonicalInput9299.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection206 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9299 hH))).trans (oldProjectionSound206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8270 (4 : Fin 5)) = canonicalInput9300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection665 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8270 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection665 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9300 hH))).trans (oldProjectionSound665 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4595).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8270 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4595).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8270 (j : Fin 5)))
      1 480 480 1 ![6, 96, 480, 3, 48] ![80, 5, 1, 160, 10] reductionProjection8270 ![oldProjection370, oldProjection316, oldProjection653, oldProjection206, oldProjection665]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8271 : Integer.Sparse (Fin 1613) := [(72, -1), (81, -1), (682, -1), (1040, -1)]

def reductionPivot8271 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![-1, 3, -2], ![1, -3, 2], ![2, -1, -1]]

theorem reductionSound8271 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4606).moment H =
      Integer.Sparse.eval reductionProjection8271 (momentVector H) := by
  have heq : reductionPivot8271 = (fun u v => (normalNode4606).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4606).moment H = injectiveMoment H reductionPivot8271 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4606).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8271 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8271 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8271 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection159, oldProjection191, oldProjection111, oldProjection101] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8271 (0 : Fin 4)) = canonicalInput10889.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection159 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10889 hH))).trans (oldProjectionSound159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8271 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8271 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3985 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3985 hH))).trans (oldProjectionSound111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8271 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3983 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection101 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8271 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3983 hH))).trans (oldProjectionSound101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4606).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8271 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4606).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8271 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8271 ![oldProjection159, oldProjection191, oldProjection111, oldProjection101]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8272 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 120), (76, 120), (79, 120), (81, 240), (84, 120), (94, 5), (243, -40), (682, 120), (698, -120), (700, -40), (1036, -240), (1040, 120), (1050, 120), (1052, 120), (1058, 120), (1059, -80), (1221, 120), (1226, -40), (1251, 20)]

def reductionPivot8272 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, 1, -1], ![0, 2, -2], ![1, -3, 2], ![2, -1, -1]]

theorem reductionSound8272 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode4596).moment H =
      Integer.Sparse.eval reductionProjection8272 (momentVector H) := by
  have heq : reductionPivot8272 = (fun u v => (normalNode4596).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4596).moment H = injectiveMoment H reductionPivot8272 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4596).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8272 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8272 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 1, 2, 480, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8272 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection382, reductionProjection2164, reductionProjection8271, oldProjection642, oldProjection669] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8272 (0 : Fin 5)) = (normalNode227).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection382 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8272 (1 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1036).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8272 (2 : Fin 5)) = canonicalInput9305.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8271 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9305 hH))).trans (reductionSound8271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8272 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw4118 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection642 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4118 hH))).trans (oldProjectionSound642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8272 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node669⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection669 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8272 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection669 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4596).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8272 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4596).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8272 (j : Fin 5)))
      1 240 480 2 ![2, 1, 2, 480, 480] ![240, 480, 240, 1, 1] reductionProjection8272 ![reductionProjection382, reductionProjection2164, reductionProjection8271, oldProjection642, oldProjection669]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8273 : Integer.Sparse (Fin 1613) := [(19, -1), (20, -1), (106, 2), (244, 4), (701, 2), (1039, -6)]

def reductionPivot8273 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 0, 2], ![-1, 4, -3], ![1, -4, 3], ![1, 0, -1]]

theorem reductionSound8273 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode4608).moment H =
      Integer.Sparse.eval reductionProjection8273 (momentVector H) := by
  have heq : reductionPivot8273 = (fun u v => (normalNode4608).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4608).moment H = injectiveMoment H reductionPivot8273 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4608).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8273 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8273 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8273 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection242, oldProjection216, oldProjection133, reductionProjection6981] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8273 (0 : Fin 4)) = canonicalInput21611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection242 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection242 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21611 hH))).trans (oldProjectionSound242 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8273 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node216⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection216 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8273 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3995 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection133 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection133 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3995 hH))).trans (oldProjectionSound133 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8273 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1039).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6981 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8273 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6981 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6981 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4608).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8273 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4608).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8273 (j : Fin 4)))
      2 12 48 8 ![24, 48, 48, 1] ![2, 1, 1, 48] reductionProjection8273 ![oldProjection242, oldProjection216, oldProjection133, reductionProjection6981]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8274 : Integer.Sparse (Fin 1613) := [(20, -2), (94, -5), (106, 16), (243, 32), (244, 16), (700, 16), (1060, -48), (1225, 16), (1251, 1)]

def reductionPivot8274 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, 3, -3], ![1, -4, 3], ![1, 0, -1]]

theorem reductionSound8274 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4634).moment H =
      Integer.Sparse.eval reductionProjection8274 (momentVector H) := by
  have heq : reductionPivot8274 = (fun u v => (normalNode4634).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4634).moment H = injectiveMoment H reductionPivot8274 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4634).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8274 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8274 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8274 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection221, oldProjection216, oldProjection214, oldProjection213] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8274 (0 : Fin 4)) = canonicalInput10925.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection221 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection221 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10925 hH))).trans (oldProjectionSound221 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8274 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node216⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection216 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8274 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8274 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node213⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection213 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8274 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4634).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8274 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4634).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8274 (j : Fin 4)))
      2 96 96 2 ![48, 48, 48, 1] ![2, 2, 2, 96] reductionProjection8274 ![oldProjection221, oldProjection216, oldProjection214, oldProjection213]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8275 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 9), (42, -16), (83, 48), (86, -16), (91, -32), (94, 9), (105, -16), (106, -48), (243, -128), (244, -64), (700, -48), (701, -16), (1039, 48), (1044, 48), (1060, 96), (1225, -64), (1251, -4)]

def reductionPivot8275 : Matrix (Fin 6) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, 3, -3], ![1, -4, 3], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound8275 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4597).moment H =
      Integer.Sparse.eval reductionProjection8275 (momentVector H) := by
  have heq : reductionPivot8275 = (fun u v => (normalNode4597).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4597).moment H = injectiveMoment H reductionPivot8275 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4597).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot8275 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8275 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 12, 48, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8275 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection442, reductionProjection8273, oldProjection636, reductionProjection8274, reductionProjection8274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8275 (0 : Fin 5)) = (normalNode238).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection442 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8275 (1 : Fin 5)) = (normalNode4608).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8273 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8275 (2 : Fin 5)) = canonicalInput9312.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection636 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9312 hH))).trans (oldProjectionSound636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8275 (3 : Fin 5)) = canonicalInput9314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8274 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9314 hH))).trans (reductionSound8274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8275 (4 : Fin 5)) = canonicalInput9315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8274 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8275 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9315 hH))).trans (reductionSound8274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4597).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8275 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4597).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8275 (j : Fin 5)))
      1 96 96 1 ![96, 12, 48, 96, 96] ![1, 8, 2, 1, 1] reductionProjection8275 ![reductionProjection442, reductionProjection8273, oldProjection636, reductionProjection8274, reductionProjection8274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8276 : Integer.Sparse (Fin 1613) := [(84, -48), (94, -3), (243, 16), (700, 16), (1040, -48), (1052, -48), (1251, 1)]

def reductionPivot8276 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 1, 0], ![-2, 0, 2], ![0, 3, -3], ![1, -3, 2], ![2, -1, -1]]

theorem reductionSound8276 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4598).moment H =
      Integer.Sparse.eval reductionProjection8276 (momentVector H) := by
  have heq : reductionPivot8276 = (fun u v => (normalNode4598).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4598).moment H = injectiveMoment H reductionPivot8276 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4598).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot8276 0 = Pi.single (1 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8276 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8276 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection146, oldProjection191, oldProjection198, oldProjection214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8276 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code84).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection146 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8276 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node191⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8276 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4143 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4143 hH))).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8276 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node214⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection214 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8276 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4598).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8276 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4598).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8276 (j : Fin 4)))
      2 96 96 2 ![1, 1, 1, 48] ![96, 96, 96, 2] reductionProjection8276 ![reductionProjection146, oldProjection191, oldProjection198, oldProjection214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8277 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (76, 480), (94, -55), (231, 240), (241, -240), (243, -160), (697, 480), (698, -400), (1035, -480), (1052, 240), (1226, -160), (1250, -60), (1251, 35), (1323, 480)]

def reductionPivot8277 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![-1, 2, -1], ![0, -2, 2], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound8277 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4600).moment H =
      Integer.Sparse.eval reductionProjection8277 (momentVector H) := by
  have heq : reductionPivot8277 = (fun u v => (normalNode4600).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4600).moment H = injectiveMoment H reductionPivot8277 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4600).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot8277 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8277 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 480, 6, 1, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8277 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3938, oldProjection645, reductionProjection4996, reductionProjection8266, oldProjection533] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8277 (0 : Fin 5)) = canonicalInput18623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3938 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18623 hH))).trans (reductionSound3938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8277 (1 : Fin 5)) = canonicalInput9306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection645 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection645 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9306 hH))).trans (oldProjectionSound645 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8277 (2 : Fin 5)) = (normalNode4603).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4996 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound4996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8277 (3 : Fin 5)) = canonicalInput9270.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9270 hH))).trans (reductionSound8266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8277 (4 : Fin 5)) = canonicalInput9269.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection533 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8277 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection533 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9269 hH))).trans (oldProjectionSound533 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4600).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8277 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4600).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8277 (j : Fin 5)))
      1 480 480 1 ![480, 480, 6, 1, 96] ![1, 1, 80, 480, 5] reductionProjection8277 ![reductionProjection3938, oldProjection645, reductionProjection4996, reductionProjection8266, oldProjection533]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8278 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 120), (81, 120), (90, -40), (94, -15), (231, 120), (243, -40), (682, 120), (683, 120), (698, -120), (700, -40), (704, -40), (1037, -240), (1221, 120), (1226, -80), (1227, -40), (1321, 120), (1323, 120), (1389, 120)]

def reductionPivot8278 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![-1, 2, -1], ![1, -2, 1], ![1, -1, 0], ![1, 2, -3]]

theorem reductionSound8278 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode4601).moment H =
      Integer.Sparse.eval reductionProjection8278 (momentVector H) := by
  have heq : reductionPivot8278 = (fun u v => (normalNode4601).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4601).moment H = injectiveMoment H reductionPivot8278 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4601).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8278 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8278 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![48, 480, 6, 1, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8278 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection538, oldProjection366, reductionProjection4996, reductionProjection5103, oldProjection626] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8278 (0 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node538⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection538 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection538 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound538 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8278 (1 : Fin 5)) = canonicalInput9266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection366 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9266 hH))).trans (oldProjectionSound366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8278 (2 : Fin 5)) = (normalNode4603).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4996 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4996 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound4996 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8278 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1037).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5103 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound5103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8278 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3974 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8278 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3974 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4601).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8278 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4601).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8278 (j : Fin 5)))
      1 240 480 2 ![48, 480, 6, 1, 480] ![10, 1, 80, 480, 1] reductionProjection8278 ![oldProjection538, oldProjection366, reductionProjection4996, reductionProjection5103, oldProjection626]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8279 : Integer.Sparse (Fin 1613) := [(0, 1), (72, 480), (76, 240), (81, 960), (682, 480), (697, 240), (698, -80), (1036, -480), (1040, 240), (1221, 480), (1227, -80), (1251, 15), (1389, 480)]

def reductionPivot8279 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![-1, 2, -1], ![0, 1, -1], ![1, -3, 2], ![2, -1, -1]]

theorem reductionSound8279 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4602).moment H =
      Integer.Sparse.eval reductionProjection8279 (momentVector H) := by
  have heq : reductionPivot8279 = (fun u v => (normalNode4602).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4602).moment H = injectiveMoment H reductionPivot8279 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4602).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8279 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8279 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 2, 1, 480, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8279 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection539, reductionProjection8271, reductionProjection2164, oldProjection626, oldProjection358] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8279 (0 : Fin 5)) = canonicalInput10886.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection539 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection539 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound10886 hH))).trans (oldProjectionSound539 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8279 (1 : Fin 5)) = (normalNode4606).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8271 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8271 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8271 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8279 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1036).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2164 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8279 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node626⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8279 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3969 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection358 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8279 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3969 hH))).trans (oldProjectionSound358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4602).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8279 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4602).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8279 (j : Fin 5)))
      1 480 480 1 ![2, 2, 1, 480, 2] ![240, 240, 480, 1, 240] reductionProjection8279 ![oldProjection539, reductionProjection8271, reductionProjection2164, oldProjection626, oldProjection358]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8280 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (72, 240), (79, 120), (94, -10), (229, 120), (1035, -240), (1050, 240), (1055, 120), (1058, 480), (1250, -90), (1251, 5), (1321, 240)]

def reductionPivot8280 : Matrix (Fin 6) (Fin 3) ℤ := ![![1, -1, 0], ![-2, 0, 2], ![-1, 3, -2], ![0, -2, 2], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound8280 {H : CMatrix} (hH : IsHadamard H) :
    (240 : ℝ) * (normalNode4604).moment H =
      Integer.Sparse.eval reductionProjection8280 (momentVector H) := by
  have heq : reductionPivot8280 = (fun u v => (normalNode4604).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4604).moment H = injectiveMoment H reductionPivot8280 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4604).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot8280 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8280 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![480, 480, 2, 1, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8280 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection873, oldProjection647, oldProjection627, reductionProjection8266, oldProjection357] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8280 (0 : Fin 5)) = canonicalInput18625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection873 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18625 hH))).trans (oldProjectionSound873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8280 (1 : Fin 5)) = canonicalInput9308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection647 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9308 hH))).trans (oldProjectionSound647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8280 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node627⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection627 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8280 (3 : Fin 5)) = canonicalInput9275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8266 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8266 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9275 hH))).trans (reductionSound8266 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8280 (4 : Fin 5)) = canonicalInput9274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection357 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8280 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9274 hH))).trans (oldProjectionSound357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4604).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8280 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4604).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8280 (j : Fin 5)))
      1 240 480 2 ![480, 480, 2, 1, 2] ![1, 1, 240, 480, 240] reductionProjection8280 ![oldProjection873, oldProjection647, oldProjection627, reductionProjection8266, oldProjection357]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8281 : Integer.Sparse (Fin 1613) := [(0, 3), (72, 240), (76, 240), (81, 480), (94, -25), (229, 240), (683, 240), (697, 240), (698, -240), (700, -160), (1038, -480), (1058, 240), (1059, -80), (1221, 240), (1227, -80), (1321, 240), (1323, 240), (1389, 240)]

def reductionPivot8281 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![-1, 3, -2], ![1, -2, 1], ![1, -1, 0], ![1, 1, -2]]

theorem reductionSound8281 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4605).moment H =
      Integer.Sparse.eval reductionProjection8281 (momentVector H) := by
  have heq : reductionPivot8281 = (fun u v => (normalNode4605).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4605).moment H = injectiveMoment H reductionPivot8281 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4605).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8281 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8281 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 480, 2, 1, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8281 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection375, oldProjection626, oldProjection627, reductionProjection2894, oldProjection368] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8281 (0 : Fin 5)) = (normalNode3008).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection375 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8281 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3974 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection626 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection626 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3974 hH))).trans (oldProjectionSound626 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8281 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node627⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection627 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8281 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1038).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2894 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound2894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8281 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3984 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection368 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8281 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection368 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3984 hH))).trans (oldProjectionSound368 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4605).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8281 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4605).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8281 (j : Fin 5)))
      1 480 480 1 ![2, 480, 2, 1, 480] ![240, 1, 240, 480, 1] reductionProjection8281 ![reductionProjection375, oldProjection626, oldProjection627, reductionProjection2894, oldProjection368]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8282 : Integer.Sparse (Fin 1613) := [(19, 32), (20, -1), (42, -16), (72, 48), (106, -16), (243, -48), (244, -64), (685, 48), (700, -80), (701, -80), (703, -16), (704, -64), (1039, 48), (1040, 96), (1251, -7)]

def reductionPivot8282 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![-1, 4, -3], ![1, -3, 2], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound8282 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode4607).moment H =
      Integer.Sparse.eval reductionProjection8282 (momentVector H) := by
  have heq : reductionPivot8282 = (fun u v => (normalNode4607).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4607).moment H = injectiveMoment H reductionPivot8282 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4607).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8282 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8282 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 48, 12, 96, 96] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8282 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6132, oldProjection354, reductionProjection8273, oldProjection629, oldProjection629] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8282 (0 : Fin 5)) = (normalNode3013).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6132 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8282 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw3982 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection354 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3982 hH))).trans (oldProjectionSound354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8282 (2 : Fin 5)) = (normalNode4608).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8273 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8273 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8273 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8282 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node629⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection629 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8282 (4 : Fin 5)) = canonicalInput9277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection629 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8282 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9277 hH))).trans (oldProjectionSound629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4607).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8282 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4607).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8282 (j : Fin 5)))
      1 96 96 1 ![96, 48, 12, 96, 96] ![1, 2, 8, 1, 1] reductionProjection8282 ![reductionProjection6132, oldProjection354, reductionProjection8273, oldProjection629, oldProjection629]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8283 : Integer.Sparse (Fin 1613) := [(4, -1), (20, 3), (97, -16), (106, -16)]

def reductionPivot8283 : Matrix (Fin 4) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 0, 2], ![0, -4, 4], ![1, 4, -5]]

theorem reductionSound8283 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4610).moment H =
      Integer.Sparse.eval reductionProjection8283 (momentVector H) := by
  have heq : reductionPivot8283 = (fun u v => (normalNode4610).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4610).moment H = injectiveMoment H reductionPivot8283 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4610).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot8283 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot8283 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8283 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection50, oldProjection29, reductionProjection455] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8283 (0 : Fin 3)) = canonicalInput21614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8283 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection50 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8283 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection50 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound21614 hH))).trans (oldProjectionSound50 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8283 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw4153 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8283 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection29 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8283 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection29 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4153 hH))).trans (oldProjectionSound29 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8283 (2 : Fin 3)) = canonicalInput9279.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8283 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection455 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8283 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection455 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9279 hH))).trans (reductionSound455 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode4610).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8283 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4610).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot8283 (j : Fin 3)))
      3 48 48 3 ![16, 1, 1] ![3, 48, 48] reductionProjection8283 ![oldProjection50, oldProjection29, reductionProjection455]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8284 : Integer.Sparse (Fin 1613) := [(4, 1), (20, 2), (94, 1), (97, 8), (106, 16), (244, 8), (1041, -24)]

def reductionPivot8284 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, 0, -1], ![-2, 0, 2], ![0, -4, 4], ![0, 4, -4], ![1, 0, -1]]

theorem reductionSound8284 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4609).moment H =
      Integer.Sparse.eval reductionProjection8284 (momentVector H) := by
  have heq : reductionPivot8284 = (fun u v => (normalNode4609).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4609).moment H = injectiveMoment H reductionPivot8284 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4609).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot8284 0 = Pi.single (0 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8284 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![48, 48, 48, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8284 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6635, oldProjection216, reductionProjection8283, reductionProjection6634] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8284 (0 : Fin 4)) = (normalNode10777).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6635 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8284 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4152 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection216 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection216 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4152 hH))).trans (oldProjectionSound216 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8284 (2 : Fin 4)) = canonicalInput9278.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8283 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8283 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9278 hH))).trans (reductionSound8283 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8284 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1041).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6634 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8284 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4609).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8284 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4609).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8284 (j : Fin 4)))
      2 48 48 2 ![48, 48, 48, 1] ![1, 1, 1, 48] reductionProjection8284 ![reductionProjection6635, oldProjection216, reductionProjection8283, reductionProjection6634]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8285 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 8), (20, 1), (94, 1), (96, -8), (97, -8), (105, -24), (106, -32), (243, -32), (244, -24), (687, 24), (700, -8), (701, -8), (703, -16), (1041, 24), (1044, 24), (1045, 48), (1251, -1)]

def reductionPivot8285 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-2, 0, 2], ![0, -3, 3], ![0, 4, -4], ![1, 0, -1], ![1, 0, -1]]

theorem reductionSound8285 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode4611).moment H =
      Integer.Sparse.eval reductionProjection8285 (momentVector H) := by
  have heq : reductionPivot8285 = (fun u v => (normalNode4611).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4611).moment H = injectiveMoment H reductionPivot8285 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4611).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8285 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8285 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![12, 48, 48, 24, 24] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8285 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6140, reductionProjection8284, oldProjection636, oldProjection637, oldProjection637] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8285 (0 : Fin 5)) = (normalNode3015).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6140 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound6140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8285 (1 : Fin 5)) = (normalNode4609).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8284 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8285 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node636⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection636 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8285 (3 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node637⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection637 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8285 (4 : Fin 5)) = canonicalInput9281.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection637 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8285 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound9281 hH))).trans (oldProjectionSound637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4611).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8285 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4611).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8285 (j : Fin 5)))
      1 48 48 1 ![12, 48, 48, 24, 24] ![4, 1, 1, 2, 2] reductionProjection8285 ![reductionProjection6140, reductionProjection8284, oldProjection636, oldProjection637, oldProjection637]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8286 : Integer.Sparse (Fin 1613) := [(1044, -1), (1045, -1), (1052, -1), (1217, -1)]

def reductionPivot8286 : Matrix (Fin 5) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, -3, 3], ![0, 3, -3], ![2, -1, -1]]

theorem reductionSound8286 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode4614).moment H =
      Integer.Sparse.eval reductionProjection8286 (momentVector H) := by
  have heq : reductionPivot8286 = (fun u v => (normalNode4614).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4614).moment H = injectiveMoment H reductionPivot8286 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4614).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot8286 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot8286 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8286 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection220, oldProjection198, oldProjection193, oldProjection192] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8286 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node220⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection220 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8286 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node198⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection198 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8286 (2 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node193⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection193 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection193 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound193 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8286 (3 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node192⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection192 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8286 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection192 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound192 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode4614).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8286 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4614).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot8286 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection8286 ![oldProjection220, oldProjection198, oldProjection193, oldProjection192]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection8287 : Integer.Sparse (Fin 1613) := [(0, 1), (691, 240), (698, -80), (1043, -480), (1044, 480), (1045, 240), (1050, 480), (1052, 1200), (1059, -80), (1217, 480), (1221, 480), (1251, 15)]

def reductionPivot8287 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, 1, -1], ![-2, 0, 2], ![0, -3, 3], ![0, 1, -1], ![0, 2, -2], ![2, -1, -1]]

theorem reductionSound8287 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode4612).moment H =
      Integer.Sparse.eval reductionProjection8287 (momentVector H) := by
  have heq : reductionPivot8287 = (fun u v => (normalNode4612).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode4612).moment H = injectiveMoment H reductionPivot8287 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode4612).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot8287 0 = Pi.single (1 : Fin 3) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot8287 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2, 480, 1, 2, 2] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8287 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1992, oldProjection642, reductionProjection1977, reductionProjection8286, oldProjection631] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot8287 (0 : Fin 5)) = (normalNode5592).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1992 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8287 (1 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node642⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection642 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8287 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1043).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1977 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound1977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8287 (3 : Fin 5)) = (normalNode4614).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8286 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound8286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot8287 (4 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node631⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection631 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot8287 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode4612).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8287 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode4612).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot8287 (j : Fin 5)))
      1 480 480 1 ![2, 480, 1, 2, 2] ![240, 1, 480, 240, 240] reductionProjection8287 ![reductionProjection1992, oldProjection642, reductionProjection1977, reductionProjection8286, oldProjection631]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
