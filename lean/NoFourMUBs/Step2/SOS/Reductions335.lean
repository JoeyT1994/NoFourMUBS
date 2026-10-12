import NoFourMUBs.Step2.SOS.Canonical097
import NoFourMUBs.Step2.SOS.Canonical098
import NoFourMUBs.Step2.SOS.Canonical222
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical225
import NoFourMUBs.Step2.SOS.Canonical226
import NoFourMUBs.Step2.SOS.Canonical227
import NoFourMUBs.Step2.SOS.Canonical228
import NoFourMUBs.Step2.SOS.Canonical237
import NoFourMUBs.Step2.SOS.Canonical284
import NoFourMUBs.Step2.SOS.Canonical285
import NoFourMUBs.Step2.SOS.Canonical286
import NoFourMUBs.Step2.SOS.Canonical300
import NoFourMUBs.Step2.SOS.Canonical304
import NoFourMUBs.Step2.SOS.Canonical317
import NoFourMUBs.Step2.SOS.Canonical339
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical384
import NoFourMUBs.Step2.SOS.Canonical417
import NoFourMUBs.Step2.SOS.Canonical419
import NoFourMUBs.Step2.SOS.Canonical420
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes028
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes040
import NoFourMUBs.Step2.SOS.NormalizationNodes041
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections009
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions072
import NoFourMUBs.Step2.SOS.Reductions075
import NoFourMUBs.Step2.SOS.Reductions141
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions200
import NoFourMUBs.Step2.SOS.Reductions202
import NoFourMUBs.Step2.SOS.Reductions204
import NoFourMUBs.Step2.SOS.Reductions205
import NoFourMUBs.Step2.SOS.Reductions209
import NoFourMUBs.Step2.SOS.Reductions231
import NoFourMUBs.Step2.SOS.Reductions235
import NoFourMUBs.Step2.SOS.Reductions237
import NoFourMUBs.Step2.SOS.Reductions238
import NoFourMUBs.Step2.SOS.Reductions253
import NoFourMUBs.Step2.SOS.Reductions266
import NoFourMUBs.Step2.SOS.Reductions268
import NoFourMUBs.Step2.SOS.Reductions281
import NoFourMUBs.Step2.SOS.Reductions305
import NoFourMUBs.Step2.SOS.Reductions316
import NoFourMUBs.Step2.SOS.Reductions329
import NoFourMUBs.Step2.SOS.Reductions330
import NoFourMUBs.Step2.SOS.Reductions331
import NoFourMUBs.Step2.SOS.Reductions332
import NoFourMUBs.Step2.SOS.Reductions333
import NoFourMUBs.Step2.SOS.Reductions334
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical187
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical188
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical190
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical192
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical208
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical220
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical224
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical259
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes19
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes38
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10720 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -3), (88, -16), (94, 12), (243, -80), (624, -144), (1225, -16), (1226, -48), (1251, -1), (1331, -144)]

def reductionPivot10720 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![1, -1, 1, -1], ![1, 1, -1, -1]]

theorem reductionSound10720 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7328).moment H =
      Integer.Sparse.eval reductionProjection10720 (momentVector H) := by
  have heq : reductionPivot10720 = (fun u v => (normalNode7328).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7328).moment H = injectiveMoment H reductionPivot10720 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7328).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10720 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10720 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10720 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1121, oldProjection891, oldProjection899, reductionProjection5833] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10720 (0 : Fin 4)) = canonicalInput19213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1121 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19213 hH))).trans (oldProjectionSound1121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10720 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6025 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection891 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection891 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6025 hH))).trans (oldProjectionSound891 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10720 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6016 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection899 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6016 hH))).trans (oldProjectionSound899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10720 (3 : Fin 4)) = canonicalInput14434.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10720 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14434 hH))).trans (reductionSound5833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7328).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10720 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7328).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10720 (j : Fin 4)))
      2 288 288 2 ![72, 1, 144, 1] ![4, 288, 2, 288] reductionProjection10720 ![oldProjection1121, oldProjection891, oldProjection899, reductionProjection5833]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10721 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -20), (19, -260), (20, 40), (88, 240), (94, -75), (228, -240), (241, 160), (243, 1200), (244, 80), (624, 1440), (698, 320), (700, 240), (703, 80), (704, 240), (921, 720), (1058, -240), (1060, -240), (1225, 160), (1226, 720), (1251, -20), (1331, 1440)]

def reductionPivot10721 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, -1, 0], ![1, -1, 1, -1], ![1, 0, 0, -1]]

theorem reductionSound10721 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7324).moment H =
      Integer.Sparse.eval reductionProjection10721 (momentVector H) := by
  have heq : reductionPivot10721 = (fun u v => (normalNode7324).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7324).moment H = injectiveMoment H reductionPivot10721 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7324).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10721 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10721 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 144, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10721 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10719, oldProjection2489, reductionProjection7616, reductionProjection10139, reductionProjection10720] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10721 (0 : Fin 5)) = canonicalInput19204.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10719 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19204 hH))).trans (reductionSound10719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10721 (1 : Fin 5)) = canonicalInput14467.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2489 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2489 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14467 hH))).trans (oldProjectionSound2489 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10721 (2 : Fin 5)) = canonicalInput14429.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7616 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7616 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14429 hH))).trans (reductionSound7616 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10721 (3 : Fin 5)) = canonicalInput14424.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10139 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10139 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14424 hH))).trans (reductionSound10139 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10721 (4 : Fin 5)) = (normalNode7328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10720 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10721 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7324).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10721 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7324).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10721 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 144, 1440, 288] ![5, 1, 10, 1, 5] reductionProjection10721 ![reductionProjection10719, oldProjection2489, reductionProjection7616, reductionProjection10139, reductionProjection10720]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10722 : Integer.Sparse (Fin 1613) := [(19, -8), (20, -3), (94, -5), (243, 16), (1225, 16), (1251, 2)]

def reductionPivot10722 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, 1, 1], ![0, 1, -4, 3], ![1, -1, 3, -3]]

