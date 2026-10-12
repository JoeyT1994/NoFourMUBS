import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical241
import NoFourMUBs.Step2.SOS.Canonical242
import NoFourMUBs.Step2.SOS.Canonical243
import NoFourMUBs.Step2.SOS.Canonical246
import NoFourMUBs.Step2.SOS.Canonical247
import NoFourMUBs.Step2.SOS.Canonical248
import NoFourMUBs.Step2.SOS.Canonical249
import NoFourMUBs.Step2.SOS.Canonical250
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical252
import NoFourMUBs.Step2.SOS.Canonical253
import NoFourMUBs.Step2.SOS.Canonical277
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical279
import NoFourMUBs.Step2.SOS.Canonical280
import NoFourMUBs.Step2.SOS.Canonical308
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical315
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical318
import NoFourMUBs.Step2.SOS.Canonical319
import NoFourMUBs.Step2.SOS.Canonical322
import NoFourMUBs.Step2.SOS.Canonical323
import NoFourMUBs.Step2.SOS.Canonical338
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical354
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections031
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions009
import NoFourMUBs.Step2.SOS.Reductions071
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions092
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions109
import NoFourMUBs.Step2.SOS.Reductions133
import NoFourMUBs.Step2.SOS.Reductions155
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions219
import NoFourMUBs.Step2.SOS.Reductions224
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions338
import NoFourMUBs.Step2.SOS.Reductions347
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical221
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11136 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -10), (81, -240), (94, 45), (461, 360), (465, 360), (698, 400), (700, 160), (704, 40), (1059, 200), (1226, 40), (1227, 120), (1251, -150), (1389, -360)]

def reductionPivot11136 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 0, 1, 1, -2], ![1, 1, -1, -1, 0]]

theorem reductionSound11136 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8044).moment H =
      Integer.Sparse.eval reductionProjection11136 (momentVector H) := by
  have heq : reductionPivot11136 = (fun u v => (normalNode8044).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8044).moment H = injectiveMoment H reductionPivot11136 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8044).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11136 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11136 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11136 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1673, oldProjection2419, reductionProjection2543, oldProjection1674] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11136 (0 : Fin 4)) = canonicalInput17782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1673 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1673 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17782 hH))).trans (oldProjectionSound1673 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11136 (1 : Fin 4)) = canonicalInput15566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2419 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15566 hH))).trans (oldProjectionSound2419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11136 (2 : Fin 4)) = canonicalInput15547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2543 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15547 hH))).trans (reductionSound2543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11136 (3 : Fin 4)) = canonicalInput15544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1674 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11136 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1674 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15544 hH))).trans (oldProjectionSound1674 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8044).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11136 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8044).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11136 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 288, 720] ![1, 1, 5, 2] reductionProjection11136 ![oldProjection1673, oldProjection2419, reductionProjection2543, oldProjection1674]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11137 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (20, -10), (94, -10), (243, -160), (698, -160), (700, -80), (1058, 240), (1226, -160), (1251, 65)]

def reductionPivot11137 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1]]

theorem reductionSound11137 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9942).moment H =
      Integer.Sparse.eval reductionProjection11137 (momentVector H) := by
  have heq : reductionPivot11137 = (fun u v => (normalNode9942).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9942).moment H = injectiveMoment H reductionPivot11137 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9942).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11137 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11137 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 72, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11137 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1334, reductionProjection7777, oldProjection1215, oldProjection1212] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11137 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1334⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1334 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11137 (1 : Fin 4)) = (normalNode9973).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11137 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1215⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1215 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1215 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1215 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11137 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1212 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11137 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9942).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11137 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9942).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11137 (j : Fin 4)))
      2 1440 1440 2 ![360, 72, 144, 720] ![4, 20, 10, 2] reductionProjection11137 ![oldProjection1334, reductionProjection7777, oldProjection1215, oldProjection1212]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11138 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -20), (20, 10), (90, 240), (94, 15), (243, 240), (698, 1040), (700, 160), (782, 720), (1058, -240), (1059, 160), (1226, 400), (1227, 240), (1251, -85)]

def reductionPivot11138 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, -1, 3], ![0, 0, -1, 3, -2], ![0, 0, 1, 0, -1], ![1, 1, -1, -1, 0]]

theorem reductionSound11138 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8053).moment H =
      Integer.Sparse.eval reductionProjection11138 (momentVector H) := by
  have heq : reductionPivot11138 = (fun u v => (normalNode8053).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8053).moment H = injectiveMoment H reductionPivot11138 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8053).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11138 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11138 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11138 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11137, oldProjection2422, reductionProjection8163, oldProjection2699] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11138 (0 : Fin 4)) = canonicalInput17785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11137 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11137 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17785 hH))).trans (reductionSound11137 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11138 (1 : Fin 4)) = canonicalInput15571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2422 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15571 hH))).trans (oldProjectionSound2422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11138 (2 : Fin 4)) = canonicalInput15559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8163 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8163 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15559 hH))).trans (reductionSound8163 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11138 (3 : Fin 4)) = canonicalInput15557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2699 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11138 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15557 hH))).trans (oldProjectionSound2699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8053).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11138 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8053).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11138 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 288, 288] ![2, 2, 10, 10] reductionProjection11138 ![reductionProjection11137, oldProjection2422, reductionProjection8163, oldProjection2699]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11139 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 8), (20, -2), (42, -16), (79, 144), (81, 528), (87, 96), (88, -16), (90, -336), (94, -58), (243, -80), (441, -144), (461, -288), (465, -144), (618, -288), (640, -288), (642, -288), (698, -1104), (700, -448), (701, -16), (704, -64), (764, -144), (768, -288), (782, -144), (783, -144), (1058, 48), (1059, -224), (1117, -288), (1226, -464), (1227, -304), (1251, 85), (1389, 336)]

