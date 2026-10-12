import NoFourMUBs.Step2.SOS.Canonical201
import NoFourMUBs.Step2.SOS.Canonical202
import NoFourMUBs.Step2.SOS.Canonical205
import NoFourMUBs.Step2.SOS.Canonical223
import NoFourMUBs.Step2.SOS.Canonical229
import NoFourMUBs.Step2.SOS.Canonical230
import NoFourMUBs.Step2.SOS.Canonical231
import NoFourMUBs.Step2.SOS.Canonical232
import NoFourMUBs.Step2.SOS.Canonical233
import NoFourMUBs.Step2.SOS.Canonical234
import NoFourMUBs.Step2.SOS.Canonical251
import NoFourMUBs.Step2.SOS.Canonical258
import NoFourMUBs.Step2.SOS.Canonical259
import NoFourMUBs.Step2.SOS.Canonical260
import NoFourMUBs.Step2.SOS.Canonical269
import NoFourMUBs.Step2.SOS.Canonical275
import NoFourMUBs.Step2.SOS.Canonical278
import NoFourMUBs.Step2.SOS.Canonical280
import NoFourMUBs.Step2.SOS.Canonical288
import NoFourMUBs.Step2.SOS.Canonical310
import NoFourMUBs.Step2.SOS.Canonical311
import NoFourMUBs.Step2.SOS.Canonical313
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes033
import NoFourMUBs.Step2.SOS.NormalizationNodes034
import NoFourMUBs.Step2.SOS.NormalizationNodes035
import NoFourMUBs.Step2.SOS.NormalizationNodes036
import NoFourMUBs.Step2.SOS.NormalizationNodes039
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections021
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections025
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections032
import NoFourMUBs.Step2.SOS.OldProjections033
import NoFourMUBs.Step2.SOS.OldProjections034
import NoFourMUBs.Step2.SOS.OldProjections035
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions031
import NoFourMUBs.Step2.SOS.Reductions042
import NoFourMUBs.Step2.SOS.Reductions050
import NoFourMUBs.Step2.SOS.Reductions065
import NoFourMUBs.Step2.SOS.Reductions068
import NoFourMUBs.Step2.SOS.Reductions079
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions096
import NoFourMUBs.Step2.SOS.Reductions097
import NoFourMUBs.Step2.SOS.Reductions102
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions113
import NoFourMUBs.Step2.SOS.Reductions119
import NoFourMUBs.Step2.SOS.Reductions120
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions149
import NoFourMUBs.Step2.SOS.Reductions153
import NoFourMUBs.Step2.SOS.Reductions154
import NoFourMUBs.Step2.SOS.Reductions156
import NoFourMUBs.Step2.SOS.Reductions161
import NoFourMUBs.Step2.SOS.Reductions162
import NoFourMUBs.Step2.SOS.Reductions172
import NoFourMUBs.Step2.SOS.Reductions179
import NoFourMUBs.Step2.SOS.Reductions214
import NoFourMUBs.Step2.SOS.Reductions227
import NoFourMUBs.Step2.SOS.Reductions287
import NoFourMUBs.Step2.SOS.Reductions319
import NoFourMUBs.Step2.SOS.Reductions320
import NoFourMUBs.Step2.SOS.Reductions322
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical202
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes16
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection10816 : Integer.Sparse (Fin 1613) := [(0, -3), (19, -60), (20, 5), (88, 40), (94, 40), (228, -240), (241, 240), (243, 320), (247, 40), (609, 360), (698, 600), (704, 160), (1014, 360), (1223, -120), (1226, 280), (1227, 160), (1251, -10)]

def reductionPivot10816 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, -1, 1], ![1, 0, 1, 2, -4]]

theorem reductionSound10816 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8693).moment H =
      Integer.Sparse.eval reductionProjection10816 (momentVector H) := by
  have heq : reductionPivot10816 = (fun u v => (normalNode8693).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8693).moment H = injectiveMoment H reductionPivot10816 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8693).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10816 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10816 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10816 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1767, oldProjection1548, reductionProjection5518, oldProjection1768] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10816 (0 : Fin 4)) = canonicalInput14902.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14902 hH))).trans (oldProjectionSound1767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10816 (1 : Fin 4)) = canonicalInput16581.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1548 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16581 hH))).trans (oldProjectionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10816 (2 : Fin 4)) = canonicalInput16634.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5518 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5518 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16634 hH))).trans (reductionSound5518 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10816 (3 : Fin 4)) = canonicalInput16638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10816 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16638 hH))).trans (oldProjectionSound1768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8693).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10816 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8693).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10816 (j : Fin 4)))
      2 1440 1440 2 ![720, 1440, 1440, 1440] ![2, 1, 1, 1] reductionProjection10816 ![oldProjection1767, oldProjection1548, reductionProjection5518, oldProjection1768]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10817 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 35), (698, 480), (1015, 720), (1226, 560), (1227, 240), (1251, -60)]

def reductionPivot10817 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, -1, 0, 0], ![1, 0, 1, 1, -3]]

theorem reductionSound10817 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8694).moment H =
      Integer.Sparse.eval reductionProjection10817 (momentVector H) := by
  have heq : reductionPivot10817 = (fun u v => (normalNode8694).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8694).moment H = injectiveMoment H reductionPivot10817 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8694).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10817 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10817 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10817 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2779, oldProjection2742, oldProjection2069, oldProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10817 (0 : Fin 4)) = canonicalInput14903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2779 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2779 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14903 hH))).trans (oldProjectionSound2779 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10817 (1 : Fin 4)) = canonicalInput16582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2742 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2742 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16582 hH))).trans (oldProjectionSound2742 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10817 (2 : Fin 4)) = canonicalInput16635.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2069 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2069 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16635 hH))).trans (oldProjectionSound2069 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10817 (3 : Fin 4)) = canonicalInput16639.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10817 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16639 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8694).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10817 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8694).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10817 (j : Fin 4)))
      2 2880 2880 2 ![720, 720, 144, 288] ![4, 4, 20, 10] reductionProjection10817 ![oldProjection2779, oldProjection2742, oldProjection2069, oldProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10818 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (94, 45), (241, 160), (243, 80), (478, 720), (505, 720), (603, 720), (634, 720), (635, 1440), (682, -240), (697, -480), (698, 880), (704, 80), (919, 720), (1052, -240), (1059, 80), (1115, 720), (1221, -480), (1226, 240), (1227, 320), (1251, -130), (1389, -240)]

def reductionPivot10818 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, 0, -1], ![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, -2, 1], ![1, 0, -1, 1, -1]]

