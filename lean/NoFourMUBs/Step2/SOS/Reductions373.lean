import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical301
import NoFourMUBs.Step2.SOS.Canonical304
import NoFourMUBs.Step2.SOS.Canonical305
import NoFourMUBs.Step2.SOS.Canonical306
import NoFourMUBs.Step2.SOS.Canonical307
import NoFourMUBs.Step2.SOS.Canonical350
import NoFourMUBs.Step2.SOS.Canonical352
import NoFourMUBs.Step2.SOS.Canonical398
import NoFourMUBs.Step2.SOS.Canonical407
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes038
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions060
import NoFourMUBs.Step2.SOS.Reductions066
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions095
import NoFourMUBs.Step2.SOS.Reductions192
import NoFourMUBs.Step2.SOS.Reductions193
import NoFourMUBs.Step2.SOS.Reductions199
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions232
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions246
import NoFourMUBs.Step2.SOS.Reductions247
import NoFourMUBs.Step2.SOS.Reductions249
import NoFourMUBs.Step2.SOS.Reductions255
import NoFourMUBs.Step2.SOS.Reductions265
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions323
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions335
import NoFourMUBs.Step2.SOS.Reductions336
import NoFourMUBs.Step2.SOS.Reductions337
import NoFourMUBs.Step2.SOS.Reductions353
import NoFourMUBs.Step2.SOS.Reductions357
import NoFourMUBs.Step2.SOS.Reductions368
import NoFourMUBs.Step2.SOS.Reductions369
import NoFourMUBs.Step2.SOS.Reductions371
import NoFourMUBs.Step2.SOS.Reductions372
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical189
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical197
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical219
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical220
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical221
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical222
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical237
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical244
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes18
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes42
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection11936 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -10), (19, -130), (20, 5), (37, -240), (108, 80), (243, 320), (682, -240), (698, 80), (1045, -120), (1052, -240), (1217, -240), (1221, -120), (1225, 80), (1226, 320), (1251, -35)]

def reductionPivot11936 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![-1, 1, 3, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound11936 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9833).moment H =
      Integer.Sparse.eval reductionProjection11936 (momentVector H) := by
  have heq : reductionPivot11936 = (fun u v => (normalNode9833).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9833).moment H = injectiveMoment H reductionPivot11936 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9833).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11936 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11936 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 288, 144, 144] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11936 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11777, oldProjection1680, oldProjection2695, reductionProjection11873, reductionProjection11873] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11936 (0 : Fin 5)) = (normalNode9639).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11777 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11936 (1 : Fin 5)) = canonicalInput19507.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1680 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19507 hH))).trans (oldProjectionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11936 (2 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2695 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11936 (3 : Fin 5)) = (normalNode9836).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11873 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11936 (4 : Fin 5)) = canonicalInput19518.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11873 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11936 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11873 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19518 hH))).trans (reductionSound11873 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9833).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11936 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9833).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11936 (j : Fin 5)))
      1 720 1440 2 ![144, 1440, 288, 144, 144] ![10, 1, 5, 10, 10] reductionProjection11936 ![reductionProjection11777, oldProjection1680, oldProjection2695, reductionProjection11873, reductionProjection11873]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11937 : Integer.Sparse (Fin 1613) := [(3, -20), (4, 2), (19, -16), (20, 3), (37, -48), (94, -9), (106, 16), (108, 16), (243, 56), (246, 8), (703, 40), (704, 8), (749, 72), (1045, -24), (1052, -24), (1209, -48), (1213, -24), (1217, -24), (1225, 16), (1226, 16), (1251, 2)]

def reductionPivot11937 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![-1, 1, 4, -4], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, -1, 0, 0]]

theorem reductionSound11937 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9837).moment H =
      Integer.Sparse.eval reductionProjection11937 (momentVector H) := by
  have heq : reductionPivot11937 = (fun u v => (normalNode9837).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9837).moment H = injectiveMoment H reductionPivot11937 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9837).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot11937 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11937 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11937 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection11785, oldProjection2695, reductionProjection11782, reductionProjection11779, reductionProjection11779] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11937 (0 : Fin 5)) = (normalNode9640).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11785 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11937 (1 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2695⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2695 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2695 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2695 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11937 (2 : Fin 5)) = (normalNode9838).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11782 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11782 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11782 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11937 (3 : Fin 5)) = (normalNode9839).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11779 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11937 (4 : Fin 5)) = canonicalInput19522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11779 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11937 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19522 hH))).trans (reductionSound11779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9837).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11937 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9837).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11937 (j : Fin 5)))
      1 144 288 2 ![144, 288, 288, 288, 288] ![2, 1, 1, 1, 1] reductionProjection11937 ![reductionProjection11785, oldProjection2695, reductionProjection11782, reductionProjection11779, reductionProjection11779]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11938 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -1), (37, 48), (94, -7), (104, -32), (108, -16), (241, -48), (243, -16), (698, -16), (704, -16), (1251, -2)]