def reductionPivot11139 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, -1, 0], ![1, -1, 1, 0, -1]]

theorem reductionSound11139 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8032).moment H =
      Integer.Sparse.eval reductionProjection11139 (momentVector H) := by
  have heq : reductionPivot11139 = (fun u v => (normalNode8032).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8032).moment H = injectiveMoment H reductionPivot11139 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8032).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11139 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11139 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 2880, 2880, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11139 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11136, reductionProjection11138, reductionProjection7022, reductionProjection7022, reductionProjection10825] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11139 (0 : Fin 5)) = canonicalInput17821.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11136 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17821 hH))).trans (reductionSound11136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11139 (1 : Fin 5)) = canonicalInput15561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11138 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15561 hH))).trans (reductionSound11138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11139 (2 : Fin 5)) = canonicalInput15533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7022 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15533 hH))).trans (reductionSound7022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11139 (3 : Fin 5)) = canonicalInput15526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7022 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7022 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15526 hH))).trans (reductionSound7022 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11139 (4 : Fin 5)) = canonicalInput15524.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10825 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11139 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15524 hH))).trans (reductionSound10825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8032).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11139 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8032).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11139 (j : Fin 5)))
      1 576 2880 5 ![1440, 2880, 2880, 2880, 576] ![2, 1, 1, 1, 5] reductionProjection11139 ![reductionProjection11136, reductionProjection11138, reductionProjection7022, reductionProjection7022, reductionProjection10825]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11140 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -60), (81, -480), (94, 95), (241, 160), (247, 160), (426, 720), (434, 720), (697, -240), (698, 560), (1055, -240), (1058, -480), (1226, 160), (1227, 240), (1250, 120), (1251, -180), (1388, -240), (1389, -240)]

def reductionPivot11140 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 0, 1], ![0, 0, -1, 2, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -3, 1]]

theorem reductionSound11140 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9227).moment H =
      Integer.Sparse.eval reductionProjection11140 (momentVector H) := by
  have heq : reductionPivot11140 = (fun u v => (normalNode9227).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9227).moment H = injectiveMoment H reductionPivot11140 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9227).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11140 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11140 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11140 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1635, reductionProjection3040, reductionProjection4257, oldProjection1634] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11140 (0 : Fin 4)) = canonicalInput15947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1635 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15947 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11140 (1 : Fin 4)) = canonicalInput17902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3040 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3040 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17902 hH))).trans (reductionSound3040 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11140 (2 : Fin 4)) = canonicalInput17924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4257 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4257 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17924 hH))).trans (reductionSound4257 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11140 (3 : Fin 4)) = canonicalInput17928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1634 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11140 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17928 hH))).trans (oldProjectionSound1634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9227).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11140 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9227).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11140 (j : Fin 4)))
      2 2880 2880 2 ![1440, 288, 144, 720] ![2, 10, 20, 4] reductionProjection11140 ![oldProjection1635, reductionProjection3040, reductionProjection4257, oldProjection1634]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11141 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 40), (94, -25), (247, -80), (698, -240), (1219, 240), (1226, -80), (1227, -160), (1251, 15)]

def reductionPivot11141 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, -1, 1, -1]]

theorem reductionSound11141 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9932).moment H =
      Integer.Sparse.eval reductionProjection11141 (momentVector H) := by
  have heq : reductionPivot11141 = (fun u v => (normalNode9932).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9932).moment H = injectiveMoment H reductionPivot11141 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9932).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11141 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11141 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11141 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection972, oldProjection969, oldProjection1208, oldProjection974] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11141 (0 : Fin 4)) = canonicalInput22544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22544 hH))).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11141 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7097 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection969 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7097 hH))).trans (oldProjectionSound969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11141 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1208⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1208 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11141 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7081 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11141 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7081 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9932).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11141 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9932).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11141 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection11141 ![oldProjection972, oldProjection969, oldProjection1208, oldProjection974]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11142 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -80), (20, 15), (90, 240), (94, -5), (243, 320), (247, 80), (698, 640), (700, 320), (704, 80), (1004, 720), (1219, -480), (1226, 320), (1227, 320), (1251, -25)]

def reductionPivot11142 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 0, 1], ![0, 0, -1, 1, 0], ![0, 1, 0, 2, -3], ![1, 0, 1, -3, 1]]

theorem reductionSound11142 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9225).moment H =
      Integer.Sparse.eval reductionProjection11142 (momentVector H) := by
  have heq : reductionPivot11142 = (fun u v => (normalNode9225).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9225).moment H = injectiveMoment H reductionPivot11142 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9225).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11142 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11142 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11142 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2698, reductionProjection291, reductionProjection11141, reductionProjection11104] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11142 (0 : Fin 4)) = canonicalInput15924.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2698 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2698 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15924 hH))).trans (oldProjectionSound2698 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11142 (1 : Fin 4)) = canonicalInput17890.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection291 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection291 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17890 hH))).trans (reductionSound291 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11142 (2 : Fin 4)) = canonicalInput17917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11141 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17917 hH))).trans (reductionSound11141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11142 (3 : Fin 4)) = canonicalInput17918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11104 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11142 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11104 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17918 hH))).trans (reductionSound11104 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9225).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11142 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9225).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11142 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 1440, 1440] ![10, 2, 2, 2] reductionProjection11142 ![oldProjection2698, reductionProjection291, reductionProjection11141, reductionProjection11104]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11143 : Integer.Sparse (Fin 1613) := [(0, -8), (76, -960), (79, -480), (81, -480), (90, 480), (94, 105), (565, 1440), (630, 720), (669, 720), (697, -960), (698, 1120), (700, 560), (704, 240), (767, 720), (1059, 160), (1226, 320), (1251, 5)]

