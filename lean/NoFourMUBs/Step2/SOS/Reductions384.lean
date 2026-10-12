import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical430
import NoFourMUBs.Step2.SOS.Canonical431
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions078
import NoFourMUBs.Step2.SOS.Reductions126
import NoFourMUBs.Step2.SOS.Reductions147
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions197
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions283
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions294
import NoFourMUBs.Step2.SOS.Reductions301
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions324
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions344
import NoFourMUBs.Step2.SOS.Reductions364
import NoFourMUBs.Step2.SOS.Reductions370
import NoFourMUBs.Step2.SOS.Reductions372
import NoFourMUBs.Step2.SOS.Reductions373
import NoFourMUBs.Step2.SOS.Reductions378
import NoFourMUBs.Step2.SOS.Reductions379
import NoFourMUBs.Step2.SOS.Reductions382
import NoFourMUBs.Step2.SOS.Reductions383
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical242
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical244
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes36
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes44
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection12288 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 10), (20, -3), (94, -1), (108, -8), (246, -8), (704, -8), (1251, -1)]

def reductionPivot12288 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -4, 4], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound12288 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10936).moment H =
      Integer.Sparse.eval reductionProjection12288 (momentVector H) := by
  have heq : reductionPivot12288 = (fun u v => (normalNode10936).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10936).moment H = injectiveMoment H reductionPivot12288 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10936).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12288 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12288 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12288 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7777, reductionProjection11857, reductionProjection2521, reductionProjection10661] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12288 (0 : Fin 4)) = canonicalInput22549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22549 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12288 (1 : Fin 4)) = canonicalInput22496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11857 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22496 hH))).trans (reductionSound11857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12288 (2 : Fin 4)) = canonicalInput22494.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2521 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2521 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22494 hH))).trans (reductionSound2521 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12288 (3 : Fin 4)) = canonicalInput22493.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12288 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22493 hH))).trans (reductionSound10661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10936).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12288 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10936).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12288 (j : Fin 4)))
      2 144 144 2 ![72, 144, 144, 144] ![2, 1, 1, 1] reductionProjection12288 ![reductionProjection7777, reductionProjection11857, reductionProjection2521, reductionProjection10661]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12289 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (20, -5), (94, -30), (1251, -20)]

def reductionPivot12289 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0]]

theorem reductionSound12289 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode11000).moment H =
      Integer.Sparse.eval reductionProjection12289 (momentVector H) := by
  have heq : reductionPivot12289 = (fun u v => (normalNode11000).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11000).moment H = injectiveMoment H reductionPivot12289 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11000).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12289 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12289 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12289 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1039, oldProjection1197, oldProjection1197, reductionProjection9791] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12289 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7821 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1039 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1039 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7821 hH))).trans (oldProjectionSound1039 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12289 (1 : Fin 4)) = canonicalInput22583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1197 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22583 hH))).trans (oldProjectionSound1197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12289 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7778 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1197 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7778 hH))).trans (oldProjectionSound1197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12289 (3 : Fin 4)) = canonicalInput22572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12289 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22572 hH))).trans (reductionSound9791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11000).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12289 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11000).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12289 (j : Fin 4)))
      2 480 1440 6 ![72, 720, 720, 144] ![20, 2, 2, 10] reductionProjection12289 ![oldProjection1039, oldProjection1197, oldProjection1197, reductionProjection9791]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12290 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -80), (20, 20), (93, 60), (94, -15), (682, -480), (690, -240), (1250, 120), (1251, -110), (1319, -960), (1321, -480), (1333, 1440), (1388, -480), (1389, -480)]

def reductionPivot12290 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound12290 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10946).moment H =
      Integer.Sparse.eval reductionProjection12290 (momentVector H) := by
  have heq : reductionPivot12290 = (fun u v => (normalNode10946).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10946).moment H = injectiveMoment H reductionPivot12290 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10946).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12290 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12290 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 144, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12290 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2329, oldProjection2833, oldProjection2833, reductionProjection9791, reductionProjection12289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12290 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2329⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2329 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12290 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12290 (2 : Fin 5)) = canonicalInput22566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22566 hH))).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12290 (3 : Fin 5)) = canonicalInput22570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22570 hH))).trans (reductionSound9791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12290 (4 : Fin 5)) = canonicalInput22571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12289 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12290 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22571 hH))).trans (reductionSound12289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10946).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12290 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10946).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12290 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 144, 480] ![1, 1, 1, 10, 3] reductionProjection12290 ![oldProjection2329, oldProjection2833, oldProjection2833, reductionProjection9791, reductionProjection12289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12291 : Integer.Sparse (Fin 1613) := [(0, 1), (20, -5), (94, 30), (1251, 10), (1321, 240), (1394, -720), (1395, -720), (1397, -720)]

def reductionPivot12291 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -3, 3], ![-1, 1, 1, -1], ![1, -1, -1, 1], ![1, -1, 2, -2]]