theorem reductionSound10722 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9474).moment H =
      Integer.Sparse.eval reductionProjection10722 (momentVector H) := by
  have heq : reductionPivot10722 = (fun u v => (normalNode9474).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9474).moment H = injectiveMoment H reductionPivot10722 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9474).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot10722 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10722 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 24] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10722 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection255, oldProjection247, oldProjection249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10722 (0 : Fin 3)) = canonicalInput21786.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10722 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection255 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10722 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection255 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21786 hH))).trans (oldProjectionSound255 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10722 (1 : Fin 3)) = canonicalInput18328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10722 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10722 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18328 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10722 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6685 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10722 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10722 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6685 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9474).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10722 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9474).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10722 (j : Fin 3)))
      3 144 144 3 ![48, 48, 24] ![3, 3, 6] reductionProjection10722 ![oldProjection255, oldProjection247, oldProjection249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10723 : Integer.Sparse (Fin 1613) := [(20, 1), (94, 10), (243, -16), (1225, -16), (1226, -16), (1251, 1)]

def reductionPivot10723 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -3, 2], ![0, 1, 3, -4], ![1, -1, -1, 1]]

theorem reductionSound10723 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode10643).moment H =
      Integer.Sparse.eval reductionProjection10723 (momentVector H) := by
  have heq : reductionPivot10723 = (fun u v => (normalNode10643).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10643).moment H = injectiveMoment H reductionPivot10723 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10643).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot10723 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10723 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10723 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1121, reductionProjection10722, oldProjection1128, oldProjection247] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10723 (0 : Fin 4)) = canonicalInput18287.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1121 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18287 hH))).trans (oldProjectionSound1121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10723 (1 : Fin 4)) = canonicalInput26694.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10722 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26694 hH))).trans (reductionSound10722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10723 (2 : Fin 4)) = canonicalInput26885.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1128 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1128 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26885 hH))).trans (oldProjectionSound1128 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10723 (3 : Fin 4)) = canonicalInput26887.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection247 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10723 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection247 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26887 hH))).trans (oldProjectionSound247 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10643).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10723 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10643).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10723 (j : Fin 4)))
      2 144 144 2 ![72, 144, 144, 48] ![2, 1, 1, 3] reductionProjection10723 ![oldProjection1121, reductionProjection10722, oldProjection1128, oldProjection247]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10724 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -200), (20, 20), (88, 160), (94, -95), (231, -240), (241, 240), (243, 1040), (247, 80), (624, 1440), (698, 400), (704, 160), (1003, 720), (1090, 720), (1223, -720), (1225, 400), (1226, 640), (1251, 20), (1323, -480), (1331, 720)]

def reductionPivot10724 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 1, -1], ![1, 0, -1, 0]]

theorem reductionSound10724 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7325).moment H =
      Integer.Sparse.eval reductionProjection10724 (momentVector H) := by
  have heq : reductionPivot10724 = (fun u v => (normalNode7325).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7325).moment H = injectiveMoment H reductionPivot10724 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7325).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10724 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10724 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 1440, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10724 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10723, reductionProjection10703, reductionProjection8096, oldProjection2500, reductionProjection10713] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10724 (0 : Fin 5)) = canonicalInput19205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10723 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19205 hH))).trans (reductionSound10723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10724 (1 : Fin 5)) = canonicalInput14468.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10703 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10703 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14468 hH))).trans (reductionSound10703 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10724 (2 : Fin 5)) = canonicalInput14430.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8096 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8096 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14430 hH))).trans (reductionSound8096 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10724 (3 : Fin 5)) = canonicalInput14425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2500 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14425 hH))).trans (oldProjectionSound2500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10724 (4 : Fin 5)) = (normalNode7332).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10713 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10724 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10713 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10713 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7325).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10724 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7325).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10724 (j : Fin 5)))
      1 1440 1440 1 ![144, 1440, 288, 288, 288] ![10, 1, 5, 5, 5] reductionProjection10724 ![reductionProjection10723, reductionProjection10703, reductionProjection8096, oldProjection2500, reductionProjection10713]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10725 : Integer.Sparse (Fin 1613) := [(3, 4), (19, -16), (94, 7), (243, -16), (1057, 48), (1225, -16), (1226, -16), (1251, -1)]

def reductionPivot10725 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, -1, 1, 0], ![-1, 0, -1, 2], ![0, 1, -3, 2], ![0, 1, 3, -4], ![1, -1, 0, 0]]

theorem reductionSound10725 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10290).moment H =
      Integer.Sparse.eval reductionProjection10725 (momentVector H) := by
  have heq : reductionPivot10725 = (fun u v => (normalNode10290).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10290).moment H = injectiveMoment H reductionPivot10725 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10290).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10725 0 = Pi.single (2 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10725 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10725 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1075, oldProjection1178, oldProjection1227, oldProjection1275] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10725 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1075⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10725 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7189 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1178 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7189 hH))).trans (oldProjectionSound1178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10725 (2 : Fin 4)) = canonicalInput20311.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1227 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1227 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound20311 hH))).trans (oldProjectionSound1227 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10725 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1275⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1275 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10725 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1275 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1275 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10290).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10725 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10290).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10725 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 144] ![4, 2, 2, 2] reductionProjection10725 ![oldProjection1075, oldProjection1178, oldProjection1227, oldProjection1275]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10726 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 80), (20, -5), (94, -45), (108, -80), (241, -240), (243, -80), (247, -80), (698, -80), (751, -720), (1251, -30)]

def reductionPivot10726 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -2, 4], ![0, 1, -1, 0], ![1, -1, 2, -2], ![1, 0, 1, -2]]