def reductionPivot11938 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -2, 0, 2], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound11938 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9845).moment H =
      Integer.Sparse.eval reductionProjection11938 (momentVector H) := by
  have heq : reductionPivot11938 = (fun u v => (normalNode9845).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9845).moment H = injectiveMoment H reductionPivot11938 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9845).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11938 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11938 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 18, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11938 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1189, reductionProjection6197, reductionProjection6171, reductionProjection7419] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11938 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7808 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1189 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7808 hH))).trans (oldProjectionSound1189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11938 (1 : Fin 4)) = canonicalInput19573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6197 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19573 hH))).trans (reductionSound6197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11938 (2 : Fin 4)) = (normalNode9846).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6171 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6171 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6171 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11938 (3 : Fin 4)) = canonicalInput19541.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7419 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11938 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7419 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19541 hH))).trans (reductionSound7419 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9845).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11938 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9845).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11938 (j : Fin 4)))
      2 288 288 2 ![144, 18, 9, 144] ![2, 16, 32, 2] reductionProjection11938 ![oldProjection1189, reductionProjection6197, reductionProjection6171, reductionProjection7419]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11939 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -2), (94, -3), (241, -16), (243, -32), (698, -16), (704, -16), (1040, 48), (1223, 48), (1226, -16), (1251, -1)]

def reductionPivot11939 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, 0, -2, 3], ![0, -2, 1, 1], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound11939 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9850).moment H =
      Integer.Sparse.eval reductionProjection11939 (momentVector H) := by
  have heq : reductionPivot11939 = (fun u v => (normalNode9850).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9850).moment H = injectiveMoment H reductionPivot11939 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9850).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11939 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11939 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 18, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11939 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8167, reductionProjection6197, oldProjection1189, oldProjection1020] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11939 (0 : Fin 4)) = canonicalInput22533.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8167 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22533 hH))).trans (reductionSound8167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11939 (1 : Fin 4)) = canonicalInput19573.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6197 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19573 hH))).trans (reductionSound6197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11939 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1189⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1189 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1189 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1189 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11939 (3 : Fin 4)) = canonicalInput19546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1020 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11939 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19546 hH))).trans (oldProjectionSound1020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9850).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11939 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9850).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11939 (j : Fin 4)))
      2 288 288 2 ![144, 18, 144, 144] ![2, 16, 2, 2] reductionProjection11939 ![reductionProjection8167, reductionProjection6197, oldProjection1189, oldProjection1020]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11940 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 4), (20, -1), (94, 9), (104, -16), (105, -16), (243, -16), (704, -16), (1251, 2)]

def reductionPivot11940 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, 0, -2, 3], ![0, -1, -1, 2], ![0, 1, 3, -4], ![1, -1, 0, 0]]

theorem reductionSound11940 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9868).moment H =
      Integer.Sparse.eval reductionProjection11940 (momentVector H) := by
  have heq : reductionPivot11940 = (fun u v => (normalNode9868).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9868).moment H = injectiveMoment H reductionPivot11940 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9868).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot11940 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11940 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 36, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11940 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1095, oldProjection1167, reductionProjection1933, reductionProjection7418] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11940 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7812 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1095 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1095 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7812 hH))).trans (oldProjectionSound1095 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11940 (1 : Fin 4)) = canonicalInput19624.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1167 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19624 hH))).trans (oldProjectionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11940 (2 : Fin 4)) = canonicalInput19565.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1933 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19565 hH))).trans (reductionSound1933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11940 (3 : Fin 4)) = canonicalInput19564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11940 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19564 hH))).trans (reductionSound7418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9868).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11940 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9868).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11940 (j : Fin 4)))
      2 288 288 2 ![144, 36, 144, 144] ![2, 8, 2, 2] reductionProjection11940 ![oldProjection1095, oldProjection1167, reductionProjection1933, reductionProjection7418]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11941 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -5), (94, -10), (1251, -10)]

def reductionPivot11941 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound11941 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9894).moment H =
      Integer.Sparse.eval reductionProjection11941 (momentVector H) := by
  have heq : reductionPivot11941 = (fun u v => (normalNode9894).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9894).moment H = injectiveMoment H reductionPivot11941 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9894).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11941 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11941 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 240, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11941 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection909, reductionProjection3064, oldProjection272, oldProjection1217] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11941 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6078 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6078 hH))).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11941 (1 : Fin 4)) = (normalNode9926).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3064 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11941 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7095 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection272 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7095 hH))).trans (oldProjectionSound272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11941 (3 : Fin 4)) = canonicalInput19646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1217 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11941 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19646 hH))).trans (oldProjectionSound1217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9894).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11941 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9894).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11941 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 240, 720] ![2, 2, 6, 2] reductionProjection11941 ![oldProjection909, reductionProjection3064, oldProjection272, oldProjection1217]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11942 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -56), (20, 11), (94, 30), (104, 64), (105, 16), (108, 64), (241, 80), (243, 32), (247, 96), (698, 32), (704, 32), (1251, 16)]

def reductionPivot11942 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, 0, -1, 0]]

theorem reductionSound11942 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9873).moment H =
      Integer.Sparse.eval reductionProjection11942 (momentVector H) := by
  have heq : reductionPivot11942 = (fun u v => (normalNode9873).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9873).moment H = injectiveMoment H reductionPivot11942 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9873).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11942 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11942 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11942 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6374, reductionProjection6370, reductionProjection6386, reductionProjection11941, reductionProjection6422] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11942 (0 : Fin 5)) = (normalNode7382).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6374 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11942 (1 : Fin 5)) = (normalNode9842).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6370 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6370 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6370 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11942 (2 : Fin 5)) = (normalNode9881).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6386 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6386 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6386 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11942 (3 : Fin 5)) = (normalNode9894).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11941 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11942 (4 : Fin 5)) = (normalNode9896).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6422 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11942 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9873).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11942 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9873).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11942 (j : Fin 5)))
      1 288 1440 5 ![1440, 288, 1440, 1440, 1440] ![1, 5, 1, 1, 1] reductionProjection11942 ![reductionProjection6374, reductionProjection6370, reductionProjection6386, reductionProjection11941, reductionProjection6422]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11943 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 12), (20, 1), (94, -5), (104, -16), (105, -16), (108, -32), (243, -16), (704, -16), (1251, 2)]