theorem reductionSound10818 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7518).moment H =
      Integer.Sparse.eval reductionProjection10818 (momentVector H) := by
  have heq : reductionPivot10818 = (fun u v => (normalNode7518).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7518).moment H = injectiveMoment H reductionPivot10818 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7518).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot10818 0 = Pi.single (1 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10818 1 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10818 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1741, oldProjection2251, reductionProjection4942, reductionProjection4775] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10818 (0 : Fin 4)) = canonicalInput19853.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1741 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1741 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19853 hH))).trans (oldProjectionSound1741 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10818 (1 : Fin 4)) = canonicalInput14795.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2251 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2251 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14795 hH))).trans (oldProjectionSound2251 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10818 (2 : Fin 4)) = canonicalInput14717.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4942 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4942 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14717 hH))).trans (reductionSound4942 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10818 (3 : Fin 4)) = canonicalInput14713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4775 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10818 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4775 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14713 hH))).trans (reductionSound4775 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7518).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10818 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7518).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10818 (j : Fin 4)))
      2 2880 2880 2 ![360, 1440, 1440, 2] ![8, 2, 2, 1440] reductionProjection10818 ![oldProjection1741, oldProjection2251, reductionProjection4942, reductionProjection4775]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10819 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -20), (90, 80), (94, 50), (603, 720), (698, 560), (704, 80), (919, 720), (1052, -240), (1059, 80), (1221, -480), (1226, 560), (1227, 480), (1251, 85)]

def reductionPivot10819 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 0, 1, 2, -3], ![1, 1, -1, -1, 0]]

theorem reductionSound10819 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8692).moment H =
      Integer.Sparse.eval reductionProjection10819 (momentVector H) := by
  have heq : reductionPivot10819 = (fun u v => (normalNode8692).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8692).moment H = injectiveMoment H reductionPivot10819 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8692).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10819 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10819 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10819 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1822, oldProjection1680, oldProjection1785, reductionProjection4936] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10819 (0 : Fin 4)) = canonicalInput14901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1822 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1822 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14901 hH))).trans (oldProjectionSound1822 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10819 (1 : Fin 4)) = canonicalInput16576.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1680 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1680 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16576 hH))).trans (oldProjectionSound1680 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10819 (2 : Fin 4)) = canonicalInput16630.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16630 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10819 (3 : Fin 4)) = canonicalInput16633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4936 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10819 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4936 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16633 hH))).trans (reductionSound4936 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8692).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10819 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8692).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10819 (j : Fin 4)))
      2 2880 2880 2 ![360, 1440, 1440, 720] ![8, 2, 2, 4] reductionProjection10819 ![oldProjection1822, oldProjection1680, oldProjection1785, reductionProjection4936]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10820 : Integer.Sparse (Fin 1613) := [(0, 3), (90, 40), (94, 10), (698, 220), (700, 20), (1226, 140), (1227, 160), (1251, -35)]

def reductionPivot10820 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 0, 1], ![-1, -1, 0, 1, 1], ![0, 0, 1, -2, 1], ![0, 1, 0, -1, 0], ![1, 0, 0, 2, -3]]

theorem reductionSound10820 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode8696).moment H =
      Integer.Sparse.eval reductionProjection10820 (momentVector H) := by
  have heq : reductionPivot10820 = (fun u v => (normalNode8696).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8696).moment H = injectiveMoment H reductionPivot10820 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8696).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10820 0 = Pi.single (4 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10820 4 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10820 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2444, oldProjection1109, oldProjection1768, oldProjection2445] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10820 (0 : Fin 4)) = canonicalInput14906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2444 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2444 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14906 hH))).trans (oldProjectionSound2444 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10820 (1 : Fin 4)) = canonicalInput16585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1109 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16585 hH))).trans (oldProjectionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10820 (2 : Fin 4)) = canonicalInput16638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1768 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1768 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16638 hH))).trans (oldProjectionSound1768 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10820 (3 : Fin 4)) = canonicalInput16641.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2445 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10820 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2445 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16641 hH))).trans (oldProjectionSound2445 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8696).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10820 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8696).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10820 (j : Fin 4)))
      2 720 1440 4 ![1440, 720, 1440, 1440] ![1, 2, 1, 1] reductionProjection10820 ![oldProjection2444, oldProjection1109, oldProjection1768, oldProjection2445]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10821 : Integer.Sparse (Fin 1613) := [(0, -17), (19, 160), (20, -10), (88, -80), (90, -240), (94, -250), (228, 480), (241, -640), (243, -720), (247, -80), (478, -720), (505, -720), (603, -1440), (609, -720), (634, -720), (635, -1440), (682, 240), (697, 480), (698, -4000), (700, -80), (704, -480), (919, -1440), (1014, -720), (1015, -720), (1052, 480), (1059, -160), (1115, -720), (1221, 960), (1223, 240), (1226, -2480), (1227, -2000), (1251, 265), (1389, 240)]

def reductionPivot10821 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, -1, 0, 3], ![0, -1, 2, 1, -2], ![0, 1, 0, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound10821 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7517).moment H =
      Integer.Sparse.eval reductionProjection10821 (momentVector H) := by
  have heq : reductionPivot10821 = (fun u v => (normalNode7517).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7517).moment H = injectiveMoment H reductionPivot10821 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7517).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot10821 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10821 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2880, 2880, 2880, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10821 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10816, reductionProjection10817, reductionProjection10818, reductionProjection10819, reductionProjection10820] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10821 (0 : Fin 5)) = canonicalInput14665.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10816 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10816 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14665 hH))).trans (reductionSound10816 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10821 (1 : Fin 5)) = canonicalInput14708.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10817 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10817 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14708 hH))).trans (reductionSound10817 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10821 (2 : Fin 5)) = (normalNode7518).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10818 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10818 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound10818 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10821 (3 : Fin 5)) = canonicalInput14714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10819 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14714 hH))).trans (reductionSound10819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10821 (4 : Fin 5)) = canonicalInput14715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10820 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10821 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14715 hH))).trans (reductionSound10820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7517).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10821 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7517).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10821 (j : Fin 5)))
      1 2880 2880 1 ![1440, 2880, 2880, 2880, 720] ![2, 1, 1, 1, 4] reductionProjection10821 ![reductionProjection10816, reductionProjection10817, reductionProjection10818, reductionProjection10819, reductionProjection10820]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10822 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -10), (62, -60), (76, -120), (79, -60), (88, 60), (90, 80), (94, 5), (241, 120), (243, 80), (400, 180), (691, -60), (694, -60), (698, 180), (700, 20), (762, 180), (775, 180), (781, 180), (1047, -60), (1226, 100), (1251, -10)]

def reductionPivot10822 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, -1, 0, 3], ![0, 0, -2, 2, 0], ![0, 0, 3, -2, -1], ![1, 1, 0, -1, -1]]

