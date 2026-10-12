import NoFourMUBs.Step2.SOS.Canonical111
import NoFourMUBs.Step2.SOS.Canonical126
import NoFourMUBs.Step2.SOS.Canonical146
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical171
import NoFourMUBs.Step2.SOS.Canonical174
import NoFourMUBs.Step2.SOS.Canonical180
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical280
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical333
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical349
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical382
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions073
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions089
import NoFourMUBs.Step2.SOS.Reductions090
import NoFourMUBs.Step2.SOS.Reductions148
import NoFourMUBs.Step2.SOS.Reductions150
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions169
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions188
import NoFourMUBs.Step2.SOS.Reductions206
import NoFourMUBs.Step2.SOS.Reductions217
import NoFourMUBs.Step2.SOS.Reductions218
import NoFourMUBs.Step2.SOS.Reductions239
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions261
import NoFourMUBs.Step2.SOS.Reductions274
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions282
import NoFourMUBs.Step2.SOS.Reductions284
import NoFourMUBs.Step2.SOS.Reductions285
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions293
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical158
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical163
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical242
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9408 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -8), (20, 2), (93, 24), (94, 5), (243, 16), (1044, -48), (1047, -48), (1060, -48), (1216, 48), (1217, -24), (1225, 8), (1226, 8), (1251, 3), (1275, -144)]

def reductionPivot9408 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![2, 0, 0, -1, -1], ![0, -3, 3, -1, 1], ![0, 3, -3, 1, -1]]

theorem reductionSound9408 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9565).moment H =
      Integer.Sparse.eval reductionProjection9408 (momentVector H) := by
  have heq : reductionPivot9408 = (fun u v => (normalNode9565).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9565).moment H = injectiveMoment H reductionPivot9408 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9565).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9565).entries)).symm
  have hshape : reductionPivot9408 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9408 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 288, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9408 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9401, reductionProjection9404, reductionProjection9406, reductionProjection9407] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9408 (0 : Fin 4)) = canonicalInput7166.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9401 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7166 hH))).trans (reductionSound9401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9408 (1 : Fin 4)) = canonicalInput21322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9404 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21322 hH))).trans (reductionSound9404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9408 (2 : Fin 4)) = canonicalInput21329.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9406 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9406 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21329 hH))).trans (reductionSound9406 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9408 (3 : Fin 4)) = canonicalInput21330.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9407 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9408 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9407 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21330 hH))).trans (reductionSound9407 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9565).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9408 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9565).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9408 (j : Fin 4)))
      2 288 288 2 ![1, 288, 288, 288] ![288, 1, 1, 1] reductionProjection9408 ![reductionProjection9401, reductionProjection9404, reductionProjection9406, reductionProjection9407]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9409 : Integer.Sparse (Fin 1613) := [(20, 1), (93, -6), (94, 16), (1044, 24), (1217, 24), (1251, 1)]

def reductionPivot9409 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 1, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound9409 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10949).moment H =
      Integer.Sparse.eval reductionProjection9409 (momentVector H) := by
  have heq : reductionPivot9409 = (fun u v => (normalNode10949).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10949).moment H = injectiveMoment H reductionPivot9409 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10949).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9409 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9409 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 48, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9409 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1021, oldProjection1101, oldProjection289, oldProjection289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9409 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5232 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1021 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1021 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5232 hH))).trans (oldProjectionSound1021 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9409 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7773 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1101 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1101 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7773 hH))).trans (oldProjectionSound1101 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9409 (2 : Fin 4)) = canonicalInput22586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection289 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22586 hH))).trans (oldProjectionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9409 (3 : Fin 4)) = canonicalInput22590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection289 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9409 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22590 hH))).trans (oldProjectionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10949).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9409 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10949).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9409 (j : Fin 4)))
      2 144 144 2 ![72, 72, 48, 48] ![2, 2, 3, 3] reductionProjection9409 ![oldProjection1021, oldProjection1101, oldProjection289, oldProjection289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9410 : Integer.Sparse (Fin 1613) := [(20, -3), (93, 6), (94, -12), (105, 8), (243, 48), (700, 8), (1044, -72), (1047, -24), (1060, -24), (1184, 72), (1197, 72), (1217, -72), (1225, 16), (1226, 16), (1251, -3), (1276, 72)]

def reductionPivot9410 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 1, 0, 1], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![1, 1, -2, 0, 0]]

theorem reductionSound9410 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9243).moment H =
      Integer.Sparse.eval reductionProjection9410 (momentVector H) := by
  have heq : reductionPivot9410 = (fun u v => (normalNode9243).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9243).moment H = injectiveMoment H reductionPivot9410 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9243).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9410 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9410 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9410 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2876, reductionProjection2720, oldProjection2269, reductionProjection9409] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9410 (0 : Fin 4)) = canonicalInput18788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2876 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18788 hH))).trans (reductionSound2876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9410 (1 : Fin 4)) = canonicalInput17964.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2720 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17964 hH))).trans (reductionSound2720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9410 (2 : Fin 4)) = canonicalInput17932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2269 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17932 hH))).trans (oldProjectionSound2269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9410 (3 : Fin 4)) = canonicalInput17931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9409 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9410 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17931 hH))).trans (reductionSound9409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9243).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9410 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9243).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9410 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 144] ![4, 2, 2, 2] reductionProjection9410 ![reductionProjection2876, reductionProjection2720, oldProjection2269, reductionProjection9409]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9411 : Integer.Sparse (Fin 1613) := [(20, 3), (94, -2), (105, 16), (243, 64), (700, 16), (1044, -96), (1181, -288), (1182, -288), (1184, 144), (1197, 144), (1217, -96), (1225, 16), (1226, 16), (1251, 3), (1276, 144)]