def reductionPivot11943 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -1, -1, 1]]

theorem reductionSound11943 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9908).moment H =
      Integer.Sparse.eval reductionProjection11943 (momentVector H) := by
  have heq : reductionPivot11943 = (fun u v => (normalNode9908).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9908).moment H = injectiveMoment H reductionPivot11943 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9908).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11943 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11943 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 24, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11943 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10661, oldProjection243, reductionProjection7777, reductionProjection7432] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11943 (0 : Fin 4)) = (normalNode7482).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11943 (1 : Fin 4)) = canonicalInput19632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19632 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11943 (2 : Fin 4)) = canonicalInput19681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19681 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11943 (3 : Fin 4)) = (normalNode9981).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7432 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11943 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9908).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11943 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9908).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11943 (j : Fin 4)))
      2 288 288 2 ![144, 24, 72, 144] ![2, 12, 4, 2] reductionProjection11943 ![reductionProjection10661, oldProjection243, reductionProjection7777, reductionProjection7432]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11944 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -80), (19, -180), (20, 35), (37, -240), (94, -70), (104, 240), (105, 80), (108, 320), (241, 240), (243, 320), (698, 80), (703, 80), (704, 160), (1226, 80), (1251, -20)]

def reductionPivot11944 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 0, 1], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound11944 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9874).moment H =
      Integer.Sparse.eval reductionProjection11944 (momentVector H) := by
  have heq : reductionPivot11944 = (fun u v => (normalNode9874).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9874).moment H = injectiveMoment H reductionPivot11944 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9874).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11944 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11944 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 18, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11944 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10771, reductionProjection11938, reductionProjection6197, reductionProjection11905, reductionProjection11943] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11944 (0 : Fin 5)) = (normalNode7384).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10771 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10771 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10771 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11944 (1 : Fin 5)) = (normalNode9845).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11938 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11938 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11938 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11944 (2 : Fin 5)) = canonicalInput19568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6197 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6197 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19568 hH))).trans (reductionSound6197 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11944 (3 : Fin 5)) = canonicalInput19571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11905 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19571 hH))).trans (reductionSound11905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11944 (4 : Fin 5)) = (normalNode9908).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11943 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11944 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9874).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11944 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9874).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11944 (j : Fin 5)))
      1 1440 1440 1 ![144, 288, 18, 1440, 288] ![10, 5, 80, 1, 5] reductionProjection11944 ![reductionProjection10771, reductionProjection11938, reductionProjection6197, reductionProjection11905, reductionProjection11943]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11945 : Integer.Sparse (Fin 1613) := [(19, 4), (20, -1), (94, -7), (698, -16), (1251, 2)]

def reductionPivot11945 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound11945 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9915).moment H =
      Integer.Sparse.eval reductionProjection11945 (momentVector H) := by
  have heq : reductionPivot11945 = (fun u v => (normalNode9915).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9915).moment H = injectiveMoment H reductionPivot11945 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9915).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11945 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11945 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 80, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11945 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection969, oldProjection1206, oldProjection56, reductionProjection10347] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11945 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node969⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection969 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11945 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1206⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1206 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1206 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1206 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11945 (2 : Fin 4)) = canonicalInput19640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((80 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection56 (momentVector H)
      have hh : (80 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection56 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19640 hH))).trans (oldProjectionSound56 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11945 (3 : Fin 4)) = (normalNode9969).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11945 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9915).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11945 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9915).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11945 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 80, 720] ![2, 2, 18, 2] reductionProjection11945 ![oldProjection969, oldProjection1206, oldProjection56, reductionProjection10347]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11946 : Integer.Sparse (Fin 1613) := [(0, 9), (19, -80), (20, 10), (81, -480), (94, 75), (228, -240), (241, 160), (243, 400), (247, 80), (682, -240), (697, -240), (698, 1600), (700, 80), (704, 80), (1052, -720), (1059, 320), (1217, -240), (1219, -240), (1221, -480), (1223, -240), (1225, 80), (1226, 720), (1227, 720), (1251, -300), (1389, -240)]

def reductionPivot11946 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 0, 1, -1], ![0, 2, -1, -1], ![1, 0, 1, -2]]

theorem reductionSound11946 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9876).moment H =
      Integer.Sparse.eval reductionProjection11946 (momentVector H) := by
  have heq : reductionPivot11946 = (fun u v => (normalNode9876).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9876).moment H = injectiveMoment H reductionPivot11946 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9876).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11946 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11946 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 18, 1440, 288, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11946 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2491, reductionProjection2125, reductionProjection7989, reductionProjection11945, oldProjection2706] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11946 (0 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2491⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2491 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11946 (1 : Fin 5)) = (normalNode9847).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2125 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2125 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2125 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11946 (2 : Fin 5)) = (normalNode9910).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7989 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7989 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7989 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11946 (3 : Fin 5)) = (normalNode9915).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11945 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11945 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11945 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11946 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2706⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2706 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11946 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2706 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2706 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9876).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11946 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9876).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11946 (j : Fin 5)))
      1 1440 1440 1 ![288, 18, 1440, 288, 720] ![5, 80, 1, 5, 2] reductionProjection11946 ![oldProjection2491, reductionProjection2125, reductionProjection7989, reductionProjection11945, oldProjection2706]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11947 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (20, 5)]