def reductionPivot11143 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 1, 0, -2], ![1, -1, 1, -1, 0]]

theorem reductionSound11143 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8038).moment H =
      Integer.Sparse.eval reductionProjection11143 (momentVector H) := by
  have heq : reductionPivot11143 = (fun u v => (normalNode8038).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8038).moment H = injectiveMoment H reductionPivot11143 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8038).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11143 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11143 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11143 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1948, reductionProjection2971, reductionProjection4992, reductionProjection2274] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11143 (0 : Fin 4)) = canonicalInput20409.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1948 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20409 hH))).trans (oldProjectionSound1948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11143 (1 : Fin 4)) = canonicalInput15592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2971 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15592 hH))).trans (reductionSound2971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11143 (2 : Fin 4)) = canonicalInput15539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4992 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15539 hH))).trans (reductionSound4992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11143 (3 : Fin 4)) = canonicalInput15536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2274 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11143 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2274 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15536 hH))).trans (reductionSound2274 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8038).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11143 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8038).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11143 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 288, 1440] ![2, 2, 10, 2] reductionProjection11143 ![oldProjection1948, reductionProjection2971, reductionProjection4992, reductionProjection2274]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11144 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 140), (20, -15), (76, 1920), (79, 960), (81, 1200), (87, 480), (88, -240), (90, -1360), (94, -320), (241, -320), (243, -640), (247, -240), (426, -1440), (434, -720), (549, -720), (565, -2160), (596, -720), (630, -1440), (669, -720), (697, 1200), (698, -4240), (700, -1200), (704, -320), (763, -720), (767, -720), (768, -720), (782, -720), (1004, -720), (1024, -720), (1055, 480), (1058, 960), (1059, -320), (1219, 480), (1226, -2320), (1227, -1200), (1250, -120), (1251, 330), (1323, 480), (1388, 240), (1389, 240)]

def reductionPivot11144 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, -1, 3], ![0, 0, -2, 3, -1], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, -1, 1, -1, 0]]

theorem reductionSound11144 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8033).moment H =
      Integer.Sparse.eval reductionProjection11144 (momentVector H) := by
  have heq : reductionPivot11144 = (fun u v => (normalNode8033).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8033).moment H = injectiveMoment H reductionPivot11144 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8033).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11144 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11144 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11144 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11140, reductionProjection11142, reductionProjection7014, reductionProjection11143, reductionProjection4968] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11144 (0 : Fin 5)) = canonicalInput17822.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11140 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11140 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17822 hH))).trans (reductionSound11140 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11144 (1 : Fin 5)) = canonicalInput15562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11142 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11142 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15562 hH))).trans (reductionSound11142 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11144 (2 : Fin 5)) = canonicalInput15534.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7014 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15534 hH))).trans (reductionSound7014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11144 (3 : Fin 5)) = (normalNode8038).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11143 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11143 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11143 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11144 (4 : Fin 5)) = canonicalInput15525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4968 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11144 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15525 hH))).trans (reductionSound4968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8033).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11144 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8033).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11144 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 2880, 2880] ![1, 1, 1, 1, 1] reductionProjection11144 ![reductionProjection11140, reductionProjection11142, reductionProjection7014, reductionProjection11143, reductionProjection4968]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11145 : Integer.Sparse (Fin 1613) := [(19, -12), (20, 1), (81, -96), (94, 28), (228, -96), (241, 16), (247, 32), (697, -48), (698, 192), (704, 16), (1058, -48), (1223, -48), (1226, 80), (1227, 64), (1250, 12), (1251, -21), (1389, -48)]

def reductionPivot11145 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 1, -2], ![1, 0, 1, -1, -1]]

theorem reductionSound11145 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8042).moment H =
      Integer.Sparse.eval reductionProjection11145 (momentVector H) := by
  have heq : reductionPivot11145 = (fun u v => (normalNode8042).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8042).moment H = injectiveMoment H reductionPivot11145 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8042).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11145 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11145 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11145 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1552, oldProjection2627, oldProjection2532, oldProjection1635] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11145 (0 : Fin 4)) = canonicalInput15485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1552 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15485 hH))).trans (oldProjectionSound1552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11145 (1 : Fin 4)) = canonicalInput15542.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2627 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2627 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15542 hH))).trans (oldProjectionSound2627 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11145 (2 : Fin 4)) = canonicalInput15551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15551 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11145 (3 : Fin 4)) = canonicalInput15552.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1635 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11145 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15552 hH))).trans (oldProjectionSound1635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8042).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11145 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8042).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11145 (j : Fin 4)))
      2 576 2880 10 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11145 ![oldProjection1552, oldProjection2627, oldProjection2532, oldProjection1635]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11146 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -40), (20, 5), (94, 20), (241, 80), (698, 960), (1226, 480), (1227, 160), (1251, -10)]