theorem reductionSound10822 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7520).moment H =
      Integer.Sparse.eval reductionProjection10822 (momentVector H) := by
  have heq : reductionPivot10822 = (fun u v => (normalNode7520).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7520).moment H = injectiveMoment H reductionPivot10822 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7520).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10822 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10822 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10822 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection3864, reductionProjection10218, reductionProjection2766, reductionProjection2207] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10822 (0 : Fin 4)) = canonicalInput14845.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3864 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14845 hH))).trans (reductionSound3864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10822 (1 : Fin 4)) = canonicalInput14721.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10218 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10218 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14721 hH))).trans (reductionSound10218 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10822 (2 : Fin 4)) = canonicalInput14720.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2766 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2766 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14720 hH))).trans (reductionSound2766 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10822 (3 : Fin 4)) = canonicalInput14719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2207 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10822 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2207 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14719 hH))).trans (reductionSound2207 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7520).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10822 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7520).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10822 (j : Fin 4)))
      2 720 1440 4 ![1440, 144, 1440, 288] ![1, 10, 1, 5] reductionProjection10822 ![reductionProjection3864, reductionProjection10218, reductionProjection2766, reductionProjection2207]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10823 : Integer.Sparse (Fin 1613) := [(0, 3), (19, -10), (94, 20), (241, 40), (247, 20), (426, 180), (698, 220), (1055, -60), (1219, -60), (1226, 100), (1227, 80), (1251, -35)]

def reductionPivot10823 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, -1, 0, 3], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 1, 0, -1, -1]]

theorem reductionSound10823 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode7523).moment H =
      Integer.Sparse.eval reductionProjection10823 (momentVector H) := by
  have heq : reductionPivot10823 = (fun u v => (normalNode7523).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7523).moment H = injectiveMoment H reductionPivot10823 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7523).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10823 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10823 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 36, 288, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10823 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2553, oldProjection2064, oldProjection2551, oldProjection2542] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10823 (0 : Fin 4)) = canonicalInput14302.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2553 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2553 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14302 hH))).trans (oldProjectionSound2553 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10823 (1 : Fin 4)) = canonicalInput14726.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2064 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14726 hH))).trans (oldProjectionSound2064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10823 (2 : Fin 4)) = canonicalInput14741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2551 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2551 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14741 hH))).trans (oldProjectionSound2551 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10823 (3 : Fin 4)) = canonicalInput14744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2542 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10823 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14744 hH))).trans (oldProjectionSound2542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7523).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10823 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7523).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10823 (j : Fin 4)))
      2 720 1440 4 ![1440, 36, 288, 720] ![1, 40, 5, 2] reductionProjection10823 ![oldProjection2553, oldProjection2064, oldProjection2551, oldProjection2542]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10824 : Integer.Sparse (Fin 1613) := [(0, -1), (38, -120), (56, -120), (90, 80), (94, 20), (243, 40), (427, 360), (437, 360), (462, 360), (698, 400), (700, 680), (1058, -120), (1059, 200), (1226, 40), (1251, -55)]

def reductionPivot10824 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 2, -2, 0], ![1, 1, 0, -1, -1]]

theorem reductionSound10824 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7524).moment H =
      Integer.Sparse.eval reductionProjection10824 (momentVector H) := by
  have heq : reductionPivot10824 = (fun u v => (normalNode7524).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7524).moment H = injectiveMoment H reductionPivot10824 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7524).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10824 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10824 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 360] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10824 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1699, reductionProjection4358, oldProjection2676, oldProjection1650] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10824 (0 : Fin 4)) = canonicalInput14306.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1699 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1699 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14306 hH))).trans (oldProjectionSound1699 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10824 (1 : Fin 4)) = canonicalInput14734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4358 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4358 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14734 hH))).trans (reductionSound4358 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10824 (2 : Fin 4)) = canonicalInput14751.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2676 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14751 hH))).trans (oldProjectionSound2676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10824 (3 : Fin 4)) = canonicalInput14753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1650 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10824 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14753 hH))).trans (oldProjectionSound1650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7524).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10824 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7524).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10824 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 720, 360] ![1, 1, 2, 4] reductionProjection10824 ![oldProjection1699, reductionProjection4358, oldProjection2676, oldProjection1650]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10825 : Integer.Sparse (Fin 1613) := [(0, -1), (42, 16), (79, -48), (81, -144), (88, 16), (90, 64), (94, 7), (441, 144), (461, 144), (698, 224), (700, 128), (701, 16), (704, 16), (764, 144), (783, 144), (1059, 112), (1226, 80), (1227, 48), (1251, -12)]

def reductionPivot10825 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, -1, 0, 3], ![0, 0, 0, 2, -2], ![0, 0, 3, -2, -1], ![1, 1, -1, -1, 0]]

theorem reductionSound10825 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode7525).moment H =
      Integer.Sparse.eval reductionProjection10825 (momentVector H) := by
  have heq : reductionPivot10825 = (fun u v => (normalNode7525).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7525).moment H = injectiveMoment H reductionPivot10825 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7525).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10825 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10825 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 18, 288, 18] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10825 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection6877, reductionProjection10268, reductionProjection2543, reductionProjection5746] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10825 (0 : Fin 4)) = canonicalInput14307.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection6877 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection6877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14307 hH))).trans (reductionSound6877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10825 (1 : Fin 4)) = canonicalInput14735.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10268 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10268 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14735 hH))).trans (reductionSound10268 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10825 (2 : Fin 4)) = canonicalInput14754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2543 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2543 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14754 hH))).trans (reductionSound2543 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10825 (3 : Fin 4)) = canonicalInput14755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5746 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10825 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14755 hH))).trans (reductionSound5746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7525).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10825 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7525).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10825 (j : Fin 4)))
      2 576 576 2 ![72, 18, 288, 18] ![8, 32, 2, 32] reductionProjection10825 ![reductionProjection6877, reductionProjection10268, reductionProjection2543, reductionProjection5746]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10826 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -10), (94, 15), (241, 40), (697, -120), (698, 120), (700, 80), (704, 40), (1059, 120), (1227, 40), (1251, 40)]

def reductionPivot10826 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, -1, 0, 3], ![0, 0, 1, -1, 0], ![0, 0, 1, 1, -2], ![1, 1, 0, -1, -1]]

theorem reductionSound10826 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7526).moment H =
      Integer.Sparse.eval reductionProjection10826 (momentVector H) := by
  have heq : reductionPivot10826 = (fun u v => (normalNode7526).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7526).moment H = injectiveMoment H reductionPivot10826 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7526).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10826 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10826 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 96, 720, 120] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10826 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2595, oldProjection570, oldProjection2676, oldProjection2640] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10826 (0 : Fin 4)) = canonicalInput14315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2595 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2595 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14315 hH))).trans (oldProjectionSound2595 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10826 (1 : Fin 4)) = canonicalInput14736.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((96 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection570 (momentVector H)
      have hh : (96 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection570 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (96 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14736 hH))).trans (oldProjectionSound570 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10826 (2 : Fin 4)) = canonicalInput14764.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2676 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2676 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14764 hH))).trans (oldProjectionSound2676 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10826 (3 : Fin 4)) = canonicalInput14765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((120 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2640 (momentVector H)
      have hh : (120 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10826 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2640 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (120 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14765 hH))).trans (oldProjectionSound2640 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7526).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10826 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7526).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10826 (j : Fin 4)))
      2 1440 1440 2 ![1440, 96, 720, 120] ![1, 15, 2, 12] reductionProjection10826 ![oldProjection2595, oldProjection570, oldProjection2676, oldProjection2640]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10827 : Integer.Sparse (Fin 1613) := [(0, 22), (19, -60), (81, -240), (94, 225), (228, -240), (247, 80), (326, 720), (489, 720), (698, 880), (700, 80), (704, 160), (1059, 80), (1226, 80), (1227, 320), (1251, -205), (1389, -240)]