def reductionPivot11947 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound11947 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9892).moment H =
      Integer.Sparse.eval reductionProjection11947 (momentVector H) := by
  have heq : reductionPivot11947 = (fun u v => (normalNode9892).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9892).moment H = injectiveMoment H reductionPivot11947 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9892).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11947 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11947 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 240, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11947 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection909, oldProjection1201, oldProjection267, reductionProjection10347] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11947 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11947 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1201⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1201 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11947 (2 : Fin 4)) = canonicalInput19639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection267 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection267 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19639 hH))).trans (oldProjectionSound267 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11947 (3 : Fin 4)) = (normalNode9969).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11947 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9892).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11947 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9892).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11947 (j : Fin 4)))
      2 720 720 2 ![720, 720, 240, 720] ![1, 1, 3, 1] reductionProjection11947 ![oldProjection909, oldProjection1201, oldProjection267, reductionProjection10347]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11948 : Integer.Sparse (Fin 1613) := [(0, -2), (19, 10), (20, -5), (94, 5), (243, -40), (698, -80), (1226, -80), (1227, -40), (1251, 10)]

def reductionPivot11948 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound11948 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9921).moment H =
      Integer.Sparse.eval reductionProjection11948 (momentVector H) := by
  have heq : reductionPivot11948 = (fun u v => (normalNode9921).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9921).moment H = injectiveMoment H reductionPivot11948 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9921).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11948 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11948 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11948 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1116, oldProjection272, reductionProjection10347, oldProjection1046] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11948 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6309 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6309 hH))).trans (oldProjectionSound1116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11948 (1 : Fin 4)) = canonicalInput19629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection272 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19629 hH))).trans (oldProjectionSound272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11948 (2 : Fin 4)) = canonicalInput19668.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19668 hH))).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11948 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7111 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11948 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7111 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9921).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11948 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9921).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11948 (j : Fin 4)))
      2 720 720 2 ![720, 240, 720, 720] ![1, 3, 1, 1] reductionProjection11948 ![oldProjection1116, oldProjection272, reductionProjection10347, oldProjection1046]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11949 : Integer.Sparse (Fin 1613) := [(0, 4), (19, -120), (20, -15), (94, -70), (243, 480), (682, -240), (698, 480), (704, 160), (1217, -240), (1221, -240), (1225, 160), (1226, 480), (1227, 160), (1251, -75)]

def reductionPivot11949 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound11949 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9877).moment H =
      Integer.Sparse.eval reductionProjection11949 (momentVector H) := by
  have heq : reductionPivot11949 = (fun u v => (normalNode9877).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9877).moment H = injectiveMoment H reductionPivot11949 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9877).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11949 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11949 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11949 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10646, reductionProjection7914, reductionProjection11947, oldProjection1201, reductionProjection11948] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11949 (0 : Fin 5)) = (normalNode7403).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10646 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10646 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10646 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11949 (1 : Fin 5)) = (normalNode9848).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7914 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11949 (2 : Fin 5)) = canonicalInput19577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11947 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11947 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19577 hH))).trans (reductionSound11947 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11949 (3 : Fin 5)) = canonicalInput19581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1201 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19581 hH))).trans (oldProjectionSound1201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11949 (4 : Fin 5)) = (normalNode9921).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11949 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9877).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11949 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9877).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11949 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 720] ![1, 1, 2, 2, 2] reductionProjection11949 ![reductionProjection10646, reductionProjection7914, reductionProjection11947, oldProjection1201, reductionProjection11948]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11950 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -180), (20, 25), (94, 50), (243, 480), (682, -240), (698, 160), (700, 160), (704, 240), (1225, 80), (1226, 240), (1251, -15)]

def reductionPivot11950 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 2, -3], ![1, 0, 0, -1]]

theorem reductionSound11950 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9878).moment H =
      Integer.Sparse.eval reductionProjection11950 (momentVector H) := by
  have heq : reductionPivot11950 = (fun u v => (normalNode9878).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9878).moment H = injectiveMoment H reductionPivot11950 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9878).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11950 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11950 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11950 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10654, reductionProjection7904, reductionProjection11941, reductionProjection11304, reductionProjection2716] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11950 (0 : Fin 5)) = (normalNode7404).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10654 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10654 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10654 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11950 (1 : Fin 5)) = (normalNode9849).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7904 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7904 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7904 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11950 (2 : Fin 5)) = canonicalInput19578.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11941 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11941 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19578 hH))).trans (reductionSound11941 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11950 (3 : Fin 5)) = canonicalInput19582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11304 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19582 hH))).trans (reductionSound11304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11950 (4 : Fin 5)) = (normalNode9923).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2716 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11950 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2716 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2716 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9878).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11950 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9878).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11950 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 1440, 1440, 1440] ![5, 5, 1, 1, 1] reductionProjection11950 ![reductionProjection10654, reductionProjection7904, reductionProjection11941, reductionProjection11304, reductionProjection2716]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11951 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (94, 25), (243, -80), (700, -80)]

def reductionPivot11951 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 0, 1], ![0, 0, 3, -3], ![0, 1, -3, 2], ![1, 0, 0, -1]]

theorem reductionSound11951 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10609).moment H =
      Integer.Sparse.eval reductionProjection11951 (momentVector H) := by
  have heq : reductionPivot11951 = (fun u v => (normalNode10609).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10609).moment H = injectiveMoment H reductionPivot11951 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10609).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot11951 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11951 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 16] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11951 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1062, reductionProjection3064, reductionProjection11452, oldProjection58] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11951 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1062⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11951 (1 : Fin 4)) = canonicalInput25499.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3064 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound25499 hH))).trans (reductionSound3064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11951 (2 : Fin 4)) = canonicalInput26079.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection11452 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection11452 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26079 hH))).trans (reductionSound11452 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11951 (3 : Fin 4)) = canonicalInput26084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection58 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11951 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection58 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26084 hH))).trans (oldProjectionSound58 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10609).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11951 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10609).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11951 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 16] ![10, 2, 10, 90] reductionProjection11951 ![oldProjection1062, reductionProjection3064, reductionProjection11452, oldProjection58]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11952 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 7), (94, 2), (241, -16), (243, -32), (247, -16), (704, -16), (1225, -16), (1251, -5)]

