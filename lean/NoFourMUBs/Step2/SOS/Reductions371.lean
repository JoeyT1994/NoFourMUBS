import NoFourMUBs.Step2.SOS.Canonical303
import NoFourMUBs.Step2.SOS.Canonical304
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical306
import NoFourMUBs.Step2.SOS.Canonical307
import NoFourMUBs.Step2.SOS.Canonical314
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical351
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical353
import NoFourMUBs.Step2.SOS.Canonical355
import NoFourMUBs.Step2.SOS.Canonical364
import NoFourMUBs.Step2.SOS.Canonical366
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical383
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical408
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.Canonical430
import NoFourMUBs.Step2.SOS.Canonical521
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes17
import NoFourMUBs.Step2.SOS.MomentCodes21
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes018
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions007
import NoFourMUBs.Step2.SOS.Reductions008
import NoFourMUBs.Step2.SOS.Reductions015
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions203
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions220
import NoFourMUBs.Step2.SOS.Reductions222
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions241
import NoFourMUBs.Step2.SOS.Reductions242
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions269
import NoFourMUBs.Step2.SOS.Reductions270
import NoFourMUBs.Step2.SOS.Reductions271
import NoFourMUBs.Step2.SOS.Reductions277
import NoFourMUBs.Step2.SOS.Reductions278
import NoFourMUBs.Step2.SOS.Reductions286
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions293
import NoFourMUBs.Step2.SOS.Reductions312
import NoFourMUBs.Step2.SOS.Reductions323
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions341
import NoFourMUBs.Step2.SOS.Reductions344
import NoFourMUBs.Step2.SOS.Reductions345
import NoFourMUBs.Step2.SOS.Reductions357
import NoFourMUBs.Step2.SOS.Reductions365
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions370
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical138
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical220
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical242
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes17
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes20
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11872 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 10), (81, 120), (94, 15), (682, 120), (698, -120), (1226, -80), (1251, 10)]

def reductionPivot11872 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, 2, -2], ![1, -1, 0, 0], ![1, -1, 1, -1]]

theorem reductionSound11872 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9827).moment H =
      Integer.Sparse.eval reductionProjection11872 (momentVector H) := by
  have heq : reductionPivot11872 = (fun u v => (normalNode9827).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9827).moment H = injectiveMoment H reductionPivot11872 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9827).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11872 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11872 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11872 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1092, oldProjection1013, oldProjection1122, oldProjection1109] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11872 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7771 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1092 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7771 hH))).trans (oldProjectionSound1092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11872 (1 : Fin 4)) = canonicalInput19538.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1013 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19538 hH))).trans (oldProjectionSound1013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11872 (2 : Fin 4)) = canonicalInput19511.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1122 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1122 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19511 hH))).trans (oldProjectionSound1122 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11872 (3 : Fin 4)) = canonicalInput19510.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1109 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11872 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19510 hH))).trans (oldProjectionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9827).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11872 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9827).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11872 (j : Fin 4)))
      2 720 720 2 ![144, 720, 720, 720] ![5, 1, 1, 1] reductionProjection11872 ![oldProjection1092, oldProjection1013, oldProjection1122, oldProjection1109]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11873 : Integer.Sparse (Fin 1613) := [(19, 10), (20, -3), (37, 24), (94, 4), (108, -8), (243, -16), (682, 24), (1226, -16), (1251, 5)]

def reductionPivot11873 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 1, 3, -3], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound11873 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9836).moment H =
      Integer.Sparse.eval reductionProjection11873 (momentVector H) := by
  have heq : reductionPivot11873 = (fun u v => (normalNode9836).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9836).moment H = injectiveMoment H reductionPivot11873 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9836).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11873 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11873 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11873 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1092, oldProjection992, oldProjection1103, oldProjection1128] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11873 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7807 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1092 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1092 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7807 hH))).trans (oldProjectionSound1092 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11873 (1 : Fin 4)) = canonicalInput19540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection992 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection992 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19540 hH))).trans (oldProjectionSound992 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11873 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7058 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1103 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7058 hH))).trans (oldProjectionSound1103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11873 (3 : Fin 4)) = canonicalInput19519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1128 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11873 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19519 hH))).trans (oldProjectionSound1128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9836).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11873 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9836).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11873 (j : Fin 4)))
      2 144 144 2 ![144, 144, 144, 144] ![1, 1, 1, 1] reductionProjection11873 ![oldProjection1092, oldProjection992, oldProjection1103, oldProjection1128]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11874 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -160), (20, 45), (37, -240), (81, -240), (94, -105), (108, 80), (241, 80), (243, 720), (682, -480), (698, 800), (700, 80), (912, 720), (1047, -240), (1058, -240), (1226, 560), (1251, -105), (1323, -480)]

def reductionPivot11874 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, -1, 0, 0]]

theorem reductionSound11874 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9792).moment H =
      Integer.Sparse.eval reductionProjection11874 (momentVector H) := by
  have heq : reductionPivot11874 = (fun u v => (normalNode9792).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9792).moment H = injectiveMoment H reductionPivot11874 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9792).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11874 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11874 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 144, 72, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11874 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11872, reductionProjection11873, reductionProjection7734, oldProjection2773, oldProjection2765] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11874 (0 : Fin 5)) = canonicalInput22607.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11872 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22607 hH))).trans (reductionSound11872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11874 (1 : Fin 5)) = (normalNode9836).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11873 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11874 (2 : Fin 5)) = canonicalInput19461.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7734 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19461 hH))).trans (reductionSound7734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11874 (3 : Fin 5)) = canonicalInput19459.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19459 hH))).trans (oldProjectionSound2773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11874 (4 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7049 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2765 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11874 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7049 hH))).trans (oldProjectionSound2765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9792).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11874 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9792).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11874 (j : Fin 5)))
      1 1440 1440 1 ![720, 144, 72, 1440, 720] ![2, 10, 20, 1, 2] reductionProjection11874 ![reductionProjection11872, reductionProjection11873, reductionProjection7734, oldProjection2773, oldProjection2765]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11875 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 100), (20, -25), (93, -60), (94, 5), (1099, -720), (1138, -720), (1251, -35)]