def reductionPivot10827 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, -1, 0, 3], ![0, 0, 1, 1, -2], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound10827 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7535).moment H =
      Integer.Sparse.eval reductionProjection10827 (momentVector H) := by
  have heq : reductionPivot10827 = (fun u v => (normalNode7535).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7535).moment H = injectiveMoment H reductionPivot10827 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7535).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10827 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10827 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10827 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1592, oldProjection2531, oldProjection2767, oldProjection1685] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10827 (0 : Fin 4)) = canonicalInput14669.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1592 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1592 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14669 hH))).trans (oldProjectionSound1592 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10827 (1 : Fin 4)) = canonicalInput14771.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2531 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14771 hH))).trans (oldProjectionSound2531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10827 (2 : Fin 4)) = canonicalInput14776.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2767 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2767 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14776 hH))).trans (oldProjectionSound2767 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10827 (3 : Fin 4)) = canonicalInput14777.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1685 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10827 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1685 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14777 hH))).trans (oldProjectionSound1685 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7535).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10827 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7535).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10827 (j : Fin 4)))
      2 2880 2880 2 ![288, 1440, 720, 1440] ![10, 2, 4, 2] reductionProjection10827 ![oldProjection1592, oldProjection2531, oldProjection2767, oldProjection1685]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10828 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -20), (81, -240), (94, 105), (228, -240), (241, 80), (243, 80), (294, 720), (433, 720), (698, 1360), (700, 160), (704, 80), (1058, -240), (1059, 320), (1223, -240), (1226, 560), (1227, 480), (1251, -205)]

def reductionPivot10828 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, -1, 0, 3], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, 0, 0, 1, -2]]

theorem reductionSound10828 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7536).moment H =
      Integer.Sparse.eval reductionProjection10828 (momentVector H) := by
  have heq : reductionPivot10828 = (fun u v => (normalNode7536).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7536).moment H = injectiveMoment H reductionPivot10828 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7536).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10828 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10828 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 1440, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10828 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1576, oldProjection1653, oldProjection2750, oldProjection2532] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10828 (0 : Fin 4)) = canonicalInput14670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1576 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1576 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14670 hH))).trans (oldProjectionSound1576 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10828 (1 : Fin 4)) = canonicalInput14785.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1653 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14785 hH))).trans (oldProjectionSound1653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10828 (2 : Fin 4)) = canonicalInput14788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2750 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2750 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14788 hH))).trans (oldProjectionSound2750 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10828 (3 : Fin 4)) = canonicalInput14789.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2532 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10828 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2532 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14789 hH))).trans (oldProjectionSound2532 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7536).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10828 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7536).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10828 (j : Fin 4)))
      2 2880 2880 2 ![72, 1440, 720, 1440] ![40, 2, 4, 2] reductionProjection10828 ![oldProjection1576, oldProjection1653, oldProjection2750, oldProjection2532]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10829 : Integer.Sparse (Fin 1613) := [(0, -3), (94, -10), (1251, 25)]

def reductionPivot10829 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -1, 0, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1]]

theorem reductionSound10829 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9074).moment H =
      Integer.Sparse.eval reductionProjection10829 (momentVector H) := by
  have heq : reductionPivot10829 = (fun u v => (normalNode9074).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9074).moment H = injectiveMoment H reductionPivot10829 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9074).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10829 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10829 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 80, 90, 90] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10829 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection970, oldProjection61, oldProjection1048, oldProjection1048] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10829 (0 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node970⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection970 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10829 (1 : Fin 4)) = canonicalInput17238.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((80 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection61 (momentVector H)
      have hh : (80 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection61 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (80 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound17238 hH))).trans (oldProjectionSound61 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10829 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1048⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10829 (3 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6488 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10829 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6488 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9074).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10829 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9074).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10829 (j : Fin 4)))
      2 720 720 2 ![144, 80, 90, 90] ![5, 9, 8, 8] reductionProjection10829 ![oldProjection970, oldProjection61, oldProjection1048, oldProjection1048]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10830 : Integer.Sparse (Fin 1613) := [(0, 1), (94, -3), (698, 16), (1251, -8)]

def reductionPivot10830 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, -1, 0, 3], ![0, 0, 1, -1, 0], ![0, 1, 0, 0, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound10830 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode7538).moment H =
      Integer.Sparse.eval reductionProjection10830 (momentVector H) := by
  have heq : reductionPivot10830 = (fun u v => (normalNode7538).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7538).moment H = injectiveMoment H reductionPivot10830 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7538).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10830 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10830 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 144, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10830 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection10829, oldProjection970, oldProjection2704, oldProjection2704] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10830 (0 : Fin 4)) = canonicalInput14928.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection10829 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection10829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14928 hH))).trans (reductionSound10829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10830 (1 : Fin 4)) = canonicalInput14774.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection970 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection970 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14774 hH))).trans (oldProjectionSound970 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10830 (2 : Fin 4)) = canonicalInput14767.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14767 hH))).trans (oldProjectionSound2704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10830 (3 : Fin 4)) = canonicalInput14766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2704 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10830 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2704 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14766 hH))).trans (oldProjectionSound2704 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7538).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10830 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7538).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10830 (j : Fin 4)))
      2 288 1440 10 ![720, 144, 1440, 1440] ![2, 10, 1, 1] reductionProjection10830 ![reductionProjection10829, oldProjection970, oldProjection2704, oldProjection2704]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10831 : Integer.Sparse (Fin 1613) := [(0, 29), (489, 720), (505, 720), (602, 720), (635, 720), (697, -240), (698, 800), (1027, 720), (1059, 240), (1219, -240), (1226, 80), (1227, 640), (1251, -325), (1389, -480)]

def reductionPivot10831 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, -1, -1, 1, 2], ![0, 0, 1, 1, -2], ![0, 1, 1, -2, 0], ![1, 1, -1, 0, -1]]

