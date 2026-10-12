import NoFourMUBs.Step2.SOS.Canonical124
import NoFourMUBs.Step2.SOS.Canonical218
import NoFourMUBs.Step2.SOS.Canonical220
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical268
import NoFourMUBs.Step2.SOS.Canonical275
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical287
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical289
import NoFourMUBs.Step2.SOS.Canonical290
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical302
import NoFourMUBs.Step2.SOS.Canonical309
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical312
import NoFourMUBs.Step2.SOS.Canonical324
import NoFourMUBs.Step2.SOS.Canonical328
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical380
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions020
import NoFourMUBs.Step2.SOS.Reductions030
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions051
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions091
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions117
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions151
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions160
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions176
import NoFourMUBs.Step2.SOS.Reductions184
import NoFourMUBs.Step2.SOS.Reductions207
import NoFourMUBs.Step2.SOS.Reductions223
import NoFourMUBs.Step2.SOS.Reductions236
import NoFourMUBs.Step2.SOS.Reductions291
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions323
import NoFourMUBs.Step2.SOS.Reductions327
import NoFourMUBs.Step2.SOS.Reductions328
import NoFourMUBs.Step2.SOS.Reductions338
import NoFourMUBs.Step2.SOS.Reductions339
import NoFourMUBs.Step2.SOS.Reductions349
import NoFourMUBs.Step2.SOS.Reductions352
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions354
import NoFourMUBs.Step2.SOS.Reductions355
import NoFourMUBs.Step2.SOS.Reductions356
import NoFourMUBs.Step2.SOS.Reductions365
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical207
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical208
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical210
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical216
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes41
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11712 : Integer.Sparse (Fin 1613) := [(0, 21), (81, -240), (90, 80), (94, 100), (698, 1440), (700, 320), (1059, 640), (1221, -240), (1226, 240), (1227, 560), (1251, -305), (1389, -240)]

def reductionPivot11712 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, -2, 0], ![1, 0, 1, -2]]

theorem reductionSound11712 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9406).moment H =
      Integer.Sparse.eval reductionProjection11712 (momentVector H) := by
  have heq : reductionPivot11712 = (fun u v => (normalNode9406).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9406).moment H = injectiveMoment H reductionPivot11712 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9406).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11712 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11712 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11712 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection5395, reductionProjection11709, reductionProjection971, reductionProjection11711, oldProjection2643] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11712 (0 : Fin 5)) = (normalNode6995).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5395 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5395 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5395 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11712 (1 : Fin 5)) = (normalNode9382).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11709 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11712 (2 : Fin 5)) = canonicalInput18235.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection971 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18235 hH))).trans (reductionSound971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11712 (3 : Fin 5)) = (normalNode9459).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11711 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11712 (4 : Fin 5)) = canonicalInput18238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2643 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11712 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2643 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18238 hH))).trans (oldProjectionSound2643 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9406).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11712 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9406).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11712 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 288, 1440] ![5, 1, 1, 5, 1] reductionProjection11712 ![reductionProjection5395, reductionProjection11709, reductionProjection971, reductionProjection11711, oldProjection2643]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11713 : Integer.Sparse (Fin 1613) := [(0, 2), (81, -48), (90, 32), (94, 11), (698, 272), (700, 16), (1059, 16), (1226, 144), (1227, 128), (1251, -51)]

def reductionPivot11713 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound11713 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9407).moment H =
      Integer.Sparse.eval reductionProjection11713 (momentVector H) := by
  have heq : reductionPivot11713 = (fun u v => (normalNode9407).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9407).moment H = injectiveMoment H reductionPivot11713 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9407).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11713 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11713 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 144, 1440, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11713 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2444, reductionProjection3751, oldProjection2638, reductionProjection7573, oldProjection2646] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11713 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2444⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2444 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2444 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11713 (1 : Fin 5)) = (normalNode9396).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3751 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11713 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6647 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2638 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6647 hH))).trans (oldProjectionSound2638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11713 (3 : Fin 5)) = canonicalInput18244.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7573 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7573 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18244 hH))).trans (reductionSound7573 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11713 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2646⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2646 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11713 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9407).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11713 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9407).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11713 (j : Fin 5)))
      1 288 1440 5 ![1440, 144, 1440, 720, 288] ![1, 10, 1, 2, 5] reductionProjection11713 ![oldProjection2444, reductionProjection3751, oldProjection2638, reductionProjection7573, oldProjection2646]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11714 : Integer.Sparse (Fin 1613) := [(0, -3), (94, 45), (698, 80), (1227, 320), (1251, -340)]

def reductionPivot11714 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound11714 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9410).moment H =
      Integer.Sparse.eval reductionProjection11714 (momentVector H) := by
  have heq : reductionPivot11714 = (fun u v => (normalNode9410).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9410).moment H = injectiveMoment H reductionPivot11714 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9410).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11714 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11714 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 1440, 720, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11714 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2449, oldProjection2783, oldProjection2642, oldProjection1118, reductionProjection5152] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11714 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2449⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11714 (1 : Fin 5)) = canonicalInput18206.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2783 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18206 hH))).trans (oldProjectionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11714 (2 : Fin 5)) = canonicalInput18256.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18256 hH))).trans (oldProjectionSound2642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11714 (3 : Fin 5)) = canonicalInput18261.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1118 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1118 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18261 hH))).trans (oldProjectionSound1118 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11714 (4 : Fin 5)) = canonicalInput18262.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5152 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11714 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18262 hH))).trans (reductionSound5152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9410).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11714 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9410).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11714 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 1440, 720, 144] ![1, 2, 1, 2, 10] reductionProjection11714 ![oldProjection2449, oldProjection2783, oldProjection2642, oldProjection1118, reductionProjection5152]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11715 : Integer.Sparse (Fin 1613) := [(0, 9), (81, -480), (90, 240), (94, 125), (698, 1760), (700, 160), (1059, 160), (1226, 880), (1227, 800), (1251, -240)]

def reductionPivot11715 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 1, 1, -2], ![0, 2, -3, 1], ![1, -1, 0, 0]]