theorem reductionSound12291 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10952).moment H =
      Integer.Sparse.eval reductionProjection12291 (momentVector H) := by
  have heq : reductionPivot12291 = (fun u v => (normalNode10952).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10952).moment H = injectiveMoment H reductionPivot12291 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10952).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12291 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12291 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12291 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1365, reductionProjection11669, oldProjection1339, reductionProjection11915] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12291 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1397).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12291 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1395).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11669 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11669 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11669 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12291 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7767 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7767 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12291 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1394).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11915 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12291 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10952).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12291 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10952).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12291 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 1] ![1440, 1440, 2, 1440] reductionProjection12291 ![reductionProjection1365, reductionProjection11669, oldProjection1339, reductionProjection11915]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12292 : Integer.Sparse (Fin 1613) := [(0, 7), (3, -20), (4, 5), (19, 20), (20, -20), (93, 60), (94, -35), (227, -240), (682, -240), (1250, 60), (1251, -65), (1292, -240), (1319, -240), (1321, -480), (1328, 720), (1333, 720), (1389, -240), (1394, 720), (1395, 720), (1397, 720)]

def reductionPivot12292 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 2, -2]]

theorem reductionSound12292 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10950).moment H =
      Integer.Sparse.eval reductionProjection12292 (momentVector H) := by
  have heq : reductionPivot12292 = (fun u v => (normalNode10950).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10950).moment H = injectiveMoment H reductionPivot12292 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10950).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot12292 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12292 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12292 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection12285, reductionProjection12118, oldProjection1339, reductionProjection12291, oldProjection2833] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12292 (0 : Fin 5)) = (normalNode10930).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12285 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12292 (1 : Fin 5)) = (normalNode10947).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12118 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12292 (2 : Fin 5)) = canonicalInput22524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22524 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12292 (3 : Fin 5)) = (normalNode10952).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12292 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12292 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10950).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12292 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10950).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12292 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 720, 1440, 1440] ![1, 5, 2, 1, 1] reductionProjection12292 ![reductionProjection12285, reductionProjection12118, oldProjection1339, reductionProjection12291, oldProjection2833]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12293 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 7), (93, -12), (94, -19), (1251, 2), (1269, -144), (1394, -144)]

def reductionPivot12293 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 1, -3, 3], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![1, -1, -1, 1]]

theorem reductionSound12293 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10953).moment H =
      Integer.Sparse.eval reductionProjection12293 (momentVector H) := by
  have heq : reductionPivot12293 = (fun u v => (normalNode10953).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10953).moment H = injectiveMoment H reductionPivot12293 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10953).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot12293 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12293 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12293 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9403, reductionProjection12099, reductionProjection11915, reductionProjection9659] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12293 (0 : Fin 4)) = canonicalInput27534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9403 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27534 hH))).trans (reductionSound9403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12293 (1 : Fin 4)) = (normalNode11003).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection12099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection12099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12293 (2 : Fin 4)) = canonicalInput22527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11915 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22527 hH))).trans (reductionSound11915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12293 (3 : Fin 4)) = canonicalInput22526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9659 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12293 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9659 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22526 hH))).trans (reductionSound9659 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10953).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12293 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10953).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12293 (j : Fin 4)))
      2 288 288 2 ![72, 144, 1, 1] ![4, 2, 288, 288] reductionProjection12293 ![reductionProjection9403, reductionProjection12099, reductionProjection11915, reductionProjection9659]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12294 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (4, 5), (19, -60), (20, -20), (93, 90), (94, 50), (418, 360), (1044, -120), (1147, 360), (1217, -120), (1251, 10), (1269, 720), (1292, -120), (1321, -120), (1394, 720)]

def reductionPivot12294 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![-1, 1, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound12294 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode10951).moment H =
      Integer.Sparse.eval reductionProjection12294 (momentVector H) := by
  have heq : reductionPivot12294 = (fun u v => (normalNode10951).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10951).moment H = injectiveMoment H reductionPivot12294 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10951).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot12294 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12294 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 144, 720, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12294 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection12286, reductionProjection9409, oldProjection2834, reductionProjection12293, reductionProjection12293] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12294 (0 : Fin 5)) = (normalNode10931).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12286 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12286 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12286 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12294 (1 : Fin 5)) = (normalNode10949).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9409 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9409 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9409 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12294 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2834⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2834 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12294 (3 : Fin 5)) = (normalNode10953).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12293 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12294 (4 : Fin 5)) = canonicalInput22525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12293 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12294 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12293 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22525 hH))).trans (reductionSound12293 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10951).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12294 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10951).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12294 (j : Fin 5)))
      1 720 1440 2 ![144, 144, 720, 288, 288] ![10, 10, 2, 5, 5] reductionProjection12294 ![reductionProjection12286, reductionProjection9409, oldProjection2834, reductionProjection12293, reductionProjection12293]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12295 : Integer.Sparse (Fin 1613) := [(0, 7), (19, -160), (20, 30), (94, 60), (243, 400), (698, 880), (704, 400), (1058, -240), (1223, -240), (1225, 80), (1226, 480), (1227, 400), (1251, -105)]

def reductionPivot12295 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![1, -1, 0, 0]]

