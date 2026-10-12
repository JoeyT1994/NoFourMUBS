import NoFourMUBs.Step2.SOS.Canonical000
import NoFourMUBs.Step2.SOS.Canonical010
import NoFourMUBs.Step2.SOS.Canonical012
import NoFourMUBs.Step2.SOS.Canonical015
import NoFourMUBs.Step2.SOS.Canonical104
import NoFourMUBs.Step2.SOS.Canonical182
import NoFourMUBs.Step2.SOS.Canonical193
import NoFourMUBs.Step2.SOS.Canonical195
import NoFourMUBs.Step2.SOS.Canonical196
import NoFourMUBs.Step2.SOS.Canonical197
import NoFourMUBs.Step2.SOS.Canonical198
import NoFourMUBs.Step2.SOS.Canonical199
import NoFourMUBs.Step2.SOS.Canonical213
import NoFourMUBs.Step2.SOS.Canonical214
import NoFourMUBs.Step2.SOS.Canonical217
import NoFourMUBs.Step2.SOS.Canonical219
import NoFourMUBs.Step2.SOS.Canonical240
import NoFourMUBs.Step2.SOS.Canonical372
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes20
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes001
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes024
import NoFourMUBs.Step2.SOS.NormalizationNodes026
import NoFourMUBs.Step2.SOS.NormalizationNodes027
import NoFourMUBs.Step2.SOS.NormalizationNodes030
import NoFourMUBs.Step2.SOS.OldProjections001
import NoFourMUBs.Step2.SOS.OldProjections002
import NoFourMUBs.Step2.SOS.OldProjections007
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections011
import NoFourMUBs.Step2.SOS.OldProjections012
import NoFourMUBs.Step2.SOS.OldProjections013
import NoFourMUBs.Step2.SOS.OldProjections014
import NoFourMUBs.Step2.SOS.OldProjections015
import NoFourMUBs.Step2.SOS.OldProjections016
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections024
import NoFourMUBs.Step2.SOS.OldProjections028
import NoFourMUBs.Step2.SOS.OldProjections029
import NoFourMUBs.Step2.SOS.OldProjections037
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions001
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions011
import NoFourMUBs.Step2.SOS.Reductions016
import NoFourMUBs.Step2.SOS.Reductions017
import NoFourMUBs.Step2.SOS.Reductions026
import NoFourMUBs.Step2.SOS.Reductions032
import NoFourMUBs.Step2.SOS.Reductions034
import NoFourMUBs.Step2.SOS.Reductions036
import NoFourMUBs.Step2.SOS.Reductions037
import NoFourMUBs.Step2.SOS.Reductions041
import NoFourMUBs.Step2.SOS.Reductions043
import NoFourMUBs.Step2.SOS.Reductions045
import NoFourMUBs.Step2.SOS.Reductions047
import NoFourMUBs.Step2.SOS.Reductions048
import NoFourMUBs.Step2.SOS.Reductions104
import NoFourMUBs.Step2.SOS.Reductions106
import NoFourMUBs.Step2.SOS.Reductions116
import NoFourMUBs.Step2.SOS.Reductions128
import NoFourMUBs.Step2.SOS.Reductions134
import NoFourMUBs.Step2.SOS.Reductions135
import NoFourMUBs.Step2.SOS.Reductions136
import NoFourMUBs.Step2.SOS.Reductions143
import NoFourMUBs.Step2.SOS.Reductions168
import NoFourMUBs.Step2.SOS.Reductions173
import NoFourMUBs.Step2.SOS.Reductions175
import NoFourMUBs.Step2.SOS.Reductions182
import NoFourMUBs.Step2.SOS.Reductions183
import NoFourMUBs.Step2.SOS.Reductions243
import NoFourMUBs.Step2.SOS.Reductions261
import NoFourMUBs.Step2.SOS.Reductions296
import NoFourMUBs.Step2.SOS.Reductions307
import NoFourMUBs.Step2.SOS.Reductions308
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical175
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical177
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical178
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes11
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes14
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes15
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection9888 : Integer.Sparse (Fin 1613) := [(0, 1), (42, -160), (77, 240), (79, 240), (88, -80), (90, -320), (91, -80), (94, -5), (243, -80), (698, -400), (700, -480), (701, -80), (1052, 240), (1059, -160), (1226, -160), (1251, 30)]

def reductionPivot9888 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 1, 3], ![0, 0, 2, -2], ![0, 1, 0, -1], ![1, 1, -3, 1]]

theorem reductionSound9888 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6118).moment H =
      Integer.Sparse.eval reductionProjection9888 (momentVector H) := by
  have heq : reductionPivot9888 = (fun u v => (normalNode6118).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6118).moment H = injectiveMoment H reductionPivot9888 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6118).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9888 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9888 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 3, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9888 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection839, reductionProjection9824, reductionProjection1041, reductionProjection4309] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9888 (0 : Fin 4)) = canonicalInput13898.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection839 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13898 hH))).trans (oldProjectionSound839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9888 (1 : Fin 4)) = canonicalInput12564.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9824 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9824 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12564 hH))).trans (reductionSound9824 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9888 (2 : Fin 4)) = (normalNode6122).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1041 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9888 (3 : Fin 4)) = canonicalInput12525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4309 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9888 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12525 hH))).trans (reductionSound4309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6118).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9888 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6118).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9888 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 3, 9] ![2, 160, 480, 160] reductionProjection9888 ![oldProjection839, reductionProjection9824, reductionProjection1041, reductionProjection4309]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9889 : Integer.Sparse (Fin 1613) := [(0, 1), (19, -60), (20, 10), (42, 320), (77, -240), (79, -240), (87, -480), (88, 560), (89, -480), (90, 960), (91, 240), (94, -5), (241, 160), (243, 960), (698, 2080), (700, 720), (701, 80), (704, 320), (1052, -240), (1059, 160), (1219, -480), (1226, 1600), (1227, 640), (1251, -160)]

def reductionPivot9889 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![0, 1, 0, -1], ![1, 1, -3, 1]]