theorem reductionSound11715 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9411).moment H =
      Integer.Sparse.eval reductionProjection11715 (momentVector H) := by
  have heq : reductionPivot11715 = (fun u v => (normalNode9411).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9411).moment H = injectiveMoment H reductionPivot11715 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9411).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11715 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11715 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 120, 72, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11715 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10493, oldProjection2779, oldProjection2640, oldProjection2644, reductionProjection3715] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11715 (0 : Fin 5)) = (normalNode7036).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10493 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10493 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10493 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11715 (1 : Fin 5)) = canonicalInput18207.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2779 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18207 hH))).trans (oldProjectionSound2779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11715 (2 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6669 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2640 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6669 hH))).trans (oldProjectionSound2640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11715 (3 : Fin 5)) = canonicalInput18264.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2644 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2644 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18264 hH))).trans (oldProjectionSound2644 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11715 (4 : Fin 5)) = canonicalInput18265.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3715 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11715 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18265 hH))).trans (reductionSound3715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9411).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11715 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9411).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11715 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 120, 72, 1440] ![1, 2, 12, 20, 1] reductionProjection11715 ![reductionProjection10493, oldProjection2779, oldProjection2640, oldProjection2644, reductionProjection3715]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11716 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -5), (88, -80), (90, -160), (94, -45), (241, -80), (243, -160), (698, -480), (700, -240), (704, -80), (1226, -240), (1227, -80), (1251, -5)]

def reductionPivot11716 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, 0, -3, 2]]

theorem reductionSound11716 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9415).moment H =
      Integer.Sparse.eval reductionProjection11716 (momentVector H) := by
  have heq : reductionPivot11716 = (fun u v => (normalNode9415).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9415).moment H = injectiveMoment H reductionPivot11716 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9415).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11716 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11716 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11716 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection5397, oldProjection950, oldProjection1116, oldProjection982] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11716 (0 : Fin 4)) = (normalNode7040).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5397 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11716 (1 : Fin 4)) = canonicalInput18211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection950 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection950 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18211 hH))).trans (oldProjectionSound950 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11716 (2 : Fin 4)) = canonicalInput18266.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18266 hH))).trans (oldProjectionSound1116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11716 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6679 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection982 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11716 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6679 hH))).trans (oldProjectionSound982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9415).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11716 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9415).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11716 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 720] ![10, 2, 2, 2] reductionProjection11716 ![reductionProjection5397, oldProjection950, oldProjection1116, oldProjection982]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11717 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 40), (20, -10), (88, -80), (90, -80), (94, 25), (241, -80), (243, -160), (698, -160), (1226, -80), (1251, -10)]

def reductionPivot11717 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, -1, 1, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -3, 2]]

theorem reductionSound11717 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9426).moment H =
      Integer.Sparse.eval reductionProjection11717 (momentVector H) := by
  have heq : reductionPivot11717 = (fun u v => (normalNode9426).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9426).moment H = injectiveMoment H reductionPivot11717 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9426).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11717 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11717 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 24, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11717 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1181, oldProjection263, oldProjection1109, oldProjection1128] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11717 (0 : Fin 4)) = (normalNode7076).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1181 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1181 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1181 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11717 (1 : Fin 4)) = canonicalInput18252.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection263 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection263 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18252 hH))).trans (oldProjectionSound263 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11717 (2 : Fin 4)) = canonicalInput18321.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1109 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18321 hH))).trans (oldProjectionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11717 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1128 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11717 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9426).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11717 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9426).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11717 (j : Fin 4)))
      2 1440 1440 2 ![72, 24, 720, 144] ![20, 60, 2, 10] reductionProjection11717 ![reductionProjection1181, oldProjection263, oldProjection1109, oldProjection1128]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11718 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 90), (20, -15), (42, -40), (94, -45), (241, -40), (243, -120), (247, -40), (698, -80), (700, -80), (701, -40), (704, -200), (1251, -45)]

def reductionPivot11718 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, -1, -2, 2]]

theorem reductionSound11718 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9428).moment H =
      Integer.Sparse.eval reductionProjection11718 (momentVector H) := by
  have heq : reductionPivot11718 = (fun u v => (normalNode9428).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9428).moment H = injectiveMoment H reductionPivot11718 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9428).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11718 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11718 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11718 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10141, oldProjection893, oldProjection921, oldProjection922] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11718 (0 : Fin 4)) = canonicalInput14087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10141 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10141 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14087 hH))).trans (reductionSound10141 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11718 (1 : Fin 4)) = canonicalInput18204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection893 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18204 hH))).trans (oldProjectionSound893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11718 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6663 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection921 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6663 hH))).trans (oldProjectionSound921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11718 (3 : Fin 4)) = canonicalInput18249.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11718 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18249 hH))).trans (oldProjectionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9428).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11718 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9428).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11718 (j : Fin 4)))
      2 720 720 2 ![144, 720, 720, 144] ![5, 1, 1, 5] reductionProjection11718 ![reductionProjection10141, oldProjection893, oldProjection921, oldProjection922]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11719 : Integer.Sparse (Fin 1613) := [(4, 1), (20, 10), (94, 1), (1213, -24)]

def reductionPivot11719 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, 0, 0, 1], ![1, -4, 4, -1], ![1, 4, -4, -1]]

theorem reductionSound11719 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode9431).moment H =
      Integer.Sparse.eval reductionProjection11719 (momentVector H) := by
  have heq : reductionPivot11719 = (fun u v => (normalNode9431).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9431).moment H = injectiveMoment H reductionPivot11719 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9431).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode9431).entries)).symm
  have hshape : reductionPivot11719 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot11719 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 48, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11719 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection9327, reductionProjection6635, reductionProjection6635] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11719 (0 : Fin 3)) = canonicalInput7941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11719 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection9327 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11719 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection9327 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound7941 hH))).trans (reductionSound9327 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11719 (1 : Fin 3)) = canonicalInput20779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11719 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6635 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11719 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20779 hH))).trans (reductionSound6635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11719 (2 : Fin 3)) = canonicalInput21038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11719 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6635 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11719 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21038 hH))).trans (reductionSound6635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9431).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11719 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9431).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11719 (j : Fin 3)))
      3 72 144 6 ![1, 48, 48] ![144, 3, 3] reductionProjection11719 ![reductionProjection9327, reductionProjection6635, reductionProjection6635]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11720 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -5), (700, -80), (704, -80), (1251, -25)]

def reductionPivot11720 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 1, 1], ![0, 0, -3, 3], ![0, 2, 1, -3], ![1, -1, 0, 0]]