def reductionPivot9411 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![2, 0, 0, -1, -1], ![0, -3, 3, 0, 0], ![0, 3, -3, -1, 1]]

theorem reductionSound9411 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode9569).moment H =
      Integer.Sparse.eval reductionProjection9411 (momentVector H) := by
  have heq : reductionPivot9411 = (fun u v => (normalNode9569).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9569).moment H = injectiveMoment H reductionPivot9411 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9569).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9569).entries)).symm
  have hshape : reductionPivot9411 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9411 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9411 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8109, reductionProjection9034, reductionProjection9173, reductionProjection9106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9411 (0 : Fin 4)) = canonicalInput8074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8109 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8074 hH))).trans (reductionSound8109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9411 (1 : Fin 4)) = canonicalInput21545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9034 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9034 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21545 hH))).trans (reductionSound9034 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9411 (2 : Fin 4)) = canonicalInput21554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9173 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9173 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21554 hH))).trans (reductionSound9173 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9411 (3 : Fin 4)) = canonicalInput21557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9106 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9411 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21557 hH))).trans (reductionSound9106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9569).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9411 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9569).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9411 (j : Fin 4)))
      2 576 576 2 ![288, 144, 1, 1] ![2, 4, 576, 576] reductionProjection9411 ![reductionProjection8109, reductionProjection9034, reductionProjection9173, reductionProjection9106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9412 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -1), (93, -30), (94, 3), (105, -40), (243, -192), (700, -40), (1044, 312), (1045, 48), (1047, 72), (1052, 48), (1060, 72), (1181, 144), (1182, 144), (1184, -216), (1197, -216), (1216, -48), (1217, 288), (1225, -56), (1226, -56), (1251, -2), (1275, 144), (1276, -288)]

def reductionPivot9412 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-2, 1, 1, 0, 0], ![0, -1, 1, -3, 3], ![0, 0, 0, 3, -3], ![1, -1, 0, 0, 0], ![1, 0, -1, 0, 0]]

theorem reductionSound9412 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5642).moment H =
      Integer.Sparse.eval reductionProjection9412 (momentVector H) := by
  have heq : reductionPivot9412 = (fun u v => (normalNode5642).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5642).moment H = injectiveMoment H reductionPivot9412 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5642).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9412 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9412 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![576, 144, 288, 288, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9412 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9399, reductionProjection9400, reductionProjection9408, reductionProjection9410, reductionProjection9411] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9412 (0 : Fin 5)) = canonicalInput12191.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9399 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9399 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12191 hH))).trans (reductionSound9399 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9412 (1 : Fin 5)) = canonicalInput11160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9400 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11160 hH))).trans (reductionSound9400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9412 (2 : Fin 5)) = canonicalInput11156.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9408 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9408 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11156 hH))).trans (reductionSound9408 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9412 (3 : Fin 5)) = canonicalInput11155.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9410 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9410 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11155 hH))).trans (reductionSound9410 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9412 (4 : Fin 5)) = canonicalInput11154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9411 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9412 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11154 hH))).trans (reductionSound9411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5642).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9412 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5642).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9412 (j : Fin 5)))
      1 288 576 2 ![576, 144, 288, 288, 576] ![1, 4, 2, 2, 1] reductionProjection9412 ![reductionProjection9399, reductionProjection9400, reductionProjection9408, reductionProjection9410, reductionProjection9411]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9413 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 2), (1044, -32), (1184, 48), (1197, 48), (1217, -32), (1251, 1), (1276, 24)]

def reductionPivot9413 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, -1, 0, 0, 0], ![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![0, 2, -2, 0, 0]]

theorem reductionSound9413 {H : CMatrix} (hH : IsHadamard H) :
    (96 : ℝ) * (normalNode9568).moment H =
      Integer.Sparse.eval reductionProjection9413 (momentVector H) := by
  have heq : reductionPivot9413 = (fun u v => (normalNode9568).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9568).moment H = injectiveMoment H reductionPivot9413 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9568).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9413 0 = Pi.single (0 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9413 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 288, 288, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9413 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2871, reductionProjection8109, reductionProjection8109, reductionProjection2876] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9413 (0 : Fin 4)) = canonicalInput24449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2871 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2871 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24449 hH))).trans (reductionSound2871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9413 (1 : Fin 4)) = canonicalInput18804.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8109 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18804 hH))).trans (reductionSound8109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9413 (2 : Fin 4)) = canonicalInput18793.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8109 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18793 hH))).trans (reductionSound8109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9413 (3 : Fin 4)) = canonicalInput18788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2876 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9413 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18788 hH))).trans (reductionSound2876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9568).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9413 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9568).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9413 (j : Fin 4)))
      2 96 288 6 ![1, 288, 288, 72] ![288, 1, 1, 4] reductionProjection9413 ![reductionProjection2871, reductionProjection8109, reductionProjection8109, reductionProjection2876]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9414 : Integer.Sparse (Fin 1613) := [(1232, 1)]