def reductionPivot11875 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, 1, -2, 1], ![1, -1, 1, -1], ![1, -1, 3, -3]]

theorem reductionSound11875 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9814).moment H =
      Integer.Sparse.eval reductionProjection11875 (momentVector H) := by
  have heq : reductionPivot11875 = (fun u v => (normalNode9814).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9814).moment H = injectiveMoment H reductionPivot11875 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9814).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11875 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11875 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11875 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8660, reductionProjection7727, oldProjection1218, oldProjection1224] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11875 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1099).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8660 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8660 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8660 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11875 (1 : Fin 4)) = canonicalInput19529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7727 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19529 hH))).trans (reductionSound7727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11875 (2 : Fin 4)) = canonicalInput19661.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1218 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19661 hH))).trans (oldProjectionSound1218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11875 (3 : Fin 4)) = canonicalInput19664.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11875 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19664 hH))).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9814).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11875 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9814).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11875 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 144] ![1440, 1440, 2, 10] reductionProjection11875 ![reductionProjection8660, reductionProjection7727, oldProjection1218, oldProjection1224]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11876 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (94, -15), (241, -80), (247, -80), (694, 240), (698, -80), (1250, -60), (1251, 10), (1319, 240)]

def reductionPivot11876 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, 0, 2, -2], ![0, 1, 1, -2], ![1, -1, -1, 1]]

theorem reductionSound11876 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11134).moment H =
      Integer.Sparse.eval reductionProjection11876 (momentVector H) := by
  have heq : reductionPivot11876 = (fun u v => (normalNode11134).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11134).moment H = injectiveMoment H reductionPivot11876 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11134).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot11876 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11876 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 240] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11876 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1222, oldProjection1361, oldProjection1366, oldProjection268] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11876 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1222⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1222 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1222 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1222 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11876 (1 : Fin 4)) = canonicalInput24582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24582 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11876 (2 : Fin 4)) = canonicalInput24630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1366 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24630 hH))).trans (oldProjectionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11876 (3 : Fin 4)) = canonicalInput24631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection268 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11876 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24631 hH))).trans (oldProjectionSound268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11134).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11876 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11134).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11876 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 240] ![2, 2, 2, 6] reductionProjection11876 ![oldProjection1222, oldProjection1361, oldProjection1366, oldProjection268]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11877 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 50), (20, -5), (93, -60), (94, -20), (241, -40), (243, -40), (247, -40), (698, -80), (1047, 120), (1226, -40), (1251, -15), (1319, 120), (1323, 120)]

def reductionPivot11877 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, -2, 1], ![1, -1, 1, -1]]

theorem reductionSound11877 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9939).moment H =
      Integer.Sparse.eval reductionProjection11877 (momentVector H) := by
  have heq : reductionPivot11877 = (fun u v => (normalNode9939).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9939).moment H = injectiveMoment H reductionPivot11877 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9939).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11877 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11877 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11877 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1361, oldProjection1224, oldProjection1318, oldProjection1210] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11877 (0 : Fin 4)) = canonicalInput22643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22643 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11877 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1224⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11877 (2 : Fin 4)) = canonicalInput19605.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1318 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19605 hH))).trans (oldProjectionSound1318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11877 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1210⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1210 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11877 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1210 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1210 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9939).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11877 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9939).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11877 (j : Fin 4)))
      2 720 720 2 ![720, 144, 144, 720] ![1, 5, 5, 1] reductionProjection11877 ![oldProjection1361, oldProjection1224, oldProjection1318, oldProjection1210]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11878 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -2), (19, -28), (20, 4), (93, 24), (94, 6), (241, 24), (243, 40), (247, 16), (694, -24), (696, -24), (698, 64), (1047, -48), (1087, 72), (1099, 72), (1137, 72), (1138, 72), (1226, 48), (1248, 72), (1250, 6), (1251, 3), (1319, -48), (1323, -96)]

def reductionPivot11878 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 1, -2]]

theorem reductionSound11878 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9793).moment H =
      Integer.Sparse.eval reductionProjection11878 (momentVector H) := by
  have heq : reductionPivot11878 = (fun u v => (normalNode9793).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9793).moment H = injectiveMoment H reductionPivot11878 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9793).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot11878 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11878 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11878 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11875, reductionProjection8906, reductionProjection11876, reductionProjection11877, reductionProjection7058] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11878 (0 : Fin 5)) = canonicalInput22517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11875 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11875 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22517 hH))).trans (reductionSound11875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11878 (1 : Fin 5)) = canonicalInput19525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8906 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19525 hH))).trans (reductionSound8906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11878 (2 : Fin 5)) = canonicalInput19476.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11876 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19476 hH))).trans (reductionSound11876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11878 (3 : Fin 5)) = canonicalInput19473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11877 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19473 hH))).trans (reductionSound11877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11878 (4 : Fin 5)) = canonicalInput19471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7058 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11878 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19471 hH))).trans (reductionSound7058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9793).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11878 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9793).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11878 (j : Fin 5)))
      1 144 1440 10 ![1440, 1440, 1440, 720, 1440] ![1, 1, 1, 2, 1] reductionProjection11878 ![reductionProjection11875, reductionProjection8906, reductionProjection11876, reductionProjection11877, reductionProjection7058]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11879 : Integer.Sparse (Fin 1613) := [(1393, 1)]