theorem reductionSound11720 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9435).moment H =
      Integer.Sparse.eval reductionProjection11720 (momentVector H) := by
  have heq : reductionPivot11720 = (fun u v => (normalNode9435).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9435).moment H = injectiveMoment H reductionPivot11720 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9435).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11720 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11720 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 360, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11720 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1065, oldProjection1079, oldProjection1075, oldProjection1105] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11720 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6925 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1065 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1065 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6925 hH))).trans (oldProjectionSound1065 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11720 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6638 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1079 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1079 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6638 hH))).trans (oldProjectionSound1079 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11720 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6629 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6629 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11720 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1105⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1105 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11720 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1105 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1105 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9435).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11720 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9435).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11720 (j : Fin 4)))
      2 720 720 2 ![144, 360, 72, 144] ![5, 2, 10, 5] reductionProjection11720 ![oldProjection1065, oldProjection1079, oldProjection1075, oldProjection1105]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11721 : Integer.Sparse (Fin 1613) := [(0, 3), (20, -5), (94, -5), (243, -160), (698, -160), (700, -160), (1052, 240), (1226, -160), (1251, 65)]

def reductionPivot11721 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, 1, 1], ![0, 0, -3, 3], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound11721 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9439).moment H =
      Integer.Sparse.eval reductionProjection11721 (momentVector H) := by
  have heq : reductionPivot11721 = (fun u v => (normalNode9439).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9439).moment H = injectiveMoment H reductionPivot11721 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9439).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11721 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11721 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11721 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3064, oldProjection1122, reductionProjection1652, oldProjection1103] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11721 (0 : Fin 4)) = canonicalInput21753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3064 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21753 hH))).trans (reductionSound3064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11721 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1122⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1122 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11721 (2 : Fin 4)) = (normalNode9442).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1652 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1652 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1652 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11721 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1103⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1103 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11721 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9439).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11721 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9439).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11721 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 144, 144] ![2, 2, 10, 10] reductionProjection11721 ![reductionProjection3064, oldProjection1122, reductionProjection1652, oldProjection1103]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11722 : Integer.Sparse (Fin 1613) := [(0, 23), (94, 95), (698, 1200), (1059, 320), (1221, -240), (1226, 320), (1227, 800), (1251, -580)]

def reductionPivot11722 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, 1, 1], ![0, 0, -1, 1], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound11722 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9457).moment H =
      Integer.Sparse.eval reductionProjection11722 (momentVector H) := by
  have heq : reductionPivot11722 = (fun u v => (normalNode9457).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9457).moment H = injectiveMoment H reductionPivot11722 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9457).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11722 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11722 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 288, 288, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11722 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2442, reductionProjection10356, reductionProjection3734, oldProjection2647, reductionProjection5152] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11722 (0 : Fin 5)) = canonicalInput17211.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2442 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2442 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17211 hH))).trans (oldProjectionSound2442 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11722 (1 : Fin 5)) = (normalNode9452).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10356 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11722 (2 : Fin 5)) = (normalNode9463).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3734 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11722 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6655 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2647 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2647 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6655 hH))).trans (oldProjectionSound2647 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11722 (4 : Fin 5)) = (normalNode9465).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5152 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11722 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound5152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9457).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11722 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9457).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11722 (j : Fin 5)))
      1 1440 1440 1 ![1440, 720, 288, 288, 144] ![1, 2, 5, 5, 10] reductionProjection11722 ![oldProjection2442, reductionProjection10356, reductionProjection3734, oldProjection2647, reductionProjection5152]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11723 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (94, -40), (241, -80), (243, -80), (247, -80), (698, -80), (700, -80), (704, -80), (1059, -80), (1251, 40)]

def reductionPivot11723 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, -2, 2]]

theorem reductionSound11723 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9461).moment H =
      Integer.Sparse.eval reductionProjection11723 (momentVector H) := by
  have heq : reductionPivot11723 = (fun u v => (normalNode9461).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9461).moment H = injectiveMoment H reductionPivot11723 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9461).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11723 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11723 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11723 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1050, oldProjection261, oldProjection837, oldProjection982] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11723 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1050⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1050 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1050 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1050 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11723 (1 : Fin 4)) = canonicalInput18254.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection261 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection261 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18254 hH))).trans (oldProjectionSound261 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11723 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6678 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection837 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6678 hH))).trans (oldProjectionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11723 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6679 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection982 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11723 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6679 hH))).trans (oldProjectionSound982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9461).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11723 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9461).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11723 (j : Fin 4)))
      2 1440 1440 2 ![720, 240, 144, 720] ![2, 6, 10, 2] reductionProjection11723 ![oldProjection1050, oldProjection261, oldProjection837, oldProjection982]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11724 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -5), (94, -70), (241, -160), (243, -240), (698, -480), (700, -240), (704, -160), (1052, 240), (1059, -160), (1251, 25)]

def reductionPivot11724 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, 1, 1], ![0, 0, 1, -1], ![0, 2, 0, -2], ![1, -1, -3, 3]]

theorem reductionSound11724 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9468).moment H =
      Integer.Sparse.eval reductionProjection11724 (momentVector H) := by
  have heq : reductionPivot11724 = (fun u v => (normalNode9468).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9468).moment H = injectiveMoment H reductionPivot11724 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9468).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11724 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11724 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 72, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11724 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection799, oldProjection1120, oldProjection982, oldProjection837] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11724 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6931 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection799 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection799 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6931 hH))).trans (oldProjectionSound799 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11724 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1120⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1120 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1120 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1120 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11724 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6679 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection982 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6679 hH))).trans (oldProjectionSound982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11724 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6678 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection837 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11724 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6678 hH))).trans (oldProjectionSound837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9468).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11724 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9468).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11724 (j : Fin 4)))
      2 1440 1440 2 ![720, 72, 720, 144] ![2, 20, 2, 10] reductionProjection11724 ![oldProjection799, oldProjection1120, oldProjection982, oldProjection837]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11725 : Integer.Sparse (Fin 1613) := [(0, -4), (19, 15), (38, 60), (56, 60), (90, -40), (94, -85), (241, -60), (243, -20), (247, -20), (426, -180), (427, -180), (434, -360), (437, -180), (462, -180), (465, -360), (492, -360), (623, -360), (697, 60), (698, -1120), (700, -460), (704, -20), (1005, -360), (1055, 60), (1058, 180), (1059, -440), (1219, 180), (1226, -200), (1227, -340), (1251, 190)]