theorem reductionSound9889 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6104).moment H =
      Integer.Sparse.eval reductionProjection9889 (momentVector H) := by
  have heq : reductionPivot9889 = (fun u v => (normalNode6104).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6104).moment H = injectiveMoment H reductionPivot9889 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6104).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9889 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9889 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![288, 1440, 1440, 1440, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9889 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9887, reductionProjection9888, reductionProjection9831, reductionProjection9831, oldProjection2836] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9889 (0 : Fin 5)) = canonicalInput12725.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9887 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9887 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12725 hH))).trans (reductionSound9887 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9889 (1 : Fin 5)) = (normalNode6118).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9888 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9888 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9888 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9889 (2 : Fin 5)) = canonicalInput12515.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9831 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12515 hH))).trans (reductionSound9831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9889 (3 : Fin 5)) = (normalNode6111).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9831 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9831 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9831 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9889 (4 : Fin 5)) = canonicalInput12512.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2836 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9889 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12512 hH))).trans (oldProjectionSound2836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6104).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9889 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6104).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9889 (j : Fin 5)))
      1 1440 1440 1 ![288, 1440, 1440, 1440, 1440] ![5, 1, 1, 1, 1] reductionProjection9889 ![reductionProjection9887, reductionProjection9888, reductionProjection9831, reductionProjection9831, oldProjection2836]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9890 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 40), (20, -10), (42, -160), (90, -160), (94, -20), (243, -160), (698, -400), (700, -400), (701, -80), (704, -160), (1059, -80), (1226, -160), (1251, -5)]

def reductionPivot9890 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound9890 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6105).moment H =
      Integer.Sparse.eval reductionProjection9890 (momentVector H) := by
  have heq : reductionPivot9890 = (fun u v => (normalNode6105).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6105).moment H = injectiveMoment H reductionPivot9890 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6105).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9890 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9890 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 9, 72, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9890 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1046, reductionProjection4309, reductionProjection4355, oldProjection968] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9890 (0 : Fin 4)) = canonicalInput12729.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12729 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9890 (1 : Fin 4)) = canonicalInput12525.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4309 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4309 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12525 hH))).trans (reductionSound4309 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9890 (2 : Fin 4)) = canonicalInput12516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4355 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4355 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12516 hH))).trans (reductionSound4355 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9890 (3 : Fin 4)) = canonicalInput12514.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection968 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9890 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection968 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12514 hH))).trans (oldProjectionSound968 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6105).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9890 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6105).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9890 (j : Fin 4)))
      2 1440 1440 2 ![720, 9, 72, 720] ![2, 160, 20, 2] reductionProjection9890 ![oldProjection1046, reductionProjection4309, reductionProjection4355, oldProjection968]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9891 : Integer.Sparse (Fin 1613) := [(19, 8), (20, -2), (42, -32), (60, -32), (94, -1), (243, -32), (700, -80), (701, -16), (704, -32), (1251, -3)]

def reductionPivot9891 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 3, -3, 0], ![1, 0, 0, -1]]

theorem reductionSound9891 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6108).moment H =
      Integer.Sparse.eval reductionProjection9891 (momentVector H) := by
  have heq : reductionPivot9891 = (fun u v => (normalNode6108).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6108).moment H = injectiveMoment H reductionPivot9891 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6108).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9891 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9891 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9891 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1062, reductionProjection4333, oldProjection977, reductionProjection843] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9891 (0 : Fin 4)) = canonicalInput12733.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12733 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9891 (1 : Fin 4)) = canonicalInput12526.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4333 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4333 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12526 hH))).trans (reductionSound4333 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9891 (2 : Fin 4)) = canonicalInput12521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection977 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12521 hH))).trans (oldProjectionSound977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9891 (3 : Fin 4)) = canonicalInput12520.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection843 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9891 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12520 hH))).trans (reductionSound843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6108).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9891 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6108).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9891 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 144] ![2, 32, 2, 2] reductionProjection9891 ![oldProjection1062, reductionProjection4333, oldProjection977, reductionProjection843]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9892 : Integer.Sparse (Fin 1613) := [(19, 16), (20, -4), (94, 5), (700, -16), (701, -16), (704, -32), (1251, 5)]

def reductionPivot9892 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 1, 3], ![0, 0, 1, -1], ![0, 3, -2, -1], ![1, 0, -1, 0]]

theorem reductionSound9892 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6109).moment H =
      Integer.Sparse.eval reductionProjection9892 (momentVector H) := by
  have heq : reductionPivot9892 = (fun u v => (normalNode6109).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6109).moment H = injectiveMoment H reductionPivot9892 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6109).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9892 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9892 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 72, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9892 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1025, reductionProjection1312, reductionProjection7777, oldProjection977] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9892 (0 : Fin 4)) = canonicalInput12734.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1025 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1025 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12734 hH))).trans (reductionSound1025 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9892 (1 : Fin 4)) = canonicalInput12527.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1312 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1312 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12527 hH))).trans (reductionSound1312 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9892 (2 : Fin 4)) = canonicalInput12522.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection7777 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection7777 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12522 hH))).trans (reductionSound7777 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9892 (3 : Fin 4)) = canonicalInput12521.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection977 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9892 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12521 hH))).trans (oldProjectionSound977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6109).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9892 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6109).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9892 (j : Fin 4)))
      2 288 288 2 ![144, 72, 72, 144] ![2, 4, 4, 2] reductionProjection9892 ![reductionProjection1025, reductionProjection1312, reductionProjection7777, oldProjection977]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9893 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 10), (42, -40), (90, -40), (94, -5), (241, -40), (243, -120), (698, -280), (700, -80), (704, -80), (1226, -120), (1227, -80), (1251, 15)]

def reductionPivot9893 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, 1, -2], ![1, 1, -2, 0]]

theorem reductionSound9893 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6110).moment H =
      Integer.Sparse.eval reductionProjection9893 (momentVector H) := by
  have heq : reductionPivot9893 = (fun u v => (normalNode6110).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6110).moment H = injectiveMoment H reductionPivot9893 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6110).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9893 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9893 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 144, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9893 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection827, oldProjection800, reductionProjection161, oldProjection933] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9893 (0 : Fin 4)) = canonicalInput12753.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection827 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection827 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12753 hH))).trans (oldProjectionSound827 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9893 (1 : Fin 4)) = canonicalInput12553.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection800 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection800 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12553 hH))).trans (oldProjectionSound800 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9893 (2 : Fin 4)) = canonicalInput12546.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection161 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection161 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12546 hH))).trans (reductionSound161 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9893 (3 : Fin 4)) = canonicalInput12543.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection933 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9893 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection933 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12543 hH))).trans (oldProjectionSound933 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6110).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9893 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6110).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9893 (j : Fin 4)))
      2 720 720 2 ![720, 720, 144, 720] ![1, 1, 5, 1] reductionProjection9893 ![oldProjection827, oldProjection800, reductionProjection161, oldProjection933]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9894 : Integer.Sparse (Fin 1613) := [(42, 1), (60, 1), (243, 1), (698, 1), (700, 4), (1059, 1)]

def reductionPivot9894 : Matrix (Fin 4) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -2, 0, 3], ![0, 0, 3, -3], ![1, 2, -2, -1]]