theorem reductionSound10726 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7359).moment H =
      Integer.Sparse.eval reductionProjection10726 (momentVector H) := by
  have heq : reductionPivot10726 = (fun u v => (normalNode7359).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7359).moment H = injectiveMoment H reductionPivot10726 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7359).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10726 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10726 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10726 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2332, oldProjection585, oldProjection914, oldProjection921] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10726 (0 : Fin 4)) = canonicalInput6320.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2332 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6320 hH))).trans (reductionSound2332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10726 (1 : Fin 4)) = canonicalInput14480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection585 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14480 hH))).trans (oldProjectionSound585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10726 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6097 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6097 hH))).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10726 (3 : Fin 4)) = canonicalInput14626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection921 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10726 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14626 hH))).trans (oldProjectionSound921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7359).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10726 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7359).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10726 (j : Fin 4)))
      2 1440 1440 2 ![72, 1, 720, 720] ![20, 1440, 2, 2] reductionProjection10726 ![reductionProjection2332, oldProjection585, oldProjection914, oldProjection921]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10727 : Integer.Sparse (Fin 1613) := [(0, 1), (3, 20), (19, 20), (20, -20), (88, -80), (94, 5), (231, 240), (241, -160), (243, -320), (247, -80), (698, -80), (1057, 240), (1226, -160), (1251, 20)]

def reductionPivot10727 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![0, -1, 3, -2], ![0, 1, -1, 0], ![1, 0, 1, -2]]

theorem reductionSound10727 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7426).moment H =
      Integer.Sparse.eval reductionProjection10727 (momentVector H) := by
  have heq : reductionPivot10727 = (fun u v => (normalNode7426).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7426).moment H = injectiveMoment H reductionPivot10727 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7426).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10727 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10727 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 9, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10727 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2418, oldProjection914, oldProjection901, oldProjection898] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10727 (0 : Fin 4)) = (normalNode9720).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2418 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2418 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2418 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10727 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node914⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10727 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node901⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection901 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection901 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound901 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10727 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node898⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10727 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7426).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10727 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7426).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10727 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 9, 144] ![10, 2, 160, 10] reductionProjection10727 ![reductionProjection2418, oldProjection914, oldProjection901, oldProjection898]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10728 : Integer.Sparse (Fin 1613) := [(0, -3), (3, -40), (19, -160), (20, 40), (88, 320), (94, 30), (105, 80), (108, 80), (231, -1200), (241, 560), (242, -240), (243, 960), (247, 240), (698, 320), (732, 720), (751, 720), (1057, -720), (1225, 80), (1226, 480), (1251, 25), (1323, -480)]

def reductionPivot10728 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, 1, -2], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10728 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7326).moment H =
      Integer.Sparse.eval reductionProjection10728 (momentVector H) := by
  have heq : reductionPivot10728 = (fun u v => (normalNode7326).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7326).moment H = injectiveMoment H reductionPivot10728 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7326).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10728 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10728 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 288, 1440, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10728 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10725, reductionProjection10726, reductionProjection7601, reductionProjection10727, reductionProjection10712] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10728 (0 : Fin 5)) = canonicalInput19208.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10725 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10725 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19208 hH))).trans (reductionSound10725 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10728 (1 : Fin 5)) = canonicalInput14469.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10726 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14469 hH))).trans (reductionSound10726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10728 (2 : Fin 5)) = canonicalInput14432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7601 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14432 hH))).trans (reductionSound7601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10728 (3 : Fin 5)) = canonicalInput14426.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10727 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10727 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14426 hH))).trans (reductionSound10727 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10728 (4 : Fin 5)) = (normalNode7333).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10712 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10728 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10712 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10712 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7326).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10728 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7326).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10728 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 288, 1440, 288] ![5, 1, 5, 1, 5] reductionProjection10728 ![reductionProjection10725, reductionProjection10726, reductionProjection7601, reductionProjection10727, reductionProjection10712]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10729 : Integer.Sparse (Fin 1613) := [(3, 8), (19, 20), (20, -3), (94, 7), (108, -32), (243, -32), (1214, 48), (1225, -16), (1226, -32), (1251, 2), (1330, -144)]

def reductionPivot10729 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, -1, 3, -3], ![1, 0, 0, -1]]

theorem reductionSound10729 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7344).moment H =
      Integer.Sparse.eval reductionProjection10729 (momentVector H) := by
  have heq : reductionPivot10729 = (fun u v => (normalNode7344).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7344).moment H = injectiveMoment H reductionPivot10729 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7344).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10729 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10729 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10729 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1363, reductionProjection6563, reductionProjection10661, reductionProjection6467] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10729 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7053 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1363 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1363 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7053 hH))).trans (oldProjectionSound1363 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10729 (1 : Fin 4)) = canonicalInput14481.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6563 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6563 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14481 hH))).trans (reductionSound6563 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10729 (2 : Fin 4)) = canonicalInput14451.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14451 hH))).trans (reductionSound10661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10729 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1330).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10729 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7344).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10729 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7344).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10729 (j : Fin 4)))
      2 288 288 2 ![72, 144, 144, 1] ![4, 2, 2, 288] reductionProjection10729 ![oldProjection1363, reductionProjection6563, reductionProjection10661, reductionProjection6467]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10730 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -1), (88, -16), (94, 2), (241, -16), (243, -48), (474, -144), (698, -16), (1226, -48), (1251, 3), (1323, 48), (1330, -144)]

def reductionPivot10730 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![1, -1, -1, 1], ![1, 1, 0, -2]]

theorem reductionSound10730 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7331).moment H =
      Integer.Sparse.eval reductionProjection10730 (momentVector H) := by
  have heq : reductionPivot10730 = (fun u v => (normalNode7331).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7331).moment H = injectiveMoment H reductionPivot10730 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7331).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10730 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10730 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10730 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1074, reductionProjection6467, oldProjection898, reductionProjection4519] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10730 (0 : Fin 4)) = canonicalInput19462.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1074 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1074 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19462 hH))).trans (oldProjectionSound1074 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10730 (1 : Fin 4)) = canonicalInput14475.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6467 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6467 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14475 hH))).trans (reductionSound6467 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10730 (2 : Fin 4)) = canonicalInput14435.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection898 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14435 hH))).trans (oldProjectionSound898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10730 (3 : Fin 4)) = canonicalInput14433.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10730 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14433 hH))).trans (reductionSound4519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7331).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10730 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7331).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10730 (j : Fin 4)))
      2 288 288 2 ![72, 1, 144, 1] ![4, 288, 2, 288] reductionProjection10730 ![oldProjection1074, reductionProjection6467, oldProjection898, reductionProjection4519]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10731 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -40), (19, -240), (20, 40), (88, 240), (94, -105), (105, 160), (108, 160), (241, 320), (243, 1200), (474, 1440), (698, 400), (732, 720), (1047, -480), (1214, -240), (1225, 160), (1226, 640), (1251, -35), (1323, -480), (1330, 1440)]