def reductionPivot11725 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, 1, 1, 0], ![0, 0, -1, 0, 1], ![0, 0, -1, 0, 1], ![0, 2, 1, 0, -3], ![1, 0, 0, -2, 1]]

theorem reductionSound11725 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9484).moment H =
      Integer.Sparse.eval reductionProjection11725 (momentVector H) := by
  have heq : reductionPivot11725 = (fun u v => (normalNode9484).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9484).moment H = injectiveMoment H reductionPivot11725 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9484).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11725 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11725 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 2880, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11725 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10824, reductionProjection2943, reductionProjection2943, reductionProjection10823, reductionProjection10826] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11725 (0 : Fin 5)) = canonicalInput13971.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10824 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13971 hH))).trans (reductionSound10824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11725 (1 : Fin 5)) = canonicalInput18396.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2943 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18396 hH))).trans (reductionSound2943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11725 (2 : Fin 5)) = canonicalInput18448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2943 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18448 hH))).trans (reductionSound2943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11725 (3 : Fin 5)) = canonicalInput18449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18449 hH))).trans (reductionSound10823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11725 (4 : Fin 5)) = canonicalInput18450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10826 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11725 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10826 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18450 hH))).trans (reductionSound10826 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9484).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11725 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9484).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11725 (j : Fin 5)))
      1 720 2880 4 ![1440, 2880, 2880, 720, 1440] ![2, 1, 1, 4, 2] reductionProjection11725 ![reductionProjection10824, reductionProjection2943, reductionProjection2943, reductionProjection10823, reductionProjection10826]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11726 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -120), (20, 5), (94, 135), (241, 240), (243, 80), (247, 160), (326, 720), (489, 720), (697, -240), (698, 640), (700, 160), (704, 80), (1059, 160), (1219, -240), (1227, 80), (1251, -65)]

def reductionPivot11726 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, 0, -2, 0, 3], ![0, -1, 1, 1, -1], ![0, 1, 1, -1, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound11726 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9761).moment H =
      Integer.Sparse.eval reductionProjection11726 (momentVector H) := by
  have heq : reductionPivot11726 = (fun u v => (normalNode9761).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9761).moment H = injectiveMoment H reductionPivot11726 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9761).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11726 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11726 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11726 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1968, oldProjection2605, oldProjection1641, oldProjection2534] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11726 (0 : Fin 4)) = canonicalInput19352.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1968 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19352 hH))).trans (reductionSound1968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11726 (1 : Fin 4)) = canonicalInput19360.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2605 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19360 hH))).trans (oldProjectionSound2605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11726 (2 : Fin 4)) = canonicalInput19362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1641 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19362 hH))).trans (oldProjectionSound1641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11726 (3 : Fin 4)) = canonicalInput19363.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2534 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11726 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19363 hH))).trans (oldProjectionSound2534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9761).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11726 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9761).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11726 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 720] ![2, 4, 2, 4] reductionProjection11726 ![reductionProjection1968, oldProjection2605, oldProjection1641, oldProjection2534]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11727 : Integer.Sparse (Fin 1613) := [(0, -66), (19, 120), (20, -5), (94, -390), (241, -240), (243, -80), (247, -160), (326, -720), (426, -720), (478, -720), (483, -720), (489, -2160), (602, -720), (617, -720), (666, -720), (697, 240), (698, -3760), (700, -160), (704, -80), (890, -1440), (1059, -1280), (1219, 240), (1226, -560), (1227, -1760), (1251, 1065), (1389, 480)]

def reductionPivot11727 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 1, 0], ![0, 0, 0, 1, -1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -2, 2]]

theorem reductionSound11727 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9496).moment H =
      Integer.Sparse.eval reductionProjection11727 (momentVector H) := by
  have heq : reductionPivot11727 = (fun u v => (normalNode9496).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9496).moment H = injectiveMoment H reductionPivot11727 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9496).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11727 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11727 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 144, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11727 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3735, reductionProjection3052, reductionProjection4770, reductionProjection11269, reductionProjection11726] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11727 (0 : Fin 5)) = canonicalInput16616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3735 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16616 hH))).trans (reductionSound3735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11727 (1 : Fin 5)) = canonicalInput18452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3052 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3052 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18452 hH))).trans (reductionSound3052 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11727 (2 : Fin 5)) = canonicalInput18463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4770 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4770 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18463 hH))).trans (reductionSound4770 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11727 (3 : Fin 5)) = canonicalInput18464.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11269 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18464 hH))).trans (reductionSound11269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11727 (4 : Fin 5)) = canonicalInput18465.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11726 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11727 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18465 hH))).trans (reductionSound11726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9496).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11727 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9496).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11727 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 2880, 144, 2880] ![1, 1, 1, 20, 1] reductionProjection11727 ![reductionProjection3735, reductionProjection3052, reductionProjection4770, reductionProjection11269, reductionProjection11726]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11728 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 3), (81, 36), (94, -20), (241, -4), (247, -16), (610, -72), (611, -72), (616, -72), (617, -144), (697, 24), (698, -144), (1050, 12), (1055, 24), (1058, 36), (1059, -48), (1221, 24), (1226, -20), (1227, -96), (1251, 60), (1389, 24)]

def reductionPivot11728 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -1, -1, 1]]

theorem reductionSound11728 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9500).moment H =
      Integer.Sparse.eval reductionProjection11728 (momentVector H) := by
  have heq : reductionPivot11728 = (fun u v => (normalNode9500).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9500).moment H = injectiveMoment H reductionPivot11728 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9500).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11728 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11728 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11728 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11382, reductionProjection11382, reductionProjection11350, reductionProjection11350, reductionProjection11377] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11728 (0 : Fin 5)) = canonicalInput19080.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11382 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19080 hH))).trans (reductionSound11382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11728 (1 : Fin 5)) = canonicalInput18565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11382 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18565 hH))).trans (reductionSound11382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11728 (2 : Fin 5)) = canonicalInput18561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11350 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18561 hH))).trans (reductionSound11350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11728 (3 : Fin 5)) = canonicalInput18560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11350 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11350 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18560 hH))).trans (reductionSound11350 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11728 (4 : Fin 5)) = canonicalInput18559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11377 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11728 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18559 hH))).trans (reductionSound11377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9500).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11728 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9500).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11728 (j : Fin 5)))
      1 144 2880 20 ![2880, 2880, 2880, 2880, 1440] ![1, 1, 1, 1, 2] reductionProjection11728 ![reductionProjection11382, reductionProjection11382, reductionProjection11350, reductionProjection11350, reductionProjection11377]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11729 : Integer.Sparse (Fin 1613) := [(0, -6), (19, 20), (81, 120), (94, -65), (169, -180), (241, -80), (247, -20), (541, -180), (553, -180), (602, -540), (638, -180), (668, -180), (697, 120), (698, -980), (890, -180), (1050, 300), (1055, 120), (1058, 180), (1059, -520), (1221, 540), (1226, -80), (1227, -300), (1250, -30), (1251, 225), (1389, 240)]