theorem reductionSound9894 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6751).moment H =
      Integer.Sparse.eval reductionProjection9894 (momentVector H) := by
  have heq : reductionPivot9894 = (fun u v => (normalNode6751).entries (OAI.MUB6.Certificate.PairSemantics.permutation15 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6751).moment H = injectiveMoment H reductionPivot9894 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6751).entries OAI.MUB6.Certificate.PairSemantics.permutation15)).symm
  have hshape : reductionPivot9894 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9894 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9894 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection81, oldProjection177, oldProjection93] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9894 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5619 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9894 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection81 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9894 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection81 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5619 hH))).trans (oldProjectionSound81 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9894 (1 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5695 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9894 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection177 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9894 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5695 hH))).trans (oldProjectionSound177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9894 (2 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw5699 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9894 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection93 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9894 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection93 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5699 hH))).trans (oldProjectionSound93 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6751).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9894 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6751).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9894 (j : Fin 3)))
      3 9 9 3 ![3, 3, 3] ![3, 3, 3] reductionProjection9894 ![oldProjection81, oldProjection177, oldProjection93]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9895 : Integer.Sparse (Fin 1613) := [(0, 3), (20, -5), (42, -160), (60, -160), (94, 40), (243, -240), (698, -240), (700, -880), (1059, -240), (1251, 10)]

def reductionPivot9895 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -3, 1, 3], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 2, -3]]

theorem reductionSound9895 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6128).moment H =
      Integer.Sparse.eval reductionProjection9895 (momentVector H) := by
  have heq : reductionPivot9895 = (fun u v => (normalNode6128).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6128).moment H = injectiveMoment H reductionPivot9895 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6128).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9895 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9895 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![360, 9, 9, 720] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9895 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1041, reductionProjection9894, reductionProjection9894, oldProjection960] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9895 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5707 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1041 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1041 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5707 hH))).trans (oldProjectionSound1041 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9895 (1 : Fin 4)) = canonicalInput12568.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9894 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12568 hH))).trans (reductionSound9894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9895 (2 : Fin 4)) = canonicalInput12547.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9894 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9894 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12547 hH))).trans (reductionSound9894 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9895 (3 : Fin 4)) = canonicalInput12539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9895 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12539 hH))).trans (oldProjectionSound960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6128).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9895 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6128).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9895 (j : Fin 4)))
      2 1440 1440 2 ![360, 9, 9, 720] ![4, 160, 160, 2] reductionProjection9895 ![oldProjection1041, reductionProjection9894, reductionProjection9894, oldProjection960]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9896 : Integer.Sparse (Fin 1613) := [(1285, 1)]

theorem reductionSound9896 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1285).moment H =
      Integer.Sparse.eval reductionProjection9896 (momentVector H) := by
  have hc : coordinates (1285 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1285) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection9896, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection9897 : Integer.Sparse (Fin 1613) := [(88, 2), (90, 1), (91, 1), (231, -3), (243, 1), (1226, 1)]

def reductionPivot9897 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-2, 1, 2, -1], ![1, 2, -4, 1], ![2, -3, 2, -1]]

theorem reductionSound9897 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode7079).moment H =
      Integer.Sparse.eval reductionProjection9897 (momentVector H) := by
  have heq : reductionPivot9897 = (fun u v => (normalNode7079).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7079).moment H = injectiveMoment H reductionPivot9897 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode7079).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode7079).entries)).symm
  have hshape : reductionPivot9897 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9897 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![3, 1, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9897 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection54, oldProjection136, oldProjection106] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9897 (0 : Fin 3)) = canonicalInput775.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9897 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection54 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9897 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection54 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound775 hH))).trans (reductionSound54 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9897 (1 : Fin 3)) = canonicalInput11671.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9897 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection136 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9897 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection136 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11671 hH))).trans (oldProjectionSound136 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9897 (2 : Fin 3)) = canonicalInput11690.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9897 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection106 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9897 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection106 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound11690 hH))).trans (oldProjectionSound106 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode7079).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9897 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7079).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9897 (j : Fin 3)))
      3 9 9 3 ![3, 1, 3] ![3, 9, 3] reductionProjection9897 ![reductionProjection54, oldProjection136, oldProjection106]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9898 : Integer.Sparse (Fin 1613) := [(76, 3), (81, 3), (88, -3), (90, -4), (91, -1), (231, 3), (243, -1), (698, -3), (1226, -5), (1227, -1), (1285, -9)]

def reductionPivot9898 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -2, 2], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9898 {H : CMatrix} (hH : IsHadamard H) :
    (18 : ℝ) * (normalNode6146).moment H =
      Integer.Sparse.eval reductionProjection9898 (momentVector H) := by
  have heq : reductionPivot9898 = (fun u v => (normalNode6146).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6146).moment H = injectiveMoment H reductionPivot9898 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6146).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9898 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9898 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![9, 9, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9898 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection851, reductionProjection361, reductionProjection9896, reductionProjection9897] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9898 (0 : Fin 4)) = canonicalInput14030.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection851 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14030 hH))).trans (oldProjectionSound851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9898 (1 : Fin 4)) = canonicalInput12631.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection361 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection361 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12631 hH))).trans (reductionSound361 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9898 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1285).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9896 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9898 (3 : Fin 4)) = canonicalInput12592.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9897 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9898 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9897 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12592 hH))).trans (reductionSound9897 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6146).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9898 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6146).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9898 (j : Fin 4)))
      2 18 18 2 ![9, 9, 1, 9] ![2, 2, 18, 2] reductionProjection9898 ![oldProjection851, reductionProjection361, reductionProjection9896, reductionProjection9897]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9899 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 480), (81, 240), (94, -15), (231, 240), (698, -80), (800, -720), (1246, -720), (1251, -20), (1323, 240)]

def reductionPivot9899 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -3, 2, 2], ![-1, 0, -1, 2], ![0, 2, -1, -1], ![1, 1, 1, -3]]

theorem reductionSound9899 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6137).moment H =
      Integer.Sparse.eval reductionProjection9899 (momentVector H) := by
  have heq : reductionPivot9899 = (fun u v => (normalNode6137).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6137).moment H = injectiveMoment H reductionPivot9899 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6137).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9899 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9899 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 3, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9899 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection948, reductionProjection3737, reductionProjection8369, oldProjection597] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9899 (0 : Fin 4)) = canonicalInput23848.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection948 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection948 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23848 hH))).trans (oldProjectionSound948 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9899 (1 : Fin 4)) = (normalNode6220).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3737 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3737 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound3737 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9899 (2 : Fin 4)) = canonicalInput12586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12586 hH))).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9899 (3 : Fin 4)) = canonicalInput12583.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection597 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9899 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection597 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12583 hH))).trans (oldProjectionSound597 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6137).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9899 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6137).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9899 (j : Fin 4)))
      2 1440 1440 2 ![720, 3, 1, 1] ![2, 480, 1440, 1440] reductionProjection9899 ![oldProjection948, reductionProjection3737, reductionProjection8369, oldProjection597]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9900 : Integer.Sparse (Fin 1613) := [(565, -1), (596, -1), (627, -1), (1246, -1)]

