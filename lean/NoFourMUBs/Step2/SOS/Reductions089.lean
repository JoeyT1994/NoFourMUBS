import NoFourMUBs.Step2.SOS.Canonical007
import NoFourMUBs.Step2.SOS.Canonical045
import NoFourMUBs.Step2.SOS.Canonical046
import NoFourMUBs.Step2.SOS.Canonical067
import NoFourMUBs.Step2.SOS.Canonical099
import NoFourMUBs.Step2.SOS.Canonical111
import NoFourMUBs.Step2.SOS.Canonical124
import NoFourMUBs.Step2.SOS.Canonical126
import NoFourMUBs.Step2.SOS.Canonical141
import NoFourMUBs.Step2.SOS.Canonical142
import NoFourMUBs.Step2.SOS.Canonical189
import NoFourMUBs.Step2.SOS.Canonical190
import NoFourMUBs.Step2.SOS.Canonical191
import NoFourMUBs.Step2.SOS.Canonical205
import NoFourMUBs.Step2.SOS.Canonical229
import NoFourMUBs.Step2.SOS.Canonical231
import NoFourMUBs.Step2.SOS.Canonical235
import NoFourMUBs.Step2.SOS.Canonical236
import NoFourMUBs.Step2.SOS.Canonical242
import NoFourMUBs.Step2.SOS.Canonical244
import NoFourMUBs.Step2.SOS.Canonical264
import NoFourMUBs.Step2.SOS.Canonical293
import NoFourMUBs.Step2.SOS.Canonical298
import NoFourMUBs.Step2.SOS.Canonical333
import NoFourMUBs.Step2.SOS.Canonical334
import NoFourMUBs.Step2.SOS.Canonical336
import NoFourMUBs.Step2.SOS.Canonical340
import NoFourMUBs.Step2.SOS.Canonical357
import NoFourMUBs.Step2.SOS.Canonical371
import NoFourMUBs.Step2.SOS.Canonical373
import NoFourMUBs.Step2.SOS.Canonical375
import NoFourMUBs.Step2.SOS.Canonical428
import NoFourMUBs.Step2.SOS.Canonical430
import NoFourMUBs.Step2.SOS.Canonical528
import NoFourMUBs.Step2.SOS.Canonical535
import NoFourMUBs.Step2.SOS.IntegerProjection
import NoFourMUBs.Step2.SOS.MomentCodes05
import NoFourMUBs.Step2.SOS.MomentCodes06
import NoFourMUBs.Step2.SOS.MomentCodes11
import NoFourMUBs.Step2.SOS.MomentCodes13
import NoFourMUBs.Step2.SOS.MomentCodes19
import NoFourMUBs.Step2.SOS.NormalizationContext
import NoFourMUBs.Step2.SOS.NormalizationNodes005
import NoFourMUBs.Step2.SOS.NormalizationNodes013
import NoFourMUBs.Step2.SOS.NormalizationNodes023
import NoFourMUBs.Step2.SOS.NormalizationNodes025
import NoFourMUBs.Step2.SOS.NormalizationNodes029
import NoFourMUBs.Step2.SOS.NormalizationNodes031
import NoFourMUBs.Step2.SOS.NormalizationNodes032
import NoFourMUBs.Step2.SOS.NormalizationNodes037
import NoFourMUBs.Step2.SOS.NormalizationNodes042
import NoFourMUBs.Step2.SOS.NormalizationNodes043
import NoFourMUBs.Step2.SOS.OldProjections000
import NoFourMUBs.Step2.SOS.OldProjections003
import NoFourMUBs.Step2.SOS.OldProjections004
import NoFourMUBs.Step2.SOS.OldProjections006
import NoFourMUBs.Step2.SOS.OldProjections008
import NoFourMUBs.Step2.SOS.OldProjections010
import NoFourMUBs.Step2.SOS.OldProjections017
import NoFourMUBs.Step2.SOS.OldProjections018
import NoFourMUBs.Step2.SOS.OldProjections019
import NoFourMUBs.Step2.SOS.OldProjections020
import NoFourMUBs.Step2.SOS.OldProjections022
import NoFourMUBs.Step2.SOS.OldProjections023
import NoFourMUBs.Step2.SOS.OldProjections026
import NoFourMUBs.Step2.SOS.OldProjections027
import NoFourMUBs.Step2.SOS.OldProjections030
import NoFourMUBs.Step2.SOS.OldProjections036
import NoFourMUBs.Step2.SOS.ReductionRules
import NoFourMUBs.Step2.SOS.Reductions004
import NoFourMUBs.Step2.SOS.Reductions005
import NoFourMUBs.Step2.SOS.Reductions006
import NoFourMUBs.Step2.SOS.Reductions061
import NoFourMUBs.Step2.SOS.Reductions070
import NoFourMUBs.Step2.SOS.Reductions082
import NoFourMUBs.Step2.SOS.Reductions083
import NoFourMUBs.Step2.SOS.Reductions084
import NoFourMUBs.Step2.SOS.Reductions085
import NoFourMUBs.Step2.SOS.Reductions086
import NoFourMUBs.Step2.SOS.Reductions087
import NoFourMUBs.Step2.SOS.Reductions088
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical104
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical168
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical169
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical191
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical243
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Canonical95
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes21
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Nodes4
import OAI.Analysis.MutuallyUnbiased.PairSemantics.Permutations

namespace NoFourMUBs.Step2.SOS.Normalization
open scoped BigOperators
open OAI.MUB6 OAI.MUB6.Certificate
set_option maxRecDepth 10000
set_option maxHeartbeats 2000000

def reductionProjection2848 : Integer.Sparse (Fin 1613) := [(390, 1)]

theorem reductionSound2848 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code390).moment H =
      Integer.Sparse.eval reductionProjection2848 (momentVector H) := by
  have hc : coordinates (390 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code390) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2848, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2849 : Integer.Sparse (Fin 1613) := [(0, -2), (81, -480), (94, 15), (241, 80), (390, -1440), (423, 720), (565, 720), (697, -240), (698, 320), (762, 720), (775, 2160), (807, 720), (808, 720), (1055, -240), (1058, -240), (1226, 80), (1227, 160), (1251, -35)]

def reductionPivot2849 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![0, -2, 1, 0, 1], ![0, 2, -2, 1, -1], ![2, 0, 1, -3, 0]]

theorem reductionSound2849 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8281).moment H =
      Integer.Sparse.eval reductionProjection2849 (momentVector H) := by
  have heq : reductionPivot2849 = (fun u v => (normalNode8281).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8281).moment H = injectiveMoment H reductionPivot2849 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode8281).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode8281).entries)).symm
  have hshape : reductionPivot2849 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2849 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![288, 1, 1440, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2849 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2847, reductionProjection2848, oldProjection1943, oldProjection1944] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2849 (0 : Fin 4)) = canonicalInput7997.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2847 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2847 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7997 hH))).trans (reductionSound2847 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2849 (1 : Fin 4)) = canonicalInput21340.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2848 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2848 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21340 hH))).trans (reductionSound2848 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2849 (2 : Fin 4)) = canonicalInput21398.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1943 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21398 hH))).trans (oldProjectionSound1943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2849 (3 : Fin 4)) = canonicalInput21407.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1944 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2849 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1944 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21407 hH))).trans (oldProjectionSound1944 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8281).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2849 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8281).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2849 (j : Fin 4)))
      2 2880 2880 2 ![288, 1, 1440, 1440] ![10, 2880, 2, 2] reductionProjection2849 ![reductionProjection2847, reductionProjection2848, oldProjection1943, oldProjection1944]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2850 : Integer.Sparse (Fin 1613) := [(0, 8), (19, 40), (52, -480), (71, -480), (76, 960), (79, 480), (81, 2160), (87, 240), (90, -80), (94, -165), (241, -480), (243, -80), (390, 1440), (423, -2160), (426, -720), (565, -720), (691, 480), (697, 240), (698, -3120), (700, -80), (762, -1440), (763, -720), (775, -2880), (807, -720), (808, -720), (858, 1440), (860, 1440), (1034, -960), (1047, 960), (1050, 480), (1052, 480), (1055, 1680), (1058, 2640), (1059, -480), (1219, 240), (1221, 240), (1226, -880), (1227, -1280), (1250, -120), (1251, 375), (1389, 240)]

