import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical028
import NoFourMUBs.Step2.SOS.Canonical085
import NoFourMUBs.Step2.SOS.Canonical091
import NoFourMUBs.Step2.SOS.Canonical126
import NoFourMUBs.Step2.SOS.Canonical147
import NoFourMUBs.Step2.SOS.Canonical148
import NoFourMUBs.Step2.SOS.Canonical149
import NoFourMUBs.Step2.SOS.Canonical173
import NoFourMUBs.Step2.SOS.Canonical181
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical183
import NoFourMUBs.Step2.SOS.Canonical184
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical192
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical292
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical365
import NoFourMUBs.Step2.SOS.Canonical496
import NoFourMUBs.Step2.SOS.Canonical529
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes022
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections005
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions000
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions022
import NoFourMUBs.Step2.SOS.Reductions024
import NoFourMUBs.Step2.SOS.Reductions025
import NoFourMUBs.Step2.SOS.Reductions027
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions033
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions044
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions052
import NoFourMUBs.Step2.SOS.Reductions053
import NoFourMUBs.Step2.SOS.Reductions129
import NoFourMUBs.Step2.SOS.Reductions138
import NoFourMUBs.Step2.SOS.Reductions141
import NoFourMUBs.Step2.SOS.Reductions151
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions158
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions187
import NoFourMUBs.Step2.SOS.Reductions240
import NoFourMUBs.Step2.SOS.Reductions260
import NoFourMUBs.Step2.SOS.Reductions261
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions276
import NoFourMUBs.Step2.SOS.Reductions288
import NoFourMUBs.Step2.SOS.Reductions294
import NoFourMUBs.Step2.SOS.Reductions295
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical114
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical158
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical159
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical215
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical317
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9472 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -60), (20, 15), (45, -240), (94, 70), (242, -240), (243, 320), (244, 80), (330, 720), (666, 720), (697, -480), (698, 960), (700, 960), (701, 80), (704, 480), (803, 1440), (1059, 240), (1187, 720), (1188, 720), (1251, 65)]

def reductionPivot9472 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 2, -1], ![0, 0, -3, 3], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound9472 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5691).moment H =
      Integer.Sparse.eval reductionProjection9472 (momentVector H) := by
  have heq : reductionPivot9472 = (fun u v => (normalNode5691).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5691).moment H = injectiveMoment H reductionPivot9472 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5691).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9472 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9472 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9472 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2601, oldProjection2321, reductionProjection8852, reductionProjection9240, oldProjection2848] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9472 (0 : Fin 5)) = canonicalInput9418.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2601 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9418 hH))).trans (oldProjectionSound2601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9472 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2321⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2321 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9472 (2 : Fin 5)) = canonicalInput11642.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8852 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11642 hH))).trans (reductionSound8852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9472 (3 : Fin 5)) = canonicalInput11643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9240 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9240 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11643 hH))).trans (reductionSound9240 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9472 (4 : Fin 5)) = canonicalInput11644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2848 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9472 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11644 hH))).trans (oldProjectionSound2848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5691).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9472 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5691).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9472 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 2, 1440] ![1, 1, 1, 720, 1] reductionProjection9472 ![oldProjection2601, oldProjection2321, reductionProjection8852, reductionProjection9240, oldProjection2848]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9473 : Integer.Sparse (Fin 1613) := [(34, -1), (237, -1), (694, -1)]

def reductionPivot9473 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 0, 1, 1], ![-1, -2, 2, 1], ![4, 2, -3, -3]]

theorem reductionSound9473 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode6467).moment H =
      Integer.Sparse.eval reductionProjection9473 (momentVector H) := by
  have heq : reductionPivot9473 = (fun u v => (normalNode6467).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6467).moment H = injectiveMoment H reductionPivot9473 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6467).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6467).entries)).symm
  have hshape : reductionPivot9473 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9473 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9473 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection236, reductionProjection1718, oldProjection167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9473 (0 : Fin 3)) = canonicalInput485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9473 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection236 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9473 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound485 hH))).trans (reductionSound236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9473 (1 : Fin 3)) = canonicalInput8126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9473 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9473 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound8126 hH))).trans (reductionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9473 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw3649 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9473 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9473 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3649 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6467).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9473 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6467).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9473 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9473 ![reductionProjection236, reductionProjection1718, oldProjection167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9474 : Integer.Sparse (Fin 1613) := [(0, 1), (34, 240), (93, -60), (94, -5), (237, 240), (690, 480), (694, 960), (1047, 240), (1055, 240), (1250, -120), (1251, 10)]

def reductionPivot9474 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 2, -1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -3, -2, 3]]

theorem reductionSound9474 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5703).moment H =
      Integer.Sparse.eval reductionProjection9474 (momentVector H) := by
  have heq : reductionPivot9474 = (fun u v => (normalNode5703).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5703).moment H = injectiveMoment H reductionPivot9474 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5703).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9474 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9474 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 3, 720, 3] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9474 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection790, reductionProjection4525, oldProjection955, reductionProjection9473] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9474 (0 : Fin 4)) = canonicalInput11131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection790 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection790 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11131 hH))).trans (oldProjectionSound790 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9474 (1 : Fin 4)) = canonicalInput11663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4525 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4525 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11663 hH))).trans (reductionSound4525 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9474 (2 : Fin 4)) = canonicalInput11667.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection955 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection955 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11667 hH))).trans (oldProjectionSound955 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9474 (3 : Fin 4)) = canonicalInput11668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9473 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9474 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9473 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11668 hH))).trans (reductionSound9473 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5703).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9474 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5703).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9474 (j : Fin 4)))
      2 1440 1440 2 ![3, 3, 720, 3] ![480, 480, 2, 480] reductionProjection9474 ![oldProjection790, reductionProjection4525, oldProjection955, reductionProjection9473]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9475 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -40), (34, -240), (93, 120), (94, 55), (237, -240), (241, 160), (690, -480), (691, -240), (694, -1200), (698, 240), (1047, -240), (1050, -480), (1055, -720), (1058, -240), (1114, 720), (1227, 80), (1241, 720), (1250, 180), (1251, -30), (1256, 720)]