def reductionPivot9900 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 0, -1, 2], ![1, 1, -2, 0], ![1, 1, 1, -3]]

theorem reductionSound9900 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6136).moment H =
      Integer.Sparse.eval reductionProjection9900 (momentVector H) := by
  have heq : reductionPivot9900 = (fun u v => (normalNode6136).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6136).moment H = injectiveMoment H reductionPivot9900 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6136).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9900 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9900 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9900 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection505, oldProjection509, reductionProjection8369, reductionProjection5841] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9900 (0 : Fin 4)) = canonicalInput14028.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection505 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection505 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14028 hH))).trans (oldProjectionSound505 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9900 (1 : Fin 4)) = canonicalInput12611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12611 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9900 (2 : Fin 4)) = canonicalInput12586.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection8369 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection8369 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12586 hH))).trans (reductionSound8369 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9900 (3 : Fin 4)) = canonicalInput12585.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5841 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9900 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5841 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12585 hH))).trans (reductionSound5841 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6136).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9900 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6136).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9900 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9900 ![oldProjection505, oldProjection509, reductionProjection8369, reductionProjection5841]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9901 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -12), (20, 1), (76, -144), (81, -96), (88, 48), (90, 64), (91, 16), (94, 14), (231, -96), (241, 48), (242, -48), (243, 80), (244, 16), (247, 16), (549, 144), (565, 144), (596, 144), (627, 144), (697, -48), (698, 192), (700, 32), (800, 144), (1059, 16), (1226, 128), (1227, 32), (1246, 288), (1248, 144), (1251, -6), (1285, 144), (1323, -96)]

def reductionPivot9901 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -3, 2, 2], ![-1, 0, -1, 2], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9901 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6135).moment H =
      Integer.Sparse.eval reductionProjection9901 (momentVector H) := by
  have heq : reductionPivot9901 = (fun u v => (normalNode6135).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6135).moment H = injectiveMoment H reductionPivot9901 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6135).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9901 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9901 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 1440, 2, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9901 (j : Fin 5))) j =
        Integer.Sparse.eval (![oldProjection1728, reductionProjection9898, reductionProjection9899, reductionProjection9900, reductionProjection9491] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9901 (0 : Fin 5)) = canonicalInput13670.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (0 : Fin 5)) =
        Integer.Sparse.eval oldProjection1728 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (0 : Fin 5)) =
          Integer.Sparse.eval oldProjection1728 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13670 hH))).trans (oldProjectionSound1728 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9901 (1 : Fin 5)) = (normalNode6146).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9898 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9901 (2 : Fin 5)) = (normalNode6137).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9899 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9899 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9899 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9901 (3 : Fin 5)) = (normalNode6136).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9900 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9900 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9900 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9901 (4 : Fin 5)) = canonicalInput12582.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9491 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9901 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9491 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12582 hH))).trans (reductionSound9491 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6135).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9901 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6135).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9901 (j : Fin 5)))
      1 288 1440 5 ![1440, 18, 1440, 2, 1440] ![1, 80, 1, 720, 1] reductionProjection9901 ![oldProjection1728, reductionProjection9898, reductionProjection9899, reductionProjection9900, reductionProjection9491]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9902 : Integer.Sparse (Fin 1613) := [(19, 12), (20, -3), (42, -16), (91, -16), (94, 6), (242, 48), (244, -32), (591, -144), (700, -32), (1251, -3)]

def reductionPivot9902 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, -1, 0], ![-1, -3, 2, 2], ![-1, 0, -1, 2], ![0, 3, 1, -4], ![1, 0, -1, 0]]

theorem reductionSound9902 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6138).moment H =
      Integer.Sparse.eval reductionProjection9902 (momentVector H) := by
  have heq : reductionPivot9902 = (fun u v => (normalNode6138).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6138).moment H = injectiveMoment H reductionPivot9902 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6138).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9902 0 = Pi.single (0 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9902 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 9, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9902 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1075, reductionProjection1564, oldProjection1064, reductionProjection5870] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9902 (0 : Fin 4)) = canonicalInput23849.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1075 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1075 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23849 hH))).trans (oldProjectionSound1075 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9902 (1 : Fin 4)) = canonicalInput12696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1564 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1564 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12696 hH))).trans (reductionSound1564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9902 (2 : Fin 4)) = canonicalInput12587.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1064 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1064 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12587 hH))).trans (oldProjectionSound1064 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9902 (3 : Fin 4)) = canonicalInput12584.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5870 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9902 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5870 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12584 hH))).trans (reductionSound5870 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6138).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9902 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6138).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9902 (j : Fin 4)))
      2 288 288 2 ![72, 9, 144, 1] ![4, 32, 2, 288] reductionProjection9902 ![oldProjection1075, reductionProjection1564, oldProjection1064, reductionProjection5870]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9903 : Integer.Sparse (Fin 1613) := [(19, 4), (20, 2), (42, -32), (91, -32), (94, -1), (243, -64), (244, -16), (700, -48), (1225, -32), (1251, -3)]

def reductionPivot9903 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0]]

theorem reductionSound9903 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6224).moment H =
      Integer.Sparse.eval reductionProjection9903 (momentVector H) := by
  have heq : reductionPivot9903 = (fun u v => (normalNode6224).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6224).moment H = injectiveMoment H reductionPivot9903 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6224).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9903 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9903 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9903 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1102, reductionProjection1564, oldProjection1062, reductionProjection5624] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9903 (0 : Fin 4)) = canonicalInput12506.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1102 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1102 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12506 hH))).trans (oldProjectionSound1102 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9903 (1 : Fin 4)) = canonicalInput12696.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1564 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1564 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12696 hH))).trans (reductionSound1564 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9903 (2 : Fin 4)) = canonicalInput12712.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1062 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1062 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12712 hH))).trans (oldProjectionSound1062 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9903 (3 : Fin 4)) = canonicalInput12714.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5624 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9903 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5624 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12714 hH))).trans (reductionSound5624 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6224).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9903 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6224).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9903 (j : Fin 4)))
      2 288 288 2 ![144, 9, 144, 144] ![2, 32, 2, 2] reductionProjection9903 ![oldProjection1102, reductionProjection1564, oldProjection1062, reductionProjection5624]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9904 : Integer.Sparse (Fin 1613) := [(3, -4), (19, -28), (20, -3), (42, 80), (83, -96), (84, -96), (91, 80), (93, 12), (94, -9), (242, -48), (243, 224), (244, 64), (591, 144), (700, 160), (1044, -48), (1045, -48), (1052, -48), (1060, -96), (1217, -48), (1225, 96), (1226, 32), (1251, 10)]