def reductionPivot2850 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 0, 1, 0, -1], ![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 2, 1, -2, -1], ![1, 0, -1, 0, 0], ![1, 0, 0, 0, -1]]

theorem reductionSound2850 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1463).moment H =
      Integer.Sparse.eval reductionProjection2850 (momentVector H) := by
  have heq : reductionPivot2850 = (fun u v => (normalNode1463).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1463).moment H = injectiveMoment H reductionPivot2850 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1463).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2850 0 = Pi.single (2 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2850 2 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 576, 2880, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2850 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2839, reductionProjection2840, reductionProjection2845, reductionProjection2846, reductionProjection2849] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2850 (0 : Fin 5)) = canonicalInput4293.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2839 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2839 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound4293 hH))).trans (reductionSound2839 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2850 (1 : Fin 5)) = canonicalInput2934.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2840 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2840 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2934 hH))).trans (reductionSound2840 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2850 (2 : Fin 5)) = canonicalInput2916.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2845 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2845 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2916 hH))).trans (reductionSound2845 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2850 (3 : Fin 5)) = canonicalInput2915.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2846 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2846 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2915 hH))).trans (reductionSound2846 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2850 (4 : Fin 5)) = canonicalInput2914.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2849 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2850 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2849 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2914 hH))).trans (reductionSound2849 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1463).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2850 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1463).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2850 (j : Fin 5)))
      1 2880 2880 1 ![2880, 576, 2880, 2880, 2880] ![1, 5, 1, 1, 1] reductionProjection2850 ![reductionProjection2839, reductionProjection2840, reductionProjection2845, reductionProjection2846, reductionProjection2849]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2851 : Integer.Sparse (Fin 1613) := [(0, -1), (94, 20), (247, 80), (433, 720), (698, 160), (700, 80), (806, 720), (807, 720), (808, 720), (865, 720), (869, 720), (1055, -240), (1174, 720), (1219, -240), (1227, 80), (1251, -35)]

def reductionPivot2851 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, -1, 0], ![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 1, 0, -2]]

theorem reductionSound2851 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6540).moment H =
      Integer.Sparse.eval reductionProjection2851 (momentVector H) := by
  have heq : reductionPivot2851 = (fun u v => (normalNode6540).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6540).moment H = injectiveMoment H reductionPivot2851 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6540).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot2851 0 = Pi.single (0 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2851 0 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1440, 2, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2851 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection476, oldProjection1636, reductionProjection2783, reductionProjection2796] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2851 (0 : Fin 4)) = canonicalInput24023.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24023 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2851 (1 : Fin 4)) = canonicalInput13160.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1636 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1636 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13160 hH))).trans (oldProjectionSound1636 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2851 (2 : Fin 4)) = canonicalInput13134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2783 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13134 hH))).trans (reductionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2851 (3 : Fin 4)) = canonicalInput13126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2796 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2851 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13126 hH))).trans (reductionSound2796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6540).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2851 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6540).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2851 (j : Fin 4)))
      2 2880 2880 2 ![1, 1440, 2, 2] ![2880, 2, 1440, 1440] reductionProjection2851 ![oldProjection476, oldProjection1636, reductionProjection2783, reductionProjection2796]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2852 : Integer.Sparse (Fin 1613) := [(0, 6), (19, -20), (81, -480), (94, 15), (247, 160), (433, 720), (434, 720), (697, -240), (698, 400), (775, 720), (807, 720), (808, 720), (1058, -480), (1204, 720), (1226, 160), (1227, 160), (1251, -95)]

def reductionPivot2852 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, -1, 1, 0], ![-1, -1, 0, 0, 2], ![0, -1, -1, 1, 1], ![0, 2, 1, 0, -3], ![1, 0, 1, -2, 0]]

theorem reductionSound2852 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode8077).moment H =
      Integer.Sparse.eval reductionProjection2852 (momentVector H) := by
  have heq : reductionPivot2852 = (fun u v => (normalNode8077).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode8077).moment H = injectiveMoment H reductionPivot2852 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode8077).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2852 0 = Pi.single (3 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2852 3 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 144, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2852 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2671, oldProjection1943, oldProjection1648, oldProjection2811] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2852 (0 : Fin 4)) = canonicalInput14803.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2671 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2671 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14803 hH))).trans (reductionSound2671 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2852 (1 : Fin 4)) = canonicalInput15629.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1943 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1943 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15629 hH))).trans (oldProjectionSound1943 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2852 (2 : Fin 4)) = canonicalInput15638.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1648 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1648 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15638 hH))).trans (oldProjectionSound1648 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2852 (3 : Fin 4)) = canonicalInput15640.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection2811 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2852 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection2811 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15640 hH))).trans (oldProjectionSound2811 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode8077).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2852 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode8077).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2852 (j : Fin 4)))
      2 2880 2880 2 ![1440, 1440, 144, 144] ![2, 2, 20, 20] reductionProjection2852 ![reductionProjection2671, oldProjection1943, oldProjection1648, oldProjection2811]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2853 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 30), (81, 240), (94, -85), (247, -240), (294, -360), (339, -1440), (433, -2160), (434, -1080), (697, 120), (698, -600), (700, -40), (775, -360), (806, -360), (807, -1440), (808, -2160), (865, -360), (869, -360), (1055, 120), (1058, 480), (1139, -360), (1174, -360), (1204, -720), (1219, 120), (1226, -200), (1227, -200), (1251, 80)]

def reductionPivot2853 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, -1, 0], ![1, 0, 1, -1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound2853 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode1464).moment H =
      Integer.Sparse.eval reductionProjection2853 (momentVector H) := by
  have heq : reductionPivot2853 = (fun u v => (normalNode1464).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1464).moment H = injectiveMoment H reductionPivot2853 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1464).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2853 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2853 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 2880, 1, 2880, 2880] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2853 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2672, reductionProjection2851, reductionProjection2746, reductionProjection2852, reductionProjection2806] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2853 (0 : Fin 5)) = canonicalInput6384.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2672 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2672 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6384 hH))).trans (reductionSound2672 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2853 (1 : Fin 5)) = canonicalInput2941.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2851 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2941 hH))).trans (reductionSound2851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2853 (2 : Fin 5)) = canonicalInput2910.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2746 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2746 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2910 hH))).trans (reductionSound2746 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2853 (3 : Fin 5)) = canonicalInput2897.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2852 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2852 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2897 hH))).trans (reductionSound2852 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2853 (4 : Fin 5)) = canonicalInput2895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2806 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2853 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2806 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2895 hH))).trans (reductionSound2806 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1464).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2853 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1464).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2853 (j : Fin 5)))
      1 1440 2880 2 ![2880, 2880, 1, 2880, 2880] ![1, 1, 2880, 1, 1] reductionProjection2853 ![reductionProjection2672, reductionProjection2851, reductionProjection2746, reductionProjection2852, reductionProjection2806]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2854 : Integer.Sparse (Fin 1613) := [(433, -1), (761, -1), (767, -1), (865, -1)]