theorem reductionSound12295 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10962).moment H =
      Integer.Sparse.eval reductionProjection12295 (momentVector H) := by
  have heq : reductionPivot12295 = (fun u v => (normalNode10962).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10962).moment H = injectiveMoment H reductionPivot12295 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10962).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12295 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12295 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 480, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12295 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2690, reductionProjection9993, reductionProjection9993, reductionProjection12289, reductionProjection9202] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12295 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2690⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2690 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12295 (1 : Fin 5)) = (normalNode10977).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9993 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12295 (2 : Fin 5)) = canonicalInput22567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9993 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9993 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22567 hH))).trans (reductionSound9993 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12295 (3 : Fin 5)) = (normalNode11000).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12289 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12295 (4 : Fin 5)) = (normalNode11001).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9202 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12295 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10962).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12295 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10962).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12295 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 480, 288] ![2, 1, 1, 3, 5] reductionProjection12295 ![oldProjection2690, reductionProjection9993, reductionProjection9993, reductionProjection12289, reductionProjection9202]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12296 : Integer.Sparse (Fin 1613) := [(0, 7), (3, 40), (19, 120), (20, -25), (94, -50), (108, -160), (247, -240), (1251, -40)]

def reductionPivot12296 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound12296 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10980).moment H =
      Integer.Sparse.eval reductionProjection12296 (momentVector H) := by
  have heq : reductionPivot12296 = (fun u v => (normalNode10980).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10980).moment H = injectiveMoment H reductionPivot12296 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10980).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12296 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12296 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12296 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6373, oldProjection1217, oldProjection1367, oldProjection972] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12296 (0 : Fin 4)) = canonicalInput22490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6373 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6373 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22490 hH))).trans (reductionSound6373 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12296 (1 : Fin 4)) = canonicalInput22540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1217 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22540 hH))).trans (oldProjectionSound1217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12296 (2 : Fin 4)) = canonicalInput22543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1367 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1367 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22543 hH))).trans (oldProjectionSound1367 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12296 (3 : Fin 4)) = canonicalInput22544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12296 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22544 hH))).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10980).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12296 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10980).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12296 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 720] ![10, 2, 2, 2] reductionProjection12296 ![reductionProjection6373, oldProjection1217, oldProjection1367, oldProjection972]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12297 : Integer.Sparse (Fin 1613) := [(0, -2), (3, 4), (4, -1), (19, -4), (20, 5), (94, -3), (1251, 1)]

def reductionPivot12297 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound12297 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10990).moment H =
      Integer.Sparse.eval reductionProjection12297 (momentVector H) := by
  have heq : reductionPivot12297 = (fun u v => (normalNode10990).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10990).moment H = injectiveMoment H reductionPivot12297 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10990).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12297 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12297 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 240, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12297 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10642, oldProjection267, oldProjection267, reductionProjection9791] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12297 (0 : Fin 4)) = canonicalInput22498.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10642 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22498 hH))).trans (reductionSound10642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12297 (1 : Fin 4)) = canonicalInput22559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection267 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22559 hH))).trans (oldProjectionSound267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12297 (2 : Fin 4)) = canonicalInput22569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection267 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22569 hH))).trans (oldProjectionSound267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12297 (3 : Fin 4)) = canonicalInput22572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9791 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12297 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9791 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22572 hH))).trans (reductionSound9791 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10990).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12297 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10990).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12297 (j : Fin 4)))
      2 288 1440 10 ![720, 240, 240, 144] ![2, 6, 6, 10] reductionProjection12297 ![reductionProjection10642, oldProjection267, oldProjection267, reductionProjection9791]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12298 : Integer.Sparse (Fin 1613) := [(0, 8), (3, -100), (4, 10), (19, -300), (20, 5), (94, 105), (108, 160), (246, 80), (247, 240), (698, 160), (704, 240), (1251, 10)]

def reductionPivot12298 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound12298 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10971).moment H =
      Integer.Sparse.eval reductionProjection12298 (momentVector H) := by
  have heq : reductionPivot12298 = (fun u v => (normalNode10971).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10971).moment H = injectiveMoment H reductionPivot12298 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10971).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12298 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12298 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12298 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11967, reductionProjection12119, reductionProjection12296, reductionProjection12297, reductionProjection12224] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12298 (0 : Fin 5)) = (normalNode9951).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11967 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12298 (1 : Fin 5)) = (normalNode10964).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12119 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12298 (2 : Fin 5)) = canonicalInput22552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12296 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12296 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22552 hH))).trans (reductionSound12296 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12298 (3 : Fin 5)) = (normalNode10990).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12297 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12297 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12297 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12298 (4 : Fin 5)) = (normalNode10992).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12224 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12298 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10971).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12298 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10971).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12298 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 1440, 288, 1440] ![10, 1, 1, 5, 1] reductionProjection12298 ![reductionProjection11967, reductionProjection12119, reductionProjection12296, reductionProjection12297, reductionProjection12224]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12299 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 80), (20, -15), (94, -20), (243, -240), (698, -80), (703, -80), (704, -80), (1226, -80), (1251, -10), (1323, 240)]

def reductionPivot12299 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, -1, 2, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound12299 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10981).moment H =
      Integer.Sparse.eval reductionProjection12299 (momentVector H) := by
  have heq : reductionPivot12299 = (fun u v => (normalNode10981).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10981).moment H = injectiveMoment H reductionPivot12299 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10981).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12299 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12299 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12299 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8526, oldProjection1103, oldProjection1094, reductionProjection11019] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12299 (0 : Fin 4)) = canonicalInput22491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8526 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8526 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22491 hH))).trans (reductionSound8526 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12299 (1 : Fin 4)) = canonicalInput22542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1103 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22542 hH))).trans (oldProjectionSound1103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12299 (2 : Fin 4)) = canonicalInput22545.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1094 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1094 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22545 hH))).trans (oldProjectionSound1094 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12299 (3 : Fin 4)) = (normalNode10983).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11019 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12299 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10981).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12299 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10981).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12299 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 72] ![10, 10, 2, 20] reductionProjection12299 ![reductionProjection8526, oldProjection1103, oldProjection1094, reductionProjection11019]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12300 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (4, -5), (19, 40), (20, -10), (94, 65), (1251, -15)]