theorem reductionSound9414 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1232).moment H =
      Integer.Sparse.eval reductionProjection9414 (momentVector H) := by
  have hc : coordinates (1232 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1232) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9414, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9415 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -2), (105, -4), (243, -16), (700, -4), (1044, 36), (1181, 36), (1182, 36), (1184, -36), (1197, -36), (1217, 36), (1225, -4), (1226, -4), (1232, -36), (1251, -1), (1276, -36)]

def reductionPivot9415 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-2, 1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 3, -3], ![1, -1, 0, 0, 0], ![1, 1, -2, 0, 0]]

theorem reductionSound9415 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode5643).moment H =
      Integer.Sparse.eval reductionProjection9415 (momentVector H) := by
  have heq : reductionPivot9415 = (fun u v => (normalNode5643).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5643).moment H = injectiveMoment H reductionPivot9415 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5643).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9415 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9415 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 576, 576, 1, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9415 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9413, reductionProjection9411, reductionProjection9411, reductionProjection9414, reductionProjection9400] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9415 (0 : Fin 5)) = canonicalInput9470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9413 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9413 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9470 hH))).trans (reductionSound9413 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9415 (1 : Fin 5)) = canonicalInput11154.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9411 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11154 hH))).trans (reductionSound9411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9415 (2 : Fin 5)) = canonicalInput11157.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9411 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11157 hH))).trans (reductionSound9411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9415 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1232).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9414 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound9414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9415 (4 : Fin 5)) = canonicalInput11160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9400 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9415 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11160 hH))).trans (reductionSound9400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5643).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9415 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5643).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9415 (j : Fin 5)))
      1 36 576 16 ![96, 576, 576, 1, 144] ![6, 1, 1, 576, 4] reductionProjection9415 ![reductionProjection9413, reductionProjection9411, reductionProjection9411, reductionProjection9414, reductionProjection9400]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9416 : Integer.Sparse (Fin 1613) := [(812, -3), (821, -1), (1232, -1)]

def reductionPivot9416 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-2, 1, 1, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, -2, 1, 0, 0], ![1, 1, -2, 0, 0]]

theorem reductionSound9416 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (normalNode5644).moment H =
      Integer.Sparse.eval reductionProjection9416 (momentVector H) := by
  have heq : reductionPivot9416 = (fun u v => (normalNode5644).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5644).moment H = injectiveMoment H reductionPivot9416 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5644).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9416 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9416 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1, 1, 1, 1, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9416 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6988, reductionProjection6994, reductionProjection9414, reductionProjection6988, reductionProjection6988] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9416 (0 : Fin 5)) = canonicalInput11530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6988 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11530 hH))).trans (reductionSound6988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9416 (1 : Fin 5)) = canonicalInput11161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6994 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6994 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11161 hH))).trans (reductionSound6994 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9416 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1232).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9414 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9414 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound9414 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9416 (3 : Fin 5)) = canonicalInput11159.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6988 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11159 hH))).trans (reductionSound6988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9416 (4 : Fin 5)) = canonicalInput11158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6988 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9416 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6988 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound11158 hH))).trans (reductionSound6988 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5644).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9416 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5644).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9416 (j : Fin 5)))
      1 1 1 1 ![1, 1, 1, 1, 1] ![1, 1, 1, 1, 1] reductionProjection9416 ![reductionProjection6988, reductionProjection6994, reductionProjection9414, reductionProjection6988, reductionProjection6988]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9417 : Integer.Sparse (Fin 1613) := [(11, 48), (19, 12), (20, -3), (42, -16), (94, -5), (229, 48), (231, 48), (243, -16), (683, 48), (701, -16), (704, -32), (1251, -2), (1321, 48), (1323, 48), (1326, -144)]

def reductionPivot9417 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 3, -2], ![0, -3, -1, 4], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound9417 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5704).moment H =
      Integer.Sparse.eval reductionProjection9417 (momentVector H) := by
  have heq : reductionPivot9417 = (fun u v => (normalNode5704).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5704).moment H = injectiveMoment H reductionPivot9417 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5704).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9417 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9417 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9417 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1504, oldProjection900, reductionProjection8340, reductionProjection8342] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9417 (0 : Fin 4)) = canonicalInput12259.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1504 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1504 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12259 hH))).trans (reductionSound1504 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9417 (1 : Fin 4)) = canonicalInput11707.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection900 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11707 hH))).trans (oldProjectionSound900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9417 (2 : Fin 4)) = canonicalInput11704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11704 hH))).trans (reductionSound8340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9417 (3 : Fin 4)) = canonicalInput11703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8342 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9417 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8342 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11703 hH))).trans (reductionSound8342 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5704).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9417 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5704).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9417 (j : Fin 4)))
      2 288 288 2 ![144, 144, 1, 9] ![2, 2, 288, 32] reductionProjection9417 ![reductionProjection1504, oldProjection900, reductionProjection8340, reductionProjection8342]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9418 : Integer.Sparse (Fin 1613) := [(293, -1), (327, -1), (328, -1), (330, -1)]