def reductionPivot2854 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 0, -1, 3], ![0, -2, 2, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound2854 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode3360).moment H =
      Integer.Sparse.eval reductionProjection2854 (momentVector H) := by
  have heq : reductionPivot2854 = (fun u v => (normalNode3360).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode3360).moment H = injectiveMoment H reductionPivot2854 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode3360).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2854 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2854 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2854 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection606, reductionProjection2259, oldProjection476, reductionProjection178] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2854 (0 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3346 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection606 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3346 hH))).trans (oldProjectionSound606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2854 (1 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code767).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2259 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2259 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2259 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2854 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw3061 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection476 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection476 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical3061 hH))).trans (oldProjectionSound476 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2854 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code761).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection178 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2854 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection178 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound178 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode3360).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2854 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode3360).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2854 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2854 ![oldProjection606, reductionProjection2259, oldProjection476, reductionProjection178]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2855 : Integer.Sparse (Fin 1613) := [(433, 2), (761, 2), (767, 1), (806, 2), (807, 1), (865, 1), (1197, 1)]

def reductionPivot2855 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2]]

theorem reductionSound2855 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * (normalNode6538).moment H =
      Integer.Sparse.eval reductionProjection2855 (momentVector H) := by
  have heq : reductionPivot2855 = (fun u v => (normalNode6538).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6538).moment H = injectiveMoment H reductionPivot2855 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6538).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot2855 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2855 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 2, 2, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2855 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection606, reductionProjection2854, reductionProjection2783, reductionProjection187] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2855 (0 : Fin 4)) = canonicalInput24034.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection606 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection606 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24034 hH))).trans (oldProjectionSound606 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2855 (1 : Fin 4)) = canonicalInput13161.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2854 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2854 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13161 hH))).trans (reductionSound2854 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2855 (2 : Fin 4)) = canonicalInput13134.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2783 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13134 hH))).trans (reductionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2855 (3 : Fin 4)) = canonicalInput13125.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection187 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2855 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection187 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13125 hH))).trans (reductionSound187 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6538).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2855 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6538).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2855 (j : Fin 4)))
      2 4 4 2 ![1, 2, 2, 2] ![4, 2, 2, 2] reductionProjection2855 ![oldProjection606, reductionProjection2854, reductionProjection2783, reductionProjection187]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2856 : Integer.Sparse (Fin 1613) := [(344, 1)]

theorem reductionSound2856 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code344).moment H =
      Integer.Sparse.eval reductionProjection2856 (momentVector H) := by
  have hc : coordinates (344 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code344) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2856, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2857 : Integer.Sparse (Fin 1613) := [(0, -1), (81, -96), (94, 13), (433, 288), (697, -48), (698, 176), (700, 64), (775, 144), (806, 144), (807, 144), (865, 144), (1050, -48), (1052, -48), (1058, -48), (1059, 80), (1174, 144), (1219, -48), (1221, -96), (1226, 16), (1227, 48), (1251, -6)]

def reductionPivot2857 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, 0, -2], ![1, 0, 1, -1, -1]]

theorem reductionSound2857 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6535).moment H =
      Integer.Sparse.eval reductionProjection2857 (momentVector H) := by
  have heq : reductionPivot2857 = (fun u v => (normalNode6535).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6535).moment H = injectiveMoment H reductionPivot2857 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6535).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2857 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2857 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 288, 1440, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2857 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1653, oldProjection1639, reductionProjection2756, reductionProjection2783] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2857 (0 : Fin 4)) = canonicalInput15517.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1653 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15517 hH))).trans (oldProjectionSound1653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2857 (1 : Fin 4)) = canonicalInput13153.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1639 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1639 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13153 hH))).trans (oldProjectionSound1639 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2857 (2 : Fin 4)) = canonicalInput13132.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2756 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2756 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13132 hH))).trans (reductionSound2756 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2857 (3 : Fin 4)) = canonicalInput13127.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2783 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2857 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2783 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13127 hH))).trans (reductionSound2783 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6535).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2857 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6535).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2857 (j : Fin 4)))
      2 576 2880 10 ![1440, 288, 1440, 2] ![2, 10, 2, 1440] reductionProjection2857 ![oldProjection1653, oldProjection1639, reductionProjection2756, reductionProjection2783]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2858 : Integer.Sparse (Fin 1613) := [(0, 2), (19, 20), (81, 720), (94, -45), (247, -160), (344, -2880), (430, -720), (433, -5040), (697, 480), (698, -1520), (700, -400), (761, -1440), (767, -720), (775, -720), (806, -4320), (807, -2880), (808, -1440), (865, -2880), (869, -720), (1050, 480), (1052, 720), (1055, 240), (1058, 240), (1059, -800), (1174, -1440), (1197, -720), (1219, 480), (1221, 720), (1226, -80), (1227, -400), (1251, 185)]

def reductionPivot2858 : Matrix (Fin 6) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 0, 0, -1], ![1, 0, 1, -2, 0], ![1, 0, 1, 0, -2]]

theorem reductionSound2858 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1465).moment H =
      Integer.Sparse.eval reductionProjection2858 (momentVector H) := by
  have heq : reductionPivot2858 = (fun u v => (normalNode1465).entries (OAI.MUB6.Certificate.PairSemantics.permutation221 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1465).moment H = injectiveMoment H reductionPivot2858 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1465).entries OAI.MUB6.Certificate.PairSemantics.permutation221)).symm
  have hshape : reductionPivot2858 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2858 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![2880, 4, 1, 576, 720] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2858 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2851, reductionProjection2855, reductionProjection2856, reductionProjection2857, reductionProjection2784] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2858 (0 : Fin 5)) = canonicalInput6385.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2851 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2851 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound6385 hH))).trans (reductionSound2851 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2858 (1 : Fin 5)) = canonicalInput2945.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2855 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2855 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2945 hH))).trans (reductionSound2855 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2858 (2 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code344).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2856 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2856 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound2856 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2858 (3 : Fin 5)) = canonicalInput2903.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2857 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2857 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2903 hH))).trans (reductionSound2857 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2858 (4 : Fin 5)) = canonicalInput2900.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2784 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2858 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2784 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2900 hH))).trans (reductionSound2784 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1465).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2858 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1465).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2858 (j : Fin 5)))
      1 2880 2880 1 ![2880, 4, 1, 576, 720] ![1, 720, 2880, 5, 4] reductionProjection2858 ![reductionProjection2851, reductionProjection2855, reductionProjection2856, reductionProjection2857, reductionProjection2784]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2859 : Integer.Sparse (Fin 1613) := [(434, -1), (768, -1), (869, -1), (1270, -1)]

def reductionPivot2859 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, -1, -1, 3], ![-1, -1, 2, 0], ![1, 1, -2, 0], ![1, 1, 0, -2]]