def reductionPivot9904 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -3, 2, 2], ![0, 0, -1, 1], ![0, 3, 1, -4], ![1, 0, -1, 0], ![1, 0, -1, 0]]

theorem reductionSound9904 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6139).moment H =
      Integer.Sparse.eval reductionProjection9904 (momentVector H) := by
  have heq : reductionPivot9904 = (fun u v => (normalNode6139).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6139).moment H = injectiveMoment H reductionPivot9904 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6139).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9904 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9904 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![144, 288, 288, 288, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9904 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection540, reductionProjection9902, reductionProjection9836, reductionProjection9903, reductionProjection9903] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9904 (0 : Fin 5)) = (normalNode274).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection540 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection540 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound540 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9904 (1 : Fin 5)) = (normalNode6138).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9902 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9902 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9902 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9904 (2 : Fin 5)) = canonicalInput12704.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9836 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9836 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12704 hH))).trans (reductionSound9836 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9904 (3 : Fin 5)) = canonicalInput12713.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9903 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12713 hH))).trans (reductionSound9903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9904 (4 : Fin 5)) = canonicalInput12715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9903 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9904 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9903 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12715 hH))).trans (reductionSound9903 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6139).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9904 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6139).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9904 (j : Fin 5)))
      1 288 288 1 ![144, 288, 288, 288, 288] ![2, 1, 1, 1, 1] reductionProjection9904 ![reductionProjection540, reductionProjection9902, reductionProjection9836, reductionProjection9903, reductionProjection9903]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9905 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (88, -160), (90, -160), (241, -80), (243, -240), (698, -240), (700, -80), (1226, -160)]

def reductionPivot9905 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 2, 1, -3], ![1, 0, -1, 0]]

theorem reductionSound9905 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6232).moment H =
      Integer.Sparse.eval reductionProjection9905 (momentVector H) := by
  have heq : reductionPivot9905 = (fun u v => (normalNode6232).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6232).moment H = injectiveMoment H reductionPivot9905 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6232).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9905 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9905 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 9, 720, 72] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9905 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1103, reductionProjection1188, oldProjection1032, reductionProjection1548] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9905 (0 : Fin 4)) = canonicalInput12548.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1103 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1103 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12548 hH))).trans (oldProjectionSound1103 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9905 (1 : Fin 4)) = canonicalInput12741.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1188 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1188 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12741 hH))).trans (reductionSound1188 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9905 (2 : Fin 4)) = canonicalInput12757.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1032 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1032 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12757 hH))).trans (oldProjectionSound1032 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9905 (3 : Fin 4)) = canonicalInput12758.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1548 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9905 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1548 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12758 hH))).trans (reductionSound1548 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6232).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9905 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6232).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9905 (j : Fin 4)))
      2 1440 1440 2 ![144, 9, 720, 72] ![10, 160, 2, 20] reductionProjection9905 ![oldProjection1103, reductionProjection1188, oldProjection1032, reductionProjection1548]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9906 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -35), (20, 5), (62, -120), (88, 40), (90, 40), (93, 45), (241, 40), (243, 140), (694, -60), (696, -60), (698, 140), (699, -60), (700, 40), (1047, -120), (1058, -120), (1226, 140), (1250, 30), (1323, -120)]

def reductionPivot9906 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -3, 2, 2], ![0, 0, 1, -1], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 2, -3, 0]]

theorem reductionSound9906 {H : CMatrix} (hH : IsHadamard H) :
    (360 : ℝ) * (normalNode6140).moment H =
      Integer.Sparse.eval reductionProjection9906 (momentVector H) := by
  have heq : reductionPivot9906 = (fun u v => (normalNode6140).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6140).moment H = injectiveMoment H reductionPivot9906 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6140).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9906 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9906 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 720, 720, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9906 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection552, oldProjection2175, oldProjection2177, oldProjection1046, reductionProjection9905] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9906 (0 : Fin 5)) = (normalNode284).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection552 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection552 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound552 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9906 (1 : Fin 5)) = canonicalInput12588.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (1 : Fin 5)) =
        Integer.Sparse.eval oldProjection2175 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (1 : Fin 5)) =
          Integer.Sparse.eval oldProjection2175 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12588 hH))).trans (oldProjectionSound2175 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9906 (2 : Fin 5)) = canonicalInput12719.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (2 : Fin 5)) =
        Integer.Sparse.eval oldProjection2177 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (2 : Fin 5)) =
          Integer.Sparse.eval oldProjection2177 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12719 hH))).trans (oldProjectionSound2177 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9906 (3 : Fin 5)) = canonicalInput12723.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection1046 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection1046 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12723 hH))).trans (oldProjectionSound1046 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9906 (4 : Fin 5)) = canonicalInput12728.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9905 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9906 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9905 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12728 hH))).trans (reductionSound9905 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6140).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9906 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6140).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9906 (j : Fin 5)))
      1 360 1440 4 ![1440, 720, 720, 720, 1440] ![1, 2, 2, 2, 1] reductionProjection9906 ![reductionProjection552, oldProjection2175, oldProjection2177, oldProjection1046, reductionProjection9905]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9907 : Integer.Sparse (Fin 1613) := [(549, -1), (617, -1), (622, -1), (1144, -1)]

def reductionPivot9907 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound9907 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6159).moment H =
      Integer.Sparse.eval reductionProjection9907 (momentVector H) := by
  have heq : reductionPivot9907 = (fun u v => (normalNode6159).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6159).moment H = injectiveMoment H reductionPivot9907 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6159).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9907 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9907 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9907 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection514, reductionProjection3351, oldProjection502, reductionProjection1384] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9907 (0 : Fin 4)) = canonicalInput13715.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection514 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection514 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13715 hH))).trans (oldProjectionSound514 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9907 (1 : Fin 4)) = canonicalInput12633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12633 hH))).trans (reductionSound3351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9907 (2 : Fin 4)) = canonicalInput12613.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection502 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection502 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12613 hH))).trans (oldProjectionSound502 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9907 (3 : Fin 4)) = canonicalInput12610.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9907 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12610 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6159).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9907 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6159).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9907 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9907 ![oldProjection514, reductionProjection3351, oldProjection502, reductionProjection1384]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9908 : Integer.Sparse (Fin 1613) := [(0, 12), (19, -100), (20, 5), (94, 120), (241, 320), (243, 160), (247, 320), (408, 720), (549, 1440), (617, 1440), (622, 1440), (694, -480), (697, -480), (698, 560), (699, -240), (700, 160), (1059, 240), (1144, 1440), (1251, -165), (1319, -240)]