def reductionPivot9475 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 2, -1], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 1, -2], ![2, -2, -2, 2]]

theorem reductionSound9475 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5694).moment H =
      Integer.Sparse.eval reductionProjection9475 (momentVector H) := by
  have heq : reductionPivot9475 = (fun u v => (normalNode5694).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5694).moment H = injectiveMoment H reductionPivot9475 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5694).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9475 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9475 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9475 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2035, reductionProjection9462, oldProjection1370, oldProjection2222, reductionProjection9474] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9475 (0 : Fin 5)) = canonicalInput9431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2035 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2035 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9431 hH))).trans (oldProjectionSound2035 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9475 (1 : Fin 5)) = (normalNode5685).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9462 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9462 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9462 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9475 (2 : Fin 5)) = canonicalInput11651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1370 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11651 hH))).trans (oldProjectionSound1370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9475 (3 : Fin 5)) = canonicalInput11653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2222 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11653 hH))).trans (oldProjectionSound2222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9475 (4 : Fin 5)) = (normalNode5703).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9474 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9475 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9474 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9474 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5694).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9475 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5694).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9475 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 288, 1440] ![1, 1, 2, 5, 1] reductionProjection9475 ![oldProjection2035, reductionProjection9462, oldProjection1370, oldProjection2222, reductionProjection9474]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9476 : Integer.Sparse (Fin 1613) := [(0, 1), (45, 60), (94, -5), (243, -20), (697, 60), (698, -100), (700, -20), (704, -20), (1059, -20), (1219, 60), (1226, -20), (1227, -40), (1242, -180), (1251, 10)]

def reductionPivot9476 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 2, -1], ![0, 0, -1, 1], ![1, -1, -2, 2], ![1, 1, 1, -3]]

theorem reductionSound9476 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode5695).moment H =
      Integer.Sparse.eval reductionProjection9476 (momentVector H) := by
  have heq : reductionPivot9476 = (fun u v => (normalNode5695).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5695).moment H = injectiveMoment H reductionPivot9476 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5695).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9476 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9476 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 3, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9476 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection971, reductionProjection709, oldProjection1372, oldProjection1336] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9476 (0 : Fin 4)) = canonicalInput9433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection971 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9433 hH))).trans (oldProjectionSound971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9476 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1242).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection709 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9476 (2 : Fin 4)) = canonicalInput11655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1372 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1372 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11655 hH))).trans (oldProjectionSound1372 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9476 (3 : Fin 4)) = canonicalInput11656.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1336 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9476 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1336 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11656 hH))).trans (oldProjectionSound1336 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5695).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9476 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5695).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9476 (j : Fin 4)))
      2 360 720 4 ![720, 1, 3, 720] ![1, 720, 240, 1] reductionProjection9476 ![oldProjection971, reductionProjection709, oldProjection1372, oldProjection1336]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9477 : Integer.Sparse (Fin 1613) := [(912, -1), (913, -1), (1126, -1), (1243, -1)]

def reductionPivot9477 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-2, 1, 2, -1], ![0, 0, -2, 2], ![1, -3, 0, 2], ![1, 1, 1, -3]]

theorem reductionSound9477 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5699).moment H =
      Integer.Sparse.eval reductionProjection9477 (momentVector H) := by
  have heq : reductionPivot9477 = (fun u v => (normalNode5699).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5699).moment H = injectiveMoment H reductionPivot9477 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5699).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9477 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9477 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9477 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection202, reductionProjection229, oldProjection682, reductionProjection1069] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9477 (0 : Fin 4)) = canonicalInput12250.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection202 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12250 hH))).trans (reductionSound202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9477 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1243).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection229 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9477 (2 : Fin 4)) = canonicalInput11649.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11649 hH))).trans (oldProjectionSound682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9477 (3 : Fin 4)) = canonicalInput11648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1069 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9477 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11648 hH))).trans (reductionSound1069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5699).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9477 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5699).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9477 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9477 ![reductionProjection202, reductionProjection229, oldProjection682, reductionProjection1069]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9478 : Integer.Sparse (Fin 1613) := [(919, -1), (1004, -1), (1243, -1), (1244, -1)]

def reductionPivot9478 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 2, -1], ![0, 1, -2, 1], ![1, -3, 0, 2], ![1, 1, 1, -3]]

theorem reductionSound9478 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5701).moment H =
      Integer.Sparse.eval reductionProjection9478 (momentVector H) := by
  have heq : reductionPivot9478 = (fun u v => (normalNode5701).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5701).moment H = injectiveMoment H reductionPivot9478 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5701).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9478 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9478 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9478 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection616, reductionProjection229, reductionProjection9424, oldProjection612] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9478 (0 : Fin 4)) = canonicalInput11125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection616 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11125 hH))).trans (oldProjectionSound616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9478 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1243).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection229 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection229 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound229 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9478 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1244).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9424 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9478 (3 : Fin 4)) = canonicalInput11661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection612 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9478 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11661 hH))).trans (oldProjectionSound612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5701).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9478 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5701).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9478 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9478 ![oldProjection616, reductionProjection229, reductionProjection9424, oldProjection612]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9479 : Integer.Sparse (Fin 1613) := [(37, -1), (45, -2)]