def reductionPivot11146 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, -1, 3], ![0, 0, -1, 2, -1], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11146 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8046).moment H =
      Integer.Sparse.eval reductionProjection11146 (momentVector H) := by
  have heq : reductionPivot11146 = (fun u v => (normalNode8046).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8046).moment H = injectiveMoment H reductionPivot11146 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8046).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11146 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11146 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11146 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11124, oldProjection970, oldProjection2532, oldProjection2532] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11146 (0 : Fin 4)) = canonicalInput17784.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11124 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11124 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17784 hH))).trans (reductionSound11124 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11146 (1 : Fin 4)) = canonicalInput15569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection970 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15569 hH))).trans (oldProjectionSound970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11146 (2 : Fin 4)) = canonicalInput15554.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15554 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11146 (3 : Fin 4)) = canonicalInput15551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11146 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15551 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8046).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11146 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8046).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11146 (j : Fin 4)))
      2 2880 2880 2 ![1440, 144, 1440, 1440] ![2, 20, 2, 2] reductionProjection11146 ![reductionProjection11124, oldProjection970, oldProjection2532, oldProjection2532]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11147 : Integer.Sparse (Fin 1613) := [(0, 11), (19, -60), (20, 10), (94, 40), (241, 320), (243, 160), (247, 80), (697, -240), (698, 640), (700, 160), (1058, -240), (1059, 240), (1223, -240), (1226, 240), (1227, 240), (1250, 60), (1251, -125)]

def reductionPivot11147 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound11147 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8056).moment H =
      Integer.Sparse.eval reductionProjection11147 (momentVector H) := by
  have heq : reductionPivot11147 = (fun u v => (normalNode8056).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8056).moment H = injectiveMoment H reductionPivot11147 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8056).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11147 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11147 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11147 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1548, oldProjection2531, oldProjection2742, oldProjection1631] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11147 (0 : Fin 4)) = canonicalInput15488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1548 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15488 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11147 (1 : Fin 4)) = canonicalInput15567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2531 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15567 hH))).trans (oldProjectionSound2531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11147 (2 : Fin 4)) = canonicalInput15573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2742 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15573 hH))).trans (oldProjectionSound2742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11147 (3 : Fin 4)) = canonicalInput15574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1631 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11147 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15574 hH))).trans (oldProjectionSound1631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8056).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11147 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8056).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11147 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 288] ![2, 2, 4, 10] reductionProjection11147 ![oldProjection1548, oldProjection2531, oldProjection2742, oldProjection1631]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11148 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -40), (20, 5), (94, 25), (247, 40), (698, 80), (704, 40), (1251, -85)]

def reductionPivot11148 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, -1, 3], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound11148 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8057).moment H =
      Integer.Sparse.eval reductionProjection11148 (momentVector H) := by
  have heq : reductionPivot11148 = (fun u v => (normalNode8057).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8057).moment H = injectiveMoment H reductionPivot11148 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8057).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11148 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11148 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11148 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2401, oldProjection2813, oldProjection2708, oldProjection2551] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11148 (0 : Fin 4)) = canonicalInput15490.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2401 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2401 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15490 hH))).trans (oldProjectionSound2401 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11148 (1 : Fin 4)) = canonicalInput15579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2813 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2813 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15579 hH))).trans (oldProjectionSound2813 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11148 (2 : Fin 4)) = canonicalInput15580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2708 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2708 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15580 hH))).trans (oldProjectionSound2708 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11148 (3 : Fin 4)) = canonicalInput15581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2551 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11148 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15581 hH))).trans (oldProjectionSound2551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8057).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11148 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8057).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11148 (j : Fin 4)))
      2 1440 1440 2 ![720, 1440, 720, 288] ![2, 1, 2, 5] reductionProjection11148 ![oldProjection2401, oldProjection2813, oldProjection2708, oldProjection2551]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11149 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -32), (20, 3), (94, 24), (241, 16), (247, 48), (698, 64), (704, 16), (1251, -20)]

def reductionPivot11149 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, -1, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11149 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8058).moment H =
      Integer.Sparse.eval reductionProjection11149 (momentVector H) := by
  have heq : reductionPivot11149 = (fun u v => (normalNode8058).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8058).moment H = injectiveMoment H reductionPivot11149 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8058).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11149 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11149 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11149 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2400, oldProjection2551, oldProjection2704, oldProjection2767] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11149 (0 : Fin 4)) = canonicalInput15491.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2400 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2400 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15491 hH))).trans (oldProjectionSound2400 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11149 (1 : Fin 4)) = canonicalInput15581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2551 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15581 hH))).trans (oldProjectionSound2551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11149 (2 : Fin 4)) = canonicalInput15583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15583 hH))).trans (oldProjectionSound2704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11149 (3 : Fin 4)) = canonicalInput15584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11149 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15584 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8058).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11149 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8058).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11149 (j : Fin 4)))
      2 576 2880 10 ![1440, 288, 1440, 720] ![2, 10, 2, 4] reductionProjection11149 ![oldProjection2400, oldProjection2551, oldProjection2704, oldProjection2767]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11150 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, -20), (241, 80), (698, -160), (1226, 80), (1227, 80)]

def reductionPivot11150 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11150 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8059).moment H =
      Integer.Sparse.eval reductionProjection11150 (momentVector H) := by
  have heq : reductionPivot11150 = (fun u v => (normalNode8059).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8059).moment H = injectiveMoment H reductionPivot11150 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8059).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11150 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11150 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11150 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2701, oldProjection2704, oldProjection974, oldProjection2742] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11150 (0 : Fin 4)) = canonicalInput17787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2701 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2701 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17787 hH))).trans (oldProjectionSound2701 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11150 (1 : Fin 4)) = canonicalInput15583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15583 hH))).trans (oldProjectionSound2704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11150 (2 : Fin 4)) = canonicalInput15575.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15575 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11150 (3 : Fin 4)) = canonicalInput15573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2742 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11150 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15573 hH))).trans (oldProjectionSound2742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8059).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11150 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8059).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11150 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 720, 720] ![10, 2, 4, 4] reductionProjection11150 ![oldProjection2701, oldProjection2704, oldProjection974, oldProjection2742]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11151 : Integer.Sparse (Fin 1613) := [(0, -1), (94, -10), (698, -80), (700, -80), (1251, 15)]