def reductionPivot12300 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 3, -3], ![1, -1, 0, 0]]

theorem reductionSound12300 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10991).moment H =
      Integer.Sparse.eval reductionProjection12300 (momentVector H) := by
  have heq : reductionPivot12300 = (fun u v => (normalNode10991).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10991).moment H = injectiveMoment H reductionPivot12300 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10991).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12300 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12300 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12300 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9019, oldProjection289, oldProjection1197, reductionProjection12099] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12300 (0 : Fin 4)) = canonicalInput22499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9019 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9019 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22499 hH))).trans (reductionSound9019 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12300 (1 : Fin 4)) = canonicalInput22560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection289 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22560 hH))).trans (oldProjectionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12300 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7778 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1197 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7778 hH))).trans (oldProjectionSound1197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12300 (3 : Fin 4)) = (normalNode11003).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection12099 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12300 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection12099 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12099 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10991).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12300 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10991).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12300 (j : Fin 4)))
      2 1440 1440 2 ![144, 48, 720, 144] ![10, 30, 2, 10] reductionProjection12300 ![reductionProjection9019, oldProjection289, oldProjection1197, reductionProjection12099]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12301 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, 5), (94, -10), (106, -80), (243, -160), (698, -240), (703, -80), (704, -80), (1225, -160), (1226, -80), (1227, -80), (1251, 20)]

def reductionPivot12301 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -2, 1, 0]]

theorem reductionSound12301 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10993).moment H =
      Integer.Sparse.eval reductionProjection12301 (momentVector H) := by
  have heq : reductionPivot12301 = (fun u v => (normalNode10993).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10993).moment H = injectiveMoment H reductionPivot12301 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10993).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12301 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12301 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12301 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9074, oldProjection222, oldProjection800, oldProjection1200] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12301 (0 : Fin 4)) = canonicalInput22502.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9074 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22502 hH))).trans (reductionSound9074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12301 (1 : Fin 4)) = canonicalInput22562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection222 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22562 hH))).trans (oldProjectionSound222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12301 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7780 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection800 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7780 hH))).trans (oldProjectionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12301 (3 : Fin 4)) = canonicalInput22578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1200 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12301 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1200 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22578 hH))).trans (oldProjectionSound1200 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10993).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12301 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10993).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12301 (j : Fin 4)))
      2 1440 1440 2 ![144, 48, 720, 144] ![10, 30, 2, 10] reductionProjection12301 ![reductionProjection9074, oldProjection222, oldProjection800, oldProjection1200]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12302 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (4, 5), (19, -220), (20, 5), (94, -70), (106, 80), (243, 640), (698, 400), (703, 160), (704, 160), (1225, 240), (1226, 400), (1227, 80), (1251, -20), (1323, -240)]

def reductionPivot12302 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound12302 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10972).moment H =
      Integer.Sparse.eval reductionProjection12302 (momentVector H) := by
  have heq : reductionPivot12302 = (fun u v => (normalNode10972).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10972).moment H = injectiveMoment H reductionPivot12302 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10972).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12302 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12302 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12302 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11958, reductionProjection11930, reductionProjection12299, reductionProjection12300, reductionProjection12301] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12302 (0 : Fin 5)) = (normalNode9952).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12302 (1 : Fin 5)) = (normalNode10966).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11930 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11930 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11930 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12302 (2 : Fin 5)) = canonicalInput22553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12299 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22553 hH))).trans (reductionSound12299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12302 (3 : Fin 5)) = (normalNode10991).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12300 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12302 (4 : Fin 5)) = (normalNode10993).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12301 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12302 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12301 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12301 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10972).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12302 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10972).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12302 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 1440, 1440] ![2, 1, 1, 1, 1] reductionProjection12302 ![reductionProjection11958, reductionProjection11930, reductionProjection12299, reductionProjection12300, reductionProjection12301]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12303 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 10), (20, 2), (704, -8), (1251, -1)]

def reductionPivot12303 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, -1, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound12303 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10987).moment H =
      Integer.Sparse.eval reductionProjection12303 (momentVector H) := by
  have heq : reductionPivot12303 = (fun u v => (normalNode10987).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10987).moment H = injectiveMoment H reductionPivot12303 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10987).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12303 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12303 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12303 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11857, reductionProjection7777, reductionProjection9213, reductionProjection10761] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12303 (0 : Fin 4)) = canonicalInput22496.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11857 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22496 hH))).trans (reductionSound11857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12303 (1 : Fin 4)) = canonicalInput22549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22549 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12303 (2 : Fin 4)) = canonicalInput22550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22550 hH))).trans (reductionSound9213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12303 (3 : Fin 4)) = (normalNode10988).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10761 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12303 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10987).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12303 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10987).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12303 (j : Fin 4)))
      2 144 144 2 ![144, 72, 144, 72] ![1, 2, 1, 2] reductionProjection12303 ![reductionProjection11857, reductionProjection7777, reductionProjection9213, reductionProjection10761]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12304 : Integer.Sparse (Fin 1613) := [(3, 1), (19, 1), (94, 1), (105, -8), (106, -4), (241, -4), (243, -24), (698, -4), (700, -4), (1225, -8), (1226, -8), (1251, 1)]