def reductionPivot11952 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, -1, -1, 1]]

theorem reductionSound11952 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9924).moment H =
      Integer.Sparse.eval reductionProjection11952 (momentVector H) := by
  have heq : reductionPivot11952 = (fun u v => (normalNode9924).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9924).moment H = injectiveMoment H reductionPivot11952 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9924).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11952 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11952 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 24, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11952 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection986, oldProjection243, oldProjection1228, oldProjection1232] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11952 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node986⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection986 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection986 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound986 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11952 (1 : Fin 4)) = canonicalInput19632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection243 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection243 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19632 hH))).trans (oldProjectionSound243 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11952 (2 : Fin 4)) = canonicalInput19671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19671 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11952 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1232⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1232 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11952 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9924).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11952 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9924).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11952 (j : Fin 4)))
      2 288 288 2 ![144, 24, 144, 144] ![2, 12, 2, 2] reductionProjection11952 ![oldProjection986, oldProjection243, oldProjection1228, oldProjection1232]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11953 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -60), (94, -15), (241, 80), (243, 200), (244, 40), (247, 40), (698, 40), (700, 40), (701, 40), (704, 160), (1040, -120), (1223, -120), (1225, 40), (1226, 40), (1251, 10)]

def reductionPivot11953 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, -1, 0], ![0, 1, 3, -4], ![1, 0, -1, 0]]

theorem reductionSound11953 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9879).moment H =
      Integer.Sparse.eval reductionProjection11953 (momentVector H) := by
  have heq : reductionPivot11953 = (fun u v => (normalNode9879).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9879).moment H = injectiveMoment H reductionPivot11953 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9879).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11953 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11953 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 1440, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11953 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10781, reductionProjection11939, reductionProjection11838, reductionProjection11951, reductionProjection11952] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11953 (0 : Fin 5)) = (normalNode7405).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10781 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10781 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10781 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11953 (1 : Fin 5)) = (normalNode9850).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11939 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11939 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11939 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11953 (2 : Fin 5)) = canonicalInput19579.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11838 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19579 hH))).trans (reductionSound11838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11953 (3 : Fin 5)) = canonicalInput19583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11951 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19583 hH))).trans (reductionSound11951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11953 (4 : Fin 5)) = (normalNode9924).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11952 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11953 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11952 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11952 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9879).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11953 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9879).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11953 (j : Fin 5)))
      1 720 1440 2 ![144, 288, 1440, 1440, 288] ![10, 5, 1, 1, 5] reductionProjection11953 ![reductionProjection10781, reductionProjection11939, reductionProjection11838, reductionProjection11951, reductionProjection11952]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11954 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -4), (94, -1), (241, -16), (243, -16), (247, -16), (698, -16), (1226, -16), (1251, 10)]

def reductionPivot11954 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, -1, -1, 1]]

theorem reductionSound11954 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9925).moment H =
      Integer.Sparse.eval reductionProjection11954 (momentVector H) := by
  have heq : reductionPivot11954 = (fun u v => (normalNode9925).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9925).moment H = injectiveMoment H reductionPivot11954 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9925).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11954 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11954 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 72, 36] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11954 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection972, oldProjection1217, reductionProjection7777, oldProjection803] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11954 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6321 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection972 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection972 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6321 hH))).trans (oldProjectionSound972 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11954 (1 : Fin 4)) = canonicalInput19646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1217 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19646 hH))).trans (oldProjectionSound1217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11954 (2 : Fin 4)) = canonicalInput19681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19681 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11954 (3 : Fin 4)) = canonicalInput19683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11954 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19683 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9925).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11954 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9925).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11954 (j : Fin 4)))
      2 288 1440 10 ![720, 720, 72, 36] ![2, 2, 20, 40] reductionProjection11954 ![oldProjection972, oldProjection1217, reductionProjection7777, oldProjection803]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11955 : Integer.Sparse (Fin 1613) := [(0, -4), (19, -140), (20, 25), (241, 160), (243, 160), (247, 80), (682, -240), (698, 480), (704, 160), (1226, 240), (1227, 80), (1251, 55)]

def reductionPivot11955 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 1, 0], ![0, 1, 0, -1], ![0, 1, 2, -3], ![1, 0, -1, 0]]

theorem reductionSound11955 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9880).moment H =
      Integer.Sparse.eval reductionProjection11955 (momentVector H) := by
  have heq : reductionPivot11955 = (fun u v => (normalNode9880).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9880).moment H = injectiveMoment H reductionPivot11955 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9880).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11955 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11955 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11955 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10616, reductionProjection7899, reductionProjection3064, reductionProjection10811, reductionProjection11954] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11955 (0 : Fin 5)) = (normalNode7406).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10616 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11955 (1 : Fin 5)) = (normalNode9851).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7899 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11955 (2 : Fin 5)) = canonicalInput19580.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3064 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19580 hH))).trans (reductionSound3064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11955 (3 : Fin 5)) = canonicalInput19585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10811 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19585 hH))).trans (reductionSound10811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11955 (4 : Fin 5)) = (normalNode9925).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11954 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11955 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11954 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11954 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9880).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11955 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9880).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11955 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 288] ![1, 1, 2, 1, 5] reductionProjection11955 ![reductionProjection10616, reductionProjection7899, reductionProjection3064, reductionProjection10811, reductionProjection11954]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11956 : Integer.Sparse (Fin 1613) := [(20, -1), (88, -16), (90, -16), (94, 12), (243, -64), (700, -16), (1225, -16), (1251, -3)]