def reductionPivot9908 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 1, -1, 0], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound9908 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6141).moment H =
      Integer.Sparse.eval reductionProjection9908 (momentVector H) := by
  have heq : reductionPivot9908 = (fun u v => (normalNode6141).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6141).moment H = injectiveMoment H reductionPivot9908 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6141).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9908 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9908 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 2, 2, 1440, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9908 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection558, reductionProjection9907, reductionProjection9907, oldProjection2843, oldProjection2860] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9908 (0 : Fin 5)) = (normalNode295).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection558 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9908 (1 : Fin 5)) = (normalNode6159).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9907 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9908 (2 : Fin 5)) = canonicalInput12744.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9907 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9907 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12744 hH))).trans (reductionSound9907 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9908 (3 : Fin 5)) = canonicalInput12747.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection2843 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection2843 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12747 hH))).trans (oldProjectionSound2843 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9908 (4 : Fin 5)) = canonicalInput12749.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2860 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9908 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12749 hH))).trans (oldProjectionSound2860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6141).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9908 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6141).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9908 (j : Fin 5)))
      1 1440 1440 1 ![1440, 2, 2, 1440, 720] ![1, 720, 720, 1, 2] reductionProjection9908 ![reductionProjection558, reductionProjection9907, reductionProjection9907, oldProjection2843, oldProjection2860]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9909 : Integer.Sparse (Fin 1613) := [(0, 2), (94, 15), (241, -80), (243, -80), (435, -720), (698, -240), (700, -80), (1058, 240), (1059, -80), (1144, -720), (1226, -80), (1251, 65)]

def reductionPivot9909 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 2, -2, 0], ![1, 0, 1, -2]]

theorem reductionSound9909 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6163).moment H =
      Integer.Sparse.eval reductionProjection9909 (momentVector H) := by
  have heq : reductionPivot9909 = (fun u v => (normalNode6163).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6163).moment H = injectiveMoment H reductionPivot9909 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6163).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9909 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9909 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9909 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1347, oldProjection796, reductionProjection1384, reductionProjection4110] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9909 (0 : Fin 4)) = canonicalInput23880.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1347 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1347 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23880 hH))).trans (oldProjectionSound1347 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9909 (1 : Fin 4)) = canonicalInput12756.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection796 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12756 hH))).trans (oldProjectionSound796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9909 (2 : Fin 4)) = canonicalInput12615.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1384 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1384 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12615 hH))).trans (reductionSound1384 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9909 (3 : Fin 4)) = canonicalInput12604.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4110 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9909 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4110 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12604 hH))).trans (reductionSound4110 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6163).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9909 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6163).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9909 (j : Fin 4)))
      2 1440 1440 2 ![720, 720, 1, 1] ![2, 2, 1440, 1440] reductionProjection9909 ![oldProjection1347, oldProjection796, reductionProjection1384, reductionProjection4110]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9910 : Integer.Sparse (Fin 1613) := [(0, -6), (19, -60), (20, 5), (53, -240), (76, -240), (81, -240), (84, -240), (94, 25), (241, 240), (243, 240), (247, 80), (408, 720), (435, 720), (622, 720), (691, -240), (694, -240), (697, -240), (698, 640), (699, -240), (700, 160), (1052, -240), (1058, -240), (1059, 160), (1144, 720), (1226, 240), (1227, 80), (1251, -70)]

def reductionPivot9910 : Matrix (Fin 6) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -3, 2, 2], ![0, 1, -1, 0], ![0, 2, -2, 0], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound9910 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6142).moment H =
      Integer.Sparse.eval reductionProjection9910 (momentVector H) := by
  have heq : reductionPivot9910 = (fun u v => (normalNode6142).entries (OAI.MUB6.Certificate.PairSemantics.permutation202 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6142).moment H = injectiveMoment H reductionPivot9910 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6142).entries OAI.MUB6.Certificate.PairSemantics.permutation202)).symm
  have hshape : reductionPivot9910 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9910 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 1440, 720, 720, 1440] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9910 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection562, reductionProjection9909, reductionProjection9877, oldProjection796, oldProjection2850] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9910 (0 : Fin 5)) = (normalNode300).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection562 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection562 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound562 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9910 (1 : Fin 5)) = (normalNode6163).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9909 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9909 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9909 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9910 (2 : Fin 5)) = canonicalInput12745.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9877 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9877 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12745 hH))).trans (reductionSound9877 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9910 (3 : Fin 5)) = canonicalInput12754.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (3 : Fin 5)) =
        Integer.Sparse.eval oldProjection796 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (3 : Fin 5)) =
          Integer.Sparse.eval oldProjection796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12754 hH))).trans (oldProjectionSound796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9910 (4 : Fin 5)) = canonicalInput12755.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2850 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9910 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2850 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12755 hH))).trans (oldProjectionSound2850 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6142).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9910 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6142).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9910 (j : Fin 5)))
      1 1440 1440 1 ![1440, 1440, 720, 720, 1440] ![1, 1, 2, 2, 1] reductionProjection9910 ![reductionProjection562, reductionProjection9909, reductionProjection9877, oldProjection796, oldProjection2850]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9911 : Integer.Sparse (Fin 1613) := [(79, 48), (82, 48), (88, -16), (90, -32), (94, -1), (164, -144), (241, -16), (243, -16), (642, -144), (698, -48), (700, -32), (1226, -16), (1251, 3)]

def reductionPivot9911 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-1, -3, 2, 2], ![0, 2, 0, -2], ![1, 0, 1, -2], ![1, 1, -3, 1]]

theorem reductionSound9911 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode6144).moment H =
      Integer.Sparse.eval reductionProjection9911 (momentVector H) := by
  have heq : reductionPivot9911 = (fun u v => (normalNode6144).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6144).moment H = injectiveMoment H reductionPivot9911 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6144).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9911 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9911 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 144, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9911 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection524, oldProjection519, reductionProjection5397, reductionProjection1160] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9911 (0 : Fin 4)) = canonicalInput1003.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection524 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection524 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound1003 hH))).trans (reductionSound524 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9911 (1 : Fin 4)) = canonicalInput12659.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12659 hH))).trans (oldProjectionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9911 (2 : Fin 4)) = canonicalInput12779.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5397 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12779 hH))).trans (reductionSound5397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9911 (3 : Fin 4)) = canonicalInput12781.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1160 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9911 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1160 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12781 hH))).trans (reductionSound1160 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6144).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9911 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6144).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9911 (j : Fin 4)))
      2 288 288 2 ![1, 1, 144, 9] ![288, 288, 2, 32] reductionProjection9911 ![reductionProjection524, oldProjection519, reductionProjection5397, reductionProjection1160]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9912 : Integer.Sparse (Fin 1613) := [(13, -3), (88, 2), (90, 2), (1226, 2)]