theorem reductionSound11879 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1393).moment H =
      Integer.Sparse.eval reductionProjection11879 (momentVector H) := by
  have hc : coordinates (1393 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1393) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection11879, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection11880 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -15), (94, 35), (108, -80), (1138, -720), (1251, 65), (1319, 240), (1393, -720)]

def reductionPivot11880 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, -1, 3, -3]]

theorem reductionSound11880 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9801).moment H =
      Integer.Sparse.eval reductionProjection11880 (momentVector H) := by
  have heq : reductionPivot11880 = (fun u v => (normalNode9801).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9801).moment H = injectiveMoment H reductionPivot11880 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9801).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11880 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11880 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11880 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11879, reductionProjection7727, oldProjection1363, oldProjection1359] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11880 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1393).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11879 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11879 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11879 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11880 (1 : Fin 4)) = canonicalInput19529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7727 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19529 hH))).trans (reductionSound7727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11880 (2 : Fin 4)) = canonicalInput19488.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1363 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19488 hH))).trans (oldProjectionSound1363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11880 (3 : Fin 4)) = canonicalInput19484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1359 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11880 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19484 hH))).trans (oldProjectionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9801).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11880 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9801).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11880 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 72, 720] ![1440, 1440, 20, 2] reductionProjection11880 ![reductionProjection11879, reductionProjection7727, oldProjection1363, oldProjection1359]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11881 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -5), (94, 15), (241, -80), (694, 240), (698, -80), (1250, -60), (1251, -50), (1319, 240)]

def reductionPivot11881 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 1, 1, -1], ![0, -1, -2, 3], ![0, 0, 2, -2], ![1, -1, -1, 1]]

theorem reductionSound11881 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11168).moment H =
      Integer.Sparse.eval reductionProjection11881 (momentVector H) := by
  have heq : reductionPivot11881 = (fun u v => (normalNode11168).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11168).moment H = injectiveMoment H reductionPivot11881 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11168).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11881 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11881 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 360, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11881 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1366, oldProjection1344, oldProjection1359, oldProjection1220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11881 (0 : Fin 4)) = canonicalInput23767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1366 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1366 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23767 hH))).trans (oldProjectionSound1366 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11881 (1 : Fin 4)) = canonicalInput23349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1344 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1344 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23349 hH))).trans (oldProjectionSound1344 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11881 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1359⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1359 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11881 (3 : Fin 4)) = canonicalInput23346.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11881 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23346 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11168).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11881 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11168).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11881 (j : Fin 4)))
      2 1440 1440 2 ![720, 360, 720, 360] ![2, 4, 2, 4] reductionProjection11881 ![oldProjection1366, oldProjection1344, oldProjection1359, oldProjection1220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11882 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 60), (20, -15), (94, 75), (108, -80), (241, -80), (243, -80), (698, -160), (1047, 240), (1226, -160)]

def reductionPivot11882 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, 3, -2], ![0, -1, -2, 3], ![0, 1, 0, -1], ![1, -1, -1, 1]]

theorem reductionSound11882 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10915).moment H =
      Integer.Sparse.eval reductionProjection11882 (momentVector H) := by
  have heq : reductionPivot11882 = (fun u v => (normalNode10915).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10915).moment H = injectiveMoment H reductionPivot11882 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10915).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11882 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11882 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 360, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11882 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1363, oldProjection1220, oldProjection1318, oldProjection1211] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11882 (0 : Fin 4)) = canonicalInput23445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1363 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23445 hH))).trans (oldProjectionSound1363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11882 (1 : Fin 4)) = canonicalInput22448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22448 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11882 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1318⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1318 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1318 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1318 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11882 (3 : Fin 4)) = canonicalInput22441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1211 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11882 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22441 hH))).trans (oldProjectionSound1211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10915).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11882 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10915).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11882 (j : Fin 4)))
      2 1440 1440 2 ![72, 360, 144, 144] ![20, 4, 10, 10] reductionProjection11882 ![oldProjection1363, oldProjection1220, oldProjection1318, oldProjection1211]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11883 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -200), (20, 35), (94, -100), (108, 160), (241, 320), (243, 160), (694, -480), (698, 480), (1047, -480), (1137, 720), (1138, 1440), (1226, 240), (1250, 60), (1251, -45), (1319, -480), (1382, -1440), (1393, 720)]

def reductionPivot11883 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound11883 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9794).moment H =
      Integer.Sparse.eval reductionProjection11883 (momentVector H) := by
  have heq : reductionPivot11883 = (fun u v => (normalNode9794).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9794).moment H = injectiveMoment H reductionPivot11883 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9794).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot11883 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11883 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 1440, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11883 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11880, reductionProjection8894, reductionProjection11881, reductionProjection11882, reductionProjection11690] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11883 (0 : Fin 5)) = canonicalInput22518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11880 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11880 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22518 hH))).trans (reductionSound11880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11883 (1 : Fin 5)) = canonicalInput19526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8894 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19526 hH))).trans (reductionSound8894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11883 (2 : Fin 5)) = canonicalInput19477.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11881 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11881 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19477 hH))).trans (reductionSound11881 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11883 (3 : Fin 5)) = canonicalInput19474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11882 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19474 hH))).trans (reductionSound11882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11883 (4 : Fin 5)) = canonicalInput19472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11690 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11883 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19472 hH))).trans (reductionSound11690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9794).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11883 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9794).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11883 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 1440, 1] ![1, 1, 1, 1, 1440] reductionProjection11883 ![reductionProjection11880, reductionProjection8894, reductionProjection11881, reductionProjection11882, reductionProjection11690]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11884 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 40), (20, -5), (94, 15), (247, -80), (1204, -720), (1251, 20), (1319, 240)]