theorem reductionSound2859 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode7661).moment H =
      Integer.Sparse.eval reductionProjection2859 (momentVector H) := by
  have heq : reductionPivot2859 = (fun u v => (normalNode7661).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode7661).moment H = injectiveMoment H reductionPivot2859 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode7661).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2859 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2859 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2859 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection608, reductionProjection211, oldProjection477, oldProjection720] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2859 (0 : Fin 4)) = canonicalInput16901.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection608 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound16901 hH))).trans (oldProjectionSound608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2859 (1 : Fin 4)) = canonicalInput15114.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection211 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection211 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15114 hH))).trans (reductionSound211 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2859 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw6125 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection477 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection477 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical6125 hH))).trans (oldProjectionSound477 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2859 (3 : Fin 4)) = canonicalInput15087.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection720 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2859 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection720 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound15087 hH))).trans (oldProjectionSound720 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode7661).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2859 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode7661).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2859 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2859 ![oldProjection608, reductionProjection211, oldProjection477, oldProjection720]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2860 : Integer.Sparse (Fin 1613) := [(433, 2), (434, 1), (768, 1), (808, 2), (869, 1), (1174, 2), (1270, 1)]

def reductionPivot2860 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![0, 1, 1, -1, -1]]

theorem reductionSound2860 {H : CMatrix} (hH : IsHadamard H) :
    (4 : ℝ) * (normalNode6539).moment H =
      Integer.Sparse.eval reductionProjection2860 (momentVector H) := by
  have heq : reductionPivot2860 = (fun u v => (normalNode6539).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6539).moment H = injectiveMoment H reductionPivot2860 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6539).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot2860 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2860 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 2, 2, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2860 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection608, reductionProjection2859, reductionProjection2796, reductionProjection2796] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2860 (0 : Fin 4)) = canonicalInput24035.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection608 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection608 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound24035 hH))).trans (oldProjectionSound608 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2860 (1 : Fin 4)) = canonicalInput13162.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2859 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2859 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13162 hH))).trans (reductionSound2859 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2860 (2 : Fin 4)) = canonicalInput13135.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2796 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13135 hH))).trans (reductionSound2796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2860 (3 : Fin 4)) = canonicalInput13126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2796 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2860 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13126 hH))).trans (reductionSound2796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6539).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2860 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6539).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2860 (j : Fin 4)))
      2 4 4 2 ![1, 2, 2, 2] ![4, 2, 2, 2] reductionProjection2860 ![oldProjection608, reductionProjection2859, reductionProjection2796, reductionProjection2796]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2861 : Integer.Sparse (Fin 1613) := [(388, 1)]

theorem reductionSound2861 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code388).moment H =
      Integer.Sparse.eval reductionProjection2861 (momentVector H) := by
  have hc : coordinates (388 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code388) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2861, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2862 : Integer.Sparse (Fin 1613) := [(870, 1)]

theorem reductionSound2862 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code870).moment H =
      Integer.Sparse.eval reductionProjection2862 (momentVector H) := by
  have hc : coordinates (870 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code870) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2862, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2863 : Integer.Sparse (Fin 1613) := [(0, 1), (94, 5), (388, -1440), (433, 720), (698, 80), (836, -1440), (865, 720), (869, 720), (870, -1440), (1055, -240), (1227, 80), (1251, -40)]

def reductionPivot2863 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-2, 0, 1, 1, 0], ![0, -2, 1, 1, 0], ![0, 2, -2, -1, 1], ![3, 0, 0, -1, -2]]

theorem reductionSound2863 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode6537).moment H =
      Integer.Sparse.eval reductionProjection2863 (momentVector H) := by
  have heq : reductionPivot2863 = (fun u v => (normalNode6537).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6537).moment H = injectiveMoment H reductionPivot2863 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode6537).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode6537).entries)).symm
  have hshape : reductionPivot2863 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2863 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2863 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2821, reductionProjection2861, reductionProjection2862, reductionProjection2778] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2863 (0 : Fin 4)) = canonicalInput452.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2821 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2821 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound452 hH))).trans (reductionSound2821 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2863 (1 : Fin 4)) = canonicalInput9026.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2861 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2861 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9026 hH))).trans (reductionSound2861 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2863 (2 : Fin 4)) = canonicalInput9089.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2862 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2862 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9089 hH))).trans (reductionSound2862 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2863 (3 : Fin 4)) = canonicalInput9093.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2778 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2863 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2778 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound9093 hH))).trans (reductionSound2778 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6537).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2863 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6537).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2863 (j : Fin 4)))
      2 2880 2880 2 ![1, 1, 1, 1440] ![2880, 2880, 2880, 2] reductionProjection2863 ![reductionProjection2821, reductionProjection2861, reductionProjection2862, reductionProjection2778]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2864 : Integer.Sparse (Fin 1613) := [(81, -48), (94, 5), (433, 288), (489, 144), (559, 144), (697, -48), (698, 176), (700, 64), (789, 144), (806, 144), (808, 144), (869, 144), (1050, -48), (1058, -48), (1059, 128), (1174, 144), (1219, -48), (1227, 32), (1251, -39)]

def reductionPivot2864 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, 0, -1, 0], ![-1, -2, 0, 0, 3], ![0, 0, -2, 2, 0], ![0, 1, 1, -1, -1], ![1, 0, 1, 0, -2]]

theorem reductionSound2864 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode6534).moment H =
      Integer.Sparse.eval reductionProjection2864 (momentVector H) := by
  have heq : reductionPivot2864 = (fun u v => (normalNode6534).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode6534).moment H = injectiveMoment H reductionPivot2864 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode6534).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2864 0 = Pi.single (1 : Fin 5) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2864 1 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1440, 1440, 720, 2] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2864 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1653, oldProjection1641, oldProjection1963, reductionProjection2796] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2864 (0 : Fin 4)) = canonicalInput15516.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1653 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1653 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound15516 hH))).trans (oldProjectionSound1653 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2864 (1 : Fin 4)) = canonicalInput13152.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1641 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1641 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13152 hH))).trans (oldProjectionSound1641 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2864 (2 : Fin 4)) = canonicalInput13131.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1963 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1963 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13131 hH))).trans (oldProjectionSound1963 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2864 (3 : Fin 4)) = canonicalInput13126.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2796 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2864 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2796 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound13126 hH))).trans (reductionSound2796 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode6534).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2864 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode6534).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2864 (j : Fin 4)))
      2 576 2880 10 ![1440, 1440, 720, 2] ![2, 2, 4, 1440] reductionProjection2864 ![oldProjection1653, oldProjection1641, oldProjection1963, reductionProjection2796]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2865 : Integer.Sparse (Fin 1613) := [(340, 1)]

theorem reductionSound2865 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code340).moment H =
      Integer.Sparse.eval reductionProjection2865 (momentVector H) := by
  have hc : coordinates (340 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code340) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2865, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2866 : Integer.Sparse (Fin 1613) := [(0, 3), (19, 20), (81, 240), (94, -90), (247, -80), (340, -2880), (388, 1440), (418, -720), (433, -5040), (434, -720), (484, -720), (489, -720), (555, -720), (559, -720), (697, 240), (698, -1040), (700, -320), (758, -720), (768, -720), (789, -720), (806, -720), (807, -720), (808, -2880), (836, 1440), (865, -720), (869, -2880), (870, 1440), (1050, 480), (1055, 240), (1058, 240), (1059, -640), (1174, -2880), (1219, 240), (1221, 480), (1227, -240), (1251, 215), (1270, -720), (1389, 240)]

def reductionPivot2866 : Matrix (Fin 6) (Fin 5) ℤ := ![![1, 0, -1, 0, 0], ![-2, -1, 0, 0, 3], ![0, -1, -1, 2, 0], ![0, 1, 1, -2, 0], ![0, 1, 1, 0, -2], ![1, 0, 0, 0, -1]]