def reductionPivot9912 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 0, 0, 1], ![-3, 1, 1, 1], ![2, -3, 2, -1], ![2, 2, -3, -1]]

theorem reductionSound9912 {H : CMatrix} (hH : IsHadamard H) :
    (9 : ℝ) * (normalNode6244).moment H =
      Integer.Sparse.eval reductionProjection9912 (momentVector H) := by
  have heq : reductionPivot9912 = (fun u v => (normalNode6244).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6244).moment H = injectiveMoment H reductionPivot9912 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6244).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode6244).entries)).symm
  have hshape : reductionPivot9912 0 = Pi.single (3 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot9912 3 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![1, 3, 3] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9912 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection33, oldProjection108, oldProjection108] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9912 (0 : Fin 3)) = canonicalInput47.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9912 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection33 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9912 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection33 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound47 hH))).trans (reductionSound33 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9912 (1 : Fin 3)) = canonicalInput697.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9912 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9912 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound697 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9912 (2 : Fin 3)) = canonicalInput702.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((3 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9912 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection108 (momentVector H)
      have hh : (3 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9912 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection108 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (3 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound702 hH))).trans (oldProjectionSound108 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode6244).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9912 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6244).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot9912 (j : Fin 3)))
      3 9 9 3 ![1, 3, 3] ![9, 3, 3] reductionProjection9912 ![reductionProjection33, oldProjection108, oldProjection108]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9913 : Integer.Sparse (Fin 1613) := [(13, 12), (76, 12), (84, 12), (88, -8), (90, -8), (94, 1), (212, -36), (241, -4), (243, -8), (698, -8), (700, -4), (1226, -16), (1251, 1)]

def reductionPivot9913 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -3, 2, 2], ![-1, 2, -3, 2], ![1, 0, 0, -1], ![1, 1, 0, -2]]

theorem reductionSound9913 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode6175).moment H =
      Integer.Sparse.eval reductionProjection9913 (momentVector H) := by
  have heq : reductionPivot9913 = (fun u v => (normalNode6175).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6175).moment H = injectiveMoment H reductionPivot9913 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6175).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9913 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9913 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 72, 1, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9913 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection147, oldProjection829, reductionProjection1531, reductionProjection9912] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9913 (0 : Fin 4)) = canonicalInput12798.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection147 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection147 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12798 hH))).trans (reductionSound147 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9913 (1 : Fin 4)) = canonicalInput12632.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection829 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection829 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12632 hH))).trans (oldProjectionSound829 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9913 (2 : Fin 4)) = canonicalInput12627.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1531 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1531 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12627 hH))).trans (reductionSound1531 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9913 (3 : Fin 4)) = canonicalInput12626.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9912 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9913 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9912 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12626 hH))).trans (reductionSound9912 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6175).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9913 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6175).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9913 (j : Fin 4)))
      2 72 72 2 ![72, 72, 1, 9] ![1, 1, 72, 8] reductionProjection9913 ![reductionProjection147, oldProjection829, reductionProjection1531, reductionProjection9912]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9914 : Integer.Sparse (Fin 1613) := [(0, 1), (76, 120), (81, 240), (94, -15), (220, -360), (228, 120), (481, -360), (698, -80), (1251, -20)]

def reductionPivot9914 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, 0, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -2, 2], ![0, 2, -1, -1], ![1, 0, 1, -2]]

theorem reductionSound9914 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6148).moment H =
      Integer.Sparse.eval reductionProjection9914 (momentVector H) := by
  have heq : reductionPivot9914 = (fun u v => (normalNode6148).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6148).moment H = injectiveMoment H reductionPivot9914 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6148).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot9914 0 = Pi.single (0 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9914 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 720, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9914 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection823, oldProjection731, reductionProjection1456, reductionProjection4598] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9914 (0 : Fin 4)) = canonicalInput23877.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection823 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection823 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23877 hH))).trans (oldProjectionSound823 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9914 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node731⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection731 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection731 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound731 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9914 (2 : Fin 4)) = canonicalInput12595.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12595 hH))).trans (reductionSound1456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9914 (3 : Fin 4)) = canonicalInput12591.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection4598 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9914 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection4598 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12591 hH))).trans (reductionSound4598 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6148).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9914 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6148).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9914 (j : Fin 4)))
      2 720 720 2 ![720, 720, 1, 1] ![1, 1, 720, 720] reductionProjection9914 ![oldProjection823, oldProjection731, reductionProjection1456, reductionProjection4598]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9915 : Integer.Sparse (Fin 1613) := [(220, -1), (611, -1), (622, -1), (1285, -1)]

def reductionPivot9915 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -2, 2], ![1, 0, 1, -2], ![1, 1, -1, -1]]

theorem reductionSound9915 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6147).moment H =
      Integer.Sparse.eval reductionProjection9915 (momentVector H) := by
  have heq : reductionPivot9915 = (fun u v => (normalNode6147).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6147).moment H = injectiveMoment H reductionPivot9915 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6147).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9915 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9915 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9915 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection1109, reductionProjection3351, reductionProjection9896, reductionProjection1456] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9915 (0 : Fin 4)) = canonicalInput14031.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1109 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1109 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14031 hH))).trans (reductionSound1109 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9915 (1 : Fin 4)) = canonicalInput12633.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection3351 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection3351 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12633 hH))).trans (reductionSound3351 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9915 (2 : Fin 4)) = canonicalInput12594.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection9896 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection9896 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12594 hH))).trans (reductionSound9896 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9915 (3 : Fin 4)) = canonicalInput12593.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection1456 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9915 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection1456 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12593 hH))).trans (reductionSound1456 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6147).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9915 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6147).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9915 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9915 ![reductionProjection1109, reductionProjection3351, reductionProjection9896, reductionProjection1456]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9916 : Integer.Sparse (Fin 1613) := [(0, -3), (13, -240), (76, -720), (81, -960), (84, -240), (88, 160), (90, 240), (94, 40), (204, 720), (212, 720), (220, 1440), (228, -480), (231, -240), (241, 160), (243, 240), (481, 720), (611, 720), (616, 720), (622, 720), (698, 1200), (700, 160), (1059, 160), (1226, 640), (1227, 400), (1251, -85), (1285, 720)]

def reductionPivot9916 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 1, -1, 0], ![-1, -3, 2, 2], ![-1, 1, -2, 2], ![0, 1, 0, -1], ![1, 0, 0, -1], ![1, 0, 1, -2]]