def reductionPivot9479 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 3, -1], ![-1, 2, 1, -2], ![3, -1, -4, 2]]

theorem reductionSound9479 {H : CMatrix} (hH : IsHadamard H) :
    (3 : ℝ) * (normalNode7906).moment H =
      Integer.Sparse.eval reductionProjection9479 (momentVector H) := by
  have heq : reductionPivot9479 = (fun u v => (normalNode7906).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7906).moment H = injectiveMoment H reductionPivot9479 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7906).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7906).entries)).symm
  have hshape : reductionPivot9479 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9479 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9479 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection84, oldProjection89, oldProjection89] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9479 (0 : Fin 3)) = canonicalInput5856.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9479 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection84 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9479 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection84 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5856 hH))).trans (oldProjectionSound84 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9479 (1 : Fin 3)) = canonicalInput19094.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9479 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9479 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19094 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9479 (2 : Fin 3)) = canonicalInput19106.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9479 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection89 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9479 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection89 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19106 hH))).trans (oldProjectionSound89 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7906).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9479 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7906).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9479 (j : Fin 3)))
      3 3 3 3 ![1, 1, 1] ![3, 3, 3] reductionProjection9479 ![oldProjection84, oldProjection89, oldProjection89]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9480 : Integer.Sparse (Fin 1613) := [(37, 48), (45, 96), (94, 1), (243, -32), (682, 48), (697, 48), (698, -32), (700, -16), (704, -16), (1219, 48), (1226, -16), (1244, -144), (1251, -3)]

def reductionPivot9480 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 2, -1], ![0, 1, -1, 0], ![1, -3, -1, 3], ![1, 1, 1, -3]]

theorem reductionSound9480 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5702).moment H =
      Integer.Sparse.eval reductionProjection9480 (momentVector H) := by
  have heq : reductionPivot9480 = (fun u v => (normalNode5702).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5702).moment H = injectiveMoment H reductionPivot9480 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5702).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9480 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9480 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1, 3, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9480 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection980, reductionProjection9424, reductionProjection9479, oldProjection947] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9480 (0 : Fin 4)) = canonicalInput11129.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection980 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection980 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11129 hH))).trans (oldProjectionSound980 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9480 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1244).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9424 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9424 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9424 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9480 (2 : Fin 4)) = canonicalInput11664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9479 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9479 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11664 hH))).trans (reductionSound9479 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9480 (3 : Fin 4)) = canonicalInput11665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection947 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9480 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11665 hH))).trans (oldProjectionSound947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5702).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9480 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5702).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9480 (j : Fin 4)))
      2 288 288 2 ![144, 1, 3, 72] ![2, 288, 96, 4] reductionProjection9480 ![oldProjection980, reductionProjection9424, reductionProjection9479, oldProjection947]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9481 : Integer.Sparse (Fin 1613) := [(0, -3), (37, -240), (45, -480), (81, -240), (90, 80), (94, 15), (243, 320), (682, -480), (697, -480), (698, 400), (700, 160), (704, 160), (912, 720), (913, 720), (919, 1440), (1004, 1440), (1126, 720), (1219, -480), (1226, 240), (1227, 240), (1243, 1440), (1244, 1440), (1251, -10), (1389, -240)]

def reductionPivot9481 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 2, -1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![1, -3, 0, 2], ![1, 1, 1, -3]]

theorem reductionSound9481 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5700).moment H =
      Integer.Sparse.eval reductionProjection9481 (momentVector H) := by
  have heq : reductionPivot9481 = (fun u v => (normalNode5700).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5700).moment H = injectiveMoment H reductionPivot9481 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5700).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9481 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9481 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9481 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection291, reductionProjection9477, reductionProjection9478, reductionProjection9480, reductionProjection4445] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9481 (0 : Fin 5)) = canonicalInput11091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11091 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9481 (1 : Fin 5)) = (normalNode5699).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9477 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9481 (2 : Fin 5)) = (normalNode5701).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9478 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9478 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9478 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9481 (3 : Fin 5)) = (normalNode5702).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9480 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9480 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9480 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9481 (4 : Fin 5)) = canonicalInput11652.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4445 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9481 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11652 hH))).trans (reductionSound4445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5700).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9481 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5700).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9481 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 288, 720] ![1, 720, 720, 5, 2] reductionProjection9481 ![reductionProjection291, reductionProjection9477, reductionProjection9478, reductionProjection9480, reductionProjection4445]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9482 : Integer.Sparse (Fin 1613) := [(11, -48), (19, -4), (94, 1), (230, -48), (243, 16), (704, 16), (1251, 1)]

def reductionPivot9482 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -2, 2, 1], ![-1, 4, -3, 0], ![3, -2, 1, -2]]

theorem reductionSound9482 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7843).moment H =
      Integer.Sparse.eval reductionProjection9482 (momentVector H) := by
  have heq : reductionPivot9482 = (fun u v => (normalNode7843).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7843).moment H = injectiveMoment H reductionPivot9482 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7843).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7843).entries)).symm
  have hshape : reductionPivot9482 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9482 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9482 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection26, reductionProjection1710, oldProjection132] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9482 (0 : Fin 3)) = canonicalInput1821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9482 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection26 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9482 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection26 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1821 hH))).trans (reductionSound26 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9482 (1 : Fin 3)) = canonicalInput14009.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9482 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1710 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9482 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1710 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14009 hH))).trans (reductionSound1710 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9482 (2 : Fin 3)) = canonicalInput14074.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9482 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection132 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9482 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection132 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14074 hH))).trans (oldProjectionSound132 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7843).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9482 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7843).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9482 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection9482 ![reductionProjection26, reductionProjection1710, oldProjection132]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9483 : Integer.Sparse (Fin 1613) := [(0, 1), (11, 240), (19, 20), (76, 480), (79, 240), (94, -25), (230, 240), (243, -80), (698, -160), (704, -80), (1226, -80), (1246, -720), (1251, -10), (1323, 240)]