def reductionPivot11884 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound11884 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9816).moment H =
      Integer.Sparse.eval reductionProjection11884 (momentVector H) := by
  have heq : reductionPivot11884 = (fun u v => (normalNode9816).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9816).moment H = injectiveMoment H reductionPivot11884 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9816).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11884 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11884 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11884 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1361, reductionProjection2654, reductionProjection10347, oldProjection1220] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11884 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw4419 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical4419 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11884 (1 : Fin 4)) = canonicalInput19533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2654 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19533 hH))).trans (reductionSound2654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11884 (2 : Fin 4)) = canonicalInput19668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19668 hH))).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11884 (3 : Fin 4)) = canonicalInput19679.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1220 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11884 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1220 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19679 hH))).trans (oldProjectionSound1220 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9816).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11884 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9816).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11884 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 720, 360] ![2, 1440, 2, 4] reductionProjection11884 ![oldProjection1361, reductionProjection2654, reductionProjection10347, oldProjection1220]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11885 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (94, -7), (108, -16), (243, -16), (1047, 48), (1226, -16), (1251, 3)]

def reductionPivot11885 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![0, 1, 0, -1], ![1, -1, -1, 1]]

theorem reductionSound11885 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode11136).moment H =
      Integer.Sparse.eval reductionProjection11885 (momentVector H) := by
  have heq : reductionPivot11885 = (fun u v => (normalNode11136).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11136).moment H = injectiveMoment H reductionPivot11885 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11136).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot11885 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11885 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11885 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection7777, oldProjection1363, oldProjection1365, oldProjection269] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11885 (0 : Fin 4)) = (normalNode9973).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11885 (1 : Fin 4)) = canonicalInput24585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1363 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24585 hH))).trans (oldProjectionSound1363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11885 (2 : Fin 4)) = canonicalInput24634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24634 hH))).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11885 (3 : Fin 4)) = canonicalInput24636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11885 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24636 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11136).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11885 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11136).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11885 (j : Fin 4)))
      2 288 288 2 ![72, 72, 144, 48] ![4, 4, 2, 6] reductionProjection11885 ![reductionProjection7777, oldProjection1363, oldProjection1365, oldProjection269]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11886 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -180), (20, 40), (94, -125), (108, 160), (241, 240), (243, 560), (247, 80), (698, 720), (1047, -960), (1203, 720), (1204, 720), (1226, 640), (1248, 720), (1251, -70), (1319, -240), (1323, -240)]

def reductionPivot11886 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound11886 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9795).moment H =
      Integer.Sparse.eval reductionProjection11886 (momentVector H) := by
  have heq : reductionPivot11886 = (fun u v => (normalNode9795).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9795).moment H = injectiveMoment H reductionPivot11886 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9795).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot11886 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11886 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11886 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11884, reductionProjection281, reductionProjection11885, reductionProjection11882, reductionProjection7058] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11886 (0 : Fin 5)) = canonicalInput22608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11884 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11884 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22608 hH))).trans (reductionSound11884 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11886 (1 : Fin 5)) = canonicalInput19530.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection281 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection281 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19530 hH))).trans (reductionSound281 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11886 (2 : Fin 5)) = canonicalInput19478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11885 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11885 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19478 hH))).trans (reductionSound11885 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11886 (3 : Fin 5)) = canonicalInput19474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11882 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11882 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19474 hH))).trans (reductionSound11882 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11886 (4 : Fin 5)) = canonicalInput19471.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7058 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11886 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7058 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19471 hH))).trans (reductionSound7058 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9795).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11886 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9795).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11886 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 1440, 1440] ![1, 5, 5, 1, 1] reductionProjection11886 ![reductionProjection11884, reductionProjection281, reductionProjection11885, reductionProjection11882, reductionProjection7058]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11887 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 40), (20, -5), (94, -10), (247, -80), (1204, -720), (1251, 15), (1319, 480), (1396, -720)]

def reductionPivot11887 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, -1, 2, -2]]

theorem reductionSound11887 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9803).moment H =
      Integer.Sparse.eval reductionProjection11887 (momentVector H) := by
  have heq : reductionPivot11887 = (fun u v => (normalNode9803).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9803).moment H = injectiveMoment H reductionPivot11887 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9803).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11887 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11887 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11887 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1330, reductionProjection2654, oldProjection1361, oldProjection1359] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11887 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1330⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1330 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1330 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1330 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11887 (1 : Fin 4)) = canonicalInput19533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2654 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19533 hH))).trans (reductionSound2654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11887 (2 : Fin 4)) = canonicalInput19489.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19489 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11887 (3 : Fin 4)) = canonicalInput19484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1359 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11887 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19484 hH))).trans (oldProjectionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9803).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11887 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9803).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11887 (j : Fin 4)))
      2 1440 1440 2 ![1, 1, 720, 720] ![1440, 1440, 2, 2] reductionProjection11887 ![oldProjection1330, reductionProjection2654, oldProjection1361, oldProjection1359]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11888 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -10), (93, -120), (94, -10), (243, -80), (1047, 240), (1226, -80), (1251, 35), (1319, 240)]

def reductionPivot11888 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 1, -1, 1], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, -1, 1, -1]]