def reductionPivot9418 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound9418 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5648).moment H =
      Integer.Sparse.eval reductionProjection9418 (momentVector H) := by
  have heq : reductionPivot9418 = (fun u v => (normalNode5648).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5648).moment H = injectiveMoment H reductionPivot9418 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5648).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9418 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9418 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9418 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection467, oldProjection465, oldProjection453, reductionProjection2638] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9418 (0 : Fin 4)) = canonicalInput12225.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12225 hH))).trans (oldProjectionSound467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9418 (1 : Fin 4)) = canonicalInput11589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection465 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection465 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11589 hH))).trans (oldProjectionSound465 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9418 (2 : Fin 4)) = canonicalInput11577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection453 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection453 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11577 hH))).trans (oldProjectionSound453 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9418 (3 : Fin 4)) = canonicalInput11575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2638 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9418 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11575 hH))).trans (reductionSound2638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5648).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9418 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5648).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9418 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9418 ![oldProjection467, oldProjection465, oldProjection453, reductionProjection2638]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9419 : Integer.Sparse (Fin 1613) := [(0, -3), (11, -240), (19, -180), (20, 30), (38, -240), (42, 80), (72, -240), (81, -720), (94, 125), (229, -480), (231, -240), (241, 80), (243, 240), (247, 80), (293, 2160), (327, 720), (328, 720), (330, 720), (682, -480), (683, -240), (697, -240), (698, 320), (700, 400), (701, 160), (704, 560), (1040, -480), (1251, 130), (1270, 720), (1321, -480), (1323, -240), (1326, 720), (1389, -480)]

def reductionPivot9419 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 2, -1], ![0, -3, -1, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 1, -1, -1]]

theorem reductionSound9419 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5645).moment H =
      Integer.Sparse.eval reductionProjection9419 (momentVector H) := by
  have heq : reductionPivot9419 = (fun u v => (normalNode5645).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5645).moment H = injectiveMoment H reductionPivot9419 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5645).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9419 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9419 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9419 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9417, reductionProjection5733, oldProjection2349, reductionProjection9418, reductionProjection6019] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9419 (0 : Fin 5)) = (normalNode5704).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9417 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9417 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9417 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9419 (1 : Fin 5)) = canonicalInput11582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5733 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11582 hH))).trans (reductionSound5733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9419 (2 : Fin 5)) = canonicalInput11571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2349 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2349 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11571 hH))).trans (oldProjectionSound2349 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9419 (3 : Fin 5)) = (normalNode5648).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9418 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9419 (4 : Fin 5)) = canonicalInput11569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6019 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9419 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11569 hH))).trans (reductionSound6019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5645).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9419 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5645).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9419 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 2, 288] ![5, 1, 1, 720, 5] reductionProjection9419 ![reductionProjection9417, reductionProjection5733, oldProjection2349, reductionProjection9418, reductionProjection6019]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9420 : Integer.Sparse (Fin 1613) := [(38, 6), (328, -9), (495, -9), (700, -1), (701, -1), (704, -1), (777, -9)]

def reductionPivot9420 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-2, 1, 2, -1], ![0, -3, -1, 4], ![0, 2, -2, 0], ![1, 0, 1, -2]]

theorem reductionSound9420 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode5649).moment H =
      Integer.Sparse.eval reductionProjection9420 (momentVector H) := by
  have heq : reductionPivot9420 = (fun u v => (normalNode5649).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5649).moment H = injectiveMoment H reductionPivot9420 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5649).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9420 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9420 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9420 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1087, reductionProjection5418, reductionProjection2638, reductionProjection4750] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9420 (0 : Fin 4)) = canonicalInput23391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1087 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23391 hH))).trans (oldProjectionSound1087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9420 (1 : Fin 4)) = canonicalInput11680.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5418 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11680 hH))).trans (reductionSound5418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9420 (2 : Fin 4)) = canonicalInput11578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2638 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11578 hH))).trans (reductionSound2638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9420 (3 : Fin 4)) = canonicalInput11572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4750 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9420 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11572 hH))).trans (reductionSound4750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5649).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9420 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5649).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9420 (j : Fin 4)))
      2 18 18 2 ![9, 1, 1, 1] ![2, 18, 18, 18] reductionProjection9420 ![oldProjection1087, reductionProjection5418, reductionProjection2638, reductionProjection4750]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9421 : Integer.Sparse (Fin 1613) := [(19, -48), (20, 4), (38, -288), (42, 16), (94, 23), (241, 64), (243, 32), (247, 64), (293, 288), (327, 288), (328, 288), (330, 288), (495, 144), (682, -48), (697, -192), (698, 48), (700, 96), (701, 80), (704, 144), (777, 144), (1040, -48), (1251, 23)]