def reductionPivot10731 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, -1, 1], ![1, 0, 0, -1]]

theorem reductionSound10731 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7329).moment H =
      Integer.Sparse.eval reductionProjection10731 (momentVector H) := by
  have heq : reductionPivot10731 = (fun u v => (normalNode7329).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7329).moment H = injectiveMoment H reductionPivot10731 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7329).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10731 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10731 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10731 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2765, reductionProjection10729, reductionProjection7520, oldProjection2500, reductionProjection10730] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10731 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7049 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2765 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2765 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7049 hH))).trans (oldProjectionSound2765 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10731 (1 : Fin 5)) = canonicalInput14473.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10729 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14473 hH))).trans (reductionSound10729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10731 (2 : Fin 5)) = canonicalInput14431.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7520 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14431 hH))).trans (reductionSound7520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10731 (3 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6013 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2500 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6013 hH))).trans (oldProjectionSound2500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10731 (4 : Fin 5)) = (normalNode7331).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10730 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10731 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10730 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10730 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7329).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10731 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7329).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10731 (j : Fin 5)))
      1 1440 1440 1 ![720, 288, 288, 288, 288] ![2, 5, 5, 5, 5] reductionProjection10731 ![oldProjection2765, reductionProjection10729, reductionProjection7520, oldProjection2500, reductionProjection10730]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10732 : Integer.Sparse (Fin 1613) := [(0, -1), (3, -20), (19, -180), (20, 35), (88, 720), (94, -170), (105, 80), (241, 240), (243, 1760), (698, 160), (732, 720), (1214, -240), (1225, 320), (1226, 640), (1251, -20)]

def reductionPivot10732 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, 0, 3, -2], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10732 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7330).moment H =
      Integer.Sparse.eval reductionProjection10732 (momentVector H) := by
  have heq : reductionPivot10732 = (fun u v => (normalNode7330).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7330).moment H = injectiveMoment H reductionPivot10732 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7330).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10732 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10732 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10732 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection2773, reductionProjection9775, reductionProjection7601, oldProjection2500, oldProjection2485] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10732 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw7050 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection2773 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection2773 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7050 hH))).trans (oldProjectionSound2773 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10732 (1 : Fin 5)) = canonicalInput14474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9775 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14474 hH))).trans (reductionSound9775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10732 (2 : Fin 5)) = canonicalInput14432.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7601 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7601 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14432 hH))).trans (reductionSound7601 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10732 (3 : Fin 5)) = canonicalInput14425.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2500 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2500 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14425 hH))).trans (oldProjectionSound2500 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10732 (4 : Fin 5)) = ((⟨5, 4, OAI.MUB6.Certificate.PairSemantics.node2485⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2485 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10732 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2485 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound2485 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7330).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10732 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7330).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10732 (j : Fin 5)))
      1 1440 1440 1 ![1440, 288, 288, 288, 288] ![1, 5, 5, 5, 5] reductionProjection10732 ![oldProjection2773, reductionProjection9775, reductionProjection7601, oldProjection2500, oldProjection2485]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10733 : Integer.Sparse (Fin 1613) := [(4, 1), (20, 1), (94, -4), (106, 16), (1225, 16)]

def reductionPivot10733 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, 1, 1], ![0, 0, -4, 4], ![1, 0, 3, -4]]

theorem reductionSound10733 {H : CMatrix} (hH : IsHadamard H) :
    (144 : ℝ) * (normalNode9432).moment H =
      Integer.Sparse.eval reductionProjection10733 (momentVector H) := by
  have heq : reductionPivot10733 = (fun u v => (normalNode9432).entries (OAI.MUB6.Certificate.PairSemantics.permutation21 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9432).moment H = injectiveMoment H reductionPivot10733 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9432).entries OAI.MUB6.Certificate.PairSemantics.permutation21)).symm
  have hshape : reductionPivot10733 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot10733 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![16, 24, 48] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10733 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection54, oldProjection249, oldProjection236] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10733 (0 : Fin 3)) = canonicalInput21752.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((16 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10733 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection54 (momentVector H)
      have hh : (16 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10733 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (16 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound21752 hH))).trans (oldProjectionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10733 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw6685 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10733 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10733 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6685 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10733 (2 : Fin 3)) = canonicalInput18224.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10733 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection236 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10733 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection236 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound18224 hH))).trans (oldProjectionSound236 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode9432).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10733 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9432).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot10733 (j : Fin 3)))
      3 144 144 3 ![16, 24, 48] ![9, 6, 3] reductionProjection10733 ![oldProjection54, oldProjection249, oldProjection236]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10734 : Integer.Sparse (Fin 1613) := [(4, -1), (20, 1), (94, 1), (106, -16), (243, -16), (1225, 32), (1251, -1)]

def reductionPivot10734 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![0, -1, 1, 0], ![0, 1, -4, 3], ![0, 1, 3, -4], ![1, -1, 0, 0]]

theorem reductionSound10734 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode10641).moment H =
      Integer.Sparse.eval reductionProjection10734 (momentVector H) := by
  have heq : reductionPivot10734 = (fun u v => (normalNode10641).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10641).moment H = injectiveMoment H reductionPivot10734 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10641).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot10734 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10734 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 144, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10734 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8119, reductionProjection10733, oldProjection1102, oldProjection249] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10734 (0 : Fin 4)) = (normalNode9476).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8119 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound8119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10734 (1 : Fin 4)) = canonicalInput26692.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10733 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10733 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26692 hH))).trans (reductionSound10733 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10734 (2 : Fin 4)) = canonicalInput26879.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1102 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26879 hH))).trans (oldProjectionSound1102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10734 (3 : Fin 4)) = canonicalInput26883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection249 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10734 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection249 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound26883 hH))).trans (oldProjectionSound249 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10641).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10734 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10641).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10734 (j : Fin 4)))
      2 288 288 2 ![36, 144, 144, 24] ![8, 2, 2, 12] reductionProjection10734 ![reductionProjection8119, reductionProjection10733, oldProjection1102, oldProjection249]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10735 : Integer.Sparse (Fin 1613) := [(19, 8), (20, 3), (91, -64), (94, 16), (243, -128), (244, -16), (1225, -64), (1226, -16), (1251, -3)]