theorem reductionSound2866 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode1466).moment H =
      Integer.Sparse.eval reductionProjection2866 (momentVector H) := by
  have heq : reductionPivot2866 = (fun u v => (normalNode1466).entries (OAI.MUB6.Certificate.PairSemantics.permutation258 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode1466).moment H = injectiveMoment H reductionPivot2866 := by
    have hh := congrArg (fun M : Matrix (Fin 6) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode1466).entries OAI.MUB6.Certificate.PairSemantics.permutation258)).symm
  have hshape : reductionPivot2866 0 = Pi.single (0 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 5 < 6)
    hH reductionPivot2866 0 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 5,
      ((![4, 2880, 576, 720, 1] : Fin 5 → ℤ) j : ℝ) * (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2866 (j : Fin 5))) j =
        Integer.Sparse.eval (![reductionProjection2860, reductionProjection2863, reductionProjection2864, reductionProjection2820, reductionProjection2865] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2866 (0 : Fin 5)) = canonicalInput14675.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((4 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (0 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2860 (momentVector H)
      have hh : (4 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (0 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2860 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (4 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound14675 hH))).trans (reductionSound2860 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2866 (1 : Fin 5)) = canonicalInput2999.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2880 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (1 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2863 (momentVector H)
      have hh : (2880 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (1 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2863 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2880 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2999 hH))).trans (reductionSound2863 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2866 (2 : Fin 5)) = canonicalInput2917.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((576 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (2 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2864 (momentVector H)
      have hh : (576 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (2 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2864 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (576 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2917 hH))).trans (reductionSound2864 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2866 (3 : Fin 5)) = canonicalInput2906.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (3 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2820 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (3 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2820 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound2906 hH))).trans (reductionSound2820 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2866 (4 : Fin 5)) = (NoFourMUBs.Step2.SOS.Semantics.code340).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (4 : Fin 5)) =
        Integer.Sparse.eval reductionProjection2865 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2866 (4 : Fin 5)) =
          Integer.Sparse.eval reductionProjection2865 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) he)).trans (reductionSound2865 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (1 : ℝ) * (normalNode1466).moment H + ∑ j : Fin 5, (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2866 (j : Fin 5))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode1466).moment H) (fun j : Fin 5 => injectiveMoment H (mergeFirst reductionPivot2866 (j : Fin 5)))
      1 2880 2880 1 ![4, 2880, 576, 720, 1] ![720, 1, 5, 4, 2880] reductionProjection2866 ![reductionProjection2860, reductionProjection2863, reductionProjection2864, reductionProjection2820, reductionProjection2865]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2867 : Integer.Sparse (Fin 1613) := [(19, 2), (94, -1), (1251, -1)]

def reductionPivot2867 : Matrix (Fin 5) (Fin 3) ℤ := ![![-1, 0, 1], ![0, -3, 3], ![0, 2, -2], ![0, 2, -2], ![1, -1, 0]]

theorem reductionSound2867 {H : CMatrix} (hH : IsHadamard H) :
    (12 : ℝ) * (normalNode10778).moment H =
      Integer.Sparse.eval reductionProjection2867 (momentVector H) := by
  have heq : reductionPivot2867 = (fun u v => (normalNode10778).entries (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode10778).moment H = injectiveMoment H reductionPivot2867 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 3) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode10778).entries OAI.MUB6.Certificate.PairSemantics.permutation33)).symm
  have hshape : reductionPivot2867 0 = Pi.single (2 : Fin 3) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2867 2 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 48, 48, 6] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2867 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection256, oldProjection280, oldProjection280, oldProjection25] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2867 (0 : Fin 4)) = ((⟨4, 3, OAI.MUB6.Certificate.PairSemantics.node256⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection256 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection256 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound256 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2867 (1 : Fin 4)) = canonicalInput23895.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection280 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23895 hH))).trans (oldProjectionSound280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2867 (2 : Fin 4)) = canonicalInput23904.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection280 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection280 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23904 hH))).trans (oldProjectionSound280 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2867 (3 : Fin 4)) = canonicalInput23905.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection25 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2867 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection25 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 3) ℤ => injectiveMoment H M) he).trans (canonicalSound23905 hH))).trans (oldProjectionSound25 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode10778).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2867 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode10778).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2867 (j : Fin 4)))
      2 12 48 8 ![24, 48, 48, 6] ![2, 1, 1, 8] reductionProjection2867 ![oldProjection256, oldProjection280, oldProjection280, oldProjection25]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2868 : Integer.Sparse (Fin 1613) := [(19, -2), (94, 1), (1043, -24), (1251, 1)]

def reductionPivot2868 : Matrix (Fin 4) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![2, 0, 0, 0, -2], ![-1, -3, 2, 2, 0], ![0, 3, -2, -2, 1]]

theorem reductionSound2868 {H : CMatrix} (hH : IsHadamard H) :
    (36 : ℝ) * (normalNode11214).moment H =
      Integer.Sparse.eval reductionProjection2868 (momentVector H) := by
  have heq : reductionPivot2868 = (fun u v => (normalNode11214).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11214).moment H = injectiveMoment H reductionPivot2868 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode11214).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation9)).trans (injectiveMoment_transpose H (normalNode11214).entries)).symm
  have hshape : reductionPivot2868 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2868 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![12, 1, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2868 (j : Fin 3))) j =
        Integer.Sparse.eval (![reductionProjection2867, reductionProjection1977, reductionProjection1977] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2868 (0 : Fin 3)) = canonicalInput33836.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((12 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2868 (0 : Fin 3)) =
        Integer.Sparse.eval reductionProjection2867 (momentVector H)
      have hh : (12 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2868 (0 : Fin 3)) =
          Integer.Sparse.eval reductionProjection2867 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (12 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound33836 hH))).trans (reductionSound2867 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2868 (1 : Fin 3)) = canonicalInput34300.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2868 (1 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1977 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2868 (1 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound34300 hH))).trans (reductionSound1977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2868 (2 : Fin 3)) = canonicalInput34301.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2868 (2 : Fin 3)) =
        Integer.Sparse.eval reductionProjection1977 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2868 (2 : Fin 3)) =
          Integer.Sparse.eval reductionProjection1977 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound34301 hH))).trans (reductionSound1977 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11214).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2868 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11214).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2868 (j : Fin 3)))
      3 36 36 3 ![12, 1, 1] ![3, 36, 36] reductionProjection2868 ![reductionProjection2867, reductionProjection1977, reductionProjection1977]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2869 : Integer.Sparse (Fin 1613) := [(0, 1), (19, 20), (20, -5), (94, -20), (691, 240), (1044, 240), (1050, 240), (1052, 720), (1217, 240), (1221, 240), (1251, -20)]

def reductionPivot2869 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-1, 2, 0, -1], ![0, 0, -3, 3], ![0, 0, 2, -2], ![1, -2, 0, 1]]