def reductionPivot11729 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 1, 2, -1], ![0, -1, -1, 0, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound11729 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9501).moment H =
      Integer.Sparse.eval reductionProjection11729 (momentVector H) := by
  have heq : reductionPivot11729 = (fun u v => (normalNode9501).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9501).moment H = injectiveMoment H reductionPivot11729 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9501).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11729 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11729 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11729 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11385, reductionProjection10837, reductionProjection11377, reductionProjection11366, reductionProjection11183] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11729 (0 : Fin 5)) = canonicalInput19088.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11385 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19088 hH))).trans (reductionSound11385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11729 (1 : Fin 5)) = canonicalInput18571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10837 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18571 hH))).trans (reductionSound10837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11729 (2 : Fin 5)) = canonicalInput18559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11377 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18559 hH))).trans (reductionSound11377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11729 (3 : Fin 5)) = canonicalInput18558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11366 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18558 hH))).trans (reductionSound11366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11729 (4 : Fin 5)) = canonicalInput18557.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11183 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11729 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11183 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18557 hH))).trans (reductionSound11183 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9501).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11729 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9501).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11729 (j : Fin 5)))
      1 720 2880 4 ![2880, 576, 1440, 2880, 2880] ![1, 5, 2, 1, 1] reductionProjection11729 ![reductionProjection11385, reductionProjection10837, reductionProjection11377, reductionProjection11366, reductionProjection11183]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11730 : Integer.Sparse (Fin 1613) := [(0, -43), (19, 40), (81, 720), (94, -230), (241, -320), (243, -80), (247, -80), (578, -720), (586, -720), (602, -2160), (635, -4320), (636, -1440), (638, -1440), (697, 480), (698, -3680), (1027, -1440), (1050, 240), (1055, 240), (1058, 480), (1059, -1200), (1221, 1200), (1226, -640), (1227, -1840), (1251, 1005), (1389, 1200)]

def reductionPivot11730 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, -1, 0], ![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, 0, -1], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1]]

theorem reductionSound11730 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9502).moment H =
      Integer.Sparse.eval reductionProjection11730 (momentVector H) := by
  have heq : reductionPivot11730 = (fun u v => (normalNode9502).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9502).moment H = injectiveMoment H reductionPivot11730 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9502).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11730 0 = Pi.single (2 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11730 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 576, 576, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11730 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11377, reductionProjection11378, reductionProjection11356, reductionProjection11356, reductionProjection11382] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11730 (0 : Fin 5)) = canonicalInput19081.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11377 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11377 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19081 hH))).trans (reductionSound11377 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11730 (1 : Fin 5)) = canonicalInput18572.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11378 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11378 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18572 hH))).trans (reductionSound11378 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11730 (2 : Fin 5)) = canonicalInput18567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11356 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18567 hH))).trans (reductionSound11356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11730 (3 : Fin 5)) = canonicalInput18566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11356 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18566 hH))).trans (reductionSound11356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11730 (4 : Fin 5)) = canonicalInput18565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11382 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11730 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11382 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18565 hH))).trans (reductionSound11382 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9502).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11730 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9502).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11730 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 576, 576, 2880] ![2, 1, 5, 5, 1] reductionProjection11730 ![reductionProjection11377, reductionProjection11378, reductionProjection11356, reductionProjection11356, reductionProjection11382]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11731 : Integer.Sparse (Fin 1613) := [(0, -101), (19, 60), (94, -285), (169, -720), (241, -320), (247, -80), (546, -720), (563, -720), (602, -2160), (635, -3600), (636, -1440), (638, -2160), (666, -720), (697, 720), (698, -3520), (1027, -1440), (1050, 480), (1055, 720), (1058, 240), (1059, -800), (1226, -480), (1227, -2240), (1250, -120), (1251, 1280), (1389, 1680)]

def reductionPivot11731 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 1, 2, -1], ![0, -1, 0, -1, 2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -2, 0, 1]]

theorem reductionSound11731 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9503).moment H =
      Integer.Sparse.eval reductionProjection11731 (momentVector H) := by
  have heq : reductionPivot11731 = (fun u v => (normalNode9503).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9503).moment H = injectiveMoment H reductionPivot11731 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9503).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11731 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11731 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 576, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11731 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11385, reductionProjection5149, reductionProjection11356, reductionProjection5906, reductionProjection4913] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11731 (0 : Fin 5)) = canonicalInput19089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11385 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11385 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19089 hH))).trans (reductionSound11385 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11731 (1 : Fin 5)) = canonicalInput18574.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5149 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5149 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18574 hH))).trans (reductionSound5149 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11731 (2 : Fin 5)) = canonicalInput18567.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11356 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11356 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18567 hH))).trans (reductionSound11356 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11731 (3 : Fin 5)) = canonicalInput18564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5906 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18564 hH))).trans (reductionSound5906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11731 (4 : Fin 5)) = canonicalInput18563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4913 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11731 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18563 hH))).trans (reductionSound4913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9503).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11731 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9503).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11731 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 576, 2880, 2880] ![1, 1, 5, 1, 1] reductionProjection11731 ![reductionProjection11385, reductionProjection5149, reductionProjection11356, reductionProjection5906, reductionProjection4913]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11732 : Integer.Sparse (Fin 1613) := [(0, -126), (19, 100), (94, -395), (174, -720), (241, -80), (247, -320), (546, -720), (610, -1440), (635, -720), (669, -720), (697, 480), (698, -3200), (700, -160), (1016, -720), (1055, 1440), (1058, 720), (1059, -880), (1226, -160), (1227, -2880), (1250, -180), (1251, 1615), (1388, 480), (1389, 1200)]

def reductionPivot11732 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 1, 2, -1], ![0, 0, -1, -1, 2], ![0, 1, -1, 0, 0], ![0, 1, 0, 0, -1], ![1, -1, 0, -1, 1]]