def reductionPivot12304 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, 1, 0]]

theorem reductionSound12304 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode10995).moment H =
      Integer.Sparse.eval reductionProjection12304 (momentVector H) := by
  have heq : reductionPivot12304 = (fun u v => (normalNode10995).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10995).moment H = injectiveMoment H reductionPivot12304 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10995).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12304 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12304 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 36, 72, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12304 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9020, oldProjection803, reductionProjection7895, reductionProjection7907] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12304 (0 : Fin 4)) = canonicalInput22506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9020 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22506 hH))).trans (reductionSound9020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12304 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7782 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7782 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12304 (2 : Fin 4)) = canonicalInput22587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7895 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7895 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22587 hH))).trans (reductionSound7895 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12304 (3 : Fin 4)) = (normalNode11005).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12304 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10995).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12304 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10995).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12304 (j : Fin 4)))
      2 72 72 2 ![36, 36, 72, 72] ![2, 2, 1, 1] reductionProjection12304 ![reductionProjection9020, oldProjection803, reductionProjection7895, reductionProjection7907]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12305 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -80), (4, 15), (19, -200), (20, -70), (94, -20), (105, 160), (106, 80), (241, 80), (243, 640), (698, 80), (700, 160), (704, 80), (1225, 240), (1226, 160), (1251, 15)]

def reductionPivot12305 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 1, -3, 3], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound12305 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10973).moment H =
      Integer.Sparse.eval reductionProjection12305 (momentVector H) := by
  have heq : reductionPivot12305 = (fun u v => (normalNode10973).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10973).moment H = injectiveMoment H reductionPivot12305 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10973).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12305 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12305 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 144, 1440, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12305 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11913, reductionProjection12122, reductionProjection12303, reductionProjection12300, reductionProjection12304] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12305 (0 : Fin 5)) = (normalNode9955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12305 (1 : Fin 5)) = (normalNode10969).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12122 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12305 (2 : Fin 5)) = canonicalInput22554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12303 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12303 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22554 hH))).trans (reductionSound12303 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12305 (3 : Fin 5)) = canonicalInput22555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12300 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12300 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22555 hH))).trans (reductionSound12300 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12305 (4 : Fin 5)) = (normalNode10995).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12304 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12305 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10973).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12305 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10973).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12305 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 144, 1440, 72] ![1, 5, 10, 1, 20] reductionProjection12305 ![reductionProjection11913, reductionProjection12122, reductionProjection12303, reductionProjection12300, reductionProjection12304]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12306 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 100), (20, 5), (94, 5), (698, -80), (704, -160), (1251, -10), (1321, 240)]

def reductionPivot12306 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1]]

theorem reductionSound12306 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10986).moment H =
      Integer.Sparse.eval reductionProjection12306 (momentVector H) := by
  have heq : reductionPivot12306 = (fun u v => (normalNode10986).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10986).moment H = injectiveMoment H reductionPivot12306 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10986).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot12306 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12306 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 72, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12306 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1334, reductionProjection10761, oldProjection1327, reductionProjection7777] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12306 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1334 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12306 (1 : Fin 4)) = (normalNode10988).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10761 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12306 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1327⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1327 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12306 (3 : Fin 4)) = canonicalInput22549.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12306 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22549 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10986).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12306 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10986).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12306 (j : Fin 4)))
      2 1440 1440 2 ![360, 72, 144, 72] ![4, 20, 10, 20] reductionProjection12306 ![oldProjection1334, reductionProjection10761, oldProjection1327, reductionProjection7777]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12307 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (4, 2), (19, -68), (20, 4), (94, 5), (108, 32), (246, 16), (247, 16), (698, 32), (704, 64), (1251, 8), (1321, -48)]

def reductionPivot12307 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -3, 3], ![0, -1, 3, -2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound12307 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10984).moment H =
      Integer.Sparse.eval reductionProjection12307 (momentVector H) := by
  have heq : reductionPivot12307 = (fun u v => (normalNode10984).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10984).moment H = injectiveMoment H reductionPivot12307 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10984).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot12307 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12307 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 72, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12307 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection12288, reductionProjection12120, reductionProjection7777, reductionProjection12116, reductionProjection12306] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12307 (0 : Fin 5)) = (normalNode10936).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12288 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12288 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12288 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12307 (1 : Fin 5)) = (normalNode10982).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12120 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12307 (2 : Fin 5)) = canonicalInput22546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22546 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12307 (3 : Fin 5)) = canonicalInput22547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12116 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22547 hH))).trans (reductionSound12116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12307 (4 : Fin 5)) = (normalNode10986).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12306 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12307 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12306 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12306 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10984).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12307 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10984).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12307 (j : Fin 5)))
      1 288 1440 5 ![144, 1440, 72, 1440, 1440] ![10, 1, 20, 1, 1] reductionProjection12307 ![reductionProjection12288, reductionProjection12120, reductionProjection7777, reductionProjection12116, reductionProjection12306]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12308 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -10), (94, -5), (241, -80), (243, -240), (698, -240), (700, -80), (1058, 240), (1059, -80), (1223, 240), (1225, -80), (1226, -160), (1251, 15)]