theorem reductionSound11888 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11093).moment H =
      Integer.Sparse.eval reductionProjection11888 (momentVector H) := by
  have heq : reductionPivot11888 = (fun u v => (normalNode11093).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11093).moment H = injectiveMoment H reductionPivot11888 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11093).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11888 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11888 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11888 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1224, oldProjection1359, reductionProjection9403, oldProjection1365] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11888 (0 : Fin 4)) = canonicalInput20308.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1224 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1224 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20308 hH))).trans (oldProjectionSound1224 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11888 (1 : Fin 4)) = canonicalInput22761.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1359 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22761 hH))).trans (oldProjectionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11888 (2 : Fin 4)) = canonicalInput22779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9403 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9403 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22779 hH))).trans (reductionSound9403 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11888 (3 : Fin 4)) = canonicalInput22782.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1365 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11888 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1365 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22782 hH))).trans (oldProjectionSound1365 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11093).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11888 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11093).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11888 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 72, 144] ![10, 2, 20, 10] reductionProjection11888 ![oldProjection1224, oldProjection1359, reductionProjection9403, oldProjection1365]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11889 : Integer.Sparse (Fin 1613) := [(0, -9), (19, -200), (20, 30), (93, 240), (94, 25), (241, 160), (243, 320), (247, 160), (698, 320), (1047, -960), (1203, 720), (1204, 1440), (1226, 320), (1251, -40), (1319, -960), (1323, -240), (1382, -1440), (1396, 720)]

def reductionPivot11889 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound11889 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9796).moment H =
      Integer.Sparse.eval reductionProjection11889 (momentVector H) := by
  have heq : reductionPivot11889 = (fun u v => (normalNode9796).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9796).moment H = injectiveMoment H reductionPivot11889 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9796).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot11889 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11889 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 720, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11889 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11887, reductionProjection9156, reductionProjection11888, reductionProjection11877, reductionProjection11690] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11889 (0 : Fin 5)) = canonicalInput22609.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11887 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22609 hH))).trans (reductionSound11887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11889 (1 : Fin 5)) = canonicalInput19531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9156 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9156 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19531 hH))).trans (reductionSound9156 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11889 (2 : Fin 5)) = canonicalInput19479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11888 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19479 hH))).trans (reductionSound11888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11889 (3 : Fin 5)) = canonicalInput19475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11877 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19475 hH))).trans (reductionSound11877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11889 (4 : Fin 5)) = canonicalInput19472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11690 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11889 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11690 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19472 hH))).trans (reductionSound11690 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9796).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11889 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9796).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11889 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 720, 1] ![1, 5, 1, 2, 1440] reductionProjection11889 ![reductionProjection11887, reductionProjection9156, reductionProjection11888, reductionProjection11877, reductionProjection11690]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11890 : Integer.Sparse (Fin 1613) := [(0, 4), (19, 40), (94, -25), (243, -80), (698, -80), (1226, -80), (1250, -60), (1251, 35), (1323, 240)]

def reductionPivot11890 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound11890 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9937).moment H =
      Integer.Sparse.eval reductionProjection11890 (momentVector H) := by
  have heq : reductionPivot11890 = (fun u v => (normalNode9937).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9937).moment H = injectiveMoment H reductionPivot11890 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9937).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11890 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11890 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11890 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1174, oldProjection1207, oldProjection1212, oldProjection1213] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11890 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1174⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1174 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1174 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1174 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11890 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1207⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1207 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11890 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1212⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1212 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1212 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1212 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11890 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1213⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1213 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11890 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1213 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1213 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9937).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11890 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9937).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11890 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 720, 144] ![10, 2, 2, 10] reductionProjection11890 ![oldProjection1174, oldProjection1207, oldProjection1212, oldProjection1213]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11891 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -48), (20, 5), (93, 24), (94, 21), (241, 16), (242, -96), (243, 64), (247, 16), (697, -48), (698, 80), (700, 16), (704, 16), (1047, -48), (1173, -288), (1226, 64), (1248, 144), (1249, 144), (1250, 12), (1251, 10), (1319, -48), (1323, -144)]

def reductionPivot11891 : Matrix (Fin 6) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, -1, 3, -2], ![0, 1, 1, -2], ![1, 0, -1, 0]]

theorem reductionSound11891 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9797).moment H =
      Integer.Sparse.eval reductionProjection11891 (momentVector H) := by
  have heq : reductionPivot11891 = (fun u v => (normalNode9797).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9797).moment H = injectiveMoment H reductionPivot11891 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9797).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot11891 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11891 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 288, 720, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11891 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11020, reductionProjection11890, reductionProjection8687, reductionProjection11877, reductionProjection7116] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11891 (0 : Fin 5)) = canonicalInput24573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11020 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24573 hH))).trans (reductionSound11020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11891 (1 : Fin 5)) = canonicalInput19616.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11890 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11890 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19616 hH))).trans (reductionSound11890 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11891 (2 : Fin 5)) = canonicalInput19483.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8687 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8687 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19483 hH))).trans (reductionSound8687 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11891 (3 : Fin 5)) = canonicalInput19475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11877 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19475 hH))).trans (reductionSound11877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11891 (4 : Fin 5)) = canonicalInput19470.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7116 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11891 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19470 hH))).trans (reductionSound7116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9797).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11891 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9797).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11891 (j : Fin 5)))
      1 288 1440 5 ![720, 1440, 288, 720, 1] ![2, 1, 5, 2, 1440] reductionProjection11891 ![reductionProjection11020, reductionProjection11890, reductionProjection8687, reductionProjection11877, reductionProjection7116]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11892 : Integer.Sparse (Fin 1613) := [(0, 6), (19, 80), (20, -5), (94, -45), (247, -160), (694, 240), (698, -80), (704, -80), (1251, -10), (1319, 240)]