def reductionPivot9483 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -2, -1, 3], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound9483 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5706).moment H =
      Integer.Sparse.eval reductionProjection9483 (momentVector H) := by
  have heq : reductionPivot9483 = (fun u v => (normalNode5706).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5706).moment H = injectiveMoment H reductionPivot9483 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5706).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9483 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9483 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 1, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9483 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection306, reductionProjection9482, reductionProjection8369, oldProjection948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9483 (0 : Fin 4)) = canonicalInput9524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection306 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9524 hH))).trans (reductionSound306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9483 (1 : Fin 4)) = canonicalInput11702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9482 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11702 hH))).trans (reductionSound9482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9483 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1246).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9483 (3 : Fin 4)) = canonicalInput11709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9483 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11709 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5706).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9483 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5706).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9483 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 1, 720] ![10, 10, 1440, 2] reductionProjection9483 ![reductionProjection306, reductionProjection9482, reductionProjection8369, oldProjection948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9484 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 240), (94, -15), (698, -80), (768, -360), (1251, -20), (1323, 240), (1326, -360)]

def reductionPivot9484 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -2, -1, 3], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound9484 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5707).moment H =
      Integer.Sparse.eval reductionProjection9484 (momentVector H) := by
  have heq : reductionPivot9484 = (fun u v => (normalNode5707).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5707).moment H = injectiveMoment H reductionPivot9484 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5707).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9484 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9484 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9484 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection211, reductionProjection8340, oldProjection948, oldProjection948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9484 (0 : Fin 4)) = canonicalInput9527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9527 hH))).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9484 (1 : Fin 4)) = canonicalInput11704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8340 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8340 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11704 hH))).trans (reductionSound8340 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9484 (2 : Fin 4)) = canonicalInput11709.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11709 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9484 (3 : Fin 4)) = canonicalInput11710.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9484 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11710 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5707).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9484 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5707).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9484 (j : Fin 4)))
      2 720 720 2 ![1, 1, 720, 720] ![720, 720, 1, 1] reductionProjection9484 ![reductionProjection211, reductionProjection8340, oldProjection948, oldProjection948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9485 : Integer.Sparse (Fin 1613) := [(76, 48), (81, 48), (88, -16), (90, -16), (94, -1), (230, 48), (231, 48), (241, -16), (243, -16), (682, 48), (683, 48), (698, -32), (700, -16), (1226, -16), (1246, -144), (1251, 3)]

def reductionPivot9485 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 3, -2], ![0, -2, -1, 3], ![1, -1, 0, 0], ![1, 2, -1, -2]]

theorem reductionSound9485 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5708).moment H =
      Integer.Sparse.eval reductionProjection9485 (momentVector H) := by
  have heq : reductionPivot9485 = (fun u v => (normalNode5708).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5708).moment H = injectiveMoment H reductionPivot9485 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5708).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9485 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9485 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9485 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection824, reductionProjection8355, reductionProjection8369, reductionProjection826] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9485 (0 : Fin 4)) = canonicalInput11592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection824 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11592 hH))).trans (oldProjectionSound824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9485 (1 : Fin 4)) = canonicalInput11706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8355 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11706 hH))).trans (reductionSound8355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9485 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1246).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9485 (3 : Fin 4)) = canonicalInput11708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection826 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9485 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11708 hH))).trans (reductionSound826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5708).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9485 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5708).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9485 (j : Fin 4)))
      2 288 288 2 ![144, 9, 1, 9] ![2, 32, 288, 32] reductionProjection9485 ![oldProjection824, reductionProjection8355, reductionProjection8369, reductionProjection826]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9486 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (190, -720), (192, -720), (198, -720), (697, 240), (1058, 240), (1250, -60), (1251, 10)]

def reductionPivot9486 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 1, 3, -2], ![0, -2, 0, 2], ![0, -1, -1, 2], ![1, 2, -1, -2]]

theorem reductionSound9486 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5710).moment H =
      Integer.Sparse.eval reductionProjection9486 (momentVector H) := by
  have heq : reductionPivot9486 = (fun u v => (normalNode5710).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5710).moment H = injectiveMoment H reductionPivot9486 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5710).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9486 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9486 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9486 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection776, reductionProjection1445, reductionProjection1449, reductionProjection1508] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9486 (0 : Fin 4)) = canonicalInput23394.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection776 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23394 hH))).trans (reductionSound776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9486 (1 : Fin 4)) = canonicalInput11778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11778 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9486 (2 : Fin 4)) = canonicalInput11715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11715 hH))).trans (reductionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9486 (3 : Fin 4)) = canonicalInput11711.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1508 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9486 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1508 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11711 hH))).trans (reductionSound1508 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5710).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9486 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5710).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9486 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection9486 ![reductionProjection776, reductionProjection1445, reductionProjection1449, reductionProjection1508]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9487 : Integer.Sparse (Fin 1613) := [(190, -1), (484, -1), (501, -1), (555, -1)]

def reductionPivot9487 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -2, 0, 2], ![1, 0, -2, 1], ![1, 2, -1, -2]]