def reductionPivot12308 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, -2, 0, 1]]

theorem reductionSound12308 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11002).moment H =
      Integer.Sparse.eval reductionProjection12308 (momentVector H) := by
  have heq : reductionPivot12308 = (fun u v => (normalNode11002).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11002).moment H = injectiveMoment H reductionPivot12308 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11002).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12308 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12308 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 72, 144, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12308 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection840, reductionProjection7907, oldProjection1329, oldProjection803] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12308 (0 : Fin 4)) = canonicalInput22672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22672 hH))).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12308 (1 : Fin 4)) = (normalNode11005).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12308 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1329⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1329 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1329 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1329 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12308 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7782 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12308 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7782 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11002).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12308 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11002).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12308 (j : Fin 4)))
      2 1440 1440 2 ![360, 72, 144, 36] ![4, 20, 10, 40] reductionProjection12308 ![oldProjection840, reductionProjection7907, oldProjection1329, oldProjection803]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12309 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -140), (20, 30), (94, 10), (241, 240), (243, 880), (698, 1680), (700, 160), (704, 240), (1058, -720), (1059, 240), (1223, -720), (1225, 240), (1226, 960), (1227, 720), (1251, -265)]

def reductionPivot12309 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -3, 3], ![0, 0, 1, -1], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -2, 0, 1]]

theorem reductionSound12309 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10999).moment H =
      Integer.Sparse.eval reductionProjection12309 (momentVector H) := by
  have heq : reductionPivot12309 = (fun u v => (normalNode10999).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10999).moment H = injectiveMoment H reductionPivot12309 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10999).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12309 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12309 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12309 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2450, reductionProjection12308, reductionProjection12308, reductionProjection9202, oldProjection2836] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12309 (0 : Fin 5)) = canonicalInput22663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2450 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2450 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22663 hH))).trans (oldProjectionSound2450 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12309 (1 : Fin 5)) = canonicalInput22582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12308 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22582 hH))).trans (reductionSound12308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12309 (2 : Fin 5)) = (normalNode11002).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12308 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12309 (3 : Fin 5)) = (normalNode11001).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9202 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12309 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2836⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12309 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10999).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12309 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10999).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12309 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 288, 1440] ![1, 1, 1, 5, 1] reductionProjection12309 ![oldProjection2450, reductionProjection12308, reductionProjection12308, reductionProjection9202, oldProjection2836]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12310 : Integer.Sparse (Fin 1613) := [(19, -4), (20, 1), (94, -7), (682, -48), (1221, -48), (1250, 12), (1251, -20), (1321, -48), (1333, 144), (1380, 144), (1385, 144), (1388, -48), (1389, -144), (1397, 144)]

def reductionPivot12310 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound12310 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11012).moment H =
      Integer.Sparse.eval reductionProjection12310 (momentVector H) := by
  have heq : reductionPivot12310 = (fun u v => (normalNode11012).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11012).moment H = injectiveMoment H reductionPivot12310 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11012).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot12310 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12310 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 720, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12310 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2833, oldProjection1748, oldProjection1096, reductionProjection10393, oldProjection1823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12310 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2833⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2833 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12310 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7800 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1748 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1748 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7800 hH))).trans (oldProjectionSound1748 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12310 (2 : Fin 5)) = canonicalInput22612.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1096 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22612 hH))).trans (oldProjectionSound1096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12310 (3 : Fin 5)) = (normalNode11016).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10393 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12310 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7804 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12310 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7804 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11012).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12310 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11012).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12310 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 720, 1440, 720] ![1, 5, 2, 1, 2] reductionProjection12310 ![oldProjection2833, oldProjection1748, oldProjection1096, reductionProjection10393, oldProjection1823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12311 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 10), (553, -240), (1250, -20), (1251, -25), (1397, -240)]

def reductionPivot12311 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 1, -2, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![1, -1, -1, 1]]

theorem reductionSound12311 {H : CMatrix} (hH : IsHadamard H) :
    (480 : ℝ) * (normalNode11017).moment H =
      Integer.Sparse.eval reductionProjection12311 (momentVector H) := by
  have heq : reductionPivot12311 = (fun u v => (normalNode11017).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11017).moment H = injectiveMoment H reductionPivot12311 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11017).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot12311 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12311 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12311 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1344, reductionProjection4055, reductionProjection1365, oldProjection503] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12311 (0 : Fin 4)) = canonicalInput27619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1344 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27619 hH))).trans (oldProjectionSound1344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12311 (1 : Fin 4)) = (normalNode11069).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4055 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4055 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound4055 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12311 (2 : Fin 4)) = canonicalInput22616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1365 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22616 hH))).trans (reductionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12311 (3 : Fin 4)) = canonicalInput22614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection503 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12311 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection503 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22614 hH))).trans (oldProjectionSound503 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11017).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12311 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11017).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12311 (j : Fin 4)))
      2 480 1440 6 ![360, 720, 1, 1] ![4, 2, 1440, 1440] reductionProjection12311 ![oldProjection1344, reductionProjection4055, reductionProjection1365, oldProjection503]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12312 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -20), (20, 5), (94, -5), (418, 360), (553, 720), (1050, -120), (1221, -240), (1250, 90), (1251, -10), (1321, -120), (1389, -240), (1397, 720)]