theorem reductionSound10831 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7547).moment H =
      Integer.Sparse.eval reductionProjection10831 (momentVector H) := by
  have heq : reductionPivot10831 = (fun u v => (normalNode7547).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7547).moment H = injectiveMoment H reductionPivot10831 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7547).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10831 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10831 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 288, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10831 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1359, reductionProjection2106, oldProjection1829, oldProjection2761] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10831 (0 : Fin 4)) = canonicalInput12901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1359 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1359 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12901 hH))).trans (reductionSound1359 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10831 (1 : Fin 4)) = canonicalInput14817.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2106 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14817 hH))).trans (reductionSound2106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10831 (2 : Fin 4)) = canonicalInput14947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1829 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14947 hH))).trans (oldProjectionSound1829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10831 (3 : Fin 4)) = canonicalInput14957.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2761 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10831 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2761 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14957 hH))).trans (oldProjectionSound2761 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7547).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10831 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7547).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10831 (j : Fin 4)))
      2 2880 2880 2 ![360, 288, 360, 720] ![8, 10, 8, 4] reductionProjection10831 ![reductionProjection1359, reductionProjection2106, oldProjection1829, oldProjection2761]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10832 : Integer.Sparse (Fin 1613) := [(0, 23), (94, 45), (241, 160), (426, 720), (483, 720), (610, 720), (698, 880), (956, 720), (957, 720), (1016, 720), (1055, -960), (1059, 80), (1227, 640), (1251, -310), (1389, -240)]

def reductionPivot10832 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, -1, -1, 1, 2], ![0, 0, 2, -1, -1], ![0, 2, 0, -1, -1], ![1, 0, -1, 1, -1]]

theorem reductionSound10832 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7548).moment H =
      Integer.Sparse.eval reductionProjection10832 (momentVector H) := by
  have heq : reductionPivot10832 = (fun u v => (normalNode7548).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7548).moment H = injectiveMoment H reductionPivot10832 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7548).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10832 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10832 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 180, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10832 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1990, reductionProjection3334, oldProjection2623, reductionProjection3116] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10832 (0 : Fin 4)) = canonicalInput12911.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1990 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1990 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12911 hH))).trans (oldProjectionSound1990 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10832 (1 : Fin 4)) = canonicalInput14833.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3334 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3334 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14833 hH))).trans (reductionSound3334 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10832 (2 : Fin 4)) = canonicalInput14972.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2623 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2623 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14972 hH))).trans (oldProjectionSound2623 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10832 (3 : Fin 4)) = canonicalInput14975.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3116 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10832 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3116 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14975 hH))).trans (reductionSound3116 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7548).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10832 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7548).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10832 (j : Fin 4)))
      2 2880 2880 2 ![1440, 180, 360, 720] ![2, 16, 8, 4] reductionProjection10832 ![oldProjection1990, reductionProjection3334, oldProjection2623, reductionProjection3116]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10833 : Integer.Sparse (Fin 1613) := [(0, 33), (94, 45), (247, 80), (433, 720), (483, 720), (610, 720), (698, 720), (869, 720), (957, 720), (1055, -960), (1059, 80), (1219, -240), (1221, -240), (1226, 80), (1227, 880), (1251, -400), (1389, -480)]

def reductionPivot10833 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, -1, 0, 0, 1], ![-1, -1, -1, 1, 2], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, -1, 1, -1]]

theorem reductionSound10833 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7551).moment H =
      Integer.Sparse.eval reductionProjection10833 (momentVector H) := by
  have heq : reductionPivot10833 = (fun u v => (normalNode7551).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7551).moment H = injectiveMoment H reductionPivot10833 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7551).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10833 0 = Pi.single (4 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10833 4 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10833 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1709, oldProjection1819, reductionProjection3130, reductionProjection7289] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10833 (0 : Fin 4)) = canonicalInput12929.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1709 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12929 hH))).trans (oldProjectionSound1709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10833 (1 : Fin 4)) = canonicalInput14909.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1819 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1819 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14909 hH))).trans (oldProjectionSound1819 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10833 (2 : Fin 4)) = canonicalInput14997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3130 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3130 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14997 hH))).trans (reductionSound3130 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10833 (3 : Fin 4)) = canonicalInput14998.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7289 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10833 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14998 hH))).trans (reductionSound7289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7551).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10833 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7551).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10833 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 720] ![2, 2, 2, 4] reductionProjection10833 ![oldProjection1709, oldProjection1819, reductionProjection3130, reductionProjection7289]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10834 : Integer.Sparse (Fin 1613) := [(0, -18), (19, 4), (94, -37), (241, -16), (247, -16), (610, -288), (617, -144), (697, 96), (698, -736), (1016, -144), (1050, 48), (1055, 96), (1058, 96), (1059, -288), (1219, 48), (1221, 96), (1226, -96), (1227, -464), (1250, -12), (1251, 257), (1389, 96)]

def reductionPivot10834 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound10834 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode7554).moment H =
      Integer.Sparse.eval reductionProjection10834 (momentVector H) := by
  have heq : reductionPivot10834 = (fun u v => (normalNode7554).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7554).moment H = injectiveMoment H reductionPivot10834 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7554).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10834 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10834 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 576, 2880, 576] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10834 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1008, reductionProjection4918, reductionProjection5194, reductionProjection10308, reductionProjection5014] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10834 (0 : Fin 5)) = canonicalInput12937.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1008 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12937 hH))).trans (reductionSound1008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10834 (1 : Fin 5)) = canonicalInput14808.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4918 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14808 hH))).trans (reductionSound4918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10834 (2 : Fin 5)) = canonicalInput14912.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5194 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14912 hH))).trans (reductionSound5194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10834 (3 : Fin 5)) = canonicalInput14915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10308 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10308 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14915 hH))).trans (reductionSound10308 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10834 (4 : Fin 5)) = canonicalInput14917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5014 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10834 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5014 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14917 hH))).trans (reductionSound5014 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7554).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10834 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7554).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10834 (j : Fin 5)))
      1 576 2880 5 ![2880, 576, 576, 2880, 576] ![1, 5, 5, 1, 5] reductionProjection10834 ![reductionProjection1008, reductionProjection4918, reductionProjection5194, reductionProjection10308, reductionProjection5014]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10835 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 11), (698, 80), (1059, 16), (1227, 96), (1251, -66), (1389, -96)]