theorem reductionSound9487 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5711).moment H =
      Integer.Sparse.eval reductionProjection9487 (momentVector H) := by
  have heq : reductionPivot9487 = (fun u v => (normalNode5711).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5711).moment H = injectiveMoment H reductionPivot9487 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5711).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9487 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9487 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9487 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1451, reductionProjection4139, reductionProjection1449, oldProjection488] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9487 (0 : Fin 4)) = canonicalInput9537.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1451 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1451 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9537 hH))).trans (reductionSound1451 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9487 (1 : Fin 4)) = canonicalInput11705.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4139 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11705 hH))).trans (reductionSound4139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9487 (2 : Fin 4)) = canonicalInput11715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11715 hH))).trans (reductionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9487 (3 : Fin 4)) = canonicalInput11718.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection488 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9487 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection488 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11718 hH))).trans (oldProjectionSound488 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5711).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9487 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5711).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9487 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9487 ![reductionProjection1451, reductionProjection4139, reductionProjection1449, oldProjection488]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9488 : Integer.Sparse (Fin 1613) := [(79, 1), (190, -3), (191, -3), (200, -3), (1050, 1), (1052, 1)]

def reductionPivot9488 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, 3, -2], ![0, -2, 0, 2], ![0, 0, -2, 2], ![1, 2, -1, -2]]

theorem reductionSound9488 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5712).moment H =
      Integer.Sparse.eval reductionProjection9488 (momentVector H) := by
  have heq : reductionPivot9488 = (fun u v => (normalNode5712).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5712).moment H = injectiveMoment H reductionPivot9488 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5712).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9488 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9488 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9488 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection886, reductionProjection1428, reductionProjection1449, oldProjection411] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9488 (0 : Fin 4)) = canonicalInput22438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection886 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection886 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22438 hH))).trans (reductionSound886 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9488 (1 : Fin 4)) = canonicalInput11777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1428 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1428 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11777 hH))).trans (reductionSound1428 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9488 (2 : Fin 4)) = canonicalInput11715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11715 hH))).trans (reductionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9488 (3 : Fin 4)) = canonicalInput11712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection411 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9488 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11712 hH))).trans (oldProjectionSound411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5712).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9488 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5712).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9488 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection9488 ![reductionProjection886, reductionProjection1428, reductionProjection1449, oldProjection411]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9489 : Integer.Sparse (Fin 1613) := [(190, -1), (542, -1), (553, -1), (1246, -1)]

def reductionPivot9489 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 3, -2], ![0, -2, 0, 2], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound9489 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5713).moment H =
      Integer.Sparse.eval reductionProjection9489 (momentVector H) := by
  have heq : reductionPivot9489 = (fun u v => (normalNode5713).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5713).moment H = injectiveMoment H reductionPivot9489 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5713).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9489 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9489 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9489 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection503, reductionProjection8369, reductionProjection1449, reductionProjection1111] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9489 (0 : Fin 4)) = canonicalInput11602.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11602 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9489 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1246).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9489 (2 : Fin 4)) = canonicalInput11715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1449 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11715 hH))).trans (reductionSound1449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9489 (3 : Fin 4)) = canonicalInput11716.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1111 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9489 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1111 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11716 hH))).trans (reductionSound1111 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5713).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9489 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5713).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9489 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9489 ![oldProjection503, reductionProjection8369, reductionProjection1449, reductionProjection1111]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9490 : Integer.Sparse (Fin 1613) := [(76, 24), (88, -8), (90, -16), (94, 1), (230, 24), (231, 24), (241, -8), (243, -16), (657, -72), (698, -24), (700, -8), (1226, -24), (1251, 1), (1323, 24)]

def reductionPivot9490 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 2, -1, -2]]

theorem reductionSound9490 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode5714).moment H =
      Integer.Sparse.eval reductionProjection9490 (momentVector H) := by
  have heq : reductionPivot9490 = (fun u v => (normalNode5714).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5714).moment H = injectiveMoment H reductionPivot9490 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5714).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9490 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9490 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9490 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection990, reductionProjection8355, reductionProjection5986, oldProjection1074] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9490 (0 : Fin 4)) = canonicalInput9543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection990 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection990 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9543 hH))).trans (oldProjectionSound990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9490 (1 : Fin 4)) = canonicalInput11706.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8355 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11706 hH))).trans (reductionSound8355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9490 (2 : Fin 4)) = canonicalInput11719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5986 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5986 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11719 hH))).trans (reductionSound5986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9490 (3 : Fin 4)) = canonicalInput11720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9490 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11720 hH))).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5714).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9490 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5714).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9490 (j : Fin 4)))
      2 144 144 2 ![9, 9, 1, 72] ![16, 16, 144, 2] reductionProjection9490 ![oldProjection990, reductionProjection8355, reductionProjection5986, oldProjection1074]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9491 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, 10), (242, 240), (243, -240), (244, -80), (697, 240), (698, -240), (700, -160), (1059, -80), (1226, -160), (1248, -720), (1251, 10), (1323, 240)]

def reductionPivot9491 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 3, -2], ![0, -1, -2, 3], ![1, -1, 0, 0], ![1, 1, 0, -2]]

theorem reductionSound9491 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5715).moment H =
      Integer.Sparse.eval reductionProjection9491 (momentVector H) := by
  have heq : reductionPivot9491 = (fun u v => (normalNode5715).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5715).moment H = injectiveMoment H reductionPivot9491 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5715).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9491 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9491 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9491 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1056, oldProjection1064, oldProjection713, oldProjection1074] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9491 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5062 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1056 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5062 hH))).trans (oldProjectionSound1056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9491 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5077 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5077 hH))).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9491 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node713⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection713 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9491 (3 : Fin 4)) = canonicalInput11720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9491 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11720 hH))).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5715).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9491 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5715).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9491 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 72] ![2, 10, 1440, 20] reductionProjection9491 ![oldProjection1056, oldProjection1064, oldProjection713, oldProjection1074]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9492 : Integer.Sparse (Fin 1613) := [(87, 1), (192, -6), (204, -3), (1055, 1), (1219, 1)]