theorem reductionSound9916 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode6145).moment H =
      Integer.Sparse.eval reductionProjection9916 (momentVector H) := by
  have heq : reductionPivot9916 = (fun u v => (normalNode6145).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6145).moment H = injectiveMoment H reductionPivot9916 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6145).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9916 0 = Pi.single (1 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9916 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 72, 720, 2, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9916 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection3397, reductionProjection9913, reductionProjection9914, reductionProjection9915, reductionProjection5558] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9916 (0 : Fin 5)) = canonicalInput13695.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection3397 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection3397 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound13695 hH))).trans (reductionSound3397 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9916 (1 : Fin 5)) = canonicalInput12625.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9913 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9913 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12625 hH))).trans (reductionSound9913 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9916 (2 : Fin 5)) = (normalNode6148).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9914 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9914 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9914 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9916 (3 : Fin 5)) = canonicalInput12590.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9915 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9915 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12590 hH))).trans (reductionSound9915 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9916 (4 : Fin 5)) = canonicalInput12589.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection5558 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9916 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection5558 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12589 hH))).trans (reductionSound5558 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6145).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9916 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6145).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9916 (j : Fin 5)))
      1 1440 1440 1 ![1440, 72, 720, 2, 720] ![1, 20, 2, 720, 2] reductionProjection9916 ![reductionProjection3397, reductionProjection9913, reductionProjection9914, reductionProjection9915, reductionProjection5558]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9917 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 40), (20, -10), (94, -5), (243, -320), (698, -320), (700, -240), (704, -80), (1225, -80), (1226, -160), (1227, -80), (1251, -25), (1352, -720)]

def reductionPivot9917 : Matrix (Fin 5) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![-1, -1, -1, 3], ![0, 0, -1, 1], ![1, -1, 3, -3], ![1, 1, -1, -1]]

theorem reductionSound9917 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode7795).moment H =
      Integer.Sparse.eval reductionProjection9917 (momentVector H) := by
  have heq : reductionPivot9917 = (fun u v => (normalNode7795).entries (OAI.MUB6.Certificate.PairSemantics.permutation57 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7795).moment H = injectiveMoment H reductionPivot9917 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7795).entries OAI.MUB6.Certificate.PairSemantics.permutation57)).symm
  have hshape : reductionPivot9917 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9917 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![720, 1, 720, 9] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9917 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection982, oldProjection925, oldProjection960, oldProjection965] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9917 (0 : Fin 4)) = canonicalInput6663.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection982 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection982 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound6663 hH))).trans (oldProjectionSound982 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9917 (1 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node925⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection925 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection925 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound925 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9917 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node960⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection960 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection960 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound960 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9917 (3 : Fin 4)) = canonicalInput15362.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((9 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection965 (momentVector H)
      have hh : (9 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9917 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection965 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (9 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15362 hH))).trans (oldProjectionSound965 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7795).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9917 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7795).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9917 (j : Fin 4)))
      2 1440 1440 2 ![720, 1, 720, 9] ![2, 1440, 2, 160] reductionProjection9917 ![oldProjection982, oldProjection925, oldProjection960, oldProjection965]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9918 : Integer.Sparse (Fin 1613) := [(596, -1), (618, -1), (624, -1), (642, -1)]

def reductionPivot9918 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 1, 0, -1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![1, 0, -2, 1], ![1, 1, 1, -3]]

theorem reductionSound9918 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode6160).moment H =
      Integer.Sparse.eval reductionProjection9918 (momentVector H) := by
  have heq : reductionPivot9918 = (fun u v => (normalNode6160).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6160).moment H = injectiveMoment H reductionPivot9918 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6160).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot9918 0 = Pi.single (1 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot9918 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9918 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection515, oldProjection519, oldProjection509, reductionProjection5833] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9918 (0 : Fin 4)) = canonicalInput14038.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection515 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection515 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound14038 hH))).trans (oldProjectionSound515 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9918 (1 : Fin 4)) = canonicalInput12643.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection519 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection519 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12643 hH))).trans (oldProjectionSound519 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9918 (2 : Fin 4)) = canonicalInput12611.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection509 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection509 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12611 hH))).trans (oldProjectionSound509 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9918 (3 : Fin 4)) = canonicalInput12608.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection5833 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9918 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection5833 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12608 hH))).trans (reductionSound5833 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6160).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9918 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6160).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot9918 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection9918 ![oldProjection515, oldProjection519, oldProjection509, reductionProjection5833]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection9919 : Integer.Sparse (Fin 1613) := [(0, -2), (19, -20), (20, 5), (76, -240), (81, -120), (88, 160), (90, 240), (91, 40), (94, 10), (231, -120), (241, 40), (243, 280), (549, 360), (596, 720), (618, 360), (624, 360), (642, 360), (697, -120), (698, 640), (700, 120), (704, 40), (1225, 40), (1226, 560), (1227, 200), (1251, -25), (1285, 360), (1323, -240), (1352, 360), (1389, -120)]

def reductionPivot9919 : Matrix (Fin 6) (Fin 4) ℤ := ![![0, 0, -1, 1], ![-1, -3, 2, 2], ![-1, 1, -1, 1], ![0, 1, 0, -1], ![1, 0, -1, 0], ![1, 1, 1, -3]]

theorem reductionSound9919 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode6149).moment H =
      Integer.Sparse.eval reductionProjection9919 (momentVector H) := by
  have heq : reductionPivot9919 = (fun u v => (normalNode6149).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6149).moment H = injectiveMoment H reductionPivot9919 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6149).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot9919 0 = Pi.single (3 : Fin 4) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot9919 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![1440, 18, 720, 2, 288] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9919 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection9917, reductionProjection9898, reductionProjection7785, reductionProjection9918, oldProjection2167] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot9919 (0 : Fin 5)) = canonicalInput12407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9917 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9917 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12407 hH))).trans (reductionSound9917 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9919 (1 : Fin 5)) = (normalNode6146).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((18 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9898 (momentVector H)
      have hh : (18 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9898 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (18 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9898 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9919 (2 : Fin 5)) = (normalNode6158).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection7785 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection7785 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound7785 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9919 (3 : Fin 5)) = (normalNode6160).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection9918 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection9918 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound9918 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot9919 (4 : Fin 5)) = canonicalInput12600.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (4 : Fin 5)) =
        Integer.Sparse.eval oldProjection2167 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot9919 (4 : Fin 5)) =
          Integer.Sparse.eval oldProjection2167 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12600 hH))).trans (oldProjectionSound2167 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode6149).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9919 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6149).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot9919 (j : Fin 5)))
      1 720 1440 2 ![1440, 18, 720, 2, 288] ![1, 80, 2, 720, 5] reductionProjection9919 ![reductionProjection9917, reductionProjection9898, reductionProjection7785, reductionProjection9918, oldProjection2167]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