def reductionPivot11956 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 3, -2], ![0, 2, -1, -1], ![1, 0, 0, -1]]

theorem reductionSound11956 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9883).moment H =
      Integer.Sparse.eval reductionProjection11956 (momentVector H) := by
  have heq : reductionPivot11956 = (fun u v => (normalNode9883).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9883).moment H = injectiveMoment H reductionPivot11956 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9883).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11956 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11956 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 144, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11956 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection902, oldProjection951, oldProjection1211, oldProjection1214] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11956 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node902⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection902 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11956 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7069 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection951 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection951 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7069 hH))).trans (oldProjectionSound951 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11956 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1211⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1211 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11956 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1214⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1214 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11956 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1214 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1214 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9883).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11956 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9883).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11956 (j : Fin 4)))
      2 288 288 2 ![9, 9, 144, 72] ![32, 32, 2, 4] reductionProjection11956 ![oldProjection902, oldProjection951, oldProjection1211, oldProjection1214]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11957 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -140), (20, 20), (88, 160), (91, 160), (94, -85), (241, 240), (243, 800), (244, 80), (247, 80), (698, 80), (704, 80), (1223, -240), (1225, 320), (1226, 400), (1251, -15)]

def reductionPivot11957 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, -1, 4, -3], ![0, 1, -1, 0], ![0, 1, 0, -1], ![1, 0, -1, 0]]

theorem reductionSound11957 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9884).moment H =
      Integer.Sparse.eval reductionProjection11957 (momentVector H) := by
  have heq : reductionPivot11957 = (fun u v => (normalNode9884).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9884).moment H = injectiveMoment H reductionPivot11957 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9884).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11957 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11957 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 144, 72] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11957 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10635, oldProjection2751, reductionProjection11810, oldProjection919, reductionProjection11823] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11957 (0 : Fin 5)) = (normalNode7432).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10635 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11957 (1 : Fin 5)) = canonicalInput19555.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2751 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2751 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19555 hH))).trans (oldProjectionSound2751 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11957 (2 : Fin 5)) = canonicalInput19606.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11810 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11810 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19606 hH))).trans (reductionSound11810 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11957 (3 : Fin 5)) = canonicalInput19608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection919 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection919 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19608 hH))).trans (oldProjectionSound919 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11957 (4 : Fin 5)) = (normalNode9944).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11823 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11957 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9884).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11957 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9884).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11957 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 144, 72] ![5, 1, 1, 10, 20] reductionProjection11957 ![reductionProjection10635, oldProjection2751, reductionProjection11810, oldProjection919, reductionProjection11823]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11958 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 20), (20, 5)]

def reductionPivot11958 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, 2, -3], ![1, -1, 0, 0]]

theorem reductionSound11958 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9952).moment H =
      Integer.Sparse.eval reductionProjection11958 (momentVector H) := by
  have heq : reductionPivot11958 = (fun u v => (normalNode9952).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9952).moment H = injectiveMoment H reductionPivot11958 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9952).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11958 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11958 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 8, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11958 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1167, oldProjection292, oldProjection1202, oldProjection1217] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11958 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7013 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1167 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7013 hH))).trans (oldProjectionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11958 (1 : Fin 4)) = canonicalInput19631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((8 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection292 (momentVector H)
      have hh : (8 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection292 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (8 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19631 hH))).trans (oldProjectionSound292 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11958 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7098 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1202 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1202 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7098 hH))).trans (oldProjectionSound1202 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11958 (3 : Fin 4)) = canonicalInput19646.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1217 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11958 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1217 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19646 hH))).trans (oldProjectionSound1217 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9952).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11958 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9952).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11958 (j : Fin 4)))
      2 720 720 2 ![36, 8, 720, 720] ![20, 90, 1, 1] reductionProjection11958 ![oldProjection1167, oldProjection292, oldProjection1202, oldProjection1217]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11959 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 40), (20, -10), (94, -35), (104, -80), (105, -160), (106, -80), (108, -80), (241, -80), (243, -80), (244, -80), (247, -80), (698, -160), (700, -80), (1251, -10)]

def reductionPivot11959 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -2, 0, 1]]

theorem reductionSound11959 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9954).moment H =
      Integer.Sparse.eval reductionProjection11959 (momentVector H) := by
  have heq : reductionPivot11959 = (fun u v => (normalNode9954).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9954).moment H = injectiveMoment H reductionPivot11959 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9954).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11959 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11959 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11959 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6405, oldProjection201, oldProjection819, reductionProjection6421] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11959 (0 : Fin 4)) = (normalNode9741).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6405 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6405 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6405 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11959 (1 : Fin 4)) = canonicalInput19634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection201 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection201 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19634 hH))).trans (oldProjectionSound201 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11959 (2 : Fin 4)) = canonicalInput19648.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection819 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19648 hH))).trans (oldProjectionSound819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11959 (3 : Fin 4)) = (normalNode9970).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6421 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11959 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6421 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6421 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9954).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11959 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9954).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11959 (j : Fin 4)))
      2 1440 1440 2 ![144, 48, 720, 72] ![10, 30, 2, 20] reductionProjection11959 ![reductionProjection6405, oldProjection201, oldProjection819, reductionProjection6421]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11960 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -60), (4, 5), (19, -320), (20, 25), (94, 50), (104, 160), (105, 240), (106, 80), (108, 160), (241, 480), (242, -240), (243, 400), (244, 160), (246, 80), (247, 320), (698, 240), (700, 160), (704, 80), (1251, 40)]