def reductionPivot9492 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -1, -1, 2], ![1, 2, -1, -2]]

theorem reductionSound9492 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5716).moment H =
      Integer.Sparse.eval reductionProjection9492 (momentVector H) := by
  have heq : reductionPivot9492 = (fun u v => (normalNode5716).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5716).moment H = injectiveMoment H reductionPivot9492 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5716).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9492 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9492 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![3, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9492 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection795, reductionProjection1445, reductionProjection1445, reductionProjection1168] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9492 (0 : Fin 4)) = canonicalInput22443.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection795 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection795 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22443 hH))).trans (reductionSound795 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9492 (1 : Fin 4)) = canonicalInput11778.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11778 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9492 (2 : Fin 4)) = canonicalInput11729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11729 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9492 (3 : Fin 4)) = canonicalInput11723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1168 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9492 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11723 hH))).trans (reductionSound1168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5716).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9492 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5716).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9492 (j : Fin 4)))
      2 6 6 2 ![3, 1, 1, 1] ![2, 6, 6, 6] reductionProjection9492 ![reductionProjection795, reductionProjection1445, reductionProjection1445, reductionProjection1168]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9493 : Integer.Sparse (Fin 1613) := [(192, -1), (549, -1), (565, -1), (1246, -1)]

def reductionPivot9493 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![1, -1, -1, 1], ![1, 2, -1, -2]]

theorem reductionSound9493 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5721).moment H =
      Integer.Sparse.eval reductionProjection9493 (momentVector H) := by
  have heq : reductionPivot9493 = (fun u v => (normalNode5721).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5721).moment H = injectiveMoment H reductionPivot9493 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5721).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9493 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9493 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9493 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, reductionProjection8369, reductionProjection1445, oldProjection502] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9493 (0 : Fin 4)) = canonicalInput9561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9561 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9493 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1246).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9493 (2 : Fin 4)) = canonicalInput11729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11729 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9493 (3 : Fin 4)) = canonicalInput11731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9493 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11731 hH))).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5721).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9493 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5721).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9493 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9493 ![oldProjection505, reductionProjection8369, reductionProjection1445, oldProjection502]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9494 : Integer.Sparse (Fin 1613) := [(0, -1), (11, -240), (19, -40), (76, -960), (79, -480), (81, -240), (94, 115), (190, 720), (192, 1440), (198, 720), (230, -240), (241, 80), (243, 80), (549, 1440), (565, 1440), (697, -240), (698, 800), (704, 80), (1058, -480), (1226, 320), (1227, 240), (1246, 1440), (1250, 60), (1251, -60), (1323, -480)]

def reductionPivot9494 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 0, -1, 0], ![1, 2, -1, -2]]

theorem reductionSound9494 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5718).moment H =
      Integer.Sparse.eval reductionProjection9494 (momentVector H) := by
  have heq : reductionPivot9494 = (fun u v => (normalNode5718).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5718).moment H = injectiveMoment H reductionPivot9494 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5718).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9494 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9494 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9494 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5379, reductionProjection9483, reductionProjection9486, reductionProjection9493, reductionProjection5065] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9494 (0 : Fin 5)) = canonicalInput9550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5379 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5379 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9550 hH))).trans (reductionSound5379 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9494 (1 : Fin 5)) = (normalNode5706).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9483 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9483 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9483 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9494 (2 : Fin 5)) = canonicalInput11721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9486 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9486 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11721 hH))).trans (reductionSound9486 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9494 (3 : Fin 5)) = (normalNode5721).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9493 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9494 (4 : Fin 5)) = canonicalInput11724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9494 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11724 hH))).trans (reductionSound5065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5718).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9494 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5718).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9494 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 2, 1440] ![5, 1, 1, 720, 1] reductionProjection9494 ![reductionProjection5379, reductionProjection9483, reductionProjection9486, reductionProjection9493, reductionProjection5065]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9495 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (76, -480), (94, 95), (241, 80), (434, 360), (549, 720), (698, 560), (768, 720), (1226, 160), (1227, 160), (1247, -720), (1251, -10), (1323, -480), (1326, 360)]

def reductionPivot9495 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, -1, 0, 1], ![1, 1, -1, -1], ![1, 1, -1, -1]]

theorem reductionSound9495 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode5719).moment H =
      Integer.Sparse.eval reductionProjection9495 (momentVector H) := by
  have heq : reductionPivot9495 = (fun u v => (normalNode5719).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5719).moment H = injectiveMoment H reductionPivot9495 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5719).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9495 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9495 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 1, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9495 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection4842, reductionProjection9484, reductionProjection4922, reductionProjection5065, reductionProjection5065] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9495 (0 : Fin 5)) = canonicalInput9552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4842 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9552 hH))).trans (reductionSound4842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9495 (1 : Fin 5)) = (normalNode5707).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9484 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9484 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9484 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9495 (2 : Fin 5)) = canonicalInput11722.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4922 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11722 hH))).trans (reductionSound4922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9495 (3 : Fin 5)) = canonicalInput11724.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11724 hH))).trans (reductionSound5065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9495 (4 : Fin 5)) = canonicalInput11725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5065 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9495 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11725 hH))).trans (reductionSound5065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5719).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9495 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5719).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9495 (j : Fin 5)))
      1 720 1440 2 ![720, 720, 1, 1440, 1440] ![2, 2, 1440, 1, 1] reductionProjection9495 ![reductionProjection4842, reductionProjection9484, reductionProjection4922, reductionProjection5065, reductionProjection5065]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9496 : Integer.Sparse (Fin 1613) := [(192, -1), (547, -1), (563, -1), (657, -1)]