def reductionPivot10735 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 4, -3], ![1, -1, 0, 0], ![1, 1, -1, -1]]

theorem reductionSound10735 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7336).moment H =
      Integer.Sparse.eval reductionProjection10735 (momentVector H) := by
  have heq : reductionPivot10735 = (fun u v => (normalNode7336).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7336).moment H = injectiveMoment H reductionPivot10735 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7336).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10735 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10735 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![36, 72, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10735 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection8119, oldProjection1121, reductionProjection10630, reductionProjection5838] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10735 (0 : Fin 4)) = canonicalInput19218.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8119 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8119 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19218 hH))).trans (reductionSound8119 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10735 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6026 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1121 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1121 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6026 hH))).trans (oldProjectionSound1121 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10735 (2 : Fin 4)) = canonicalInput14442.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10630 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14442 hH))).trans (reductionSound10630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10735 (3 : Fin 4)) = canonicalInput14441.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5838 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10735 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14441 hH))).trans (reductionSound5838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7336).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10735 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7336).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10735 (j : Fin 4)))
      2 288 288 2 ![36, 72, 144, 9] ![8, 4, 2, 32] reductionProjection10735 ![reductionProjection8119, oldProjection1121, reductionProjection10630, reductionProjection5838]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10736 : Integer.Sparse (Fin 1613) := [(4, 1), (19, -36), (20, -4), (91, 144), (94, -33), (106, 32), (243, 352), (244, 48), (700, 16), (735, 144), (1223, -48), (1225, 128), (1226, 64), (1251, 8)]

def reductionPivot10736 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 4, -3], ![0, 1, -1, 0], ![1, -1, 0, 0], ![1, 0, 0, -1]]

theorem reductionSound10736 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7334).moment H =
      Integer.Sparse.eval reductionProjection10736 (momentVector H) := by
  have heq : reductionPivot10736 = (fun u v => (normalNode7334).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7334).moment H = injectiveMoment H reductionPivot10736 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7334).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10736 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10736 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 144, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10736 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10734, reductionProjection9776, reductionProjection7618, reductionProjection10635, reductionProjection10735] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10736 (0 : Fin 5)) = canonicalInput19214.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10734 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19214 hH))).trans (reductionSound10734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10736 (1 : Fin 5)) = canonicalInput14472.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9776 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9776 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14472 hH))).trans (reductionSound9776 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10736 (2 : Fin 5)) = canonicalInput14439.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7618 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7618 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14439 hH))).trans (reductionSound7618 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10736 (3 : Fin 5)) = canonicalInput14437.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10635 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10635 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14437 hH))).trans (reductionSound10635 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10736 (4 : Fin 5)) = (normalNode7336).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10735 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10736 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10735 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10735 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7334).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10736 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7334).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10736 (j : Fin 5)))
      1 288 288 1 ![288, 144, 288, 288, 288] ![1, 2, 1, 1, 1] reductionProjection10736 ![reductionProjection10734, reductionProjection9776, reductionProjection7618, reductionProjection10635, reductionProjection10735]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10737 : Integer.Sparse (Fin 1613) := [(3, -4), (4, 2), (19, -36), (20, -13), (91, 144), (94, -20), (106, 64), (243, 256), (244, 112), (246, 16), (994, 144), (1214, -48), (1225, 144), (1226, 64), (1251, 3)]

def reductionPivot10737 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -1, -2, 4], ![-1, 0, 4, -3], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, -1, 0]]

theorem reductionSound10737 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7335).moment H =
      Integer.Sparse.eval reductionProjection10737 (momentVector H) := by
  have heq : reductionPivot10737 = (fun u v => (normalNode7335).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7335).moment H = injectiveMoment H reductionPivot10737 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7335).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10737 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10737 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10737 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10734, reductionProjection9775, reductionProjection8100, reductionProjection10631, reductionProjection10711] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10737 (0 : Fin 5)) = canonicalInput19215.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10734 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10734 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19215 hH))).trans (reductionSound10734 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10737 (1 : Fin 5)) = canonicalInput14474.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9775 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14474 hH))).trans (reductionSound9775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10737 (2 : Fin 5)) = canonicalInput14440.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8100 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8100 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14440 hH))).trans (reductionSound8100 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10737 (3 : Fin 5)) = canonicalInput14438.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10631 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10631 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14438 hH))).trans (reductionSound10631 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10737 (4 : Fin 5)) = (normalNode7337).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10711 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10737 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10711 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10711 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7335).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10737 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7335).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10737 (j : Fin 5)))
      1 288 288 1 ![288, 288, 288, 288, 288] ![1, 1, 1, 1, 1] reductionProjection10737 ![reductionProjection10734, reductionProjection9775, reductionProjection8100, reductionProjection10631, reductionProjection10711]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10738 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 80), (20, -5), (94, -60), (241, -80), (243, -80), (247, -80), (698, -160), (1082, -720), (1251, -50), (1323, 240), (1329, -720)]

def reductionPivot10738 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![0, 1, 1, -2], ![1, -1, 2, -2]]

theorem reductionSound10738 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7345).moment H =
      Integer.Sparse.eval reductionProjection10738 (momentVector H) := by
  have heq : reductionPivot10738 = (fun u v => (normalNode7345).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7345).moment H = injectiveMoment H reductionPivot10738 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7345).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10738 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10738 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10738 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1332, oldProjection921, reductionProjection10682, reductionProjection6534] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10738 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw8292 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1332 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1332 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical8292 hH))).trans (oldProjectionSound1332 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10738 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node921⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection921 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection921 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound921 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10738 (2 : Fin 4)) = canonicalInput14452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14452 hH))).trans (reductionSound10682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10738 (3 : Fin 4)) = canonicalInput14444.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6534 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10738 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6534 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14444 hH))).trans (reductionSound6534 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7345).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10738 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7345).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10738 (j : Fin 4)))
      2 1440 1440 2 ![360, 720, 1, 1] ![4, 2, 1440, 1440] reductionProjection10738 ![oldProjection1332, oldProjection921, reductionProjection10682, reductionProjection6534]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10739 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 60), (20, -5), (94, -45), (108, -160), (247, -160), (751, -720), (1251, -35), (1319, 480), (1329, -720)]