def reductionPivot11151 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound11151 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10276).moment H =
      Integer.Sparse.eval reductionProjection11151 (momentVector H) := by
  have heq : reductionPivot11151 = (fun u v => (normalNode10276).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10276).moment H = injectiveMoment H reductionPivot11151 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10276).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11151 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11151 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 240, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11151 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection978, oldProjection974, oldProjection285, oldProjection1268] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11151 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node978⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection978 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection978 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound978 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11151 (1 : Fin 4)) = canonicalInput20218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20218 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11151 (2 : Fin 4)) = canonicalInput20306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection285 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection285 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20306 hH))).trans (oldProjectionSound285 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11151 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1268⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1268 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11151 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10276).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11151 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10276).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11151 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 240, 360] ![2, 2, 6, 4] reductionProjection11151 ![oldProjection978, oldProjection974, oldProjection285, oldProjection1268]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11152 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 1), (698, -32), (700, 16), (1059, 16), (1226, 16), (1227, 16), (1251, -5)]

def reductionPivot11152 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 0, -1, 3], ![0, 0, 0, 2, -2], ![0, 1, -1, 0, 0], ![1, 0, 0, -1, 0]]

theorem reductionSound11152 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8060).moment H =
      Integer.Sparse.eval reductionProjection11152 (momentVector H) := by
  have heq : reductionPivot11152 = (fun u v => (normalNode8060).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8060).moment H = injectiveMoment H reductionPivot11152 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8060).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11152 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11152 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11152 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2758, reductionProjection11151, oldProjection974, oldProjection2742] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11152 (0 : Fin 4)) = canonicalInput17852.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17852 hH))).trans (oldProjectionSound2758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11152 (1 : Fin 4)) = canonicalInput15585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11151 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11151 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15585 hH))).trans (reductionSound11151 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11152 (2 : Fin 4)) = canonicalInput15576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15576 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11152 (3 : Fin 4)) = canonicalInput15573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2742 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11152 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15573 hH))).trans (oldProjectionSound2742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8060).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11152 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8060).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11152 (j : Fin 4)))
      2 576 2880 10 ![1440, 1440, 720, 720] ![2, 2, 4, 4] reductionProjection11152 ![oldProjection2758, reductionProjection11151, oldProjection974, oldProjection2742]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11153 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 20), (1227, 80), (1251, -145)]

def reductionPivot11153 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11153 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8361).moment H =
      Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
  have heq : reductionPivot11153 = (fun u v => (normalNode8361).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8361).moment H = injectiveMoment H reductionPivot11153 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8361).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11153 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11153 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 80, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11153 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10829, oldProjection61, oldProjection2724, oldProjection2724] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11153 (0 : Fin 4)) = canonicalInput14928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10829 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14928 hH))).trans (reductionSound10829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11153 (1 : Fin 4)) = canonicalInput15983.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((80 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection61 (momentVector H)
      have hh : (80 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection61 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15983 hH))).trans (oldProjectionSound61 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11153 (2 : Fin 4)) = canonicalInput16062.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16062 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11153 (3 : Fin 4)) = canonicalInput16065.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11153 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16065 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8361).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11153 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8361).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11153 (j : Fin 4)))
      2 1440 1440 2 ![720, 80, 1440, 1440] ![2, 18, 1, 1] reductionProjection11153 ![reductionProjection10829, oldProjection61, oldProjection2724, oldProjection2724]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11154 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -5), (94, 15), (241, 20), (698, 160), (1050, -60), (1059, 100), (1221, -120), (1227, 40), (1250, 15), (1251, -40), (1389, -120)]

def reductionPivot11154 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -2, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound11154 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8384).moment H =
      Integer.Sparse.eval reductionProjection11154 (momentVector H) := by
  have heq : reductionPivot11154 = (fun u v => (normalNode8384).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8384).moment H = injectiveMoment H reductionPivot11154 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8384).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11154 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11154 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11154 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1241, oldProjection2814, oldProjection2583, oldProjection1752] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11154 (0 : Fin 4)) = canonicalInput20673.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1241 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1241 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20673 hH))).trans (oldProjectionSound1241 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11154 (1 : Fin 4)) = canonicalInput16164.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2814 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2814 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16164 hH))).trans (oldProjectionSound2814 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11154 (2 : Fin 4)) = canonicalInput15949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15949 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11154 (3 : Fin 4)) = canonicalInput15931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1752 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11154 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1752 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15931 hH))).trans (oldProjectionSound1752 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8384).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11154 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8384).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11154 (j : Fin 4)))
      2 720 720 2 ![720, 720, 720, 720] ![1, 1, 1, 1] reductionProjection11154 ![oldProjection1241, oldProjection2814, oldProjection2583, oldProjection1752]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11155 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, -80), (1227, -160), (1251, 50)]

def reductionPivot11155 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -1, 2], ![0, -1, 2, -1], ![0, 1, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound11155 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10294).moment H =
      Integer.Sparse.eval reductionProjection11155 (momentVector H) := by
  have heq : reductionPivot11155 = (fun u v => (normalNode10294).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10294).moment H = injectiveMoment H reductionPivot11155 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10294).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11155 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11155 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 90, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11155 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection974, oldProjection1048, oldProjection1245, oldProjection1246] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11155 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7081 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7081 hH))).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11155 (1 : Fin 4)) = canonicalInput20208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20208 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11155 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1245 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11155 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1246⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1246 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11155 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10294).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11155 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10294).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11155 (j : Fin 4)))
      2 1440 1440 2 ![720, 90, 144, 144] ![2, 16, 10, 10] reductionProjection11155 ![oldProjection974, oldProjection1048, oldProjection1245, oldProjection1246]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11156 : Integer.Sparse (Fin 1613) := [(0, 26), (94, 15), (698, 560), (1059, 320), (1227, 400), (1251, -175)]