def reductionPivot9496 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![1, -2, 0, 1], ![1, 2, -1, -2]]

theorem reductionSound9496 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5722).moment H =
      Integer.Sparse.eval reductionProjection9496 (momentVector H) := by
  have heq : reductionPivot9496 = (fun u v => (normalNode5722).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5722).moment H = injectiveMoment H reductionPivot9496 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5722).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9496 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9496 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9496 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1046, reductionProjection5986, reductionProjection1445, reductionProjection1083] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9496 (0 : Fin 4)) = canonicalInput11628.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1046 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11628 hH))).trans (reductionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9496 (1 : Fin 4)) = canonicalInput11719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5986 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5986 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11719 hH))).trans (reductionSound5986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9496 (2 : Fin 4)) = canonicalInput11729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11729 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9496 (3 : Fin 4)) = canonicalInput11730.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1083 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9496 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1083 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11730 hH))).trans (reductionSound1083 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5722).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9496 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5722).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9496 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9496 ![reductionProjection1046, reductionProjection5986, reductionProjection1445, reductionProjection1083]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9497 : Integer.Sparse (Fin 1613) := [(0, -2), (76, -480), (81, -480), (87, -240), (88, 80), (90, 240), (94, 15), (192, 2160), (204, 720), (230, -240), (231, -240), (241, 160), (243, 160), (547, 720), (549, 720), (563, 720), (565, 720), (657, 720), (682, -240), (683, -240), (697, -240), (698, 960), (700, 160), (1055, -240), (1059, 80), (1219, -240), (1221, -240), (1226, 480), (1227, 320), (1246, 720), (1251, -115), (1323, -240), (1389, -240)]

def reductionPivot9497 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, 0, -1, 1], ![1, -1, 0, 0], ![1, 2, -1, -2]]

theorem reductionSound9497 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5720).moment H =
      Integer.Sparse.eval reductionProjection9497 (momentVector H) := by
  have heq : reductionPivot9497 = (fun u v => (normalNode5720).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5720).moment H = injectiveMoment H reductionPivot9497 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5720).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9497 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9497 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 6, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9497 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1797, reductionProjection9485, reductionProjection9492, reductionProjection9496, oldProjection2167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9497 (0 : Fin 5)) = canonicalInput9554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1797 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1797 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound9554 hH))).trans (oldProjectionSound1797 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9497 (1 : Fin 5)) = (normalNode5708).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9485 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9497 (2 : Fin 5)) = (normalNode5716).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9492 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9492 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9492 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9497 (3 : Fin 5)) = (normalNode5722).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9496 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9496 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9496 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9497 (4 : Fin 5)) = canonicalInput11726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2167 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9497 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11726 hH))).trans (oldProjectionSound2167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5720).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9497 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5720).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9497 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 6, 2, 288] ![1, 5, 240, 720, 5] reductionProjection9497 ![oldProjection1797, reductionProjection9485, reductionProjection9492, reductionProjection9496, oldProjection2167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9498 : Integer.Sparse (Fin 1613) := [(19, -4), (94, 1), (108, 16), (226, -48), (237, -48), (247, 16), (1251, 1)]

def reductionPivot9498 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -1, 2, 0], ![-1, -2, 2, 1], ![3, 3, -4, -2]]

theorem reductionSound9498 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode7845).moment H =
      Integer.Sparse.eval reductionProjection9498 (momentVector H) := by
  have heq : reductionPivot9498 = (fun u v => (normalNode7845).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7845).moment H = injectiveMoment H reductionPivot9498 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7845).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7845).entries)).symm
  have hshape : reductionPivot9498 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9498 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 1, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9498 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection1687, reductionProjection1718, oldProjection144] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9498 (0 : Fin 3)) = canonicalInput5500.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9498 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1687 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9498 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound5500 hH))).trans (reductionSound1687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9498 (1 : Fin 3)) = canonicalInput18703.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9498 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9498 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18703 hH))).trans (reductionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9498 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6901 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9498 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection144 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9498 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection144 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6901 hH))).trans (oldProjectionSound144 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7845).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9498 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7845).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9498 (j : Fin 3)))
      3 144 144 3 ![1, 1, 48] ![144, 144, 3] reductionProjection9498 ![reductionProjection1687, reductionProjection1718, oldProjection144]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9499 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (93, -60), (94, -30), (108, -80), (226, 240), (237, 240), (247, -160), (694, 480), (1083, -720), (1250, -60), (1251, -25), (1319, 240)]

def reductionPivot9499 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 2, 3, -3], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 0, -1, 0]]

theorem reductionSound9499 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5965).moment H =
      Integer.Sparse.eval reductionProjection9499 (momentVector H) := by
  have heq : reductionPivot9499 = (fun u v => (normalNode5965).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5965).moment H = injectiveMoment H reductionPivot9499 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5965).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9499 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9499 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 360, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9499 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9498, oldProjection958, oldProjection931, reductionProjection8499] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9499 (0 : Fin 4)) = canonicalInput12322.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9498 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9498 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12322 hH))).trans (reductionSound9498 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9499 (1 : Fin 4)) = canonicalInput12277.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12277 hH))).trans (oldProjectionSound958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9499 (2 : Fin 4)) = canonicalInput12276.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection931 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection931 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12276 hH))).trans (oldProjectionSound931 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9499 (3 : Fin 4)) = canonicalInput12275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9499 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12275 hH))).trans (reductionSound8499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5965).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9499 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5965).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9499 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 360, 1] ![10, 2, 4, 1440] reductionProjection9499 ![reductionProjection9498, oldProjection958, oldProjection931, reductionProjection8499]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9500 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -5), (192, -720), (694, 240), (1055, 240), (1127, -720), (1241, -720), (1250, -60), (1251, 10)]