theorem reductionSound11732 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9506).moment H =
      Integer.Sparse.eval reductionProjection11732 (momentVector H) := by
  have heq : reductionPivot11732 = (fun u v => (normalNode9506).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9506).moment H = injectiveMoment H reductionPivot11732 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9506).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11732 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11732 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 576, 2880, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11732 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11392, reductionProjection11394, reductionProjection11389, reductionProjection11309, reductionProjection11393] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11732 (0 : Fin 5)) = canonicalInput19091.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11392 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11392 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19091 hH))).trans (reductionSound11392 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11732 (1 : Fin 5)) = canonicalInput18596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11394 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18596 hH))).trans (reductionSound11394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11732 (2 : Fin 5)) = canonicalInput18585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11389 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11389 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18585 hH))).trans (reductionSound11389 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11732 (3 : Fin 5)) = canonicalInput18583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11309 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18583 hH))).trans (reductionSound11309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11732 (4 : Fin 5)) = canonicalInput18582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11393 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11732 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11393 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18582 hH))).trans (reductionSound11393 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9506).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11732 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9506).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11732 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 576, 2880, 1440] ![1, 1, 5, 1, 2] reductionProjection11732 ![reductionProjection11392, reductionProjection11394, reductionProjection11389, reductionProjection11309, reductionProjection11393]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11733 : Integer.Sparse (Fin 1613) := [(0, 23), (94, 40), (698, 800), (1027, 720), (1059, 400), (1226, 80), (1227, 640), (1251, -375), (1389, -480)]

def reductionPivot11733 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, 1, -2, 0], ![1, 0, -1, 1, -1]]

theorem reductionSound11733 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10050).moment H =
      Integer.Sparse.eval reductionProjection11733 (momentVector H) := by
  have heq : reductionPivot11733 = (fun u v => (normalNode10050).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10050).moment H = injectiveMoment H reductionPivot11733 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10050).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11733 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11733 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11733 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3130, oldProjection2076, oldProjection1117, reductionProjection971] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11733 (0 : Fin 4)) = canonicalInput14946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3130 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14946 hH))).trans (reductionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11733 (1 : Fin 4)) = canonicalInput19819.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2076 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2076 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19819 hH))).trans (oldProjectionSound2076 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11733 (2 : Fin 4)) = canonicalInput19911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1117 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1117 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19911 hH))).trans (oldProjectionSound1117 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11733 (3 : Fin 4)) = canonicalInput19913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection971 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11733 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection971 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19913 hH))).trans (reductionSound971 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10050).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11733 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10050).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11733 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 720, 1440] ![2, 2, 4, 2] reductionProjection11733 ![reductionProjection3130, oldProjection2076, oldProjection1117, reductionProjection971]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11734 : Integer.Sparse (Fin 1613) := [(0, 16), (19, -40), (81, -240), (94, 105), (228, -240), (241, 80), (247, 160), (549, 720), (669, 720), (697, -240), (698, 880), (1059, 240), (1226, 240), (1227, 400), (1251, -275), (1389, -480)]

def reductionPivot11734 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, 0, -1, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound11734 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10157).moment H =
      Integer.Sparse.eval reductionProjection11734 (momentVector H) := by
  have heq : reductionPivot11734 = (fun u v => (normalNode10157).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10157).moment H = injectiveMoment H reductionPivot11734 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10157).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11734 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11734 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11734 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1836, oldProjection1730, oldProjection2585, reductionProjection2800] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11734 (0 : Fin 4)) = canonicalInput19833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19833 hH))).trans (oldProjectionSound1836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11734 (1 : Fin 4)) = canonicalInput19996.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1730 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19996 hH))).trans (oldProjectionSound1730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11734 (2 : Fin 4)) = canonicalInput19998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2585 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19998 hH))).trans (oldProjectionSound2585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11734 (3 : Fin 4)) = canonicalInput19999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2800 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11734 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19999 hH))).trans (reductionSound2800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10157).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11734 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10157).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11734 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 1440] ![2, 2, 2, 2] reductionProjection11734 ![oldProjection1836, oldProjection1730, oldProjection2585, reductionProjection2800]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11735 : Integer.Sparse (Fin 1613) := [(0, -93), (19, 40), (81, 480), (94, -335), (228, 240), (241, -160), (247, -160), (546, -1440), (549, -1440), (602, -720), (635, -1440), (638, -720), (668, -720), (669, -1440), (697, 720), (698, -3200), (1027, -1440), (1050, 240), (1055, 480), (1059, -960), (1221, 480), (1226, -400), (1227, -2320), (1250, -60), (1251, 1390), (1389, 2160)]

def reductionPivot11735 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 2, -1], ![0, 0, -1, 0, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]

theorem reductionSound11735 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9508).moment H =
      Integer.Sparse.eval reductionProjection11735 (momentVector H) := by
  have heq : reductionPivot11735 = (fun u v => (normalNode9508).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9508).moment H = injectiveMoment H reductionPivot11735 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9508).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11735 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11735 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 1440, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11735 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11733, reductionProjection5909, reductionProjection4848, reductionProjection11390, reductionProjection11734] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11735 (0 : Fin 5)) = canonicalInput17614.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11733 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17614 hH))).trans (reductionSound11733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11735 (1 : Fin 5)) = canonicalInput18579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5909 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18579 hH))).trans (reductionSound5909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11735 (2 : Fin 5)) = canonicalInput18587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4848 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18587 hH))).trans (reductionSound4848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11735 (3 : Fin 5)) = canonicalInput18588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11390 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11390 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18588 hH))).trans (reductionSound11390 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11735 (4 : Fin 5)) = canonicalInput18589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11734 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11735 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18589 hH))).trans (reductionSound11734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9508).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11735 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9508).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11735 (j : Fin 5)))
      1 2880 2880 1 ![2880, 1440, 2880, 2880, 2880] ![1, 2, 1, 1, 1] reductionProjection11735 ![reductionProjection11733, reductionProjection5909, reductionProjection4848, reductionProjection11390, reductionProjection11734]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11736 : Integer.Sparse (Fin 1613) := [(0, 8), (94, 45), (698, 320), (700, 80), (1059, 80), (1251, -95)]