def reductionPivot11960 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 0, 1, -1], ![0, 2, 2, -4], ![1, -1, 0, 0]]

theorem reductionSound11960 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9885).moment H =
      Integer.Sparse.eval reductionProjection11960 (momentVector H) := by
  have heq : reductionPivot11960 = (fun u v => (normalNode9885).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9885).moment H = injectiveMoment H reductionPivot11960 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9885).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11960 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11960 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 1440, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11960 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6391, reductionProjection6482, reductionProjection6404, reductionProjection11958, reductionProjection11959] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11960 (0 : Fin 5)) = (normalNode7445).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6391 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6391 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6391 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11960 (1 : Fin 5)) = (normalNode9865).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6482 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6482 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6482 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11960 (2 : Fin 5)) = canonicalInput19615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6404 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6404 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19615 hH))).trans (reductionSound6404 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11960 (3 : Fin 5)) = (normalNode9952).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11958 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11958 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11958 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11960 (4 : Fin 5)) = (normalNode9954).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11959 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11960 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11959 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11959 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9885).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11960 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9885).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11960 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 1440, 720, 1440] ![1, 1, 1, 2, 1] reductionProjection11960 ![reductionProjection6391, reductionProjection6482, reductionProjection6404, reductionProjection11958, reductionProjection11959]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11961 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 12), (20, -1), (94, 9), (243, -48), (244, -16), (698, -48), (700, -32), (1059, -16), (1226, -32), (1251, 9)]

def reductionPivot11961 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -2, 3, -2]]

theorem reductionSound11961 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9958).moment H =
      Integer.Sparse.eval reductionProjection11961 (momentVector H) := by
  have heq : reductionPivot11961 = (fun u v => (normalNode9958).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9958).moment H = injectiveMoment H reductionPivot11961 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9958).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11961 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11961 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11961 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection908, oldProjection1046, oldProjection1046, oldProjection967] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11961 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7023 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection908 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection908 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7023 hH))).trans (oldProjectionSound908 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11961 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7111 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7111 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11961 (2 : Fin 4)) = canonicalInput19682.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19682 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11961 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7115 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection967 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11961 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection967 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7115 hH))).trans (oldProjectionSound967 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9958).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11961 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9958).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11961 (j : Fin 4)))
      2 288 1440 10 ![144, 720, 720, 720] ![10, 2, 2, 2] reductionProjection11961 ![oldProjection908, oldProjection1046, oldProjection1046, oldProjection967]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11962 : Integer.Sparse (Fin 1613) := [(0, -4), (3, -40), (4, 5), (19, -220), (20, 5), (94, 50), (105, 80), (106, 80), (108, 80), (241, 80), (243, 560), (244, 80), (698, 400), (700, 160), (704, 80), (1047, -240), (1058, -240), (1059, 80), (1060, -240), (1225, 160), (1226, 320), (1251, 30)]

def reductionPivot11962 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, 3, -3]]

theorem reductionSound11962 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9886).moment H =
      Integer.Sparse.eval reductionProjection11962 (momentVector H) := by
  have heq : reductionPivot11962 = (fun u v => (normalNode9886).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9886).moment H = injectiveMoment H reductionPivot11962 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9886).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11962 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11962 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11962 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10755, reductionProjection11899, reductionProjection11820, reductionProjection11820, reductionProjection11961] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11962 (0 : Fin 5)) = (normalNode7449).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10755 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10755 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10755 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11962 (1 : Fin 5)) = (normalNode9867).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11899 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11962 (2 : Fin 5)) = canonicalInput19617.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11820 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19617 hH))).trans (reductionSound11820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11962 (3 : Fin 5)) = canonicalInput19621.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11820 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19621 hH))).trans (reductionSound11820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11962 (4 : Fin 5)) = (normalNode9958).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11961 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11962 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11961 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11961 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9886).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11962 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9886).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11962 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 288] ![1, 1, 2, 2, 5] reductionProjection11962 ![reductionProjection10755, reductionProjection11899, reductionProjection11820, reductionProjection11820, reductionProjection11961]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11963 : Integer.Sparse (Fin 1613) := [(3, 4), (19, 20), (20, -1), (94, 13), (104, -16), (105, -32), (106, -16), (108, -16), (241, -32), (243, -80), (698, -16), (704, -16), (1225, -32), (1226, -16), (1251, 2)]

def reductionPivot11963 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -2, 0, 1]]

theorem reductionSound11963 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode9959).moment H =
      Integer.Sparse.eval reductionProjection11963 (momentVector H) := by
  have heq : reductionPivot11963 = (fun u v => (normalNode9959).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9959).moment H = injectiveMoment H reductionPivot11963 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9959).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11963 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11963 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 36, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11963 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection9020, oldProjection1232, oldProjection803, reductionProjection7432] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11963 (0 : Fin 4)) = (normalNode9756).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9020 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9020 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9020 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11963 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1232⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1232 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1232 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1232 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11963 (2 : Fin 4)) = canonicalInput19683.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection803 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection803 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19683 hH))).trans (oldProjectionSound803 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11963 (3 : Fin 4)) = (normalNode9981).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7432 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11963 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7432 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7432 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9959).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11963 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9959).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11963 (j : Fin 4)))
      2 288 288 2 ![36, 144, 36, 144] ![8, 2, 8, 2] reductionProjection11963 ![reductionProjection9020, oldProjection1232, oldProjection803, reductionProjection7432]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11964 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -80), (4, 10), (19, -120), (20, -20), (94, 35), (104, 160), (105, 240), (106, 80), (108, 160), (241, 160), (243, 480), (698, 80), (704, 160), (1225, 160), (1226, 80), (1251, 30)]