def reductionPivot9421 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, -3, -1, 4], ![0, 1, -1, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound9421 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5646).moment H =
      Integer.Sparse.eval reductionProjection9421 (momentVector H) := by
  have heq : reductionPivot9421 = (fun u v => (normalNode5646).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5646).moment H = injectiveMoment H reductionPivot9421 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5646).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9421 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9421 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 18, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9421 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8782, reductionProjection6616, reductionProjection9420, reductionProjection9418, reductionProjection6019] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9421 (0 : Fin 5)) = canonicalInput12223.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8782 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8782 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12223 hH))).trans (reductionSound8782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9421 (1 : Fin 5)) = canonicalInput11586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6616 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11586 hH))).trans (reductionSound6616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9421 (2 : Fin 5)) = (normalNode5649).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9420 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9420 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9420 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9421 (3 : Fin 5)) = canonicalInput11570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9418 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11570 hH))).trans (reductionSound9418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9421 (4 : Fin 5)) = canonicalInput11569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6019 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9421 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11569 hH))).trans (reductionSound6019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5646).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9421 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5646).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9421 (j : Fin 5)))
      1 288 288 1 ![288, 288, 18, 2, 288] ![1, 1, 16, 144, 1] reductionProjection9421 ![reductionProjection8782, reductionProjection6616, reductionProjection9420, reductionProjection9418, reductionProjection6019]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9422 : Integer.Sparse (Fin 1613) := [(1233, 1)]

theorem reductionSound9422 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1233).moment H =
      Integer.Sparse.eval reductionProjection9422 (momentVector H) := by
  have hc : coordinates (1233 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1233) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9422, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9423 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -3), (37, 48), (38, 48), (45, 96), (94, -5), (247, -16), (700, -16), (701, -16), (704, -32), (1040, 48), (1233, -144), (1251, -6)]

def reductionPivot9423 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, -3, -1, 4], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9423 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5647).moment H =
      Integer.Sparse.eval reductionProjection9423 (momentVector H) := by
  have heq : reductionPivot9423 = (fun u v => (normalNode5647).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5647).moment H = injectiveMoment H reductionPivot9423 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5647).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9423 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9423 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9423 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1157, reductionProjection2339, reductionProjection9422, oldProjection1154] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9423 (0 : Fin 4)) = canonicalInput12224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1157 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12224 hH))).trans (oldProjectionSound1157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9423 (1 : Fin 4)) = canonicalInput11587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2339 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11587 hH))).trans (reductionSound2339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9423 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1233).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9423 (3 : Fin 4)) = canonicalInput11573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1154 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9423 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11573 hH))).trans (oldProjectionSound1154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5647).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9423 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5647).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9423 (j : Fin 4)))
      2 288 288 2 ![144, 72, 1, 72] ![2, 4, 288, 4] reductionProjection9423 ![oldProjection1157, reductionProjection2339, reductionProjection9422, oldProjection1154]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9424 : Integer.Sparse (Fin 1613) := [(1244, 1)]

theorem reductionSound9424 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1244).moment H =
      Integer.Sparse.eval reductionProjection9424 (momentVector H) := by
  have hc : coordinates (1244 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1244) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9424, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9425 : Integer.Sparse (Fin 1613) := [(94, 3), (243, -32), (698, -16), (700, -16), (792, -144), (1219, 48), (1226, -16), (1234, -144), (1244, -144), (1251, -1)]

def reductionPivot9425 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -3, 0, 3], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound9425 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5651).moment H =
      Integer.Sparse.eval reductionProjection9425 (momentVector H) := by
  have heq : reductionPivot9425 = (fun u v => (normalNode5651).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5651).moment H = injectiveMoment H reductionPivot9425 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5651).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9425 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9425 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9425 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection980, reductionProjection9424, reductionProjection157, reductionProjection6970] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9425 (0 : Fin 4)) = canonicalInput23343.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection980 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23343 hH))).trans (oldProjectionSound980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9425 (1 : Fin 4)) = canonicalInput11679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9424 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11679 hH))).trans (reductionSound9424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9425 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1234).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection157 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9425 (3 : Fin 4)) = canonicalInput11580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6970 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9425 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11580 hH))).trans (reductionSound6970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5651).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9425 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5651).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9425 (j : Fin 4)))
      2 288 288 2 ![144, 1, 1, 1] ![2, 288, 288, 288] reductionProjection9425 ![oldProjection980, reductionProjection9424, reductionProjection157, reductionProjection6970]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9426 : Integer.Sparse (Fin 1613) := [(799, -1), (1183, -1), (1187, -1), (1234, -1)]

def reductionPivot9426 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, -3, 0, 3], ![1, 0, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound9426 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5652).moment H =
      Integer.Sparse.eval reductionProjection9426 (momentVector H) := by
  have heq : reductionPivot9426 = (fun u v => (normalNode5652).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5652).moment H = injectiveMoment H reductionPivot9426 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5652).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9426 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9426 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9426 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection158, reductionProjection182, reductionProjection157, reductionProjection191] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9426 (0 : Fin 4)) = canonicalInput12226.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection158 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12226 hH))).trans (reductionSound158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9426 (1 : Fin 4)) = canonicalInput11593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11593 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9426 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1234).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection157 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9426 (3 : Fin 4)) = canonicalInput11583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection191 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9426 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection191 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11583 hH))).trans (reductionSound191 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5652).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9426 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5652).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9426 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9426 ![reductionProjection158, reductionProjection182, reductionProjection157, reductionProjection191]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9427 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -80), (20, 15), (37, -240), (38, -240), (45, -480), (72, -240), (81, -240), (94, 5), (243, 400), (247, 80), (682, -240), (697, -240), (698, 320), (700, 400), (701, 80), (704, 240), (761, 720), (792, 720), (799, 720), (1040, -240), (1183, 720), (1187, 720), (1198, 720), (1219, -480), (1226, 160), (1233, 720), (1234, 1440), (1244, 720), (1251, 45)]