def reductionPivot9500 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, 2, 0, -2], ![1, -2, -1, 2]]

theorem reductionSound9500 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5726).moment H =
      Integer.Sparse.eval reductionProjection9500 (momentVector H) := by
  have heq : reductionPivot9500 = (fun u v => (normalNode5726).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5726).moment H = injectiveMoment H reductionPivot9500 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5726).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot9500 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9500 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9500 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1370, reductionProjection9461, reductionProjection1445, reductionProjection7706] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9500 (0 : Fin 4)) = canonicalInput23399.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1370 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23399 hH))).trans (oldProjectionSound1370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9500 (1 : Fin 4)) = canonicalInput11779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9461 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9461 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11779 hH))).trans (reductionSound9461 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9500 (2 : Fin 4)) = canonicalInput11732.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11732 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9500 (3 : Fin 4)) = canonicalInput11728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7706 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9500 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11728 hH))).trans (reductionSound7706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5726).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9500 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5726).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9500 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 1, 1] ![2, 1440, 1440, 1440] reductionProjection9500 ![oldProjection1370, reductionProjection9461, reductionProjection1445, reductionProjection7706]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9501 : Integer.Sparse (Fin 1613) := [(192, -3), (549, -3), (697, 1), (1083, -3), (1323, 1), (1389, 1)]

def reductionPivot9501 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![1, -2, -1, 2], ![1, 1, -1, -1]]

theorem reductionSound9501 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode5725).moment H =
      Integer.Sparse.eval reductionProjection9501 (momentVector H) := by
  have heq : reductionPivot9501 = (fun u v => (normalNode5725).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5725).moment H = injectiveMoment H reductionPivot9501 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5725).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9501 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9501 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9501 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8499, oldProjection983, oldProjection502, reductionProjection1445] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9501 (0 : Fin 4)) = canonicalInput12275.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8499 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12275 hH))).trans (reductionSound8499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9501 (1 : Fin 4)) = canonicalInput11756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection983 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection983 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11756 hH))).trans (oldProjectionSound983 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9501 (2 : Fin 4)) = canonicalInput11731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11731 hH))).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9501 (3 : Fin 4)) = canonicalInput11729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1445 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9501 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11729 hH))).trans (reductionSound1445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5725).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9501 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5725).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9501 (j : Fin 4)))
      2 6 6 2 ![1, 3, 1, 1] ![6, 2, 6, 6] reductionProjection9501 ![reductionProjection8499, oldProjection983, oldProjection502, reductionProjection1445]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9502 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -140), (93, 120), (94, 165), (108, 80), (192, 1440), (226, -240), (237, -240), (241, 80), (247, 400), (549, 1440), (694, -1200), (697, -720), (698, 80), (1055, -240), (1083, 1440), (1127, 720), (1241, 720), (1250, 240), (1251, 15), (1319, -480), (1323, -480), (1389, -480)]

def reductionPivot9502 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-2, 1, 3, -2], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -2, -1, 2], ![1, 0, -1, 0]]

theorem reductionSound9502 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode5723).moment H =
      Integer.Sparse.eval reductionProjection9502 (momentVector H) := by
  have heq : reductionPivot9502 = (fun u v => (normalNode5723).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5723).moment H = injectiveMoment H reductionPivot9502 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5723).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9502 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9502 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9502 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9499, oldProjection2189, reductionProjection9500, oldProjection2169, reductionProjection9501] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9502 (0 : Fin 5)) = (normalNode5965).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9499 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9499 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9499 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9502 (1 : Fin 5)) = canonicalInput11752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2189 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11752 hH))).trans (oldProjectionSound2189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9502 (2 : Fin 5)) = (normalNode5726).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9500 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9502 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw5090 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2169 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2169 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5090 hH))).trans (oldProjectionSound2169 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9502 (4 : Fin 5)) = (normalNode5725).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9501 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9502 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode5723).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9502 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5723).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9502 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 6] ![1, 5, 1, 1, 240] reductionProjection9502 ![reductionProjection9499, oldProjection2189, reductionProjection9500, oldProjection2169, reductionProjection9501]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9503 : Integer.Sparse (Fin 1613) := [(93, 1), (237, -4), (694, -4), (1250, 1)]

def reductionPivot9503 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, 0, 1, -2], ![2, -2, 2, -2], ![-2, 2, -3, 3]]

theorem reductionSound9503 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode11184).moment H =
      Integer.Sparse.eval reductionProjection9503 (momentVector H) := by
  have heq : reductionPivot9503 = (fun u v => (normalNode11184).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11184).moment H = injectiveMoment H reductionPivot9503 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11184).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11184).entries)).symm
  have hshape : reductionPivot9503 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9503 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![4, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9503 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection264, oldProjection167, reductionProjection1718] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9503 (0 : Fin 3)) = canonicalInput31757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9503 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection264 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9503 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound31757 hH))).trans (oldProjectionSound264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9503 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw10171 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9503 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection167 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9503 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical10171 hH))).trans (oldProjectionSound167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9503 (2 : Fin 3)) = canonicalInput33869.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9503 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1718 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9503 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1718 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33869 hH))).trans (reductionSound1718 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11184).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9503 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11184).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9503 (j : Fin 3)))
      3 12 12 3 ![4, 1, 1] ![3, 12, 12] reductionProjection9503 ![oldProjection264, oldProjection167, reductionProjection1718]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