def reductionPivot11964 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, -1, 1], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -1, 0, 0]]

theorem reductionSound11964 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9887).moment H =
      Integer.Sparse.eval reductionProjection11964 (momentVector H) := by
  have heq : reductionPivot11964 = (fun u v => (normalNode9887).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9887).moment H = injectiveMoment H reductionPivot11964 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9887).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11964 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11964 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 36, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11964 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10749, reductionProjection11940, oldProjection1167, reductionProjection11913, reductionProjection11963] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11964 (0 : Fin 5)) = (normalNode7452).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10749 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11964 (1 : Fin 5)) = (normalNode9868).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11940 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11940 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11940 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11964 (2 : Fin 5)) = canonicalInput19618.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection1167 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection1167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19618 hH))).trans (oldProjectionSound1167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11964 (3 : Fin 5)) = canonicalInput19622.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11913 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19622 hH))).trans (reductionSound11913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11964 (4 : Fin 5)) = (normalNode9959).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11963 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11964 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11963 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound11963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9887).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11964 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9887).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11964 (j : Fin 5)))
      1 1440 1440 1 ![288, 288, 36, 1440, 288] ![5, 5, 40, 1, 5] reductionProjection11964 ![reductionProjection10749, reductionProjection11940, oldProjection1167, reductionProjection11913, reductionProjection11963]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11965 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 20), (20, 10), (94, -90), (105, -80), (241, -80), (243, -160), (698, -80), (700, -80), (1251, -45)]

def reductionPivot11965 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, -1, -3, 3]]

theorem reductionSound11965 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode10921).moment H =
      Integer.Sparse.eval reductionProjection11965 (momentVector H) := by
  have heq : reductionPivot11965 = (fun u v => (normalNode10921).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10921).moment H = injectiveMoment H reductionPivot11965 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10921).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11965 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11965 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 48, 48, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11965 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection960, oldProjection269, oldProjection269, oldProjection905] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11965 (0 : Fin 4)) = canonicalInput19133.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19133 hH))).trans (oldProjectionSound960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11965 (1 : Fin 4)) = canonicalInput22449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22449 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11965 (2 : Fin 4)) = canonicalInput22454.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection269 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection269 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22454 hH))).trans (oldProjectionSound269 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11965 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7615 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection905 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11965 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7615 hH))).trans (oldProjectionSound905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10921).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11965 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10921).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11965 (j : Fin 4)))
      2 1440 1440 2 ![720, 48, 48, 144] ![2, 30, 30, 10] reductionProjection11965 ![oldProjection960, oldProjection269, oldProjection269, oldProjection905]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11966 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -80), (4, 15), (19, -280), (20, -75), (94, -50), (105, 160), (106, 80), (241, 240), (243, 720), (244, 80), (698, 400), (700, 160), (1225, 160), (1226, 320), (1251, -65)]

def reductionPivot11966 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, -1, 0, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, -1, 3, -3]]

theorem reductionSound11966 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9889).moment H =
      Integer.Sparse.eval reductionProjection11966 (momentVector H) := by
  have heq : reductionPivot11966 = (fun u v => (normalNode9889).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9889).moment H = injectiveMoment H reductionPivot11966 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9889).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot11966 0 = Pi.single (3 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot11966 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 288, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11966 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10765, reductionProjection11965, reductionProjection11917, reductionProjection11917, reductionProjection8501] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11966 (0 : Fin 5)) = (normalNode7464).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10765 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11966 (1 : Fin 5)) = canonicalInput19584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11965 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19584 hH))).trans (reductionSound11965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11966 (2 : Fin 5)) = canonicalInput19636.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11917 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19636 hH))).trans (reductionSound11917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11966 (3 : Fin 5)) = canonicalInput19641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection11917 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection11917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19641 hH))).trans (reductionSound11917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11966 (4 : Fin 5)) = canonicalInput19644.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8501 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11966 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8501 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19644 hH))).trans (reductionSound8501 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode9889).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11966 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9889).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot11966 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 288, 288, 1440] ![1, 1, 5, 5, 1] reductionProjection11966 ![reductionProjection10765, reductionProjection11965, reductionProjection11917, reductionProjection11917, reductionProjection8501]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection11967 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 4), (94, 1), (1251, 2)]

def reductionPivot11967 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, 0, -2, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, -1, 2, -2]]

theorem reductionSound11967 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9951).moment H =
      Integer.Sparse.eval reductionProjection11967 (momentVector H) := by
  have heq : reductionPivot11967 = (fun u v => (normalNode9951).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9951).moment H = injectiveMoment H reductionPivot11967 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9951).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot11967 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot11967 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11967 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection909, oldProjection272, reductionProjection10347, oldProjection969] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot11967 (0 : Fin 4)) = canonicalInput19314.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19314 hH))).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11967 (1 : Fin 4)) = canonicalInput19629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection272 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection272 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19629 hH))).trans (oldProjectionSound272 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11967 (2 : Fin 4)) = (normalNode9969).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot11967 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7097 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection969 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot11967 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection969 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7097 hH))).trans (oldProjectionSound969 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9951).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11967 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9951).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot11967 (j : Fin 4)))
      2 144 720 10 ![720, 240, 720, 720] ![1, 3, 1, 1] reductionProjection11967 ![oldProjection909, oldProjection272, reductionProjection10347, oldProjection969]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