def reductionPivot10835 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, 0, -1, -1, 2], ![0, 1, 0, 0, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound10835 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode8652).moment H =
      Integer.Sparse.eval reductionProjection10835 (momentVector H) := by
  have heq : reductionPivot10835 = (fun u v => (normalNode8652).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8652).moment H = injectiveMoment H reductionPivot10835 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8652).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10835 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10835 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10835 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2588, oldProjection2783, oldProjection1825, oldProjection2449] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10835 (0 : Fin 4)) = canonicalInput17610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2588 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2588 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17610 hH))).trans (oldProjectionSound2588 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10835 (1 : Fin 4)) = canonicalInput16560.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2783 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16560 hH))).trans (oldProjectionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10835 (2 : Fin 4)) = canonicalInput16544.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1825 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1825 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16544 hH))).trans (oldProjectionSound1825 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10835 (3 : Fin 4)) = canonicalInput16543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10835 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16543 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8652).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10835 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8652).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10835 (j : Fin 4)))
      2 576 2880 10 ![1440, 720, 720, 1440] ![2, 4, 4, 2] reductionProjection10835 ![oldProjection2588, oldProjection2783, oldProjection1825, oldProjection2449]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10836 : Integer.Sparse (Fin 1613) := [(0, -13), (19, 4), (94, -38), (241, -16), (247, -16), (602, -144), (635, -144), (697, 96), (698, -544), (1027, -144), (1050, 48), (1055, 96), (1058, 96), (1059, -128), (1219, 48), (1226, -112), (1227, -352), (1250, -12), (1251, 231), (1389, 144)]

def reductionPivot10836 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -1, 0]]

theorem reductionSound10836 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode7555).moment H =
      Integer.Sparse.eval reductionProjection10836 (momentVector H) := by
  have heq : reductionPivot10836 = (fun u v => (normalNode7555).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7555).moment H = injectiveMoment H reductionPivot10836 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7555).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10836 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10836 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 576, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10836 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection1008, reductionProjection4913, reductionProjection5179, reductionProjection10835, reductionProjection5016] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10836 (0 : Fin 5)) = canonicalInput12938.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection1008 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection1008 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12938 hH))).trans (reductionSound1008 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10836 (1 : Fin 5)) = canonicalInput14809.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection4913 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection4913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14809 hH))).trans (reductionSound4913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10836 (2 : Fin 5)) = canonicalInput14913.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5179 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5179 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14913 hH))).trans (reductionSound5179 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10836 (3 : Fin 5)) = canonicalInput14916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10835 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10835 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14916 hH))).trans (reductionSound10835 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10836 (4 : Fin 5)) = canonicalInput14918.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5016 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10836 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5016 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14918 hH))).trans (reductionSound5016 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7555).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10836 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7555).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10836 (j : Fin 5)))
      1 576 2880 5 ![2880, 2880, 2880, 576, 2880] ![1, 1, 1, 5, 1] reductionProjection10836 ![reductionProjection1008, reductionProjection4913, reductionProjection5179, reductionProjection10835, reductionProjection5016]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10837 : Integer.Sparse (Fin 1613) := [(94, -3), (698, 80), (1059, 48), (1226, 16), (1227, 32), (1251, 1)]

def reductionPivot10837 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, 1, 0, 1], ![0, 0, 0, 2, -2], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound10837 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode9259).moment H =
      Integer.Sparse.eval reductionProjection10837 (momentVector H) := by
  have heq : reductionPivot10837 = (fun u v => (normalNode9259).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9259).moment H = injectiveMoment H reductionPivot10837 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9259).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10837 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10837 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1440, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10837 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2439, oldProjection2642, oldProjection2440, oldProjection2586] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10837 (0 : Fin 4)) = canonicalInput17851.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2439 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2439 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17851 hH))).trans (oldProjectionSound2439 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10837 (1 : Fin 4)) = canonicalInput17952.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17952 hH))).trans (oldProjectionSound2642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10837 (2 : Fin 4)) = canonicalInput17955.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2440 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2440 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17955 hH))).trans (oldProjectionSound2440 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10837 (3 : Fin 4)) = canonicalInput17956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10837 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17956 hH))).trans (oldProjectionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9259).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10837 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9259).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10837 (j : Fin 4)))
      2 576 2880 10 ![720, 1440, 1440, 1440] ![4, 2, 2, 2] reductionProjection10837 ![oldProjection2439, oldProjection2642, oldProjection2440, oldProjection2586]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10838 : Integer.Sparse (Fin 1613) := [(0, -7), (19, -20), (94, 20), (241, 80), (698, 320), (1055, -240), (1059, 80), (1227, 240), (1250, 60), (1251, -5)]

def reductionPivot10838 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 1, 0, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 0, 0, -1]]

theorem reductionSound10838 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9245).moment H =
      Integer.Sparse.eval reductionProjection10838 (momentVector H) := by
  have heq : reductionPivot10838 = (fun u v => (normalNode9245).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9245).moment H = injectiveMoment H reductionPivot10838 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9245).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10838 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10838 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 720, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10838 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2586, oldProjection2783, oldProjection2821, oldProjection1747] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10838 (0 : Fin 4)) = canonicalInput18457.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2586 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2586 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18457 hH))).trans (oldProjectionSound2586 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10838 (1 : Fin 4)) = canonicalInput17948.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2783 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17948 hH))).trans (oldProjectionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10838 (2 : Fin 4)) = canonicalInput17942.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2821 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17942 hH))).trans (oldProjectionSound2821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10838 (3 : Fin 4)) = canonicalInput17941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1747 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10838 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1747 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17941 hH))).trans (oldProjectionSound1747 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9245).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10838 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9245).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10838 (j : Fin 4)))
      2 2880 2880 2 ![1440, 720, 1440, 1440] ![2, 4, 2, 2] reductionProjection10838 ![oldProjection2586, oldProjection2783, oldProjection2821, oldProjection1747]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10839 : Integer.Sparse (Fin 1613) := [(0, 6), (94, 15), (698, 560), (1059, 320), (1221, -240), (1226, 80), (1227, 320), (1251, -155)]

def reductionPivot10839 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 1, 1], ![0, 0, 0, -2, 2], ![0, 1, -1, 1, -1], ![1, 0, 1, -1, -1]]

theorem reductionSound10839 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8716).moment H =
      Integer.Sparse.eval reductionProjection10839 (momentVector H) := by
  have heq : reductionPivot10839 = (fun u v => (normalNode8716).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8716).moment H = injectiveMoment H reductionPivot10839 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8716).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10839 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10839 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 144, 18, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10839 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1786, reductionProjection5152, reductionProjection3829, oldProjection1786] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10839 (0 : Fin 4)) = canonicalInput17619.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound17619 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10839 (1 : Fin 4)) = canonicalInput16600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5152 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5152 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16600 hH))).trans (reductionSound5152 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10839 (2 : Fin 4)) = canonicalInput16584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3829 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16584 hH))).trans (reductionSound3829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10839 (3 : Fin 4)) = canonicalInput16583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1786 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10839 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1786 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16583 hH))).trans (oldProjectionSound1786 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8716).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10839 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8716).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10839 (j : Fin 4)))
      2 1440 1440 2 ![1440, 144, 18, 1440] ![1, 10, 80, 1] reductionProjection10839 ![oldProjection1786, reductionProjection5152, reductionProjection3829, oldProjection1786]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10840 : Integer.Sparse (Fin 1613) := [(0, -3), (19, 16), (94, -29), (241, -80), (697, 48), (698, -560), (1050, 96), (1055, 144), (1058, 48), (1059, -272), (1221, 96), (1226, -48), (1227, -256), (1250, -48), (1251, 122)]