def reductionPivot11892 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -1, 2], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound11892 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10187).moment H =
      Integer.Sparse.eval reductionProjection11892 (momentVector H) := by
  have heq : reductionPivot11892 = (fun u v => (normalNode10187).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10187).moment H = injectiveMoment H reductionPivot11892 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10187).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11892 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11892 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11892 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1359, oldProjection1308, oldProjection972, oldProjection1299] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11892 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7796 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1359 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7796 hH))).trans (oldProjectionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11892 (1 : Fin 4)) = canonicalInput20137.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1308 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20137 hH))).trans (oldProjectionSound1308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11892 (2 : Fin 4)) = canonicalInput20108.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20108 hH))).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11892 (3 : Fin 4)) = canonicalInput20107.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1299 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11892 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1299 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20107 hH))).trans (oldProjectionSound1299 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10187).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11892 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10187).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11892 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 720, 720] ![2, 2, 2, 2] reductionProjection11892 ![oldProjection1359, oldProjection1308, oldProjection972, oldProjection1299]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11893 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 1), (20, -3), (94, -7), (1251, 1), (1290, -48)]

def reductionPivot11893 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![1, -1, 1, -1], ![1, -3, 3, -1], ![-1, 4, -4, 1]]

theorem reductionSound11893 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode11167).moment H =
      Integer.Sparse.eval reductionProjection11893 (momentVector H) := by
  have heq : reductionPivot11893 = (fun u v => (normalNode11167).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11167).moment H = injectiveMoment H reductionPivot11893 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11167).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11167).entries)).symm
  have hshape : reductionPivot11893 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot11893 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 24, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11893 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection10001, reductionProjection231, reductionProjection6517] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11893 (0 : Fin 3)) = canonicalInput26902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11893 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection10001 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11893 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection10001 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26902 hH))).trans (reductionSound10001 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11893 (1 : Fin 3)) = canonicalInput33347.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11893 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection231 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11893 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection231 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33347 hH))).trans (reductionSound231 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11893 (2 : Fin 3)) = canonicalInput33349.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11893 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection6517 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11893 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection6517 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound33349 hH))).trans (reductionSound6517 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11167).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11893 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11167).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot11893 (j : Fin 3)))
      3 144 144 3 ![48, 24, 1] ![3, 6, 144] reductionProjection11893 ![reductionProjection10001, reductionProjection231, reductionProjection6517]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11894 : Integer.Sparse (Fin 1613) := [(3, 16), (4, -1), (19, 32), (20, -1), (33, 48), (94, 6), (108, -32), (243, -16), (703, -16), (1251, -6), (1290, 48)]

def reductionPivot11894 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, -1, 4, -4]]

theorem reductionSound11894 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9800).moment H =
      Integer.Sparse.eval reductionProjection11894 (momentVector H) := by
  have heq : reductionPivot11894 = (fun u v => (normalNode9800).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9800).moment H = injectiveMoment H reductionPivot11894 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9800).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11894 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11894 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11894 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection11893, reductionProjection7598, reductionProjection10661, oldProjection1354] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11894 (0 : Fin 4)) = canonicalInput22520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11893 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22520 hH))).trans (reductionSound11893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11894 (1 : Fin 4)) = canonicalInput19528.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7598 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19528 hH))).trans (reductionSound7598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11894 (2 : Fin 4)) = canonicalInput19487.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19487 hH))).trans (reductionSound10661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11894 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7052 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1354 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11894 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7052 hH))).trans (oldProjectionSound1354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9800).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11894 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9800).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11894 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection11894 ![reductionProjection11893, reductionProjection7598, reductionProjection10661, oldProjection1354]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11895 : Integer.Sparse (Fin 1613) := [(0, -8), (3, -80), (4, 5), (19, -440), (20, 50), (33, -240), (93, 60), (94, -25), (108, 400), (243, 240), (247, 160), (694, -240), (698, 80), (703, 80), (704, 80), (1047, -480), (1138, 720), (1226, 160), (1251, -90), (1290, -240), (1319, -720), (1393, 720)]

def reductionPivot11895 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 3, -3]]

theorem reductionSound11895 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9798).moment H =
      Integer.Sparse.eval reductionProjection11895 (momentVector H) := by
  have heq : reductionPivot11895 = (fun u v => (normalNode9798).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9798).moment H = injectiveMoment H reductionPivot11895 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9798).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11895 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11895 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11895 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11892, reductionProjection145, reductionProjection11865, reductionProjection11880, reductionProjection11894] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11895 (0 : Fin 5)) = (normalNode10187).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11892 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11892 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11892 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11895 (1 : Fin 5)) = (normalNode9815).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection145 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection145 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound145 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11895 (2 : Fin 5)) = (normalNode9802).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11865 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11865 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11895 (3 : Fin 5)) = (normalNode9801).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11880 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11880 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11880 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11895 (4 : Fin 5)) = (normalNode9800).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11894 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11895 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9798).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11895 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9798).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11895 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 1440, 1440, 288] ![1, 5, 1, 1, 5] reductionProjection11895 ![reductionProjection11892, reductionProjection145, reductionProjection11865, reductionProjection11880, reductionProjection11894]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11896 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -1), (19, 4), (20, -3), (94, -3), (1176, -72), (1251, -1), (1290, 24)]

def reductionPivot11896 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-1, 1, -3, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0]]