theorem reductionSound2869 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode11218).moment H =
      Integer.Sparse.eval reductionProjection2869 (momentVector H) := by
  have heq : reductionPivot2869 = (fun u v => (normalNode11218).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11218).moment H = injectiveMoment H reductionPivot2869 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11218).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2869 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2869 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 720, 144, 24] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2869 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1376, oldProjection1304, oldProjection1375, oldProjection1374] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2869 (0 : Fin 4)) = canonicalInput23768.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1376 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1376 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23768 hH))).trans (oldProjectionSound1376 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2869 (1 : Fin 4)) = canonicalInput23766.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((720 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1304 (momentVector H)
      have hh : (720 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1304 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (720 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23766 hH))).trans (oldProjectionSound1304 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2869 (2 : Fin 4)) = ((⟨4, 4, OAI.MUB6.Certificate.PairSemantics.node1375⟩ : ExponentCode)).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1375 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (oldProjectionSound1375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2869 (3 : Fin 4)) = canonicalInput23765.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection1374 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2869 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection1374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound23765 hH))).trans (oldProjectionSound1374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode11218).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2869 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11218).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2869 (j : Fin 4)))
      2 1440 1440 2 ![144, 720, 144, 24] ![10, 2, 10, 60] reductionProjection2869 ![oldProjection1376, oldProjection1304, oldProjection1375, oldProjection1374]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2870 : Integer.Sparse (Fin 1613) := [(0, -1), (19, 60), (20, 5), (94, -20), (691, -480), (1043, 960), (1044, -240), (1047, -240), (1050, -240), (1052, -960), (1058, -240), (1178, -1440), (1217, -240), (1219, -240), (1221, -240), (1223, -240), (1251, -20)]

def reductionPivot2870 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 1, 0], ![2, 0, 0, -2, 0], ![0, -3, 2, 0, 1], ![0, 3, -2, 1, -2]]

theorem reductionSound2870 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9558).moment H =
      Integer.Sparse.eval reductionProjection2870 (momentVector H) := by
  have heq : reductionPivot2870 = (fun u v => (normalNode9558).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9558).moment H = injectiveMoment H reductionPivot2870 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9558).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9558).entries)).symm
  have hshape : reductionPivot2870 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2870 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 6, 36, 1440] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2870 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2650, reductionProjection2726, reductionProjection2868, reductionProjection2869] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2870 (0 : Fin 4)) = canonicalInput7165.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2650 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound7165 hH))).trans (reductionSound2650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2870 (1 : Fin 4)) = canonicalInput21315.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((6 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2726 (momentVector H)
      have hh : (6 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2726 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (6 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21315 hH))).trans (reductionSound2726 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2870 (2 : Fin 4)) = canonicalInput21327.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((36 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2868 (momentVector H)
      have hh : (36 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2868 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (36 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21327 hH))).trans (reductionSound2868 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2870 (3 : Fin 4)) = canonicalInput21328.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2869 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2870 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2869 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21328 hH))).trans (reductionSound2869 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9558).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2870 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9558).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2870 (j : Fin 4)))
      2 2880 2880 2 ![1, 6, 36, 1440] ![2880, 480, 80, 2] reductionProjection2870 ![reductionProjection2650, reductionProjection2726, reductionProjection2868, reductionProjection2869]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2871 : Integer.Sparse (Fin 1613) := [(1276, 1)]

theorem reductionSound2871 {H : CMatrix} (hH : IsHadamard H) :
    (1 : ℝ) * (NoFourMUBs.Step2.SOS.Semantics.code1276).moment H =
      Integer.Sparse.eval reductionProjection2871 (momentVector H) := by
  have hc : coordinates (1276 : Fin 1613) = (NoFourMUBs.Step2.SOS.Semantics.code1276) := by decide +kernel
  have hm := congrArg (fun C : ExponentCode => C.moment H) hc
  simpa only [reductionProjection2871, Integer.Sparse.eval, List.map_cons, List.map_nil,
    List.sum_cons, List.sum_nil, Int.cast_one, one_mul,
    add_zero, momentVector] using hm.symm

def reductionProjection2872 : Integer.Sparse (Fin 1613) := [(758, -2), (864, -1), (1276, -1)]

def reductionPivot2872 : Matrix (Fin 5) (Fin 4) ℤ := ![![0, 0, 1, -1], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 2, -2], ![2, -2, 0, 0]]

theorem reductionSound2872 {H : CMatrix} (hH : IsHadamard H) :
    (2 : ℝ) * (normalNode5958).moment H =
      Integer.Sparse.eval reductionProjection2872 (momentVector H) := by
  have heq : reductionPivot2872 = (fun u v => (normalNode5958).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5958).moment H = injectiveMoment H reductionPivot2872 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5958).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2872 0 = Pi.single (2 : Fin 4) 1 - Pi.single 3 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2872 2 3 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![1, 1, 1, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2872 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection587, oldProjection605, reductionProjection2871, oldProjection587] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2872 (0 : Fin 4)) = canonicalInput12246.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection587 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12246 hH))).trans (oldProjectionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2872 (1 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5423 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection605 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection605 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5423 hH))).trans (oldProjectionSound605 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2872 (2 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1276).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2871 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2871 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2872 (3 : Fin 4)) = canonicalInput12158.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (3 : Fin 4)) =
        Integer.Sparse.eval oldProjection587 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2872 (3 : Fin 4)) =
          Integer.Sparse.eval oldProjection587 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12158 hH))).trans (oldProjectionSound587 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5958).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2872 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5958).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2872 (j : Fin 4)))
      2 2 2 2 ![1, 1, 1, 1] ![2, 2, 2, 2] reductionProjection2872 ![oldProjection587, oldProjection605, reductionProjection2871, oldProjection587]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2873 : Integer.Sparse (Fin 1613) := [(19, -4), (94, -1), (418, 144), (423, 144), (758, 576), (864, 144), (1052, -96), (1174, 144), (1178, -288), (1197, 144), (1251, -1), (1276, 144)]

def reductionPivot2873 : Matrix (Fin 5) (Fin 5) ℤ := ![![-1, 0, 0, 0, 1], ![-1, 0, 0, 2, -1], ![2, 0, 0, -2, 0], ![0, -3, 2, 0, 1], ![0, 3, -2, 0, -1]]

theorem reductionSound2873 {H : CMatrix} (hH : IsHadamard H) :
    (576 : ℝ) * (normalNode9561).moment H =
      Integer.Sparse.eval reductionProjection2873 (momentVector H) := by
  have heq : reductionPivot2873 = (fun u v => (normalNode9561).entries.transpose (OAI.MUB6.Certificate.PairSemantics.permutation33 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9561).moment H = injectiveMoment H reductionPivot2873 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact ((hh.trans (injectiveMoment_row_permutation H (normalNode9561).entries.transpose OAI.MUB6.Certificate.PairSemantics.permutation33)).trans (injectiveMoment_transpose H (normalNode9561).entries)).symm
  have hshape : reductionPivot2873 0 = Pi.single (4 : Fin 5) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2873 4 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![2, 288, 1, 48] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2873 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2872, reductionProjection2723, reductionProjection2650, reductionProjection2722] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2873 (0 : Fin 4)) = canonicalInput8071.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((2 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2872 (momentVector H)
      have hh : (2 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2872 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (2 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound8071 hH))).trans (reductionSound2872 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2873 (1 : Fin 4)) = canonicalInput21540.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (1 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2723 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (1 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2723 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21540 hH))).trans (reductionSound2723 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2873 (2 : Fin 4)) = canonicalInput21550.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2650 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2650 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21550 hH))).trans (reductionSound2650 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2873 (3 : Fin 4)) = canonicalInput21551.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2722 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2873 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2722 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21551 hH))).trans (reductionSound2722 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9561).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2873 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9561).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2873 (j : Fin 4)))
      2 576 576 2 ![2, 288, 1, 48] ![288, 2, 576, 12] reductionProjection2873 ![reductionProjection2872, reductionProjection2723, reductionProjection2650, reductionProjection2722]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2874 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, -25), (241, 40), (243, 80), (418, 360), (691, -120), (698, 80), (700, 40), (758, 360), (1047, -120), (1052, -360), (1058, -120), (1174, 360), (1219, -120), (1223, -120), (1226, 80), (1251, -25)]