def reductionPivot11156 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11156 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8387).moment H =
      Integer.Sparse.eval reductionProjection11156 (momentVector H) := by
  have heq : reductionPivot11156 = (fun u v => (normalNode8387).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8387).moment H = injectiveMoment H reductionPivot11156 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8387).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11156 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11156 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 90, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11156 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11155, oldProjection1048, oldProjection2583, oldProjection2588] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11156 (0 : Fin 4)) = canonicalInput17834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11155 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11155 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17834 hH))).trans (reductionSound11155 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11156 (1 : Fin 4)) = canonicalInput16010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16010 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11156 (2 : Fin 4)) = canonicalInput15949.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2583 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2583 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15949 hH))).trans (oldProjectionSound2583 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11156 (3 : Fin 4)) = canonicalInput15945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11156 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15945 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8387).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11156 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8387).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11156 (j : Fin 4)))
      2 2880 2880 2 ![1440, 90, 720, 1440] ![2, 32, 4, 2] reductionProjection11156 ![reductionProjection11155, oldProjection1048, oldProjection2583, oldProjection2588]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11157 : Integer.Sparse (Fin 1613) := [(0, -51), (19, 60), (20, -5), (94, -150), (241, -160), (698, -2720), (1050, 240), (1059, -1040), (1221, 480), (1226, -480), (1227, -1280), (1250, -60), (1251, 810), (1389, 480)]

def reductionPivot11157 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 0, 0, 2], ![0, 0, -1, 2, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11157 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8379).moment H =
      Integer.Sparse.eval reductionProjection11157 (momentVector H) := by
  have heq : reductionPivot11157 = (fun u v => (normalNode8379).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8379).moment H = injectiveMoment H reductionPivot11157 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8379).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11157 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11157 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 720, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11157 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11146, reductionProjection11153, reductionProjection11154, reductionProjection11156, reductionProjection11156] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11157 (0 : Fin 5)) = (normalNode8046).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11146 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11146 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11146 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11157 (1 : Fin 5)) = (normalNode8361).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11157 (2 : Fin 5)) = (normalNode8384).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11154 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11157 (3 : Fin 5)) = (normalNode8387).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11156 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11157 (4 : Fin 5)) = canonicalInput15932.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11156 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11157 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15932 hH))).trans (reductionSound11156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8379).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11157 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8379).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11157 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 720, 2880, 2880] ![1, 2, 4, 1, 1] reductionProjection11157 ![reductionProjection11146, reductionProjection11153, reductionProjection11154, reductionProjection11156, reductionProjection11156]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11158 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 5), (241, 40), (698, 160), (864, 180), (1050, -240), (1059, 40), (1221, -240), (1226, 40), (1227, 40), (1251, 30)]

def reductionPivot11158 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 2, -2, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11158 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8295).moment H =
      Integer.Sparse.eval reductionProjection11158 (momentVector H) := by
  have heq : reductionPivot11158 = (fun u v => (normalNode8295).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8295).moment H = injectiveMoment H reductionPivot11158 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8295).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11158 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11158 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11158 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1357, oldProjection2805, oldProjection2805, oldProjection1998] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11158 (0 : Fin 4)) = canonicalInput20665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1357 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1357 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20665 hH))).trans (oldProjectionSound1357 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11158 (1 : Fin 4)) = canonicalInput16150.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16150 hH))).trans (oldProjectionSound2805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11158 (2 : Fin 4)) = canonicalInput15811.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2805 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2805 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15811 hH))).trans (oldProjectionSound2805 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11158 (3 : Fin 4)) = canonicalInput15794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1998 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11158 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15794 hH))).trans (oldProjectionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8295).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11158 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8295).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11158 (j : Fin 4)))
      2 720 720 2 ![360, 720, 720, 360] ![2, 1, 1, 2] reductionProjection11158 ![oldProjection1357, oldProjection2805, oldProjection2805, oldProjection1998]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11159 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 2), (94, -21), (241, -40), (698, -272), (864, -72), (869, -144), (1050, 168), (1055, 48), (1059, -120), (1221, 240), (1226, -32), (1227, -128), (1250, -6), (1251, 86), (1389, 96)]

def reductionPivot11159 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 0, 0, 2], ![0, 0, -2, 2, 0], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11159 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode8282).moment H =
      Integer.Sparse.eval reductionProjection11159 (momentVector H) := by
  have heq : reductionPivot11159 = (fun u v => (normalNode8282).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8282).moment H = injectiveMoment H reductionPivot11159 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8282).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11159 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11159 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 720, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11159 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11154, reductionProjection11153, reductionProjection11158, reductionProjection7188, reductionProjection7188] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11159 (0 : Fin 5)) = canonicalInput17809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11154 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11154 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17809 hH))).trans (reductionSound11154 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11159 (1 : Fin 5)) = (normalNode8361).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11159 (2 : Fin 5)) = (normalNode8295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11158 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11159 (3 : Fin 5)) = canonicalInput15789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15789 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11159 (4 : Fin 5)) = (normalNode8288).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11159 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8282).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11159 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8282).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11159 (j : Fin 5)))
      1 288 2880 10 ![720, 1440, 720, 2880, 2880] ![4, 2, 4, 1, 1] reductionProjection11159 ![reductionProjection11154, reductionProjection11153, reductionProjection11158, reductionProjection7188, reductionProjection7188]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11160 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 10), (241, 80), (698, 960), (956, 720), (1055, -480), (1059, 160), (1226, 240), (1227, 160), (1251, -135)]