def reductionPivot9427 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 2, -1], ![0, -3, 0, 3], ![0, 1, -1, 0], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9427 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5650).moment H =
      Integer.Sparse.eval reductionProjection9427 (momentVector H) := by
  have heq : reductionPivot9427 = (fun u v => (normalNode5650).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5650).moment H = injectiveMoment H reductionPivot9427 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5650).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9427 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9427 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 2, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9427 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4978, reductionProjection9423, reductionProjection9425, reductionProjection9426, reductionProjection2898] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9427 (0 : Fin 5)) = canonicalInput10978.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4978 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10978 hH))).trans (reductionSound4978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9427 (1 : Fin 5)) = (normalNode5647).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9423 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9423 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9423 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9427 (2 : Fin 5)) = (normalNode5651).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9425 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9425 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9425 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9427 (3 : Fin 5)) = (normalNode5652).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9426 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9426 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9426 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9427 (4 : Fin 5)) = canonicalInput11581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2898 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9427 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11581 hH))).trans (reductionSound2898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5650).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9427 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5650).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9427 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 2, 720] ![1, 5, 5, 720, 2] reductionProjection9427 ![reductionProjection4978, reductionProjection9423, reductionProjection9425, reductionProjection9426, reductionProjection2898]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9428 : Integer.Sparse (Fin 1613) := [(761, -1), (799, -1), (801, -1), (1233, -1)]

def reductionPivot9428 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 2, -1], ![0, -2, -1, 3], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound9428 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5653).moment H =
      Integer.Sparse.eval reductionProjection9428 (momentVector H) := by
  have heq : reductionPivot9428 = (fun u v => (normalNode5653).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5653).moment H = injectiveMoment H reductionPivot9428 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5653).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9428 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9428 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9428 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection178, reductionProjection9422, reductionProjection182, oldProjection598] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9428 (0 : Fin 4)) = canonicalInput9364.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9364 hH))).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9428 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1233).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9428 (2 : Fin 4)) = canonicalInput11593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11593 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9428 (3 : Fin 4)) = canonicalInput11594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection598 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9428 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11594 hH))).trans (oldProjectionSound598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5653).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9428 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5653).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9428 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9428 ![reductionProjection178, reductionProjection9422, reductionProjection182, oldProjection598]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9429 : Integer.Sparse (Fin 1613) := [(94, -1), (682, 24), (697, 24), (698, -8), (704, -8), (777, -72), (799, -72), (1244, -72), (1251, -1)]

def reductionPivot9429 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, 2, -1], ![0, -2, -1, 3], ![0, 1, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound9429 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5654).moment H =
      Integer.Sparse.eval reductionProjection9429 (momentVector H) := by
  have heq : reductionPivot9429 = (fun u v => (normalNode5654).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5654).moment H = injectiveMoment H reductionPivot9429 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5654).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9429 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9429 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9429 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection947, reductionProjection9424, reductionProjection182, reductionProjection5418] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9429 (0 : Fin 4)) = canonicalInput22391.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22391 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9429 (1 : Fin 4)) = canonicalInput11679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9424 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11679 hH))).trans (reductionSound9424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9429 (2 : Fin 4)) = canonicalInput11593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11593 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9429 (3 : Fin 4)) = canonicalInput11590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5418 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9429 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11590 hH))).trans (reductionSound5418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5654).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9429 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5654).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9429 (j : Fin 4)))
      2 144 144 2 ![72, 1, 1, 1] ![2, 144, 144, 144] reductionProjection9429 ![oldProjection947, reductionProjection9424, reductionProjection182, reductionProjection5418]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9430 : Integer.Sparse (Fin 1613) := [(799, -1), (1237, -2), (1260, -1)]

def reductionPivot9430 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, -2, -1, 3], ![1, -1, -1, 1], ![1, 1, 1, -3]]

theorem reductionSound9430 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5655).moment H =
      Integer.Sparse.eval reductionProjection9430 (momentVector H) := by
  have heq : reductionPivot9430 = (fun u v => (normalNode5655).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5655).moment H = injectiveMoment H reductionPivot9430 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5655).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9430 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9430 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9430 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection184, reductionProjection184, reductionProjection182, reductionProjection8366] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9430 (0 : Fin 4)) = canonicalInput12229.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12229 hH))).trans (reductionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9430 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1237).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection184 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection184 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound184 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9430 (2 : Fin 4)) = canonicalInput11593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection182 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection182 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11593 hH))).trans (reductionSound182 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9430 (3 : Fin 4)) = canonicalInput11591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8366 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9430 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11591 hH))).trans (reductionSound8366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5655).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9430 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5655).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9430 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9430 ![reductionProjection184, reductionProjection184, reductionProjection182, reductionProjection8366]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9431 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 10), (94, -10), (695, 120), (697, 240), (698, -40), (700, -40), (1059, -40), (1126, -360), (1242, -360), (1250, -30), (1251, 5)]