def reductionPivot2874 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 1, -1, 0, 0], ![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, 0, -1, 1, -1]]

theorem reductionSound2874 {H : CMatrix} (hH : IsHadamard H) :
    (1440 : ℝ) * (normalNode9560).moment H =
      Integer.Sparse.eval reductionProjection2874 (momentVector H) := by
  have heq : reductionPivot2874 = (fun u v => (normalNode9560).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9560).moment H = injectiveMoment H reductionPivot2874 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9560).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2874 0 = Pi.single (1 : Fin 5) 1 - Pi.single 2 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2874 1 2 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 1440, 1440, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2874 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1345, oldProjection1629, oldProjection2262, reductionProjection2719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2874 (0 : Fin 4)) = canonicalInput21818.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1345 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1345 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound21818 hH))).trans (oldProjectionSound1345 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2874 (1 : Fin 4)) = canonicalInput18801.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1629 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1629 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18801 hH))).trans (oldProjectionSound1629 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2874 (2 : Fin 4)) = canonicalInput18790.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection2262 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection2262 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18790 hH))).trans (oldProjectionSound2262 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2874 (3 : Fin 4)) = canonicalInput18787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2874 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18787 hH))).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9560).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2874 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9560).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2874 (j : Fin 4)))
      2 1440 1440 2 ![144, 1440, 1440, 144] ![10, 1, 1, 10] reductionProjection2874 ![oldProjection1345, oldProjection1629, oldProjection2262, reductionProjection2719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2875 : Integer.Sparse (Fin 1613) := [(20, 1), (94, -14), (1251, 1)]

def reductionPivot2875 : Matrix (Fin 4) (Fin 4) ℤ := ![![-1, 1, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0]]

theorem reductionSound2875 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode11156).moment H =
      Integer.Sparse.eval reductionProjection2875 (momentVector H) := by
  have heq : reductionPivot2875 = (fun u v => (normalNode11156).entries (OAI.MUB6.Certificate.PairSemantics.permutation9 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode11156).moment H = injectiveMoment H reductionPivot2875 := by
    have hh := congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode11156).entries OAI.MUB6.Certificate.PairSemantics.permutation9)).symm
  have hshape : reductionPivot2875 0 = Pi.single (1 : Fin 4) 1 - Pi.single 0 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 3 < 6)
    hH reductionPivot2875 1 0 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 3,
      ((![48, 48, 1] : Fin 3 → ℤ) j : ℝ) * (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2875 (j : Fin 3))) j =
        Integer.Sparse.eval (![oldProjection289, oldProjection289, oldProjection3] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2875 (0 : Fin 3)) = OAI.MUB6.Certificate.PairSemantics.raw7784 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2875 (0 : Fin 3)) =
        Integer.Sparse.eval oldProjection289 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2875 (0 : Fin 3)) =
          Integer.Sparse.eval oldProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical7784 hH))).trans (oldProjectionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2875 (1 : Fin 3)) = canonicalInput27539.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((48 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2875 (1 : Fin 3)) =
        Integer.Sparse.eval oldProjection289 (momentVector H)
      have hh : (48 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2875 (1 : Fin 3)) =
          Integer.Sparse.eval oldProjection289 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (48 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27539 hH))).trans (oldProjectionSound289 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2875 (2 : Fin 3)) = canonicalInput27558.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2875 (2 : Fin 3)) =
        Integer.Sparse.eval oldProjection3 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2875 (2 : Fin 3)) =
          Integer.Sparse.eval oldProjection3 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 3) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound27558 hH))).trans (oldProjectionSound3 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (3 : ℝ) * (normalNode11156).moment H + ∑ j : Fin 3, (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2875 (j : Fin 3))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode11156).moment H) (fun j : Fin 3 => injectiveMoment H (mergeFirst reductionPivot2875 (j : Fin 3)))
      3 72 144 6 ![48, 48, 1] ![3, 3, 144] reductionProjection2875 ![oldProjection289, oldProjection289, oldProjection3]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2876 : Integer.Sparse (Fin 1613) := [(20, -1), (94, 2), (1044, 24), (1217, 24), (1251, -1), (1276, -36)]

def reductionPivot2876 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, 0, -3, 3], ![0, 0, 3, -3], ![1, -1, 0, 0]]

theorem reductionSound2876 {H : CMatrix} (hH : IsHadamard H) :
    (72 : ℝ) * (normalNode5962).moment H =
      Integer.Sparse.eval reductionProjection2876 (momentVector H) := by
  have heq : reductionPivot2876 = (fun u v => (normalNode5962).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5962).moment H = injectiveMoment H reductionPivot2876 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5962).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2876 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2876 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![72, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2876 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2875, oldProjection1375, oldProjection1375, reductionProjection2871] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2876 (0 : Fin 4)) = (normalNode11156).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2875 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2875 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2875 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2876 (1 : Fin 4)) = canonicalInput12186.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1375 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12186 hH))).trans (oldProjectionSound1375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2876 (2 : Fin 4)) = canonicalInput12167.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1375 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1375 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12167 hH))).trans (oldProjectionSound1375 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2876 (3 : Fin 4)) = (NoFourMUBs.Step2.SOS.Semantics.code1276).entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2871 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2876 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2871 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) (congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he)).trans (reductionSound2871 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5962).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2876 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5962).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2876 (j : Fin 4)))
      2 72 144 4 ![72, 144, 144, 1] ![2, 1, 1, 144] reductionProjection2876 ![reductionProjection2875, oldProjection1375, oldProjection1375, reductionProjection2871]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2877 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -20), (20, 5), (94, -10), (691, -120), (758, 360), (864, 180), (1044, -120), (1050, -120), (1052, -360), (1217, -120), (1221, -120), (1251, -10), (1276, 180)]