def reductionPivot11160 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 2, -1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11160 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10038).moment H =
      Integer.Sparse.eval reductionProjection11160 (momentVector H) := by
  have heq : reductionPivot11160 = (fun u v => (normalNode10038).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10038).moment H = injectiveMoment H reductionPivot11160 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10038).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11160 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11160 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11160 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3501, oldProjection1245, oldProjection2806, oldProjection2056] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11160 (0 : Fin 4)) = canonicalInput22692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3501 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound22692 hH))).trans (reductionSound3501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11160 (1 : Fin 4)) = canonicalInput19863.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1245 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19863 hH))).trans (oldProjectionSound1245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11160 (2 : Fin 4)) = canonicalInput19776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2806 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19776 hH))).trans (oldProjectionSound2806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11160 (3 : Fin 4)) = canonicalInput19769.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2056 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11160 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2056 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19769 hH))).trans (oldProjectionSound2056 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10038).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11160 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10038).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11160 (j : Fin 4)))
      2 2880 2880 2 ![1440, 144, 1440, 1440] ![2, 20, 2, 2] reductionProjection11160 ![reductionProjection3501, oldProjection1245, oldProjection2806, oldProjection2056]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11161 : Integer.Sparse (Fin 1613) := [(0, 18), (94, 15), (241, 40), (698, 400), (957, 360), (1055, -240), (1059, 80), (1226, 40), (1227, 440), (1251, -175)]

def reductionPivot11161 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11161 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10036).moment H =
      Integer.Sparse.eval reductionProjection11161 (momentVector H) := by
  have heq : reductionPivot11161 = (fun u v => (normalNode10036).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10036).moment H = injectiveMoment H reductionPivot11161 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10036).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11161 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11161 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11161 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2587, oldProjection2724, oldProjection2806, oldProjection2057] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11161 (0 : Fin 4)) = canonicalInput20441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2587 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20441 hH))).trans (oldProjectionSound2587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11161 (1 : Fin 4)) = canonicalInput19785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19785 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11161 (2 : Fin 4)) = canonicalInput19776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2806 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19776 hH))).trans (oldProjectionSound2806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11161 (3 : Fin 4)) = canonicalInput19774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2057 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11161 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2057 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19774 hH))).trans (oldProjectionSound2057 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10036).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11161 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10036).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11161 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 1440, 1440] ![1, 1, 1, 1] reductionProjection11161 ![oldProjection2587, oldProjection2724, oldProjection2806, oldProjection2057]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11162 : Integer.Sparse (Fin 1613) := [(0, -15), (94, -28), (241, -48), (698, -608), (869, -144), (956, -144), (957, -144), (1050, 48), (1055, 240), (1059, -192), (1221, 96), (1226, -80), (1227, -400), (1251, 243), (1389, 48)]

def reductionPivot11162 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, -1, 0, 2], ![0, -1, -1, 2, 0], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11162 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode10034).moment H =
      Integer.Sparse.eval reductionProjection11162 (momentVector H) := by
  have heq : reductionPivot11162 = (fun u v => (normalNode10034).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10034).moment H = injectiveMoment H reductionPivot11162 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10034).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11162 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11162 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11162 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11156, reductionProjection11153, reductionProjection11160, reductionProjection7188, reductionProjection11161] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11162 (0 : Fin 5)) = canonicalInput20438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11156 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20438 hH))).trans (reductionSound11156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11162 (1 : Fin 5)) = canonicalInput19781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19781 hH))).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11162 (2 : Fin 5)) = (normalNode10038).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11160 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11162 (3 : Fin 5)) = canonicalInput19767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7188 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19767 hH))).trans (reductionSound7188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11162 (4 : Fin 5)) = canonicalInput19766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11161 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11162 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19766 hH))).trans (reductionSound11161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode10034).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11162 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10034).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11162 (j : Fin 5)))
      1 576 2880 5 ![2880, 1440, 2880, 2880, 1440] ![1, 2, 1, 1, 2] reductionProjection11162 ![reductionProjection11156, reductionProjection11153, reductionProjection11160, reductionProjection7188, reductionProjection11161]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11163 : Integer.Sparse (Fin 1613) := [(0, 237), (19, -80), (20, 5), (94, 600), (241, 1040), (698, 11520), (864, 720), (869, 2880), (956, 1440), (957, 1440), (1050, -2400), (1055, -2880), (1059, 4160), (1221, -3840), (1226, 1600), (1227, 6400), (1250, 120), (1251, -3810), (1389, -1920)]

def reductionPivot11163 : Matrix (Fin 6) (Fin 6) ℤ := ![![0, 0, 0, 1, -1, 0], ![-1, -1, 0, 0, 0, 2], ![0, 0, -1, -1, 2, 0], ![0, 0, 1, 0, -1, 0], ![0, 1, 0, 0, 0, -1], ![1, 0, 0, 0, 0, -1]]