def reductionPivot9431 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, 0, -2, 2], ![1, 1, 1, -3]]

theorem reductionSound9431 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5678).moment H =
      Integer.Sparse.eval reductionProjection9431 (momentVector H) := by
  have heq : reductionPivot9431 = (fun u v => (normalNode5678).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5678).moment H = injectiveMoment H reductionPivot9431 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5678).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9431 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9431 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9431 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection973, oldProjection682, reductionProjection709, oldProjection1256] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9431 (0 : Fin 4)) = canonicalInput22397.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection973 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection973 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22397 hH))).trans (oldProjectionSound973 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9431 (1 : Fin 4)) = canonicalInput11684.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11684 hH))).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9431 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1242).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9431 (3 : Fin 4)) = canonicalInput11620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1256 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9431 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11620 hH))).trans (oldProjectionSound1256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5678).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9431 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5678).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9431 (j : Fin 4)))
      2 720 720 2 ![360, 1, 1, 9] ![2, 720, 720, 80] reductionProjection9431 ![oldProjection973, oldProjection682, reductionProjection709, oldProjection1256]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9432 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (247, -40), (486, -180), (1242, -360), (1251, -10), (1388, 60)]

def reductionPivot9432 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 1, 2, -1], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 1, 1, -3]]

theorem reductionSound9432 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5673).moment H =
      Integer.Sparse.eval reductionProjection9432 (momentVector H) := by
  have heq : reductionPivot9432 = (fun u v => (normalNode5673).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5673).moment H = injectiveMoment H reductionPivot9432 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5673).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9432 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9432 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9432 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection987, reductionProjection709, reductionProjection709, oldProjection489] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9432 (0 : Fin 4)) = canonicalInput23347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection987 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection987 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23347 hH))).trans (oldProjectionSound987 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9432 (1 : Fin 4)) = canonicalInput11686.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11686 hH))).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9432 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1242).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9432 (3 : Fin 4)) = canonicalInput11616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection489 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9432 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11616 hH))).trans (oldProjectionSound489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5673).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9432 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5673).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9432 (j : Fin 4)))
      2 360 360 2 ![180, 1, 1, 1] ![2, 360, 360, 360] reductionProjection9432 ![oldProjection987, reductionProjection709, reductionProjection709, oldProjection489]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9433 : Integer.Sparse (Fin 1613) := [(1235, 1)]

theorem reductionSound9433 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1235).moment H =
      Integer.Sparse.eval reductionProjection9433 (momentVector H) := by
  have hc : coordinates (1235 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1235) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9433, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9434 : Integer.Sparse (Fin 1613) := [(0, -8), (19, -60), (94, 65), (160, 720), (241, 160), (247, 160), (462, 720), (486, 720), (695, -240), (697, -480), (698, 240), (700, 80), (913, 720), (1055, -240), (1059, 80), (1125, 720), (1126, 1440), (1235, -1440), (1242, 2160), (1250, 120), (1251, -15), (1261, 720), (1388, -240)]

def reductionPivot9434 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9434 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5656).moment H =
      Integer.Sparse.eval reductionProjection9434 (momentVector H) := by
  have heq : reductionPivot9434 = (fun u v => (normalNode5656).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5656).moment H = injectiveMoment H reductionPivot9434 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5656).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot9434 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9434 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 360, 144, 1, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9434 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9431, reductionProjection9432, reductionProjection7676, reductionProjection9433, reductionProjection8373] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9434 (0 : Fin 5)) = canonicalInput12230.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9431 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9431 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12230 hH))).trans (reductionSound9431 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9434 (1 : Fin 5)) = (normalNode5673).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9432 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9434 (2 : Fin 5)) = canonicalInput11597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7676 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11597 hH))).trans (reductionSound7676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9434 (3 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1235).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9433 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9433 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9433 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9434 (4 : Fin 5)) = canonicalInput11596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8373 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9434 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11596 hH))).trans (reductionSound8373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5656).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9434 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5656).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9434 (j : Fin 5)))
      1 1440 1440 1 ![720, 360, 144, 1, 1440] ![2, 4, 10, 1440, 1] reductionProjection9434 ![reductionProjection9431, reductionProjection9432, reductionProjection7676, reductionProjection9433, reductionProjection8373]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9435 : Integer.Sparse (Fin 1613) := [(763, -1), (913, -1), (919, -1), (1234, -1)]

def reductionPivot9435 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 2, -1], ![0, -2, 0, 2], ![1, 1, -3, 1], ![1, 1, 1, -3]]