def reductionPivot11736 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound11736 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9509).moment H =
      Integer.Sparse.eval reductionProjection11736 (momentVector H) := by
  have heq : reductionPivot11736 = (fun u v => (normalNode9509).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9509).moment H = injectiveMoment H reductionPivot11736 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9509).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11736 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11736 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11736 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1054, oldProjection2555, oldProjection2758, oldProjection2758] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11736 (0 : Fin 4)) = canonicalInput17620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1054 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1054 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17620 hH))).trans (oldProjectionSound1054 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11736 (1 : Fin 4)) = canonicalInput18580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2555 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2555 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18580 hH))).trans (oldProjectionSound2555 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11736 (2 : Fin 4)) = canonicalInput18591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18591 hH))).trans (oldProjectionSound2758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11736 (3 : Fin 4)) = canonicalInput18592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11736 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18592 hH))).trans (oldProjectionSound2758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9509).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11736 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9509).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11736 (j : Fin 4)))
      2 2880 2880 2 ![720, 1440, 1440, 1440] ![4, 2, 2, 2] reductionProjection11736 ![oldProjection1054, oldProjection2555, oldProjection2758, oldProjection2758]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11737 : Integer.Sparse (Fin 1613) := [(0, 41), (94, 20), (698, 320), (1027, 720), (1059, 240), (1227, 480), (1251, -405), (1389, -240)]

def reductionPivot11737 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, 0, -1, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, 1, -1], ![1, 0, 1, -2, 0]]

theorem reductionSound11737 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10049).moment H =
      Integer.Sparse.eval reductionProjection11737 (momentVector H) := by
  have heq : reductionPivot11737 = (fun u v => (normalNode10049).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10049).moment H = injectiveMoment H reductionPivot11737 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10049).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11737 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11737 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 180, 720, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11737 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3130, oldProjection2085, oldProjection1000, oldProjection2612] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11737 (0 : Fin 4)) = canonicalInput14941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3130 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14941 hH))).trans (reductionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11737 (1 : Fin 4)) = canonicalInput19816.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2085 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2085 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19816 hH))).trans (oldProjectionSound2085 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11737 (2 : Fin 4)) = canonicalInput19909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1000 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1000 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19909 hH))).trans (oldProjectionSound1000 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11737 (3 : Fin 4)) = canonicalInput19912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2612 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11737 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2612 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19912 hH))).trans (oldProjectionSound2612 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10049).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11737 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10049).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11737 (j : Fin 4)))
      2 2880 2880 2 ![1440, 180, 720, 288] ![2, 16, 4, 10] reductionProjection11737 ![reductionProjection3130, oldProjection2085, oldProjection1000, oldProjection2612]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11738 : Integer.Sparse (Fin 1613) := [(0, 33), (19, -40), (94, 130), (241, 240), (243, 80), (247, 80), (549, 720), (669, 720), (697, -240), (698, 800), (700, 80), (1059, 160), (1226, 80), (1227, 480), (1251, -215), (1389, -720)]

def reductionPivot11738 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, 0, -1, 1, 1], ![0, -1, 2, -2, 1], ![0, 1, 0, 1, -2], ![1, 0, -1, 1, -1]]

theorem reductionSound11738 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10158).moment H =
      Integer.Sparse.eval reductionProjection11738 (momentVector H) := by
  have heq : reductionPivot11738 = (fun u v => (normalNode10158).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10158).moment H = injectiveMoment H reductionPivot11738 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10158).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11738 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11738 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 288, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11738 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1834, oldProjection1728, oldProjection2625, reductionProjection5638] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11738 (0 : Fin 4)) = canonicalInput19834.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1834 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1834 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19834 hH))).trans (oldProjectionSound1834 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11738 (1 : Fin 4)) = canonicalInput19997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1728 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19997 hH))).trans (oldProjectionSound1728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11738 (2 : Fin 4)) = canonicalInput20000.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2625 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2625 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20000 hH))).trans (oldProjectionSound2625 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11738 (3 : Fin 4)) = canonicalInput20001.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5638 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11738 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5638 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20001 hH))).trans (reductionSound5638 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10158).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11738 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10158).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11738 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 288, 720] ![2, 2, 10, 4] reductionProjection11738 ![oldProjection1834, oldProjection1728, oldProjection2625, reductionProjection5638]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11739 : Integer.Sparse (Fin 1613) := [(0, -128), (19, 40), (94, -305), (241, -240), (243, -80), (247, -160), (478, -720), (546, -1440), (549, -720), (602, -720), (635, -2160), (666, -720), (669, -1440), (697, 720), (698, -2960), (700, -160), (1027, -1440), (1055, 720), (1058, 240), (1059, -800), (1226, -160), (1227, -2640), (1250, -60), (1251, 1575), (1388, 240), (1389, 2400)]

def reductionPivot11739 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, -1, 0, 0], ![0, 1, 1, 0, -2], ![1, -1, 0, -1, 1]]

theorem reductionSound11739 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9510).moment H =
      Integer.Sparse.eval reductionProjection11739 (momentVector H) := by
  have heq : reductionPivot11739 = (fun u v => (normalNode9510).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9510).moment H = injectiveMoment H reductionPivot11739 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9510).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11739 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11739 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 1440, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11739 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11737, reductionProjection11309, reductionProjection7158, reductionProjection11394, reductionProjection11738] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11739 (0 : Fin 5)) = canonicalInput17622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11737 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17622 hH))).trans (reductionSound11737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11739 (1 : Fin 5)) = canonicalInput18583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11309 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18583 hH))).trans (reductionSound11309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11739 (2 : Fin 5)) = canonicalInput18594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7158 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7158 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18594 hH))).trans (reductionSound7158 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11739 (3 : Fin 5)) = canonicalInput18596.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11394 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11394 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18596 hH))).trans (reductionSound11394 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11739 (4 : Fin 5)) = canonicalInput18597.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11738 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11739 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18597 hH))).trans (reductionSound11738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9510).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11739 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9510).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11739 (j : Fin 5)))
      1 2880 2880 1 ![2880, 2880, 1440, 2880, 2880] ![1, 1, 2, 1, 1] reductionProjection11739 ![reductionProjection11737, reductionProjection11309, reductionProjection7158, reductionProjection11394, reductionProjection11738]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11740 : Integer.Sparse (Fin 1613) := [(0, -59), (19, 20), (81, 360), (94, -200), (228, 120), (241, -40), (247, -120), (484, -360), (541, -720), (549, -360), (610, -360), (616, -360), (617, -1440), (668, -360), (669, -720), (697, 360), (698, -1440), (1055, 120), (1059, -560), (1221, 360), (1226, -160), (1227, -1040), (1250, -30), (1251, 785), (1385, -360), (1388, 240), (1389, 960)]