def reductionPivot10739 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, -1, 2, -2], ![1, 0, 1, -2]]

theorem reductionSound10739 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7343).moment H =
      Integer.Sparse.eval reductionProjection10739 (momentVector H) := by
  have heq : reductionPivot10739 = (fun u v => (normalNode7343).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7343).moment H = injectiveMoment H reductionPivot10739 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7343).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10739 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10739 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10739 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1361, oldProjection585, oldProjection923, reductionProjection10682] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10739 (0 : Fin 4)) = canonicalInput19485.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1361 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19485 hH))).trans (oldProjectionSound1361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10739 (1 : Fin 4)) = canonicalInput14480.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection585 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection585 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14480 hH))).trans (oldProjectionSound585 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10739 (2 : Fin 4)) = canonicalInput14450.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14450 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10739 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1329).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10739 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7343).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10739 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7343).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10739 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 144, 1] ![2, 1440, 10, 1440] reductionProjection10739 ![oldProjection1361, oldProjection585, oldProjection923, reductionProjection10682]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10740 : Integer.Sparse (Fin 1613) := [(0, -6), (3, -40), (19, -320), (20, 35), (94, 95), (108, 320), (241, 400), (243, 400), (247, 480), (549, 720), (698, 560), (751, 720), (1082, 720), (1214, -240), (1219, -240), (1223, -240), (1225, 80), (1226, 320), (1227, 160), (1251, 30), (1319, -480), (1323, -240), (1329, 1440), (1330, 720)]

def reductionPivot10740 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, -1, 2, -2], ![1, 0, 0, -1]]

theorem reductionSound10740 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7338).moment H =
      Integer.Sparse.eval reductionProjection10740 (momentVector H) := by
  have heq : reductionPivot10740 = (fun u v => (normalNode7338).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7338).moment H = injectiveMoment H reductionPivot10740 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7338).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10740 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10740 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![720, 1440, 1440, 288, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10740 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1736, oldProjection1548, reductionProjection10738, reductionProjection10729, reductionProjection10739] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10740 (0 : Fin 5)) = OAI.MUB6.Certificate.PairSemantics.raw6163 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1736 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1736 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6163 hH))).trans (oldProjectionSound1736 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10740 (1 : Fin 5)) = canonicalInput14455.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection1548 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14455 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10740 (2 : Fin 5)) = (normalNode7345).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10738 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10738 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10738 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10740 (3 : Fin 5)) = (normalNode7344).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10729 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10729 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10729 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10740 (4 : Fin 5)) = (normalNode7343).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10739 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10740 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10739 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10739 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7338).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10740 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7338).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10740 (j : Fin 5)))
      1 1440 1440 1 ![720, 1440, 1440, 288, 1440] ![2, 1, 1, 5, 1] reductionProjection10740 ![oldProjection1736, oldProjection1548, reductionProjection10738, reductionProjection10729, reductionProjection10739]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10741 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, -45), (247, -80), (704, -80), (1251, -45), (1328, -720), (1329, -720), (1333, -720)]

def reductionPivot10741 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound10741 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7340).moment H =
      Integer.Sparse.eval reductionProjection10741 (momentVector H) := by
  have heq : reductionPivot10741 = (fun u v => (normalNode7340).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7340).moment H = injectiveMoment H reductionPivot10741 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7340).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10741 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10741 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10741 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection924, oldProjection1341, reductionProjection10682, reductionProjection10656] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10741 (0 : Fin 4)) = canonicalInput15205.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection924 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection924 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15205 hH))).trans (oldProjectionSound924 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10741 (1 : Fin 4)) = canonicalInput14458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14458 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10741 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1329).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10682 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10682 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10682 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10741 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10656 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10741 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10656 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7340).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10741 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7340).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10741 (j : Fin 4)))
      2 1440 1440 2 ![1, 720, 1, 1] ![1440, 2, 1440, 1440] reductionProjection10741 ![oldProjection924, oldProjection1341, reductionProjection10682, reductionProjection10656]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10742 : Integer.Sparse (Fin 1613) := [(3, 24), (4, -1), (19, 44), (20, -5), (94, -2), (108, -48), (243, -16), (244, -16), (246, -16), (1214, 48), (1251, -6)]

def reductionPivot10742 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound10742 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7341).moment H =
      Integer.Sparse.eval reductionProjection10742 (momentVector H) := by
  have heq : reductionPivot10742 = (fun u v => (normalNode7341).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7341).moment H = injectiveMoment H reductionPivot10742 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7341).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10742 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10742 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10742 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1354, oldProjection1353, reductionProjection10661, reductionProjection10657] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10742 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw7052 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1354 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1354 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7052 hH))).trans (oldProjectionSound1354 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10742 (1 : Fin 4)) = canonicalInput14478.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1353 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1353 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14478 hH))).trans (oldProjectionSound1353 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10742 (2 : Fin 4)) = canonicalInput14448.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14448 hH))).trans (reductionSound10661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10742 (3 : Fin 4)) = canonicalInput14447.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10657 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10742 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10657 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14447 hH))).trans (reductionSound10657 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7341).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10742 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7341).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10742 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10742 ![oldProjection1354, oldProjection1353, reductionProjection10661, reductionProjection10657]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10743 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -10), (94, -5), (108, -160), (247, -80), (1207, -720), (1251, 20), (1319, 480), (1328, -720)]

def reductionPivot10743 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![1, -1, 1, -1], ![1, 0, 2, -3]]