theorem reductionSound9435 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5657).moment H =
      Integer.Sparse.eval reductionProjection9435 (momentVector H) := by
  have heq : reductionPivot9435 = (fun u v => (normalNode5657).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5657).moment H = injectiveMoment H reductionPivot9435 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5657).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9435 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9435 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9435 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection197, reductionProjection157, reductionProjection202, oldProjection612] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9435 (0 : Fin 4)) = canonicalInput9372.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection197 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9372 hH))).trans (reductionSound197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9435 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1234).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection157 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9435 (2 : Fin 4)) = canonicalInput11603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11603 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9435 (3 : Fin 4)) = canonicalInput11604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9435 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11604 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5657).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9435 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5657).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9435 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9435 ![reductionProjection197, reductionProjection157, reductionProjection202, oldProjection612]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9436 : Integer.Sparse (Fin 1613) := [(1236, 1)]

theorem reductionSound9436 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1236).moment H =
      Integer.Sparse.eval reductionProjection9436 (momentVector H) := by
  have hc : coordinates (1236 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1236) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9436, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9437 : Integer.Sparse (Fin 1613) := [(913, -1), (1125, -1), (1126, -1), (1242, -1)]

def reductionPivot9437 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, -2, 0, 2], ![1, -1, -2, 2], ![1, 1, 1, -3]]

theorem reductionSound9437 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5660).moment H =
      Integer.Sparse.eval reductionProjection9437 (momentVector H) := by
  have heq : reductionPivot9437 = (fun u v => (normalNode5660).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5660).moment H = injectiveMoment H reductionPivot9437 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5660).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9437 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9437 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9437 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection682, reductionProjection709, reductionProjection202, reductionProjection1030] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9437 (0 : Fin 4)) = canonicalInput12231.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12231 hH))).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9437 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1242).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9437 (2 : Fin 4)) = canonicalInput11603.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11603 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9437 (3 : Fin 4)) = canonicalInput11601.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1030 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9437 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1030 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11601 hH))).trans (reductionSound1030 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5660).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9437 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5660).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9437 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9437 ![oldProjection682, reductionProjection709, reductionProjection202, reductionProjection1030]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9438 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 1), (426, 144), (434, 144), (553, 144), (668, 144), (669, 144), (697, -48), (698, 64), (700, 16), (799, 144), (913, 144), (1058, -96), (1059, 48), (1125, 144), (1126, 144), (1226, 16), (1236, -288), (1237, 288), (1242, 144), (1251, -18), (1260, 144)]

def reductionPivot9438 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 2, -1], ![0, -2, 0, 2], ![0, 1, -1, 0], ![1, -1, -1, 1], ![1, 1, 1, -3]]

theorem reductionSound9438 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5658).moment H =
      Integer.Sparse.eval reductionProjection9438 (momentVector H) := by
  have heq : reductionPivot9438 = (fun u v => (normalNode5658).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5658).moment H = injectiveMoment H reductionPivot9438 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5658).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9438 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9438 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 1, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9438 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9142, reductionProjection9430, reductionProjection9436, reductionProjection9437, reductionProjection4800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9438 (0 : Fin 5)) = canonicalInput10996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9142 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9142 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound10996 hH))).trans (reductionSound9142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9438 (1 : Fin 5)) = (normalNode5655).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9430 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9430 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9430 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9438 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code1236).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9436 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9436 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9436 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9438 (3 : Fin 5)) = (normalNode5660).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9437 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9437 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9437 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9438 (4 : Fin 5)) = canonicalInput11600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4800 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9438 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11600 hH))).trans (reductionSound4800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5658).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9438 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5658).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9438 (j : Fin 5)))
      1 288 1440 5 ![1440, 2, 1, 2, 1440] ![1, 720, 1440, 720, 1] reductionProjection9438 ![reductionProjection9142, reductionProjection9430, reductionProjection9436, reductionProjection9437, reductionProjection4800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9439 : Integer.Sparse (Fin 1613) := [(0, -7), (3, -20), (19, -300), (20, 40), (45, -480), (93, 60), (94, 150), (108, 80), (229, -480), (240, -240), (242, -240), (243, 320), (244, 160), (247, 80), (330, 720), (332, 720), (694, -240), (697, -240), (698, 720), (700, 1040), (701, 320), (704, 880), (1058, -240), (1059, 240), (1060, -240), (1250, 60), (1251, 125), (1321, -240)]

def reductionPivot9439 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 1, 2, -1], ![0, -1, -3, 4], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound9439 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5662).moment H =
      Integer.Sparse.eval reductionProjection9439 (momentVector H) := by
  have heq : reductionPivot9439 = (fun u v => (normalNode5662).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5662).moment H = injectiveMoment H reductionPivot9439 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5662).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9439 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9439 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9439 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2324, oldProjection1631, oldProjection2322, reductionProjection8916, reductionProjection8921] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9439 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2324⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2324 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2324 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2324 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9439 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5061 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1631 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5061 hH))).trans (oldProjectionSound1631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9439 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2322⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2322 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2322 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2322 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9439 (3 : Fin 5)) = (normalNode5664).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8916 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8916 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8916 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9439 (4 : Fin 5)) = (normalNode5663).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8921 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9439 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5662).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9439 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5662).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9439 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 1440, 288] ![5, 5, 1, 1, 5] reductionProjection9439 ![oldProjection2324, oldProjection1631, oldProjection2322, reductionProjection8916, reductionProjection8921]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