def reductionPivot11740 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 1, 2, -1], ![0, 0, 0, -1, 1], ![0, 1, 0, -1, 0], ![0, 1, 1, 0, -2], ![1, -1, -1, 0, 1]]

theorem reductionSound11740 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9511).moment H =
      Integer.Sparse.eval reductionProjection11740 (momentVector H) := by
  have heq : reductionPivot11740 = (fun u v => (normalNode9511).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9511).moment H = injectiveMoment H reductionPivot11740 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9511).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11740 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11740 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 360, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11740 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11287, reductionProjection11176, reductionProjection10869, reductionProjection11298, reductionProjection11299] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11740 (0 : Fin 5)) = canonicalInput17623.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11287 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11287 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17623 hH))).trans (reductionSound11287 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11740 (1 : Fin 5)) = canonicalInput18584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11176 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11176 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18584 hH))).trans (reductionSound11176 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11740 (2 : Fin 5)) = canonicalInput18595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10869 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18595 hH))).trans (reductionSound10869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11740 (3 : Fin 5)) = canonicalInput18598.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11298 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11298 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18598 hH))).trans (reductionSound11298 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11740 (4 : Fin 5)) = canonicalInput18599.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11299 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11740 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18599 hH))).trans (reductionSound11299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9511).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11740 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9511).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11740 (j : Fin 5)))
      1 1440 2880 2 ![2880, 2880, 360, 2880, 2880] ![1, 1, 8, 1, 1] reductionProjection11740 ![reductionProjection11287, reductionProjection11176, reductionProjection10869, reductionProjection11298, reductionProjection11299]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11741 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 30), (241, 80), (666, 720), (698, 800), (1050, -480), (1055, -480), (1059, 480), (1227, 400), (1251, -235)]

def reductionPivot11741 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-1, -1, 1, 2, -1], ![0, 0, 0, -2, 2], ![0, 1, -2, 0, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound11741 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9512).moment H =
      Integer.Sparse.eval reductionProjection11741 (momentVector H) := by
  have heq : reductionPivot11741 = (fun u v => (normalNode9512).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9512).moment H = injectiveMoment H reductionPivot11741 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9512).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11741 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11741 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11741 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2762, oldProjection2761, oldProjection2758, oldProjection1839] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11741 (0 : Fin 4)) = canonicalInput19092.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2762 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2762 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19092 hH))).trans (oldProjectionSound2762 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11741 (1 : Fin 4)) = canonicalInput18600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18600 hH))).trans (oldProjectionSound2761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11741 (2 : Fin 4)) = canonicalInput18591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2758 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2758 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18591 hH))).trans (oldProjectionSound2758 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11741 (3 : Fin 4)) = canonicalInput18590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1839 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11741 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18590 hH))).trans (oldProjectionSound1839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9512).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11741 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9512).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11741 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection11741 ![oldProjection2762, oldProjection2761, oldProjection2758, oldProjection1839]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11742 : Integer.Sparse (Fin 1613) := [(3, -2), (19, -1), (702, -3), (1278, -3)]

def reductionPivot11742 : Matrix (Fin 5) (Fin 3) ℤ := ![![1, -1, 0], ![-1, -1, 2], ![-1, -1, 2], ![0, 5, -5], ![1, -2, 1]]

theorem reductionSound11742 {H : CMatrix} (hH : IsHadamard H) :
    (6 : ℝ) * (normalNode9516).moment H =
      Integer.Sparse.eval reductionProjection11742 (momentVector H) := by
  have heq : reductionPivot11742 = (fun u v => (normalNode9516).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9516).moment H = injectiveMoment H reductionPivot11742 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9516).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot11742 0 = Pi.single (0 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11742 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![6, 6, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11742 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection282, oldProjection282, oldProjection234, reductionProjection642] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11742 (0 : Fin 4)) = canonicalInput24376.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection282 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound24376 hH))).trans (oldProjectionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11742 (1 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node282⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection282 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection282 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound282 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11742 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6738 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection234 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection234 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6738 hH))).trans (oldProjectionSound234 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11742 (3 : Fin 4)) = canonicalInput18621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection642 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11742 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18621 hH))).trans (reductionSound642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9516).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11742 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9516).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11742 (j : Fin 4)))
      2 6 6 2 ![6, 6, 1, 1] ![1, 1, 6, 6] reductionProjection11742 ![oldProjection282, oldProjection282, oldProjection234, reductionProjection642]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11743 : Integer.Sparse (Fin 1613) := [(3, 28), (4, -1), (19, 20), (20, -4), (94, -5), (108, -16), (247, -8), (702, 48), (1061, 24), (1062, 48), (1251, -2), (1278, 48)]

def reductionPivot11743 : Matrix (Fin 6) (Fin 3) ℤ := ![![0, -1, 1], ![-1, -1, 2], ![-1, -1, 2], ![0, 5, -5], ![1, -1, 0], ![1, -1, 0]]

theorem reductionSound11743 {H : CMatrix} (hH : IsHadamard H) :
    (48 : ℝ) * (normalNode9513).moment H =
      Integer.Sparse.eval reductionProjection11743 (momentVector H) := by
  have heq : reductionPivot11743 = (fun u v => (normalNode9513).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9513).moment H = injectiveMoment H reductionPivot11743 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9513).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11743 0 = Pi.single (2 : Fin 3) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11743 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![96, 96, 48, 6, 6] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11743 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10524, reductionProjection10524, oldProjection1134, reductionProjection11742, reductionProjection11742] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11743 (0 : Fin 5)) = (normalNode7131).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10524 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound10524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11743 (1 : Fin 5)) = canonicalInput18618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10524 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18618 hH))).trans (reductionSound10524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11743 (2 : Fin 5)) = ((⟨5, 3, OAI.MUB6.Certificate.PairSemantics.node1134⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1134 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1134 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1134 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11743 (3 : Fin 5)) = (normalNode9516).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11742 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he)).trans (reductionSound11742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11743 (4 : Fin 5)) = canonicalInput18620.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11742 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11743 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound18620 hH))).trans (reductionSound11742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9513).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11743 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9513).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11743 (j : Fin 5)))
      1 48 96 2 ![96, 96, 48, 6, 6] ![1, 1, 2, 16, 16] reductionProjection11743 ![reductionProjection10524, reductionProjection10524, oldProjection1134, reductionProjection11742, reductionProjection11742]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