theorem reductionSound10743 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7342).moment H =
      Integer.Sparse.eval reductionProjection10743 (momentVector H) := by
  have heq : reductionPivot10743 = (fun u v => (normalNode7342).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7342).moment H = injectiveMoment H reductionPivot10743 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7342).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10743 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10743 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10743 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1359, oldProjection693, oldProjection923, reductionProjection10656] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10743 (0 : Fin 4)) = canonicalInput19484.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1359 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound19484 hH))).trans (oldProjectionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10743 (1 : Fin 4)) = canonicalInput14479.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection693 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection693 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14479 hH))).trans (oldProjectionSound693 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10743 (2 : Fin 4)) = canonicalInput14449.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection923 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection923 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14449 hH))).trans (oldProjectionSound923 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10743 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1328).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10656 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10743 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10656 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7342).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10743 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7342).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10743 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 144, 1] ![2, 1440, 10, 1440] reductionProjection10743 ![oldProjection1359, oldProjection693, oldProjection923, reductionProjection10656]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10744 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 60), (20, -20), (94, 20), (704, -80), (1108, -720), (1251, -5), (1321, 240), (1328, -720)]

def reductionPivot10744 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -1, -2, 4], ![-1, 1, -1, 1], ![0, 1, 2, -3], ![1, -1, 1, -1]]

theorem reductionSound10744 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7346).moment H =
      Integer.Sparse.eval reductionProjection10744 (momentVector H) := by
  have heq : reductionPivot10744 = (fun u v => (normalNode7346).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7346).moment H = injectiveMoment H reductionPivot10744 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7346).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot10744 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10744 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10744 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1339, oldProjection922, reductionProjection10656, reductionProjection7422] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10744 (0 : Fin 4)) = canonicalInput24577.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1339 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1339 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound24577 hH))).trans (oldProjectionSound1339 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10744 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node922⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection922 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection922 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound922 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10744 (2 : Fin 4)) = canonicalInput14453.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10656 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10656 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14453 hH))).trans (reductionSound10656 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10744 (3 : Fin 4)) = canonicalInput14445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7422 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10744 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7422 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14445 hH))).trans (reductionSound7422 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7346).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10744 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7346).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10744 (j : Fin 4)))
      2 1440 1440 2 ![720, 144, 1, 1] ![2, 10, 1440, 1440] reductionProjection10744 ![oldProjection1339, oldProjection922, reductionProjection10656, reductionProjection7422]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10745 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 80), (20, -5), (94, -45), (247, -80), (326, -360), (704, -80), (1251, -45), (1324, -360)]

def reductionPivot10745 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![-1, 1, 1, -1], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound10745 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7364).moment H =
      Integer.Sparse.eval reductionProjection10745 (momentVector H) := by
  have heq : reductionPivot10745 = (fun u v => (normalNode7364).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7364).moment H = injectiveMoment H reductionPivot10745 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7364).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10745 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10745 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 720, 720, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10745 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10548, oldProjection1341, oldProjection1341, oldProjection464] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10745 (0 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1324).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10548 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10745 (1 : Fin 4)) = canonicalInput14458.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14458 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10745 (2 : Fin 4)) = canonicalInput14463.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1341 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1341 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14463 hH))).trans (oldProjectionSound1341 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10745 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6020 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection464 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10745 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection464 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6020 hH))).trans (oldProjectionSound464 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7364).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10745 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7364).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10745 (j : Fin 4)))
      2 720 720 2 ![1, 720, 720, 1] ![720, 1, 1, 720] reductionProjection10745 ![reductionProjection10548, oldProjection1341, oldProjection1341, oldProjection464]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10746 : Integer.Sparse (Fin 1613) := [(0, -6), (3, 40), (4, -5), (20, 5), (94, 40), (104, -80), (241, -80), (1251, 80)]

def reductionPivot10746 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 0, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound10746 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7441).moment H =
      Integer.Sparse.eval reductionProjection10746 (momentVector H) := by
  have heq : reductionPivot10746 = (fun u v => (normalNode7441).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7441).moment H = injectiveMoment H reductionPivot10746 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7441).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10746 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10746 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 240, 240, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10746 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10574, oldProjection253, oldProjection253, oldProjection906] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10746 (0 : Fin 4)) = (normalNode7206).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10574 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10574 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10574 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10746 (1 : Fin 4)) = canonicalInput14566.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14566 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10746 (2 : Fin 4)) = canonicalInput14585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((240 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection253 (momentVector H)
      have hh : (240 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection253 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (240 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14585 hH))).trans (oldProjectionSound253 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10746 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node906⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection906 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10746 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection906 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound906 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7441).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10746 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7441).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10746 (j : Fin 4)))
      2 1440 1440 2 ![720, 240, 240, 720] ![2, 6, 6, 2] reductionProjection10746 ![reductionProjection10574, oldProjection253, oldProjection253, oldProjection906]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10747 : Integer.Sparse (Fin 1613) := [(0, 2), (3, 20), (20, -10), (94, -15), (104, -80), (241, -80), (243, -80), (246, -80), (698, -160), (703, -80), (704, -80), (1251, 25)]

def reductionPivot10747 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 2, 1, -3], ![1, -1, 1, -1]]

theorem reductionSound10747 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7444).moment H =
      Integer.Sparse.eval reductionProjection10747 (momentVector H) := by
  have heq : reductionPivot10747 = (fun u v => (normalNode7444).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7444).moment H = injectiveMoment H reductionPivot10747 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7444).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10747 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10747 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10747 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6715, oldProjection246, oldProjection769, oldProjection1170] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10747 (0 : Fin 4)) = canonicalInput14258.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6715 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6715 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14258 hH))).trans (reductionSound6715 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10747 (1 : Fin 4)) = canonicalInput14571.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection246 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection246 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14571 hH))).trans (oldProjectionSound246 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10747 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6080 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection769 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection769 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6080 hH))).trans (oldProjectionSound769 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10747 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6081 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1170 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10747 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1170 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6081 hH))).trans (oldProjectionSound1170 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7444).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10747 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7444).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10747 (j : Fin 4)))
      2 1440 1440 2 ![144, 48, 720, 720] ![10, 30, 2, 2] reductionProjection10747 ![reductionProjection6715, oldProjection246, oldProjection769, oldProjection1170]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10748 : Integer.Sparse (Fin 1613) := [(0, -2), (3, -100), (4, 5), (19, -240), (20, 30), (94, 140), (104, 240), (108, 240), (241, 240), (243, 80), (246, 80), (247, 320), (326, 720), (698, 160), (703, 80), (704, 320), (1251, 45), (1324, 720), (1328, 720), (1329, 720), (1333, 720)]