def reductionPivot12312 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![-1, 1, 1, -1], ![0, 0, 2, -2], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound12312 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode11013).moment H =
      Integer.Sparse.eval reductionProjection12312 (momentVector H) := by
  have heq : reductionPivot12312 = (fun u v => (normalNode11013).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11013).moment H = injectiveMoment H reductionPivot12312 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11013).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot12312 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12312 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 720, 480, 480] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12312 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2834, oldProjection1746, oldProjection1823, reductionProjection12311, reductionProjection12311] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12312 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2834⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2834 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12312 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7801 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1746 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7801 hH))).trans (oldProjectionSound1746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12312 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7804 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7804 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12312 (3 : Fin 5)) = (normalNode11017).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12311 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12312 (4 : Fin 5)) = canonicalInput22613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12311 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12312 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22613 hH))).trans (reductionSound12311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11013).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12312 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11013).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12312 (j : Fin 5)))
      1 720 1440 2 ![720, 720, 720, 480, 480] ![2, 2, 2, 3, 3] reductionProjection12312 ![oldProjection2834, oldProjection1746, oldProjection1823, reductionProjection12311, reductionProjection12311]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12313 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -20), (94, -15), (553, 720), (682, -240), (1221, -480), (1250, 60), (1251, -135), (1380, 1440), (1385, 1440), (1389, -1200), (1397, 1440)]

def reductionPivot12313 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 1, -2, 2], ![-1, 1, 1, -1], ![0, 0, 1, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound12313 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11015).moment H =
      Integer.Sparse.eval reductionProjection12313 (momentVector H) := by
  have heq : reductionPivot12313 = (fun u v => (normalNode11015).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11015).moment H = injectiveMoment H reductionPivot12313 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11015).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot12313 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12313 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 480, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12313 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5157, reductionProjection5202, reductionProjection12311, oldProjection1823, reductionProjection10393] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12313 (0 : Fin 5)) = canonicalInput22731.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5157 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22731 hH))).trans (reductionSound5157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12313 (1 : Fin 5)) = canonicalInput22618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5202 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22618 hH))).trans (reductionSound5202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12313 (2 : Fin 5)) = (normalNode11017).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12311 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12311 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12311 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12313 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7804 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7804 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12313 (4 : Fin 5)) = (normalNode11016).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10393 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12313 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11015).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12313 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11015).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12313 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 480, 720, 1440] ![1, 2, 3, 2, 1] reductionProjection12313 ![reductionProjection5157, reductionProjection5202, reductionProjection12311, oldProjection1823, reductionProjection10393]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12314 : Integer.Sparse (Fin 1613) := [(0, 2), (19, -8), (20, 1), (682, -96), (1217, -24), (1221, -48), (1251, -19), (1380, 144), (1389, -96)]

def reductionPivot12314 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![-1, 1, 2, -2], ![0, 0, 1, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound12314 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11018).moment H =
      Integer.Sparse.eval reductionProjection12314 (momentVector H) := by
  have heq : reductionPivot12314 = (fun u v => (normalNode11018).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11018).moment H = injectiveMoment H reductionPivot12314 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11018).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot12314 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12314 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 720, 360, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12314 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2835, oldProjection1823, oldProjection1107, reductionProjection5202, reductionProjection5202] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12314 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2835⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2835 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12314 (1 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7804 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7804 hH))).trans (oldProjectionSound1823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12314 (2 : Fin 5)) = canonicalInput22617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1107 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1107 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22617 hH))).trans (oldProjectionSound1107 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12314 (3 : Fin 5)) = canonicalInput22618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5202 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22618 hH))).trans (reductionSound5202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12314 (4 : Fin 5)) = canonicalInput22619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5202 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12314 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22619 hH))).trans (reductionSound5202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11018).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12314 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11018).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12314 (j : Fin 5)))
      1 144 720 5 ![720, 720, 360, 720, 720] ![1, 1, 2, 1, 1] reductionProjection12314 ![oldProjection2835, oldProjection1823, oldProjection1107, reductionProjection5202, reductionProjection5202]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12315 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -15), (94, 5), (243, -80), (698, -80), (700, -160), (704, -160), (1251, -25)]

def reductionPivot12315 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, -1, 0, 0]]

theorem reductionSound12315 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11024).moment H =
      Integer.Sparse.eval reductionProjection12315 (momentVector H) := by
  have heq : reductionPivot12315 = (fun u v => (normalNode11024).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11024).moment H = injectiveMoment H reductionPivot12315 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11024).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot12315 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12315 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12315 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1015, oldProjection1201, oldProjection1095, reductionProjection1025] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12315 (0 : Fin 4)) = canonicalInput23468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1015 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1015 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23468 hH))).trans (oldProjectionSound1015 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12315 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7817 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1201 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7817 hH))).trans (oldProjectionSound1201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12315 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7812 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7812 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12315 (3 : Fin 4)) = canonicalInput22632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1025 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12315 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22632 hH))).trans (reductionSound1025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11024).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12315 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11024).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12315 (j : Fin 4)))
      2 1440 1440 2 ![72, 720, 144, 144] ![20, 2, 10, 10] reductionProjection12315 ![oldProjection1015, oldProjection1201, oldProjection1095, reductionProjection1025]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12316 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 16), (20, -2), (94, -7), (243, -16), (244, -16), (246, -16), (701, -16), (704, -32), (1251, -5)]