theorem reductionSound11896 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10945).moment H =
      Integer.Sparse.eval reductionProjection11896 (momentVector H) := by
  have heq : reductionPivot11896 = (fun u v => (normalNode10945).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10945).moment H = injectiveMoment H reductionPivot11896 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10945).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11896 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11896 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11896 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9402, reductionProjection9208, reductionProjection11893, reductionProjection9209] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11896 (0 : Fin 4)) = canonicalInput27529.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9402 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9402 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27529 hH))).trans (reductionSound9402 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11896 (1 : Fin 4)) = canonicalInput22556.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9208 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9208 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22556 hH))).trans (reductionSound9208 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11896 (2 : Fin 4)) = canonicalInput22521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11893 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11893 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22521 hH))).trans (reductionSound11893 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11896 (3 : Fin 4)) = canonicalInput22519.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9209 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11896 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9209 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22519 hH))).trans (reductionSound9209 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10945).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11896 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10945).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11896 (j : Fin 4)))
      2 144 144 2 ![36, 144, 144, 1] ![4, 1, 1, 144] reductionProjection11896 ![reductionProjection9402, reductionProjection9208, reductionProjection11893, reductionProjection9209]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11897 : Integer.Sparse (Fin 1613) := [(3, -32), (4, 2), (19, -28), (20, -1), (33, -48), (94, -16), (108, 48), (243, 64), (244, 48), (701, 16), (703, 32), (704, 16), (1132, 144), (1154, 144), (1176, 144), (1214, -96), (1251, 7), (1290, -48)]

def reductionPivot11897 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![-1, 1, -1, 1], ![0, 0, 4, -4], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound11897 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9799).moment H =
      Integer.Sparse.eval reductionProjection11897 (momentVector H) := by
  have heq : reductionPivot11897 = (fun u v => (normalNode9799).entries (OAI.MUB6.Certificate.PairSemantics.permutation241 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9799).moment H = injectiveMoment H reductionPivot11897 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9799).entries OAI.MUB6.Certificate.PairSemantics.permutation241)).symm
  have hshape : reductionPivot11897 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11897 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11897 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11896, reductionProjection7754, oldProjection2679, reductionProjection11047, reductionProjection11047] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11897 (0 : Fin 5)) = (normalNode10945).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11896 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11897 (1 : Fin 5)) = canonicalInput19527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7754 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7754 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19527 hH))).trans (reductionSound7754 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11897 (2 : Fin 5)) = canonicalInput19482.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2679 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2679 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19482 hH))).trans (oldProjectionSound2679 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11897 (3 : Fin 5)) = canonicalInput19481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11047 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19481 hH))).trans (reductionSound11047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11897 (4 : Fin 5)) = canonicalInput19480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11047 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11897 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11047 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19480 hH))).trans (reductionSound11047 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9799).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11897 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9799).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11897 (j : Fin 5)))
      1 288 288 1 ![144, 144, 288, 288, 288] ![2, 2, 1, 1, 1] reductionProjection11897 ![reductionProjection11896, reductionProjection7754, oldProjection2679, reductionProjection11047, reductionProjection11047]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11898 : Integer.Sparse (Fin 1613) := [(3, 2), (19, 4), (20, -1), (93, -6), (94, -2), (108, -8), (1047, 24), (1251, -1)]

def reductionPivot11898 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 0, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound11898 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9866).moment H =
      Integer.Sparse.eval reductionProjection11898 (momentVector H) := by
  have heq : reductionPivot11898 = (fun u v => (normalNode9866).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9866).moment H = injectiveMoment H reductionPivot11898 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9866).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot11898 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11898 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11898 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1025, oldProjection269, reductionProjection7418, oldProjection1024] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11898 (0 : Fin 4)) = canonicalInput22632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1025 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22632 hH))).trans (reductionSound1025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11898 (1 : Fin 4)) = canonicalInput19619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19619 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11898 (2 : Fin 4)) = canonicalInput19564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19564 hH))).trans (reductionSound7418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11898 (3 : Fin 4)) = canonicalInput19560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1024 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11898 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1024 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19560 hH))).trans (oldProjectionSound1024 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9866).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11898 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9866).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11898 (j : Fin 4)))
      2 144 144 2 ![144, 48, 144, 144] ![1, 3, 1, 1] reductionProjection11898 ![reductionProjection1025, oldProjection269, reductionProjection7418, oldProjection1024]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11899 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 20), (19, 100), (94, 35), (108, -80), (698, -80), (704, -80), (1047, 240), (1058, 240), (1060, 240), (1251, 5)]

def reductionPivot11899 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 3, -3]]

theorem reductionSound11899 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9867).moment H =
      Integer.Sparse.eval reductionProjection11899 (momentVector H) := by
  have heq : reductionPivot11899 = (fun u v => (normalNode9867).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9867).moment H = injectiveMoment H reductionPivot11899 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9867).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11899 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11899 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 3, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11899 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1326, reductionProjection11820, oldProjection1196, reductionProjection511] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11899 (0 : Fin 4)) = canonicalInput22634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1326 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1326 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22634 hH))).trans (oldProjectionSound1326 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11899 (1 : Fin 4)) = (normalNode9960).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11820 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11899 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1196⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1196 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1196 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1196 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11899 (3 : Fin 4)) = canonicalInput19563.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection511 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11899 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection511 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19563 hH))).trans (reductionSound511 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9867).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11899 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9867).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11899 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 3, 144] ![2, 2, 480, 10] reductionProjection11899 ![oldProjection1326, reductionProjection11820, oldProjection1196, reductionProjection511]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11900 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -16), (19, -68), (20, 9), (93, 12), (94, 1), (104, 16), (108, 48), (240, -48), (247, 16), (698, 32), (704, 48), (1047, -192), (1058, -144), (1060, -96), (1078, 144), (1084, 144), (1206, 144), (1223, -48), (1251, 5), (1319, -48), (1321, -48)]