def reductionPivot10840 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, -1, 1, 2], ![0, 0, 1, -1, 0], ![0, 1, -1, 0, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound10840 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode7556).moment H =
      Integer.Sparse.eval reductionProjection10840 (momentVector H) := by
  have heq : reductionPivot10840 = (fun u v => (normalNode7556).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7556).moment H = injectiveMoment H reductionPivot10840 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7556).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10840 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10840 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 576, 2880, 144, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10840 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection999, reductionProjection10837, reductionProjection10838, oldProjection2780, reductionProjection10839] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10840 (0 : Fin 5)) = canonicalInput12939.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection999 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection999 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12939 hH))).trans (reductionSound999 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10840 (1 : Fin 5)) = canonicalInput14810.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10837 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10837 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14810 hH))).trans (reductionSound10837 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10840 (2 : Fin 5)) = canonicalInput14914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10838 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10838 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14914 hH))).trans (reductionSound10838 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10840 (3 : Fin 5)) = canonicalInput14921.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2780 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2780 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14921 hH))).trans (oldProjectionSound2780 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10840 (4 : Fin 5)) = canonicalInput14922.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10839 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10840 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14922 hH))).trans (reductionSound10839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7556).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10840 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7556).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10840 (j : Fin 5)))
      1 576 2880 5 ![288, 576, 2880, 144, 1440] ![10, 5, 1, 20, 2] reductionProjection10840 ![reductionProjection999, reductionProjection10837, reductionProjection10838, oldProjection2780, reductionProjection10839]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10841 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 40), (241, 160), (243, 80), (508, 720), (578, 720), (674, 720), (697, -240), (698, 720), (700, 80), (1050, -480), (1058, -480), (1059, 560), (1226, 80), (1227, 160), (1251, -225)]

def reductionPivot10841 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, -1, 1, 2], ![0, 0, 0, -2, 2], ![0, 0, 2, 0, -2], ![1, 1, -1, 0, -1]]

theorem reductionSound10841 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7599).moment H =
      Integer.Sparse.eval reductionProjection10841 (momentVector H) := by
  have heq : reductionPivot10841 = (fun u v => (normalNode7599).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7599).moment H = injectiveMoment H reductionPivot10841 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7599).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot10841 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10841 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![180, 720, 1440, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10841 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1843, oldProjection2778, oldProjection2061, reductionProjection1628] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10841 (0 : Fin 4)) = canonicalInput15030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((180 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1843 (momentVector H)
      have hh : (180 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (180 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15030 hH))).trans (oldProjectionSound1843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10841 (1 : Fin 4)) = canonicalInput14867.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2778 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14867 hH))).trans (oldProjectionSound2778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10841 (2 : Fin 4)) = canonicalInput14860.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2061 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2061 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14860 hH))).trans (oldProjectionSound2061 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10841 (3 : Fin 4)) = canonicalInput14859.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1628 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10841 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1628 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14859 hH))).trans (reductionSound1628 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7599).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10841 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7599).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10841 (j : Fin 4)))
      2 2880 2880 2 ![180, 720, 1440, 720] ![16, 4, 2, 4] reductionProjection10841 ![oldProjection1843, oldProjection2778, oldProjection2061, reductionProjection1628]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10842 : Integer.Sparse (Fin 1613) := [(0, 17), (94, 20), (602, 360), (698, 520), (1059, 200), (1221, -120), (1226, 120), (1227, 320), (1251, -225), (1389, -120)]

def reductionPivot10842 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, -1, 1, 2], ![0, 0, 1, -2, 1], ![0, 0, 1, 0, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound10842 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7618).moment H =
      Integer.Sparse.eval reductionProjection10842 (momentVector H) := by
  have heq : reductionPivot10842 = (fun u v => (normalNode7618).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7618).moment H = injectiveMoment H reductionPivot10842 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7618).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10842 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10842 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 360, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10842 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2637, oldProjection2639, oldProjection1829, reductionProjection9198] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10842 (0 : Fin 4)) = canonicalInput15031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2637 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2637 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15031 hH))).trans (oldProjectionSound2637 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10842 (1 : Fin 4)) = canonicalInput14919.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2639 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14919 hH))).trans (oldProjectionSound2639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10842 (2 : Fin 4)) = canonicalInput14900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1829 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14900 hH))).trans (oldProjectionSound1829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10842 (3 : Fin 4)) = canonicalInput14899.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9198 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10842 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14899 hH))).trans (reductionSound9198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7618).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10842 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7618).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10842 (j : Fin 4)))
      2 1440 1440 2 ![1440, 1440, 360, 720] ![1, 1, 4, 2] reductionProjection10842 ![oldProjection2637, oldProjection2639, oldProjection1829, reductionProjection9198]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10843 : Integer.Sparse (Fin 1613) := [(0, 11), (94, 10), (698, 240), (1059, 160), (1221, -120), (1226, 80), (1227, 160), (1251, -25)]

def reductionPivot10843 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, -1, 1], ![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 2, -1, -1], ![1, 1, -1, 0, -1]]

theorem reductionSound10843 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7609).moment H =
      Integer.Sparse.eval reductionProjection10843 (momentVector H) := by
  have heq : reductionPivot10843 = (fun u v => (normalNode7609).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7609).moment H = injectiveMoment H reductionPivot10843 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7609).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10843 0 = Pi.single (4 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10843 4 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 480, 720, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10843 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2542, oldProjection709, reductionProjection3630, reductionProjection3087] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10843 (0 : Fin 4)) = canonicalInput14744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2542 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2542 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14744 hH))).trans (oldProjectionSound2542 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10843 (1 : Fin 4)) = canonicalInput14870.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((480 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection709 (momentVector H)
      have hh : (480 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection709 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (480 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14870 hH))).trans (oldProjectionSound709 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10843 (2 : Fin 4)) = canonicalInput14881.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3630 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3630 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14881 hH))).trans (reductionSound3630 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10843 (3 : Fin 4)) = canonicalInput14883.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3087 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10843 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3087 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14883 hH))).trans (reductionSound3087 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7609).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10843 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7609).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10843 (j : Fin 4)))
      2 1440 1440 2 ![720, 480, 720, 1440] ![2, 3, 2, 1] reductionProjection10843 ![oldProjection2542, oldProjection709, reductionProjection3630, reductionProjection3087]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10844 : Integer.Sparse (Fin 1613) := [(0, -15), (94, -24), (241, -32), (243, -16), (508, -144), (578, -144), (602, -1008), (635, -288), (636, -288), (674, -144), (697, 48), (698, -736), (700, -16), (1026, -288), (1027, -576), (1050, 96), (1058, 96), (1059, -384), (1221, 192), (1226, -160), (1227, -352), (1251, 247), (1389, 144)]