def reductionPivot12316 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 1, -2, 2], ![0, -1, -1, 2], ![0, 0, 4, -4], ![1, -1, 0, 0]]

theorem reductionSound12316 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11025).moment H =
      Integer.Sparse.eval reductionProjection12316 (momentVector H) := by
  have heq : reductionPivot12316 = (fun u v => (normalNode11025).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11025).moment H = injectiveMoment H reductionPivot12316 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11025).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot12316 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12316 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12316 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection4719, reductionProjection6310, oldProjection1095, reductionProjection1024] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12316 (0 : Fin 4)) = canonicalInput23460.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23460 hH))).trans (reductionSound4719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12316 (1 : Fin 4)) = (normalNode11050).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6310 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12316 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7812 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7812 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12316 (3 : Fin 4)) = canonicalInput22633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1024 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12316 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22633 hH))).trans (reductionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11025).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12316 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11025).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12316 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 48] ![2, 2, 2, 6] reductionProjection12316 ![reductionProjection4719, reductionProjection6310, oldProjection1095, reductionProjection1024]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12317 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (20, -10), (94, 15), (243, -320), (698, -240), (700, -320), (704, -80), (1059, -80), (1225, -80), (1226, -160), (1251, -25)]

def reductionPivot12317 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -2, 0, 1]]

theorem reductionSound12317 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11063).moment H =
      Integer.Sparse.eval reductionProjection12317 (momentVector H) := by
  have heq : reductionPivot12317 = (fun u v => (normalNode11063).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11063).moment H = injectiveMoment H reductionPivot12317 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11063).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12317 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12317 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 360, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12317 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7907, oldProjection840, oldProjection1231, oldProjection1337] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12317 (0 : Fin 4)) = (normalNode11005).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7907 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12317 (1 : Fin 4)) = canonicalInput22672.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection840 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22672 hH))).trans (oldProjectionSound840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12317 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7825 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1231 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7825 hH))).trans (oldProjectionSound1231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12317 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1337⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1337 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12317 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1337 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1337 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11063).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12317 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11063).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12317 (j : Fin 4)))
      2 1440 1440 2 ![72, 360, 144, 72] ![20, 4, 10, 20] reductionProjection12317 ![reductionProjection7907, oldProjection840, oldProjection1231, oldProjection1337]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12318 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -120), (94, 35), (243, 400), (698, 400), (700, 480), (704, 240), (1059, 80), (1225, 80), (1226, 160), (1251, -30)]

def reductionPivot12318 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0]]

theorem reductionSound12318 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11027).moment H =
      Integer.Sparse.eval reductionProjection12318 (momentVector H) := by
  have heq : reductionPivot12318 = (fun u v => (normalNode11027).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11027).moment H = injectiveMoment H reductionPivot12318 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11027).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot12318 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot12318 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12318 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11913, reductionProjection12315, reductionProjection12139, oldProjection1201, reductionProjection12317] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12318 (0 : Fin 5)) = (normalNode9955).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12318 (1 : Fin 5)) = (normalNode11024).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12315 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12315 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12315 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12318 (2 : Fin 5)) = canonicalInput22651.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12139 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22651 hH))).trans (reductionSound12139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12318 (3 : Fin 5)) = canonicalInput22655.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1201 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22655 hH))).trans (oldProjectionSound1201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12318 (4 : Fin 5)) = (normalNode11063).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection12317 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12318 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection12317 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound12317 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode11027).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12318 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11027).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot12318 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 1440] ![1, 1, 1, 2, 1] reductionProjection12318 ![reductionProjection11913, reductionProjection12315, reductionProjection12139, oldProjection1201, reductionProjection12317]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection12319 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (4, -5), (19, 160), (20, -20), (94, -65), (1251, -55)]

def reductionPivot12319 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 1, -2, 2], ![0, 0, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0]]

theorem reductionSound12319 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11057).moment H =
      Integer.Sparse.eval reductionProjection12319 (momentVector H) := by
  have heq : reductionPivot12319 = (fun u v => (normalNode11057).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11057).moment H = injectiveMoment H reductionPivot12319 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11057).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot12319 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot12319 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12319 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9208, reductionProjection6310, oldProjection1201, reductionProjection10609] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot12319 (0 : Fin 4)) = canonicalInput22556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9208 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22556 hH))).trans (reductionSound9208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12319 (1 : Fin 4)) = (normalNode11050).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6310 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6310 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6310 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12319 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7817 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1201 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7817 hH))).trans (oldProjectionSound1201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot12319 (3 : Fin 4)) = (normalNode11065).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10609 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot12319 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10609 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10609 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11057).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12319 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11057).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot12319 (j : Fin 4)))
      2 1440 1440 2 ![144, 144, 720, 144] ![10, 10, 2, 10] reductionProjection12319 ![reductionProjection9208, reductionProjection6310, oldProjection1201, reductionProjection10609]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