def reductionPivot11900 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 1, 0, -1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound11900 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9804).moment H =
      Integer.Sparse.eval reductionProjection11900 (momentVector H) := by
  have heq : reductionPivot11900 = (fun u v => (normalNode9804).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9804).moment H = injectiveMoment H reductionPivot11900 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9804).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11900 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11900 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11900 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6705, reductionProjection10918, reductionProjection9159, reductionProjection11898, reductionProjection11899] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11900 (0 : Fin 5)) = (normalNode4807).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6705 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6705 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6705 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11900 (1 : Fin 5)) = canonicalInput19451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10918 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19451 hH))).trans (reductionSound10918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11900 (2 : Fin 5)) = canonicalInput19559.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9159 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9159 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19559 hH))).trans (reductionSound9159 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11900 (3 : Fin 5)) = canonicalInput19561.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19561 hH))).trans (reductionSound11898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11900 (4 : Fin 5)) = canonicalInput19562.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11899 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11900 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19562 hH))).trans (reductionSound11899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9804).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11900 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9804).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11900 (j : Fin 5)))
      1 288 1440 5 ![1440, 1440, 288, 144, 1440] ![1, 1, 5, 10, 1] reductionProjection11900 ![reductionProjection6705, reductionProjection10918, reductionProjection9159, reductionProjection11898, reductionProjection11899]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11901 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 8), (20, -3), (94, 1), (108, -16), (243, -16), (1226, -16), (1251, -4)]

def reductionPivot11901 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 1, 0], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -3, 3]]

theorem reductionSound11901 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10847).moment H =
      Integer.Sparse.eval reductionProjection11901 (momentVector H) := by
  have heq : reductionPivot11901 = (fun u v => (normalNode10847).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10847).moment H = injectiveMoment H reductionPivot11901 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10847).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot11901 0 = Pi.single (2 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11901 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11901 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1128, oldProjection1363, reductionProjection11438, oldProjection168] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11901 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1128⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1128 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11901 (1 : Fin 4)) = canonicalInput25531.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1363 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25531 hH))).trans (oldProjectionSound1363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11901 (2 : Fin 4)) = canonicalInput26131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11438 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11438 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26131 hH))).trans (reductionSound11438 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11901 (3 : Fin 4)) = canonicalInput26138.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection168 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11901 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection168 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26138 hH))).trans (oldProjectionSound168 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10847).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11901 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10847).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11901 (j : Fin 4)))
      2 288 288 2 ![144, 72, 144, 24] ![2, 4, 2, 12] reductionProjection11901 ![oldProjection1128, oldProjection1363, reductionProjection11438, oldProjection168]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11902 : Integer.Sparse (Fin 1613) := [(19, 2), (20, 1), (94, -10), (243, -8), (1226, -8), (1251, -1)]

def reductionPivot11902 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 3, -3], ![0, 1, -1, 0], ![1, 0, 0, -1]]

theorem reductionSound11902 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9901).moment H =
      Integer.Sparse.eval reductionProjection11902 (momentVector H) := by
  have heq : reductionPivot11902 = (fun u v => (normalNode9901).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9901).moment H = injectiveMoment H reductionPivot11902 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9901).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11902 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11902 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 48, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11902 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection919, oldProjection1211, oldProjection269, oldProjection1225] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11902 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node919⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11902 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1211⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1211 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11902 (2 : Fin 4)) = canonicalInput19653.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19653 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11902 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1225⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11902 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9901).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11902 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9901).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11902 (j : Fin 4)))
      2 144 144 2 ![144, 144, 48, 144] ![1, 1, 3, 1] reductionProjection11902 ![oldProjection919, oldProjection1211, oldProjection269, oldProjection1225]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11903 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -30), (19, -140), (20, 20), (93, 60), (94, 5), (108, 80), (241, 40), (243, 360), (698, 120), (1047, -240), (1214, -120), (1225, 80), (1226, 320), (1251, 5), (1323, -120)]

def reductionPivot11903 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, -1, 0], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound11903 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9805).moment H =
      Integer.Sparse.eval reductionProjection11903 (momentVector H) := by
  have heq : reductionPivot11903 = (fun u v => (normalNode9805).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9805).moment H = injectiveMoment H reductionPivot11903 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9805).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11903 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11903 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 288, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11903 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8634, reductionProjection11901, reductionProjection9397, reductionProjection11902, reductionProjection11867] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11903 (0 : Fin 5)) = (normalNode4856).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8634 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8634 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8634 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11903 (1 : Fin 5)) = canonicalInput19455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11901 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11901 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19455 hH))).trans (reductionSound11901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11903 (2 : Fin 5)) = canonicalInput19566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9397 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19566 hH))).trans (reductionSound9397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11903 (3 : Fin 5)) = canonicalInput19569.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11902 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19569 hH))).trans (reductionSound11902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11903 (4 : Fin 5)) = canonicalInput19570.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11867 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11903 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19570 hH))).trans (reductionSound11867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9805).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11903 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9805).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11903 (j : Fin 5)))
      1 720 1440 2 ![720, 288, 288, 144, 1440] ![2, 5, 5, 10, 1] reductionProjection11903 ![reductionProjection8634, reductionProjection11901, reductionProjection9397, reductionProjection11902, reductionProjection11867]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