theorem reductionSound11163 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8066).moment H =
      Integer.Sparse.eval reductionProjection11163 (momentVector H) := by
  have heq : reductionPivot11163 = (fun u v => (normalNode8066).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8066).moment H = injectiveMoment H reductionPivot11163 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 6) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8066).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11163 0 = Pi.single (3 : Fin 6) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11163 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 288, 576, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11163 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11157, reductionProjection11153, reductionProjection11159, reductionProjection11162, reductionProjection11162] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11163 (0 : Fin 5)) = canonicalInput16207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11157 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11157 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound16207 hH))).trans (reductionSound11157 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11163 (1 : Fin 5)) = canonicalInput15611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15611 hH))).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11163 (2 : Fin 5)) = canonicalInput15608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11159 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15608 hH))).trans (reductionSound11159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11163 (3 : Fin 5)) = canonicalInput15607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11162 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15607 hH))).trans (reductionSound11162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11163 (4 : Fin 5)) = canonicalInput15606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11162 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11163 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11162 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 6) ℤ => injectiveMoment H M) he).trans (canonicalSound15606 hH))).trans (reductionSound11162 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8066).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11163 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8066).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11163 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 288, 576, 576] ![1, 2, 10, 5, 5] reductionProjection11163 ![reductionProjection11157, reductionProjection11153, reductionProjection11159, reductionProjection11162, reductionProjection11162]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11164 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 20), (1227, 80), (1251, 85)]

def reductionPivot11164 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 0, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11164 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8365).moment H =
      Integer.Sparse.eval reductionProjection11164 (momentVector H) := by
  have heq : reductionPivot11164 = (fun u v => (normalNode8365).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8365).moment H = injectiveMoment H reductionPivot11164 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8365).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11164 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11164 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 90, 90, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11164 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10829, oldProjection1048, oldProjection1048, oldProjection2725] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11164 (0 : Fin 4)) = canonicalInput14943.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10829 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14943 hH))).trans (reductionSound10829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11164 (1 : Fin 4)) = canonicalInput16010.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16010 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11164 (2 : Fin 4)) = canonicalInput16072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16072 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11164 (3 : Fin 4)) = canonicalInput16079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2725 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11164 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16079 hH))).trans (oldProjectionSound2725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8365).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11164 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8365).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11164 (j : Fin 4)))
      2 2880 2880 2 ![720, 90, 90, 1440] ![4, 32, 32, 2] reductionProjection11164 ![reductionProjection10829, oldProjection1048, oldProjection1048, oldProjection2725]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11165 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -5), (698, -80), (1227, -160), (1251, 50)]

def reductionPivot11165 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 0, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11165 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8323).moment H =
      Integer.Sparse.eval reductionProjection11165 (momentVector H) := by
  have heq : reductionPivot11165 = (fun u v => (normalNode8323).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8323).moment H = injectiveMoment H reductionPivot11165 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8323).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11165 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11165 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 720, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11165 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10830, reductionProjection11153, reductionProjection10829, reductionProjection11164, reductionProjection11164] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11165 (0 : Fin 5)) = (normalNode7538).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10830 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10830 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound10830 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11165 (1 : Fin 5)) = (normalNode8361).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11153 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11153 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound11153 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11165 (2 : Fin 5)) = canonicalInput15984.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10829 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15984 hH))).trans (reductionSound10829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11165 (3 : Fin 5)) = canonicalInput15990.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11164 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15990 hH))).trans (reductionSound11164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11165 (4 : Fin 5)) = canonicalInput15991.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11164 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11165 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11164 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15991 hH))).trans (reductionSound11164 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode8323).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11165 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8323).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11165 (j : Fin 5)))
      1 1440 2880 2 ![288, 1440, 720, 2880, 2880] ![10, 2, 4, 1, 1] reductionProjection11165 ![reductionProjection10830, reductionProjection11153, reductionProjection10829, reductionProjection11164, reductionProjection11164]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11166 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 5), (698, -80), (1227, -80), (1251, -105)]

def reductionPivot11166 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -1, 2], ![0, 0, 2, -2], ![0, 1, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound11166 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10273).moment H =
      Integer.Sparse.eval reductionProjection11166 (momentVector H) := by
  have heq : reductionPivot11166 = (fun u v => (normalNode10273).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10273).moment H = injectiveMoment H reductionPivot11166 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10273).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11166 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11166 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 240, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11166 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection974, oldProjection1245, oldProjection284, oldProjection1264] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11166 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node974⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection974 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection974 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound974 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11166 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1245⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1245 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11166 (2 : Fin 4)) = canonicalInput20296.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection284 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20296 hH))).trans (oldProjectionSound284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11166 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1264⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1264 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11166 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1264 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1264 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10273).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11166 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10273).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11166 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 240, 720] ![2, 10, 6, 2] reductionProjection11166 ![oldProjection974, oldProjection1245, oldProjection284, oldProjection1264]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11167 : Integer.Sparse (Fin 1613) := [(0, 17), (698, 80), (1227, -80), (1251, 55)]

def reductionPivot11167 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, 0, 0, -1, 2], ![0, -1, 0, 2, -1], ![0, 1, -1, 0, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound11167 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10404).moment H =
      Integer.Sparse.eval reductionProjection11167 (momentVector H) := by
  have heq : reductionPivot11167 = (fun u v => (normalNode10404).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10404).moment H = injectiveMoment H reductionPivot11167 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10404).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11167 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11167 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 144, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11167 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11166, oldProjection2724, oldProjection1245, oldProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11167 (0 : Fin 4)) = canonicalInput21658.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11166 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11166 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21658 hH))).trans (reductionSound11166 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11167 (1 : Fin 4)) = canonicalInput20463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2724 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2724 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20463 hH))).trans (oldProjectionSound2724 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11167 (2 : Fin 4)) = canonicalInput20445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1245 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1245 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20445 hH))).trans (oldProjectionSound1245 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11167 (3 : Fin 4)) = canonicalInput20444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11167 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20444 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10404).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11167 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10404).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11167 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 144, 288] ![1, 1, 10, 5] reductionProjection11167 ![reductionProjection11166, oldProjection2724, oldProjection1245, oldProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