def reductionPivot10748 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 0, 1, -1], ![1, -1, 1, -1], ![1, 1, 1, -3]]

theorem reductionSound10748 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7348).moment H =
      Integer.Sparse.eval reductionProjection10748 (momentVector H) := by
  have heq : reductionPivot10748 = (fun u v => (normalNode7348).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7348).moment H = injectiveMoment H reductionPivot10748 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7348).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10748 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10748 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10748 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection8591, reductionProjection10741, reductionProjection10745, reductionProjection10746, reductionProjection10747] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10748 (0 : Fin 5)) = canonicalInput6213.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8591 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8591 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6213 hH))).trans (reductionSound8591 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10748 (1 : Fin 5)) = (normalNode7340).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10741 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10748 (2 : Fin 5)) = canonicalInput14536.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10745 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10745 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14536 hH))).trans (reductionSound10745 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10748 (3 : Fin 5)) = (normalNode7441).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10746 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10748 (4 : Fin 5)) = canonicalInput14546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10747 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10748 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14546 hH))).trans (reductionSound10747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7348).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10748 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7348).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10748 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 1440, 1440] ![1, 1, 2, 1, 1] reductionProjection10748 ![reductionProjection8591, reductionProjection10741, reductionProjection10745, reductionProjection10746, reductionProjection10747]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10749 : Integer.Sparse (Fin 1613) := [(3, 4), (4, -2), (19, 4), (20, 9), (94, 17), (108, -16), (1251, 2)]

def reductionPivot10749 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 1, 0, -1], ![0, 1, 3, -4], ![1, -1, 0, 0]]

theorem reductionSound10749 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7452).moment H =
      Integer.Sparse.eval reductionProjection10749 (momentVector H) := by
  have heq : reductionPivot10749 = (fun u v => (normalNode7452).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7452).moment H = injectiveMoment H reductionPivot10749 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7452).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10749 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10749 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10749 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10595, oldProjection1228, oldProjection1177, reductionProjection10661] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10749 (0 : Fin 4)) = canonicalInput14274.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10595 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14274 hH))).trans (reductionSound10595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10749 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6102 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1228 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1228 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6102 hH))).trans (oldProjectionSound1228 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10749 (2 : Fin 4)) = canonicalInput14637.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1177 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14637 hH))).trans (oldProjectionSound1177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10749 (3 : Fin 4)) = (normalNode7482).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10661 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10749 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10661 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10661 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7452).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10749 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7452).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10749 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 144] ![2, 2, 2, 2] reductionProjection10749 ![reductionProjection10595, oldProjection1228, oldProjection1177, reductionProjection10661]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10750 : Integer.Sparse (Fin 1613) := [(3, -20), (4, 3), (19, -20), (20, -6), (94, -16), (105, 16), (106, 16), (108, 64), (241, 16), (243, 48), (244, 32), (246, 32), (704, 16), (1148, 144), (1214, -96), (1218, -48), (1223, -48), (1251, 5)]

def reductionPivot10750 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -2, 4], ![0, 0, -1, 1], ![0, 1, 0, -1], ![1, -1, 0, 0], ![1, 0, 3, -4]]

theorem reductionSound10750 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7349).moment H =
      Integer.Sparse.eval reductionProjection10750 (momentVector H) := by
  have heq : reductionPivot10750 = (fun u v => (normalNode7349).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7349).moment H = injectiveMoment H reductionPivot10750 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7349).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10750 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10750 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 288, 288, 144, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10750 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection6411, reductionProjection10742, reductionProjection9013, reductionProjection8520, reductionProjection10749] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10750 (0 : Fin 5)) = canonicalInput6216.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection6411 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection6411 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6216 hH))).trans (reductionSound6411 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10750 (1 : Fin 5)) = (normalNode7341).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10742 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound10742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10750 (2 : Fin 5)) = canonicalInput14540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9013 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9013 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14540 hH))).trans (reductionSound9013 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10750 (3 : Fin 5)) = canonicalInput14548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection8520 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection8520 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14548 hH))).trans (reductionSound8520 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10750 (4 : Fin 5)) = canonicalInput14551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10749 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10750 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10749 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14551 hH))).trans (reductionSound10749 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7349).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10750 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7349).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10750 (j : Fin 5)))
      1 288 288 1 ![288, 288, 288, 144, 288] ![1, 1, 1, 2, 1] reductionProjection10750 ![reductionProjection6411, reductionProjection10742, reductionProjection9013, reductionProjection8520, reductionProjection10749]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10751 : Integer.Sparse (Fin 1613) := [(3, 8), (4, -1), (19, 12), (20, 2), (94, -2), (108, -16), (247, -16), (1251, -5)]

def reductionPivot10751 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, -2, 4], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 2, -3]]

theorem reductionSound10751 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7443).moment H =
      Integer.Sparse.eval reductionProjection10751 (momentVector H) := by
  have heq : reductionPivot10751 = (fun u v => (normalNode7443).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7443).moment H = injectiveMoment H reductionPivot10751 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7443).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10751 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10751 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 48, 720, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10751 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6714, oldProjection254, oldProjection909, oldProjection910] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10751 (0 : Fin 4)) = (normalNode7213).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6714 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6714 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound6714 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10751 (1 : Fin 4)) = canonicalInput14568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection254 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection254 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14568 hH))).trans (oldProjectionSound254 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10751 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node909⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection909 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10751 (3 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node910⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection910 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10751 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection910 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound910 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7443).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10751 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7443).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10751 (j : Fin 4)))
      2 288 1440 10 ![144, 48, 720, 720] ![10, 30, 2, 2] reductionProjection10751 ![reductionProjection6714, oldProjection254, oldProjection909, oldProjection910]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