def reductionPivot2877 : Matrix (Fin 5) (Fin 5) ℤ := ![![0, 0, 0, 1, -1], ![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![1, 1, -2, 0, 0]]

theorem reductionSound2877 {H : CMatrix} (hH : IsHadamard H) :
    (720 : ℝ) * (normalNode9557).moment H =
      Integer.Sparse.eval reductionProjection2877 (momentVector H) := by
  have heq : reductionPivot2877 = (fun u v => (normalNode9557).entries (OAI.MUB6.Certificate.PairSemantics.permutation80 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9557).moment H = injectiveMoment H reductionPivot2877 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9557).entries OAI.MUB6.Certificate.PairSemantics.permutation80)).symm
  have hshape : reductionPivot2877 0 = Pi.single (3 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2877 3 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 360, 72, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2877 (j : Fin 4))) j =
        Integer.Sparse.eval (![reductionProjection2719, oldProjection1998, reductionProjection2876, reductionProjection2719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2877 (0 : Fin 4)) = canonicalInput19084.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (0 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (0 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound19084 hH))).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2877 (1 : Fin 4)) = canonicalInput18797.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((360 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1998 (momentVector H)
      have hh : (360 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1998 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (360 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18797 hH))).trans (oldProjectionSound1998 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2877 (2 : Fin 4)) = canonicalInput18788.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((72 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2876 (momentVector H)
      have hh : (72 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2876 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (72 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18788 hH))).trans (reductionSound2876 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2877 (3 : Fin 4)) = canonicalInput18787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2877 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18787 hH))).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9557).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2877 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9557).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2877 (j : Fin 4)))
      2 720 720 2 ![144, 360, 72, 144] ![5, 2, 10, 5] reductionProjection2877 ![reductionProjection2719, oldProjection1998, reductionProjection2876, reductionProjection2719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2878 : Integer.Sparse (Fin 1613) := [(20, -1), (94, -7), (243, -32), (700, -16), (1044, 48), (1052, 96), (1197, -144), (1217, 48), (1226, -16), (1251, 6)]

def reductionPivot2878 : Matrix (Fin 5) (Fin 4) ℤ := ![![1, -1, 0, 0], ![-2, 2, 0, 0], ![0, -1, -2, 3], ![0, 0, 3, -3], ![1, 0, -1, 0]]

theorem reductionSound2878 {H : CMatrix} (hH : IsHadamard H) :
    (288 : ℝ) * (normalNode5936).moment H =
      Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
  have heq : reductionPivot2878 = (fun u v => (normalNode5936).entries (OAI.MUB6.Certificate.PairSemantics.permutation104 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode5936).moment H = injectiveMoment H reductionPivot2878 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 4) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode5936).entries OAI.MUB6.Certificate.PairSemantics.permutation104)).symm
  have hshape : reductionPivot2878 0 = Pi.single (0 : Fin 4) 1 - Pi.single 1 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2878 0 1 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![144, 144, 144, 1] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2878 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1225, oldProjection1321, oldProjection1226, reductionProjection138] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2878 (0 : Fin 4)) = canonicalInput22857.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1225 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1225 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound22857 hH))).trans (oldProjectionSound1225 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2878 (1 : Fin 4)) = canonicalInput12179.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1321 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1321 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12179 hH))).trans (oldProjectionSound1321 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2878 (2 : Fin 4)) = OAI.MUB6.Certificate.PairSemantics.raw5406 := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (2 : Fin 4)) =
        Integer.Sparse.eval oldProjection1226 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (2 : Fin 4)) =
          Integer.Sparse.eval oldProjection1226 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (OAI.MUB6.Certificate.PairSemantics.canonical5406 hH))).trans (oldProjectionSound1226 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2878 (3 : Fin 4)) = canonicalInput12123.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection138 (momentVector H)
      have hh : (1 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2878 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection138 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 4) ℤ => injectiveMoment H M) he).trans (canonicalSound12123 hH))).trans (reductionSound138 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode5936).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2878 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode5936).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2878 (j : Fin 4)))
      2 288 288 2 ![144, 144, 144, 1] ![2, 2, 2, 288] reductionProjection2878 ![oldProjection1225, oldProjection1321, oldProjection1226, reductionProjection138]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

def reductionProjection2879 : Integer.Sparse (Fin 1613) := [(0, -1), (19, -40), (20, 5), (94, 55), (241, 80), (243, 160), (423, 720), (691, -240), (698, 160), (700, 80), (758, 720), (1044, -240), (1050, -240), (1052, -720), (1197, 720), (1217, -240), (1221, -240), (1226, 160), (1251, 55)]

def reductionPivot2879 : Matrix (Fin 5) (Fin 5) ℤ := ![![1, 0, 0, 0, -1], ![-1, -1, 2, 0, 0], ![0, 0, 0, -3, 3], ![0, 0, 0, 2, -2], ![0, 1, -2, 1, 0]]

theorem reductionSound2879 {H : CMatrix} (hH : IsHadamard H) :
    (2880 : ℝ) * (normalNode9559).moment H =
      Integer.Sparse.eval reductionProjection2879 (momentVector H) := by
  have heq : reductionPivot2879 = (fun u v => (normalNode9559).entries (OAI.MUB6.Certificate.PairSemantics.permutation128 u) v) := by
    ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
  have hm : (normalNode9559).moment H = injectiveMoment H reductionPivot2879 := by
    have hh := congrArg (fun M : Matrix (Fin 5) (Fin 5) ℤ => injectiveMoment H M) heq
    exact (hh.trans (injectiveMoment_row_permutation H (normalNode9559).entries OAI.MUB6.Certificate.PairSemantics.permutation128)).symm
  have hshape : reductionPivot2879 0 = Pi.single (0 : Fin 5) 1 - Pi.single 4 1 := by
    exact funext (by decide +kernel)
  have hr := injectiveMoment_first_row_contraction (by decide : 4 < 6)
    hH reductionPivot2879 0 4 (by decide) hshape
  rw [← hm] at hr
  have hchildren : ∀ j : Fin 4,
      ((![24, 1440, 288, 144] : Fin 4 → ℤ) j : ℝ) * (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2879 (j : Fin 4))) j =
        Integer.Sparse.eval (![oldProjection1374, oldProjection1632, reductionProjection2878, reductionProjection2719] j) (momentVector H) := by
    intro j
    fin_cases j
    · have he : (mergeFirst reductionPivot2879 (0 : Fin 4)) = canonicalInput27445.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((24 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (0 : Fin 4)) =
        Integer.Sparse.eval oldProjection1374 (momentVector H)
      have hh : (24 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (0 : Fin 4)) =
          Integer.Sparse.eval oldProjection1374 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (24 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound27445 hH))).trans (oldProjectionSound1374 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2879 (1 : Fin 4)) = canonicalInput18806.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((1440 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (1 : Fin 4)) =
        Integer.Sparse.eval oldProjection1632 (momentVector H)
      have hh : (1440 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (1 : Fin 4)) =
          Integer.Sparse.eval oldProjection1632 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (1440 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18806 hH))).trans (oldProjectionSound1632 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2879 (2 : Fin 4)) = canonicalInput18794.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((288 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (2 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2878 (momentVector H)
      have hh : (288 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (2 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2878 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (288 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18794 hH))).trans (reductionSound2878 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
    · have he : (mergeFirst reductionPivot2879 (3 : Fin 4)) = canonicalInput18787.entries := by
        ext u v; fin_cases u <;> fin_cases v <;> decide +kernel
      change ((144 : ℤ) : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (3 : Fin 4)) =
        Integer.Sparse.eval reductionProjection2719 (momentVector H)
      have hh : (144 : ℝ) * injectiveMoment H (mergeFirst reductionPivot2879 (3 : Fin 4)) =
          Integer.Sparse.eval reductionProjection2719 (momentVector H) := by
        exact (congrArg (fun x : ℝ => (144 : ℝ) * x) ((congrArg (fun M : Matrix (Fin 4) (Fin 5) ℤ => injectiveMoment H M) he).trans (canonicalSound18787 hH))).trans (reductionSound2719 hH)
      simpa only [Int.cast_one, Int.cast_ofNat] using hh
  have hrelation : (2 : ℝ) * (normalNode9559).moment H + ∑ j : Fin 4, (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2879 (j : Fin 4))) j = 0 := by
    convert hr using 1 <;> norm_num
  simpa only [Int.cast_one, Int.cast_ofNat] using
    (integer_projection (momentVector H) ((normalNode9559).moment H) (fun j : Fin 4 => injectiveMoment H (mergeFirst reductionPivot2879 (j : Fin 4)))
      2 2880 2880 2 ![24, 1440, 288, 144] ![120, 2, 10, 20] reductionProjection2879 ![oldProjection1374, oldProjection1632, reductionProjection2878, reductionProjection2719]
      (by decide +kernel) (by decide +kernel) (by decide +kernel)
      (by simpa only [Int.cast_one, Int.cast_ofNat] using hrelation)
      hchildren (by decide +kernel))

end NoFourMUBs.Step2.SOS.Normalization