def reductionPivot10844 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 0, 1, 0], ![-1, -1, -1, 1, 2], ![0, 0, 1, 0, -1], ![0, 0, 1, 0, -1], ![0, 2, -1, 0, -1], ![1, 0, 0, -2, 1]]

theorem reductionSound10844 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode7557).moment H =
      Integer.Sparse.eval reductionProjection10844 (momentVector H) := by
  have heq : reductionPivot10844 = (fun u v => (normalNode7557).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7557).moment H = injectiveMoment H reductionPivot10844 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7557).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10844 0 = Pi.single (3 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10844 3 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 2880, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10844 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection10841, reductionProjection7284, reductionProjection7284, reductionProjection10842, reductionProjection10843] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10844 (0 : Fin 5)) = canonicalInput12941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10841 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound12941 hH))).trans (reductionSound10841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10844 (1 : Fin 5)) = (normalNode7572).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7284 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound7284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10844 (2 : Fin 5)) = canonicalInput14931.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7284 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7284 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14931 hH))).trans (reductionSound7284 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10844 (3 : Fin 5)) = canonicalInput14933.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10842 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10842 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14933 hH))).trans (reductionSound10842 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10844 (4 : Fin 5)) = canonicalInput14934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10843 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10844 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14934 hH))).trans (reductionSound10843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7557).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10844 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7557).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10844 (j : Fin 5)))
      1 576 2880 5 ![2880, 2880, 2880, 1440, 1440] ![1, 1, 1, 2, 2] reductionProjection10844 ![reductionProjection10841, reductionProjection7284, reductionProjection7284, reductionProjection10842, reductionProjection10843]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10845 : Integer.Sparse (Fin 1613) := [(0, 7), (94, 35), (698, 80), (1059, 40), (1227, 80), (1251, -80)]

def reductionPivot10845 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 0, 0, 2], ![0, 0, 1, 0, -1], ![0, 1, -1, -1, 1], ![1, 0, 0, 0, -1]]

theorem reductionSound10845 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode8421).moment H =
      Integer.Sparse.eval reductionProjection10845 (momentVector H) := by
  have heq : reductionPivot10845 = (fun u v => (normalNode8421).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8421).moment H = injectiveMoment H reductionPivot10845 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8421).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10845 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10845 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 90, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10845 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2642, oldProjection2448, oldProjection1048, oldProjection2449] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10845 (0 : Fin 4)) = canonicalInput16681.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2642 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2642 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16681 hH))).trans (oldProjectionSound2642 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10845 (1 : Fin 4)) = canonicalInput16090.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection2448 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection2448 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16090 hH))).trans (oldProjectionSound2448 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10845 (2 : Fin 4)) = canonicalInput16072.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((90 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1048 (momentVector H)
      have hh : (90 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1048 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (90 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16072 hH))).trans (oldProjectionSound1048 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10845 (3 : Fin 4)) = canonicalInput16071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2449 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10845 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2449 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound16071 hH))).trans (oldProjectionSound2449 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8421).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10845 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8421).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10845 (j : Fin 4)))
      2 1440 1440 2 ![1440, 288, 90, 1440] ![1, 5, 16, 1] reductionProjection10845 ![oldProjection2642, oldProjection2448, oldProjection1048, oldProjection2449]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10846 : Integer.Sparse (Fin 1613) := [(0, -99), (94, -170), (602, -1440), (610, -720), (617, -720), (698, -4080), (890, -720), (1059, -1360), (1221, 480), (1226, -960), (1227, -2160), (1251, 1305), (1389, 240)]

def reductionPivot10846 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, -1, 1, 0, 0], ![-1, -1, -1, 1, 2], ![0, 0, 0, 1, -1], ![0, 0, 1, -1, 0], ![0, 2, -1, -1, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound10846 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode7559).moment H =
      Integer.Sparse.eval reductionProjection10846 (momentVector H) := by
  have heq : reductionPivot10846 = (fun u v => (normalNode7559).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7559).moment H = injectiveMoment H reductionPivot10846 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7559).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot10846 0 = Pi.single (2 : Fin 5) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot10846 2 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 576, 288, 1440, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10846 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3265, reductionProjection5194, reductionProjection5198, reductionProjection10845, reductionProjection5190] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10846 (0 : Fin 5)) = canonicalInput13181.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3265 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3265 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13181 hH))).trans (reductionSound3265 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10846 (1 : Fin 5)) = canonicalInput14813.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5194 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5194 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14813 hH))).trans (reductionSound5194 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10846 (2 : Fin 5)) = canonicalInput14873.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5198 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5198 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14873 hH))).trans (reductionSound5198 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10846 (3 : Fin 5)) = canonicalInput14876.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection10845 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection10845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14876 hH))).trans (reductionSound10845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10846 (4 : Fin 5)) = canonicalInput14878.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5190 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10846 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5190 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14878 hH))).trans (reductionSound5190 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode7559).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10846 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7559).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot10846 (j : Fin 5)))
      1 2880 2880 1 ![1440, 576, 288, 1440, 2880] ![2, 5, 10, 2, 1] reductionProjection10846 ![reductionProjection3265, reductionProjection5194, reductionProjection5198, reductionProjection10845, reductionProjection5190]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection10847 : Integer.Sparse (Fin 1613) := [(0, 53), (81, -240), (94, 40), (698, 1040), (1059, 240), (1221, -240), (1226, 240), (1227, 640), (1251, -285), (1389, -240)]

def reductionPivot10847 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, 0, -1, 0, 2], ![0, 0, 2, -1, -1], ![0, 1, -1, 1, -1], ![1, -1, 0, -1, 1]]

theorem reductionSound10847 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode10130).moment H =
      Integer.Sparse.eval reductionProjection10847 (momentVector H) := by
  have heq : reductionPivot10847 = (fun u v => (normalNode10130).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10130).moment H = injectiveMoment H reductionPivot10847 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10130).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot10847 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot10847 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 1440, 288] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10847 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection2071, oldProjection1785, oldProjection1831, oldProjection2744] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot10847 (0 : Fin 4)) = canonicalInput20050.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection2071 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection2071 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound20050 hH))).trans (oldProjectionSound2071 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10847 (1 : Fin 4)) = canonicalInput19956.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1785 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19956 hH))).trans (oldProjectionSound1785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10847 (2 : Fin 4)) = canonicalInput19947.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1831 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19947 hH))).trans (oldProjectionSound1831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot10847 (3 : Fin 4)) = canonicalInput19946.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2744 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot10847 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2744 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19946 hH))).trans (oldProjectionSound2744 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10130).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10847 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10130).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot10847 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 1440, 288] ![2, 2, 2, 10] reductionProjection10847 ![oldProjection2071, oldProjection1785, oldProjection1831, oldProjection2744]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
